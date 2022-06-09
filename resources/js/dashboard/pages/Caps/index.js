import React, { useState, useEffect } from "react";
import Title from "../../components/Partials/Title";
import CapsList from "./CapsList";
import UpdateCaps from "./UpdateCaps";

export default function Caps({ getData, refreshData }) {
    const [caps, setCaps] = useState([]);
    const [onUpdate, setOnUpdate] = useState(false);

    useEffect(() => {
        setCaps(getData.caps);
    }, [getData]);

    // console.log(caps);

    return (
        <>
            {onUpdate === false ? (
                <>
                    <Title setOnUpdate={setOnUpdate} onUpdate={onUpdate}>
                        Les capsules
                    </Title>
                    <div className="flex-galery">
                        <CapsList
                            caps={caps}
                            setOnUpdate={setOnUpdate}
                            character={true}
                            refreshData={refreshData}
                        />
                        <CapsList
                            caps={caps}
                            setOnUpdate={setOnUpdate}
                            refreshData={refreshData}
                        />
                    </div>
                </>
            ) : (
                <UpdateCaps
                    getData={getData}
                    cap={onUpdate}
                    setOnUpdate={setOnUpdate}
                    refreshData={refreshData}
                />
            )}
        </>
    );
}
