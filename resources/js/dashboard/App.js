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
    const [data, setData] = useState([]);
    const [requestCount, setRequestCount] = useState(0);
    const [page, setPage] = useState(localStorage.getItem("page") || "home");
    const [token, setToken] = useState(
        localStorage.getItem("connected") || false
    );

    const getAllData = () => {
        axios
            .get("api/alldata")
            .then((res) => {
                // console.log(res.data);
                setData(res.data);
            })
            .catch((err) => {
                setRequestCount((count) => count + 1);
                getAllData();
            });
    };

    if (requestCount > 5) {
        localStorage.removeItem("page");
        localStorage.removeItem("connected");
        window.location = "/dashboard";
    }

    useEffect(() => {
        if (localStorage.getItem("connected")) {
            axios.defaults.headers.common = {
                Authorization: `Bearer ${token}`,
            };
        }
        if (localStorage.getItem("connected")) {
            getAllData();
            // console.log("request");
        }
    }, [token]);

    // console.log(data);

    if (!token) {
        return (
            <div className="container">
                <Login setToken={setToken} />
            </div>
        );
    } else {
        return (
            <>
                <Sidebar setPage={setPage} />
                <div className="container-dashboard">
                    {page === "home" && (
                        <Home getData={data} refreshData={getAllData} />
                    )}
                    {page === "character" && (
                        <Character getData={data} refreshData={getAllData} />
                    )}
                    {page === "object" && (
                        <Object getData={data} refreshData={getAllData} />
                    )}
                    {page === "story" && (
                        <Story getData={data} refreshData={getAllData} />
                    )}
                    {page === "train" && (
                        <Train getData={data} refreshData={getAllData} />
                    )}
                    {page === "work" && (
                        <Work getData={data} refreshData={getAllData} />
                    )}
                    {page === "caps" && (
                        <Caps getData={data} refreshData={getAllData} />
                    )}
                    {page === "adventureMode" && (
                        <AdventureMode getData={data} />
                    )}
                    {page === "additionalQuest" && (
                        <AdditionalQuest getData={data} />
                    )}
                </div>
            </>
        );
    }
}
