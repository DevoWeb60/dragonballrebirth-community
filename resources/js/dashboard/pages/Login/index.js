import React, { useRef } from "react";

export default function index({ setToken }) {
    const form = useRef();

    const handleSubmit = async (e) => {
        e.preventDefault();

        await axios.get("/sanctum/csrf-cookie");
        await axios
            .post("api/login", {
                name: form.current.name.value,
                password: form.current.password.value,
            })
            .then((response) => {
                axios.defaults.headers.common = {
                    Authorization: `Bearer ${response.data.token}`,
                };
                localStorage.setItem("connected", response.data.token);
                setToken(response.data.token);
            })
            .catch((error) => {
                console.log("erreur", error);
            });
    };

    return (
        <div className="container flex-center column full-grid">
            <h2 className="title">Espace administrateur</h2>
            <form method="POST" onSubmit={(e) => handleSubmit(e)} ref={form}>
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
                        type="password"
                        id="password"
                        name="password"
                        placeholder="mot de passe"
                    />
                    <label htmlFor="password">Mot de passe</label>
                </div>
                <button type="submit" className="">
                    Connexion
                </button>
            </form>
        </div>
    );
}
