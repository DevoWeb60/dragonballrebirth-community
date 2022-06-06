import React, { useState, useEffect } from "react";
import Title from "../../components/Partials/Title";
import GreenCaps from "./GreenCaps";
import OtherCaps from "./OtherCaps";
import UpdateCaps from "./UpdateCaps/UpdateCaps";

export default function Caps() {
    const [otherCaps, setOtherCaps] = useState([]);
    const [greenCaps, setGreenCaps] = useState([]);
    const [otherCapsIcons, setOtherCapsIcons] = useState([]);
    const [greenCapsIcons, setGreenCapsIcons] = useState([]);
    const [requestCount, setRequestCount] = useState(0);
    const [onUpdate, setOnUpdate] = useState(false);

    const getData = () => {
        axios
            .get("api/caps")
            .then((res) => {
                const dataCaps = res.data.caps;
                const dataIcons = res.data.scarecities;

                const getOtherCaps = dataCaps.filter(
                    (other) => other.caps_scarecities_id !== 1
                );
                const getGreenCaps = dataCaps.filter(
                    (green) => green.caps_scarecities_id === 1
                );
                const getOtherCapsIcons = dataIcons.filter(
                    (icon) => icon.id !== 1
                );
                const getGreenCapsIcons = dataIcons.filter(
                    (icon) => icon.id === 1
                );

                setOtherCaps(getOtherCaps);
                setGreenCaps(getGreenCaps);
                setOtherCapsIcons(getOtherCapsIcons);
                setGreenCapsIcons(getGreenCapsIcons);
            })
            .catch((err) => {
                if (err.request.status === 429 || err.request.status === 401) {
                    setRequestCount((count) => count + 1);
                }
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

    return (
        <>
            {onUpdate === false ? (
                <>
                    <Title setOnUpdate={setOnUpdate} getData={getData}>
                        Les capsules
                    </Title>
                    <div className="flex-galery">
                        <GreenCaps
                            greenCaps={greenCaps}
                            greenCapsIcon={greenCapsIcons}
                        />
                        <OtherCaps
                            otherCaps={otherCaps}
                            otherCapsIcons={otherCapsIcons}
                        />
                    </div>
                </>
            ) : (
                <UpdateCaps />
            )}
        </>
    );
}
