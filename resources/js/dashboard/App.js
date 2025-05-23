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
import Story from "./pages/Adventure/Story";
import MainStory from "./pages/Adventure/Story/Sub/MainStory";
import Conditions from "./pages/Adventure/Conditions/Conditions";
import ConditionBase from "./pages/Adventure/Conditions/Sub/ConditionBase";
import Reward from "./pages/Adventure/Rewards/Reward";
{
    /* OTHER PAGE  */
}
{
    /* USERS  */
}
import Register from "./pages/Login/Register";
import User from "./pages/Login/User";

export default function App() {
    const [data, setData] = useState([]);
    const [requestCount, setRequestCount] = useState(0);
    const [page, setPage] = useState(localStorage.getItem("page") || "home");
    const [token, setToken] = useState(
        localStorage.getItem("connected") || false
    );

    const changePage = (newPage) => {
        localStorage.setItem("page", newPage);
        setPage(localStorage.getItem("page"));
    };

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
                <Sidebar changePage={changePage} />
                <div className="container-dashboard">
                    {page == "home" && (
                        <Home getData={data} refreshData={getAllData} />
                    )}
                    {/* !VARIOUS */}
                    {page == "character" && (
                        <Character getData={data} refreshData={getAllData} />
                    )}
                    {page == "characterCategory" && (
                        <CategoryCharacter
                            getData={data}
                            refreshData={getAllData}
                        />
                    )}
                    {page == "object" && (
                        <Object getData={data} refreshData={getAllData} />
                    )}
                    {page == "objectDuration" && (
                        <ObjectDuration
                            getData={data}
                            refreshData={getAllData}
                        />
                    )}
                    {page == "story" && (
                        <Story getData={data} refreshData={getAllData} />
                    )}
                    {page == "train" && (
                        <Train getData={data} refreshData={getAllData} />
                    )}
                    {page == "work" && (
                        <Work getData={data} refreshData={getAllData} />
                    )}
                    {page == "caps" && (
                        <Caps getData={data} refreshData={getAllData} />
                    )}
                    {page == "scarecity" && (
                        <Scarecity getData={data} refreshData={getAllData} />
                    )}
                    {page == "duration" && (
                        <WaitingDuration
                            getData={data}
                            refreshData={getAllData}
                        />
                    )}
                    {page == "planet" && (
                        <Planet getData={data} refreshData={getAllData} />
                    )}
                    {page == "mapCase" && (
                        <MapCase getData={data} refreshData={getAllData} />
                    )}
                    {/* !ADVENTURE  */}
                    {page == "mainStories" && (
                        <MainStory getData={data} refreshData={getAllData} />
                    )}
                    {page == "condition" && (
                        <Conditions getData={data} refreshData={getAllData} />
                    )}
                    {page == "conditionBase" && (
                        <ConditionBase
                            getData={data}
                            refreshData={getAllData}
                        />
                    )}
                    {page == "reward" && (
                        <Reward getData={data} refreshData={getAllData} />
                    )}
                    {/* OTHER PAGE  */}
                    {/* USERS  */}
                    {page == "newUser" && (
                        <Register
                            getData={data}
                            refreshData={getAllData}
                            changePage={changePage}
                        />
                    )}
                    {page == "profil" && (
                        <User
                            user={data.user}
                            refreshData={getAllData}
                            changePage={changePage}
                        />
                    )}
                </div>
            </>
        );
    }
}
