import React from "react";

export default function Sidebar({ setPage }) {
    const changePage = (newPage) => {
        setPage(newPage);
    };

    return (
        <div className="sidebar">
            <h1 className="title">Espace Administrateur</h1>

            <h3 className="btn-home" onClick={() => changePage("home")}>
                Accueil
            </h3>

            <ul className="menu-item">
                <li className="title">
                    <h3>Aventure</h3>
                </li>
                <li
                    className="page"
                    onClick={() => changePage("adventureMode")}
                >
                    Mode Aventure
                </li>
                <li
                    className="page"
                    onClick={() => changePage("additionalQuest")}
                >
                    Quêtes Annexes
                </li>
            </ul>

            <ul className="menu-item">
                <li className="title">
                    <h3>Divers</h3>
                </li>
                <li className="page" onClick={() => changePage("character")}>
                    Personnages
                </li>
                <li className="page" onClick={() => changePage("caps")}>
                    Capsules
                </li>
                <li className="page" onClick={() => changePage("object")}>
                    Objets
                </li>
                <li className="page" onClick={() => changePage("work")}>
                    Métiers
                </li>
                <li className="page" onClick={() => changePage("train")}>
                    Entrainement
                </li>
            </ul>
        </div>
    );
}
