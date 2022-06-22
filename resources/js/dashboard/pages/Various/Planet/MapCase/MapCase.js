import axios from "axios";
import React, { useEffect, useState, useRef } from "react";
import { useInsertOrUpdate } from "../../../../customHook/useInsertOrUpdate";
import { useDelete } from "../../../../customHook/useDelete";

export default function MapCase({ getData, refreshData }) {
    const [cases, setCases] = useState([]);
    const [onEdit, setOnEdit] = useState(false);
    const [name, setName] = useState(onEdit.name || "");

    useEffect(() => {
        setCases(getData.mapCases);
    }, [getData]);

    const handleDelete = (id) => {
        const message =
            "ATTENTION ! Tu es sur le point de supprimer une case. Cette action est irréversible.";
        useDelete(id, "planet/case", refreshData, message);
    };

    // !FORM mapCase
    const form = useRef();

    const switchUpdateToCreate = () => {
        setOnEdit(false);
        setName("");
    };

    const handleSubmit = (e) => {
        e.preventDefault();
        const inputs = form.current;

        let data = {};

        data = {
            name: inputs[0].value,
            id: onEdit ? onEdit.id : null,
        };

        useInsertOrUpdate(
            onEdit == false,
            "planet/case",
            data,
            refreshData,
            switchUpdateToCreate
        );
    };

    return (
        <>
            <h2 className="title">
                Cases du monde
                {onEdit && (
                    <span
                        onClick={switchUpdateToCreate}
                        className="btn-home invert"
                    >
                        Annuler la modification
                    </span>
                )}
            </h2>
            <div className="flex-galery align-start">
                <div className="item-list w-50">
                    {cases &&
                        cases.length != 0 &&
                        cases.map((mapCase) => (
                            <div className="mapCase" key={mapCase.id}>
                                <p className="name">{mapCase.case}</p>
                                <span
                                    className="edit"
                                    onClick={() => {
                                        setOnEdit(mapCase);
                                        setName(mapCase.case);
                                    }}
                                >
                                    <i className="fa-solid fa-pen-to-square"></i>
                                </span>
                                <span
                                    className="delete"
                                    onClick={() => handleDelete(mapCase.id)}
                                >
                                    <i className="fa-solid fa-trash"></i>
                                </span>
                            </div>
                        ))}
                </div>
                <form
                    action=""
                    onSubmit={handleSubmit}
                    className="w-50"
                    ref={form}
                >
                    <div className="form-group">
                        <input
                            type="text"
                            name="name"
                            placeholder="CSS"
                            value={name}
                            className="w-100"
                            onChange={(e) => setName(e.target.value)}
                        />
                        <label htmlFor="name">Case</label>
                    </div>
                    <button type="submit">
                        {onEdit ? "Mettre à jour" : "Ajouter"}
                    </button>
                </form>
            </div>
        </>
    );
}
