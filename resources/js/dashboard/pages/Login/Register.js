import React, { useRef, useState } from "react";
import { useInsertOrUpdate } from "../../customHook/useInsertOrUpdate";

export default function Register({ refreshData, changePage }) {
    const [error, setError] = useState({});
    const form = useRef();

    const handleSubmit = async (e) => {
        e.preventDefault();

        const inputs = form.current;
        if (inputs.password.value === inputs.confirm_password.value) {
            let data = {
                name: inputs.name.value,
                email: inputs.email.value,
                role: inputs.role.value,
                password: inputs.password.value,
            };
            useInsertOrUpdate(true, "user", data, refreshData, () =>
                changePage("home")
            );
        } else {
            setError({
                passwordConfirm: "Les mots de passe ne correspondent pas",
            });
        }
    };

    return (
        <div className="container flex-center column w-50">
            <h2 className="title">Créer un compte</h2>
            <form
                method="POST"
                onSubmit={(e) => handleSubmit(e)}
                ref={form}
                className="w-100 form-flex"
            >
                <div className="form-group">
                    <input
                        type="text"
                        id="name"
                        name="name"
                        placeholder="pseudo"
                    />
                    <label htmlFor="name">Pseudo</label>
                </div>
                <div className="form-group">
                    <input
                        type="email"
                        id="email"
                        name="email"
                        placeholder="adresse mail"
                    />
                    <label htmlFor="email">Adresse Mail</label>
                </div>
                <div className="form-group w-100">
                    <input
                        type="text"
                        id="role"
                        name="role"
                        placeholder="pseudo"
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
                    <label htmlFor="confirm-password">
                        Confirmation du mot de passe
                    </label>
                    {error && <p className="error">{error.passwordConfirm}</p>}
                </div>
                <button type="submit">Enregistrer</button>
            </form>
        </div>
    );
}
