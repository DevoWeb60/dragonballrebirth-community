import React from "react";

export default function Title({ setOnUpdate, children }) {
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
            </span>
        </h2>
    );
}
