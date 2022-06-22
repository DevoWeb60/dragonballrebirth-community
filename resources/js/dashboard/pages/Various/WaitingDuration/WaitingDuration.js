import axios from "axios";
import React, { useEffect, useState, useRef } from "react";
import { useInsertOrUpdate } from "../../../customHook/useInsertOrUpdate";
import { useDelete } from "../../../customHook/useDelete";

export default function WaitingDuration({ getData, refreshData }) {
    const [durations, setDurations] = useState([]);
    const [onEdit, setOnEdit] = useState(false);
    const [name, setName] = useState(onEdit.name || "");

    useEffect(() => {
        setDurations(getData.waitingDurations);
    }, [getData]);

    const handleDelete = (id) => {
        const message =
            "ATTENTION ! Tu es sur le point de supprimer une durée. Cette action est irréversible.";
        useDelete(id, "waiting/duration", refreshData, message);
    };

    // !FORM duration
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
            "waiting/duration",
            data,
            refreshData,
            switchUpdateToCreate
        );
    };

    return (
        <>
            <h2 className="title">
                Durées d'objets
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
                    {durations &&
                        durations.length != 0 &&
                        durations.map((duration) => (
                            <div className="duration" key={duration.id}>
                                <p className="name">{duration.duration}</p>
                                <span
                                    className="edit"
                                    onClick={() => {
                                        setOnEdit(duration);
                                        setName(duration.duration);
                                    }}
                                >
                                    <i className="fa-solid fa-pen-to-square"></i>
                                </span>
                                <span
                                    className="delete"
                                    onClick={() => handleDelete(duration.id)}
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
                        <label htmlFor="name">Durée</label>
                    </div>
                    <button type="submit">
                        {onEdit ? "Mettre à jour" : "Ajouter"}
                    </button>
                </form>
            </div>
        </>
    );
}
