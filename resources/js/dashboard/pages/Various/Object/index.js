import React, { useState, useEffect } from "react";
import Title from "../../../components/Partials/Title";
import UpdateObject from "./UpdateObject";

export default function Object({ getData, refreshData }) {
    const [objects, setObjects] = useState([]);
    const [onUpdate, setOnUpdate] = useState(false);

    useEffect(() => {
        setObjects(getData.objects);
    }, [getData]);

    // console.log(objects);

    const deleteObject = (id) => {
        const confirm = window.confirm(
            "ATTENTION ! Tu es sur le point de supprimer un objet. Cette action est irréversible."
        );
        if (confirm) {
            axios
                .post("api/object/delete", {
                    id,
                })
                .then((res) => {
                    if (res.status == 200) {
                        refreshData();
                    }
                })
                .catch((err) => console.log(err));
        }
    };

    return (
        <>
            {onUpdate == false ? (
                <>
                    <Title setOnUpdate={setOnUpdate} onUpdate={onUpdate}>
                        Les objets
                    </Title>
                    <div className="flex-galery">
                        {objects &&
                            objects.map((object) => (
                                <div className="object-list" key={object.id}>
                                    <span className="name">
                                        <img src={object.icon} alt="" />
                                        {object.name}
                                    </span>
                                    <span>{object.duration.duration}</span>
                                    <span>
                                        {object.consumable == 1
                                            ? "Consommable"
                                            : null}
                                    </span>
                                    <span
                                        className="edit"
                                        onClick={() => setOnUpdate(object)}
                                    >
                                        <i className="fa-solid fa-pen-to-square"></i>
                                    </span>
                                    <span
                                        className="delete"
                                        onClick={() => deleteObject(object.id)}
                                    >
                                        <i className="fa-solid fa-trash"></i>
                                    </span>
                                </div>
                            ))}
                    </div>
                </>
            ) : (
                <UpdateObject
                    refreshData={refreshData}
                    getData={getData}
                    setOnUpdate={setOnUpdate}
                    object={onUpdate}
                />
            )}
        </>
    );
}
