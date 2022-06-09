import React, { useState, useEffect } from "react";
import Title from "../../components/Partials/Title";
import UpdateWork from "./UpdateWork";

export default function Work({ getData, refreshData }) {
    const [works, setWorks] = useState([]);
    const [onUpdate, setOnUpdate] = useState(false);

    useEffect(() => {
        setWorks(getData.works);
    }, [getData]);

    const deleteWork = (id) => {
        const confirm = window.confirm(
            "ATTENTION ! Tu es sur le point de supprimer un métier. Cette action est irréversible."
        );
        if (confirm) {
            axios
                .post("api/work/delete", {
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
                        Les métiers
                    </Title>
                    <div className="flex-galery">
                        {works &&
                            works.map((work) => (
                                <div
                                    className="work-list"
                                    key={work.id}
                                    style={{
                                        backgroundImage:
                                            "linear-gradient(to top, rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url(" +
                                            work.thumbnail +
                                            ")",
                                    }}
                                >
                                    <span className="name">{work.name}</span>
                                    <span className="object-reward">
                                        {work.object.name}
                                        <img src={work.object.icon} alt="" />
                                    </span>
                                    <span>{work.duration.duration}</span>
                                    <span className="location">
                                        {work.map_case.case}
                                        <span className="planet">
                                            {work.planet.planet}
                                            <img
                                                src={work.planet.icon}
                                                alt=""
                                            />
                                        </span>
                                    </span>
                                    <span
                                        className="edit"
                                        onClick={() => setOnUpdate(work)}
                                    >
                                        <i className="fa-solid fa-pen-to-square"></i>
                                    </span>
                                    <span
                                        className="delete"
                                        onClick={() => deleteWork(work.id)}
                                    >
                                        <i className="fa-solid fa-trash"></i>
                                    </span>
                                </div>
                            ))}
                    </div>
                </>
            ) : (
                <UpdateWork
                    refreshData={refreshData}
                    getData={getData}
                    setOnUpdate={setOnUpdate}
                    work={onUpdate}
                />
            )}
        </>
    );
}
