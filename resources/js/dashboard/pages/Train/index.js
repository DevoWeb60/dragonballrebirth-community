import React, { useState, useEffect } from "react";
import Title from "../../components/Partials/Title";
import UpdateTrain from "./UpdateTrain";

export default function train({ getData, refreshData }) {
    const [trains, setTrains] = useState([]);
    const [onUpdate, setOnUpdate] = useState(false);

    useEffect(() => {
        setTrains(getData.trains);
    }, [getData]);

    console.log(trains);

    const deleteTrain = (id) => {
        const confirm = window.confirm(
            "ATTENTION ! Tu es sur le point de supprimer un entrainement. Cette action est irréversible."
        );
        if (confirm) {
            axios
                .post("api/train/delete", {
                    id,
                })
                .then((res) => {
                    if (res.status === 200) {
                        refreshData();
                    }
                })
                .catch((err) => console.log(err));
        }
    };

    return (
        <>
            {onUpdate === false ? (
                <>
                    <Title setOnUpdate={setOnUpdate} onUpdate={onUpdate}>
                        Les entrainements
                    </Title>
                    <div className="flex-galery">
                        {trains &&
                            trains.map((train) => (
                                <div className="train-list" key={train.id}>
                                    <span className="name">
                                        {train.name}
                                        {train.icon !== null && (
                                            <img src={train.icon} alt="" />
                                        )}
                                    </span>
                                    <span>{train.gain}</span>
                                    <span>{train.duration.duration}</span>
                                    <span className="location">
                                        {train.map_case.case}
                                        <span className="planet">
                                            {train.planet.planet}
                                            <img
                                                src={train.planet.icon}
                                                alt=""
                                            />
                                        </span>
                                    </span>
                                    <span
                                        className="edit"
                                        onClick={() => setOnUpdate(train)}
                                    >
                                        <i className="fa-solid fa-pen-to-square"></i>
                                    </span>
                                    <span
                                        className="delete"
                                        onClick={() => deleteTrain(train.id)}
                                    >
                                        <i className="fa-solid fa-trash"></i>
                                    </span>
                                </div>
                            ))}
                    </div>
                </>
            ) : (
                <UpdateTrain
                    refreshData={refreshData}
                    getData={getData}
                    setOnUpdate={setOnUpdate}
                    train={onUpdate}
                />
            )}
        </>
    );
}
