import React from "react";

export default function Title({ setOnUpdate, children, onUpdate }) {
    return (
        <h2 className="title">
            {children}
            <span className="btn-container-dashboard">
                <span
                    className="btn-home invert"
                    onClick={() =>
                        setOnUpdate(onUpdate == false ? "NEW" : false)
                    }
                >
                    {onUpdate == false ? "Ajouter" : "Retour"}
                </span>
            </span>
        </h2>
    );
}
