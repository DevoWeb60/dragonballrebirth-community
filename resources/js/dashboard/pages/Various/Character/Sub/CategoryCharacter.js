import axios from "axios";
import React, { useEffect, useState, useRef } from "react";

export default function CategoryCharacter({ getData, refreshData }) {
    const [categories, setCategories] = useState([]);
    const [onEdit, setOnEdit] = useState(false);
    const [name, setName] = useState(onEdit.name || "");

    useEffect(() => {
        setCategories(getData.categories);
    }, [getData]);

    const deleteCategory = (id) => {
        const confirm = window.confirm(
            "ATTENTION ! Tu es sur le point de supprimer une catégorie. Cette action est irréversible."
        );
        if (confirm) {
            axios
                .post("api/character/category/delete", { id: id })
                .then((res) => {
                    if (res.status === 200) {
                        refreshData();
                    }
                })
                .catch((err) => console.log(err));
        }
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

        if (onEdit === false) {
            axios
                .post("api/character/category/create", data)
                .then((res) => {
                    if (res.status === 200) {
                        refreshData();
                        switchUpdateToCreate();
                    }
                })
                .catch((err) => console.log(err));
        } else {
            axios
                .post("api/character/category/update", data)
                .then((res) => {
                    if (res.status === 200) {
                        refreshData();
                        switchUpdateToCreate();
                    }
                })
                .catch((err) => console.log(err));
        }
    };

    return (
        <>
            <h2 className="title">
                Catégorie de personnage
                {onEdit && (
                    <span
                        onClick={switchUpdateToCreate}
                        class="btn-home invert"
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
                                    onClick={() => deleteCategory(category.id)}
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
