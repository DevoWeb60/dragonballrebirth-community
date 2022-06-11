import axios from "axios";
import React, { useEffect, useState, useRef } from "react";

export default function ObjectDuration({ getData, refreshData }) {
    const [durations, setDurations] = useState([]);
    const [onEdit, setOnEdit] = useState(false);
    const [name, setName] = useState(onEdit.name || "");

    useEffect(() => {
        setDurations(getData.objectDurations);
    }, [getData]);

    const deleteDuration = (id) => {
        const confirm = window.confirm(
            "ATTENTION ! Tu es sur le point de supprimer une durée d'objet. Cette action est irréversible."
        );
        if (confirm) {
            axios
                .post("api/object/duration/delete", { id: id })
                .then((res) => {
                    if (res.status === 200) {
                        refreshData();
                    }
                })
                .catch((err) => console.log(err));
        }
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

        if (onEdit === false) {
            axios
                .post("api/object/duration/create", data)
                .then((res) => {
                    if (res.status === 200) {
                        refreshData();
                        switchUpdateToCreate();
                    }
                })
                .catch((err) => console.log(err));
        } else {
            axios
                .post("api/object/duration/update", data)
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
                Durées d'objets
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
                    {durations &&
                        durations.length !== 0 &&
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
                                    onClick={() => deleteDuration(duration.id)}
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
