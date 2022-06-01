import React, { useEffect, useState } from "react";
import Sidebar from "./components/Sidebar/Sidebar";
import Home from "./pages/Home";
import Character from "./pages/Character";
import Object from "./pages/Object";
import Caps from "./pages/Caps";
import Work from "./pages/Work";
import Train from "./pages/Train";
import AdventureMode from "./pages/AdventureMode";
import AdditionalQuest from "./pages/AdditionalQuest";
import Story from "./pages/Story";
import Login from "./pages/Login";

export default function App() {
    const [page, setPage] = useState(localStorage.getItem("page") || "home");
    const [token, setToken] = useState(
        localStorage.getItem("connected") || false
    );

    useEffect(() => {
        if (localStorage.getItem("connected")) {
            axios.defaults.headers.common = {
                Authorization: `Bearer ${token}`,
            };
        }
    }, [token]);

    if (!token) {
        return <Login setToken={setToken} />;
    } else {
        return (
            <>
                <Sidebar setPage={setPage} />
                <div className="container-dashboard">
                    {page === "home" && <Home />}
                    {page === "character" && <Character />}
                    {page === "object" && <Object />}
                    {page === "story" && <Story />}
                    {page === "train" && <Train />}
                    {page === "work" && <Work />}
                    {page === "caps" && <Caps />}
                    {page === "adventureMode" && <AdventureMode />}
                    {page === "additionalQuest" && <AdditionalQuest />}
                </div>
            </>
        );
    }
}
