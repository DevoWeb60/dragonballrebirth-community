import React from "react";

export default function Sidebar({ changePage }) {
    const logout = () => {
        localStorage.removeItem("connected");
        localStorage.removeItem("page");
        window.location = "/dashboard";
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
                <li className="page" onClick={() => changePage("story")}>
                    Histoires
                </li>
                <li
                    className="sub-page"
                    onClick={() => changePage("mainStories")}
                >
                    Catégories
                </li>
                <li className="page" onClick={() => changePage("condition")}>
                    Conditions
                </li>
                <li
                    className="sub-page"
                    onClick={() => changePage("conditionBase")}
                >
                    Base
                </li>
                <li className="page" onClick={() => changePage("reward")}>
                    Récompenses
                </li>
            </ul>

            <ul className="menu-item">
                <li className="title">
                    <h3>Divers</h3>
                </li>
                <li className="page" onClick={() => changePage("character")}>
                    Personnages
                </li>
                <li
                    className="sub-page"
                    onClick={() => changePage("characterCategory")}
                >
                    Catégories
                </li>
                <li className="page" onClick={() => changePage("caps")}>
                    Capsules
                </li>
                <li
                    className="sub-page"
                    onClick={() => changePage("scarecity")}
                >
                    Raretés
                </li>
                <li className="page" onClick={() => changePage("object")}>
                    Objets
                </li>
                <li
                    className="sub-page"
                    onClick={() => changePage("objectDuration")}
                >
                    Durées d'objet
                </li>
                <li className="page" onClick={() => changePage("work")}>
                    Métiers
                </li>
                <li className="page" onClick={() => changePage("train")}>
                    Entrainements
                </li>
                <li className="page" onClick={() => changePage("planet")}>
                    Planètes
                </li>
                <li className="sub-page" onClick={() => changePage("mapCase")}>
                    Case du monde
                </li>
                <li className="page" onClick={() => changePage("duration")}>
                    Durées
                </li>
            </ul>
            <ul className="menu-item">
                <li className="title">
                    <h3>Pages</h3>
                </li>
                <li
                    className="page"
                    onClick={() => changePage("entertainement")}
                >
                    Tournois
                </li>
                <li className="page" onClick={() => changePage("clans")}>
                    Guerre des clans
                </li>
                <li className="page" onClick={() => changePage("homePage")}>
                    Accueil
                </li>
            </ul>
            <ul className="menu-item">
                <li className="title">
                    <h3>Utilisateurs</h3>
                </li>
                <li className="page" onClick={() => changePage("profil")}>
                    Profil
                </li>
                <li className="page" onClick={() => changePage("newUser")}>
                    Nouveau
                </li>
            </ul>
            <a className="logout" onClick={logout}>
                <i className="fa-solid fa-arrow-right-from-bracket"></i>{" "}
                Déconnexion
            </a>
        </div>
    );
}
