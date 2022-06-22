import React, { useEffect, useState, useRef } from "react";
import { useDelete } from "../../../customHook/useDelete";
import { useInsertOrUpdate } from "../../../customHook/useInsertOrUpdate";

export default function Planet({ getData, refreshData }) {
    const initialIconLink = "https://www.dragonballrebirth.fr/img/icon/[image]";
    const [planets, setPlanets] = useState([]);
    const [onEdit, setOnEdit] = useState(false);
    const [name, setName] = useState(onEdit.name || "");
    const [icon, setIcon] = useState(onEdit.icon || initialIconLink);

    useEffect(() => {
        setPlanets(getData.planets);
    }, [getData]);

    // !FORM planet
    const form = useRef();

    const switchUpdateToCreate = () => {
        setOnEdit(false);
        setName("");
        setIcon(initialIconLink);
    };

    const handleSubmit = (e) => {
        e.preventDefault();
        const inputs = form.current;

        let data = {};

        data = {
            name: inputs[0].value,
            icon: inputs[1].value,
            id: onEdit ? onEdit.id : null,
        };

        useInsertOrUpdate(
            onEdit == false,
            "planet",
            data,
            refreshData,
            switchUpdateToCreate
        );
    };

    const handleDelete = (id) => {
        const message =
            "ATTENTION ! Tu es sur le point de supprimer une planète. Cette action est irréversible.";
        useDelete(id, "planet", refreshData, message);
    };

    return (
        <>
            <h2 className="title">
                Les planètes
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
                    {planets &&
                        planets.length != 0 &&
                        planets.map((planet) => (
                            <div className="planet" key={planet.id}>
                                <p className="name">
                                    {planet.planet}
                                    <img src={planet.icon} alt="" />
                                </p>
                                <span
                                    className="edit"
                                    onClick={() => {
                                        setOnEdit(planet);
                                        setName(planet.planet);
                                        setIcon(planet.icon);
                                    }}
                                >
                                    <i className="fa-solid fa-pen-to-square"></i>
                                </span>
                                <span
                                    className="delete"
                                    onClick={() => handleDelete(planet.id)}
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
                            type="text"
                            name="icon"
                            placeholder="CSS"
                            value={icon}
                            className="w-100"
                            onChange={(e) => setIcon(e.target.value)}
                        />
                        <label htmlFor="icon">Icône</label>
                    </div>
                    <button type="submit">
                        {onEdit ? "Mettre à jour" : "Ajouter"}
                    </button>
                </form>
            </div>
        </>
    );
}
