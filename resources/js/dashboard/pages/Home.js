import React, { useEffect, useState } from "react";

export default function Home({ getData }) {
    const [user, setUser] = useState([]);

    useEffect(() => {
        setUser(getData.user);
    }, [getData]);

    return (
        <>
            <h2 className="title">Bienvenue {user && user.name} !</h2>
            <p className="info">
                Toujours dans l'optique de simplifier un maximum
                l'administration. Je fais un sorte de faire des pages unique dès
                que possible. Chaque page dédié à un sujet te permettra
                d'ajouter, modifier, supprimer en temps réel les données de
                celui-ci.
            </p>
        </>
    );
}
