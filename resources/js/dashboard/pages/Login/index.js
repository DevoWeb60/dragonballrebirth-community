import React, { useRef } from "react";

export default function index({ setToken }) {
    const form = useRef();

    const handleSubmit = async (e) => {
        e.preventDefault();

        await axios.get("/sanctum/csrf-cookie");
        await axios
            .post("api/login", {
                email: form.current.email.value,
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
                        type="email"
                        id="email"
                        name="email"
                        placeholder="pseudo"
                    />
                    <label htmlFor="email">Email</label>
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
