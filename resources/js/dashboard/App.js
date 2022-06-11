import React, { useEffect, useState } from "react";
import Sidebar from "./components/Sidebar/Sidebar";
import Home from "./pages/Home";
{
    /* !VARIOUS */
}
import Character from "./pages/Various/Character";
import Object from "./pages/Various/Object";
import Caps from "./pages/Various/Caps";
import Work from "./pages/Various/Work";
import Train from "./pages/Various/Train";
import Login from "./pages/Login";
import CategoryCharacter from "./pages/Various/Character/Sub/CategoryCharacter";
import Scarecity from "./pages/Various/Caps/Sub/Scarecity";
import ObjectDuration from "./pages/Various/Object/Sub/ObjectDuration";
import WaitingDuration from "./pages/Various/WaitingDuration/WaitingDuration";
import Planet from "./pages/Various/Planet/Planet";
import MapCase from "./pages/Various/Planet/MapCase/MapCase";
{
    /* !ADVENTURE  */
}
{
    /* OTHER PAGE  */
}
{
    /* USERS  */
}

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
                    {/* !VARIOUS */}
                    {page === "character" && (
                        <Character getData={data} refreshData={getAllData} />
                    )}
                    {page === "characterCategory" && (
                        <CategoryCharacter
                            getData={data}
                            refreshData={getAllData}
                        />
                    )}
                    {page === "object" && (
                        <Object getData={data} refreshData={getAllData} />
                    )}
                    {page === "objectDuration" && (
                        <ObjectDuration
                            getData={data}
                            refreshData={getAllData}
                        />
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
                    {page === "scarecity" && (
                        <Scarecity getData={data} refreshData={getAllData} />
                    )}
                    {page === "duration" && (
                        <WaitingDuration
                            getData={data}
                            refreshData={getAllData}
                        />
                    )}
                    {page === "planet" && (
                        <Planet getData={data} refreshData={getAllData} />
                    )}
                    {page === "mapCase" && (
                        <MapCase getData={data} refreshData={getAllData} />
                    )}
                    {/* !ADVENTURE  */}
                    {/* OTHER PAGE  */}
                    {/* USERS  */}
                </div>
            </>
        );
    }
}
