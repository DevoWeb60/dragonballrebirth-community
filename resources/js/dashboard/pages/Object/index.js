import React, { useState, useEffect } from "react";

export default function Object() {
    const [requestCount, setRequestCount] = useState(0);

    const getData = () => {
        axios
            .get("api/object")
            .then((res) => {
                console.log(res.data);
            })
            .catch((err) => {
                setRequestCount((count) => count + 1);
                getData();
            });
    };

    if (requestCount > 5) {
        localStorage.removeItem("page");
        localStorage.removeItem("connected");
        window.location = "/dashboard";
    }

    useEffect(() => {
        getData();
    }, []);
    return <div>Object</div>;
}
