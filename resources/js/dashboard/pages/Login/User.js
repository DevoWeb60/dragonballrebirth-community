import axios from "axios";
import React, { useRef, useState, useEffect } from "react";
import { useInsertOrUpdate } from "../../customHook/useInsertOrUpdate";

export default function User({ user, refreshData, setPage }) {
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState({});

    useEffect(() => {
        if (user) {
            setLoading(false);
        }
    }, [user]);

    const form = useRef();
    const handleSubmit = async (e) => {
        e.preventDefault();

        const inputs = form.current;
        let data = {
            id: user.id,
            name: inputs.name.value,
            email: inputs.email.value,
            role: inputs.role.value,
        };
        if (inputs.password.value !== "") {
            if (inputs.password.value === inputs.confirm_password.value) {
                data = { ...data, password: inputs.password.value };
            } else {
                setError({
                    password: "Les mots de passe ne correspondent pas.",
                });
            }
        }
        // if (inputs.picture.files[0]) {
        //     data = { ...data, picture: inputs.picture.files[0] };
        // }

        // console.log(data);

        useInsertOrUpdate(false, "user", data, refreshData, () =>
            setPage("home")
        );
    };

    if (loading) {
        return (
            <div className="container flex-center">
                <h1>Chargement...</h1>
            </div>
        );
    }

    return (
        <div className="container column w-50">
            <h2 className="title">Profil : {user.name}</h2>
            <form
                method="POST"
                onSubmit={(e) => handleSubmit(e)}
                ref={form}
                className="w-100 form-flex"
                encType="multipart/form-data"
            >
                {/* <div className="form-group w-100">
                    <input
                        type="file"
                        name="picture"
                        id="picture"
                        accept="image/*"
                    />
                    <label htmlFor="picture">Avatar</label>
                </div> */}
                <div className="form-group">
                    <input
                        type="text"
                        id="name"
                        name="name"
                        placeholder="pseudo"
                        defaultValue={user.name}
                    />
                    <label htmlFor="name">Pseudo</label>
                </div>
                <div className="form-group">
                    <input
                        type="email"
                        id="email"
                        name="email"
                        placeholder="adresse mail"
                        defaultValue={user.email}
                    />
                    <label htmlFor="email">Adresse Mail</label>
                </div>
                <div className="form-group w-100">
                    <input
                        type="text"
                        id="role"
                        name="role"
                        placeholder="pseudo"
                        defaultValue={user.role || ""}
                    />
                    <label htmlFor="role">Rôle</label>
                </div>
                <div className="form-group w-100">
                    <input
                        type="password"
                        id="password"
                        name="password"
                        placeholder="mot de passe"
                    />
                    <label htmlFor="password">Mot de passe</label>
                </div>
                <div className="form-group w-100">
                    <input
                        type="password"
                        id="confirm_password"
                        name="confirm_password"
                        placeholder="mot de passe"
                    />
                    <label htmlFor="confirm_password">
                        Confirmation du mot de passe
                    </label>
                    {error?.password && (
                        <p className="error">{error.password}</p>
                    )}
                </div>
                <button type="submit">Enregistrer</button>
            </form>
        </div>
    );
}
