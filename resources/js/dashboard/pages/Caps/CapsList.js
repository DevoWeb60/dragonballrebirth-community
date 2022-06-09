import React from "react";

export default function CapsList({
    caps,
    character = false,
    setOnUpdate,
    refreshData,
}) {
    const deleteCaps = (capsToDelete, characterId = false) => {
        const confirm = window.confirm(
            "ATTENTION ! Tu es sur le point de supprimer une capsule. Cette action est irréversible."
        );
        if (confirm) {
            axios
                .post("api/caps/delete", {
                    id: capsToDelete,
                    characterId: characterId,
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
        <div className="caps-container">
            {caps &&
                caps.length !== 0 &&
                caps.map((cap) => {
                    const condition =
                        character === true
                            ? cap.scarecities.id === 1
                            : cap.scarecities.id !== 1;
                    if (condition) {
                        return (
                            <div className="caps-list" key={cap.id}>
                                <div className="info">
                                    {cap.character?.id && (
                                        <span className="character-name">
                                            {cap.character.name}
                                            <img
                                                src={
                                                    cap.character.avatar +
                                                    "transformations/base/head.png"
                                                }
                                                alt=""
                                            />
                                        </span>
                                    )}
                                    <span className="name">
                                        {cap.name}
                                        <img
                                            src={cap.scarecities.icon}
                                            alt={cap.name}
                                        />
                                    </span>
                                </div>
                                <div className="stats">
                                    {cap.strength !== 0 && (
                                        <span className="strength">
                                            Force&nbsp;:&nbsp;
                                            <span
                                                className={
                                                    cap.strength > 0
                                                        ? "plus stat"
                                                        : "minus stat"
                                                }
                                            >
                                                {cap.strength}
                                            </span>
                                        </span>
                                    )}
                                    {cap.defense !== 0 && (
                                        <span className="defense">
                                            Défense&nbsp;:&nbsp;
                                            <span
                                                className={
                                                    cap.defense > 0
                                                        ? "plus stat"
                                                        : "minus stat"
                                                }
                                            >
                                                {cap.defense}
                                            </span>
                                        </span>
                                    )}
                                    {cap.energy !== 0 && (
                                        <span className="energy">
                                            Energie&nbsp;:&nbsp;
                                            <span
                                                className={
                                                    cap.energy > 0
                                                        ? "plus stat"
                                                        : "minus stat"
                                                }
                                            >
                                                {cap.energy}
                                            </span>
                                        </span>
                                    )}
                                    {cap.vitality !== 0 && (
                                        <span className="vitality">
                                            Vitalité&nbsp;:&nbsp;
                                            <span
                                                className={
                                                    cap.vitality > 0
                                                        ? "plus stat"
                                                        : "minus stat"
                                                }
                                            >
                                                {cap.vitality}
                                            </span>
                                        </span>
                                    )}
                                </div>

                                <span
                                    className="edit"
                                    onClick={() => setOnUpdate(cap)}
                                >
                                    <i className="fa-solid fa-pen-to-square"></i>
                                </span>
                                <span
                                    className="delete"
                                    onClick={() =>
                                        deleteCaps(cap.id, cap.character?.id)
                                    }
                                >
                                    <i className="fa-solid fa-trash"></i>
                                </span>
                            </div>
                        );
                    }
                })}
        </div>
    );
}
