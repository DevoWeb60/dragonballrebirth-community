import React, { useEffect, useState, useRef } from "react";
import { useInsertOrUpdate } from "../../../../customHook/useInsertOrUpdate";
import { useDelete } from "../../../../customHook/useDelete";

export default function ConditionBase({ getData, refreshData }) {
    const [conditionBase, setConditionBase] = useState([]);
    const [onEdit, setOnEdit] = useState(false);
    const [name, setName] = useState(onEdit.name || "");

    useEffect(() => {
        setConditionBase(getData.winConditionBase);
    }, [getData]);

    const handleDelete = (id) => {
        const message =
            "ATTENTION ! Tu es sur le point de supprimer une condition de base. Cette action est irréversible.";
        useDelete(id, "condition/base", refreshData, message);
    };

    // !FORM condition
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
            onEdit === false,
            "condition/base",
            data,
            refreshData,
            switchUpdateToCreate
        );
    };

    return (
        <>
            <h2 className="title">
                Condition de base
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
                    {conditionBase &&
                        conditionBase.length !== 0 &&
                        conditionBase.map((condition) => (
                            <div className="condition-base" key={condition.id}>
                                <p className="name">{condition.condition}</p>
                                <span
                                    className="edit"
                                    onClick={() => {
                                        setOnEdit(condition);
                                        setName(condition.condition);
                                    }}
                                >
                                    <i className="fa-solid fa-pen-to-square"></i>
                                </span>
                                <span
                                    className="delete"
                                    onClick={() => handleDelete(condition.id)}
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
                        <label htmlFor="name">Nom</label>
                    </div>
                    <button type="submit">
                        {onEdit ? "Mettre à jour" : "Ajouter"}
                    </button>
                </form>
            </div>
        </>
    );
}
