import axios from "axios";
import React, { useEffect, useState, useRef } from "react";
import { useInsertOrUpdate } from "../../../../customHook/useInsertOrUpdate";

export default function Scarecity({ getData, refreshData }) {
    const initialIconLink =
        "https://www.dragonballrebirth.fr/css/images/capsules/[image]";
    const [scarecities, setScarecities] = useState([]);
    const [onEdit, setOnEdit] = useState(false);
    const [name, setName] = useState(onEdit.name || "");
    const [icon, setIcon] = useState(onEdit.icon || initialIconLink);

    useEffect(() => {
        setScarecities(getData.capsScarecities);
    }, [getData]);

    const deleteScarecity = (id) => {
        const confirm = window.confirm(
            "ATTENTION ! Tu es sur le point de supprimer une rareté. Cette action est irréversible."
        );
        let confirmWarning = false;
        if (confirm) {
            confirmWarning = window.confirm(
                "Si tu supprime cette rareté, TOUTES LES CAPSULES possèdant cette rareté seront supprimées. Es-tu sûr de vouloir supprimer cette rareté ?"
            );
        }

        if (confirmWarning) {
            axios
                .post("api/caps/scarecity/delete", { id: id })
                .then((res) => {
                    if (res.status == 200) {
                        refreshData();
                    }
                })
                .catch((err) => console.log(err));
        }
    };

    // !FORM scarecity
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
            "caps/scarecity",
            data,
            refreshData,
            switchUpdateToCreate
        );
    };

    return (
        <>
            <h2 className="title">
                Rareté de capsule
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
                    {scarecities &&
                        scarecities.length != 0 &&
                        scarecities.map((scarecity) => (
                            <div className="scarecity" key={scarecity.id}>
                                <p className="name">
                                    {scarecity.name}
                                    <img src={scarecity.icon} alt="" />
                                </p>
                                <span
                                    className="edit"
                                    onClick={() => {
                                        setOnEdit(scarecity);
                                        setName(scarecity.name);
                                        setIcon(scarecity.icon);
                                    }}
                                >
                                    <i className="fa-solid fa-pen-to-square"></i>
                                </span>
                                <span
                                    className="delete"
                                    onClick={() =>
                                        deleteScarecity(scarecity.id)
                                    }
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
