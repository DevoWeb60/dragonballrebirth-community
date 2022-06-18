import React, { useEffect, useState, useRef } from "react";
import { useInsertOrUpdate } from "../../../../customHook/useInsertOrUpdate";
import { useDelete } from "../../../../customHook/useDelete";

export default function MainStory({ getData, refreshData }) {
    const [mainStories, setMainStories] = useState([]);
    const [onEdit, setOnEdit] = useState(false);
    const [name, setName] = useState(onEdit.name || "");
    const [id, setId] = useState(onEdit.id || "");

    useEffect(() => {
        setMainStories(getData.mainStories);
    }, [getData]);

    const handleDelete = (id) => {
        const message =
            "ATTENTION ! Tu es sur le point de supprimer une catégorie d'histoire. Cette action est irréversible.";
        useDelete(id, "story/category", refreshData, message);
    };

    // !FORM story
    const form = useRef();

    const switchUpdateToCreate = () => {
        setOnEdit(false);
        setName("");
        setId("");
    };

    const handleSubmit = (e) => {
        e.preventDefault();
        const inputs = form.current;

        let data = {};

        data = {
            name: inputs[0].value,
            id: inputs[1].value,
            origin_id: onEdit ? onEdit.id : null,
        };

        useInsertOrUpdate(
            onEdit === false,
            "story/category",
            data,
            refreshData,
            switchUpdateToCreate
        );
    };

    return (
        <>
            <h2 className="title">
                Catégories d'histoire
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
                    {mainStories &&
                        mainStories.length !== 0 &&
                        mainStories.map((story) => (
                            <div className="main-story" key={story.id}>
                                <p className="name">
                                    <span>{story.id}&nbsp;:&nbsp; </span>
                                    {story.name}
                                </p>
                                <span
                                    className="edit"
                                    onClick={() => {
                                        setOnEdit(story);
                                        setName(story.name);
                                        setId(story.id);
                                    }}
                                >
                                    <i className="fa-solid fa-pen-to-square"></i>
                                </span>
                                <span
                                    className="delete"
                                    onClick={() => handleDelete(story.id)}
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
                    <div className="form-group">
                        <input
                            type="number"
                            name="id"
                            placeholder="CSS"
                            value={id}
                            className="w-100"
                            onChange={(e) => setId(Number(e.target.value))}
                        />
                        <label htmlFor="id">Position (Doit être unique)</label>
                    </div>
                    <button type="submit">
                        {onEdit ? "Mettre à jour" : "Ajouter"}
                    </button>
                </form>
            </div>
        </>
    );
}
