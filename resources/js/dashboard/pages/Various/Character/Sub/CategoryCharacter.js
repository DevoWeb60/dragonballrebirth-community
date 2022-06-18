import axios from "axios";
import React, { useEffect, useState, useRef } from "react";
import { useInsertOrUpdate } from "../../../../customHook/useInsertOrUpdate";
import { useDelete } from "../../../../customHook/useDelete";

export default function CategoryCharacter({ getData, refreshData }) {
    const [categories, setCategories] = useState([]);
    const [onEdit, setOnEdit] = useState(false);
    const [name, setName] = useState(onEdit.name || "");

    useEffect(() => {
        setCategories(getData.categories);
    }, [getData]);

    const handleDelete = (id) => {
        const message =
            "ATTENTION ! Tu es sur le point de supprimer une catégorie. Cette action est irréversible.";
        useDelete(id, "character/category", refreshData, message);
    };

    // !FORM CATEGORY
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
            "character/category",
            data,
            refreshData,
            switchUpdateToCreate
        );
    };

    return (
        <>
            <h2 className="title">
                Catégorie de personnage
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
                    {categories &&
                        categories.length !== 0 &&
                        categories.map((category) => (
                            <div className="category" key={category.id}>
                                <p className="name">{category.name}</p>
                                <span
                                    className="edit"
                                    onClick={() => {
                                        setOnEdit(category);
                                        setName(category.name);
                                    }}
                                >
                                    <i className="fa-solid fa-pen-to-square"></i>
                                </span>
                                <span
                                    className="delete"
                                    onClick={() => handleDelete(category.id)}
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
                        <label htmlFor="name">Nom de la catégorie</label>
                    </div>
                    <button type="submit">
                        {onEdit ? "Mettre à jour" : "Ajouter"}
                    </button>
                </form>
            </div>
        </>
    );
}
