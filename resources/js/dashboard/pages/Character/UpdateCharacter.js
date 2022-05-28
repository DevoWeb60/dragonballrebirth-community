import React from "react";

export default function UpdateCharacter({ character, setOnUpdate }) {
    const back = () => {
        setOnUpdate(false);
    };

    return (
        <h2 className="title">
            {character.name}{" "}
            <span className="btn-home invert" onClick={back}>
                Retour
            </span>
        </h2>
    );
}
