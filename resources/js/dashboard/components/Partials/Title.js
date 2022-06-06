import React from "react";

export default function Title({ setOnUpdate, children, getData }) {
    return (
        <h2 className="title">
            {children}
            <span className="btn-container-dashboard">
                <span
                    className="btn-home invert"
                    onClick={() => setOnUpdate("NEW")}
                >
                    Ajouter
                </span>
                <span className="btn-home" onClick={() => getData()}>
                    Rafraichir
                </span>
            </span>
        </h2>
    );
}
