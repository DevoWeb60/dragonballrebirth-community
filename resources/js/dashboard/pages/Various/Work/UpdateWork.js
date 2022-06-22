import React, { useState, useRef } from "react";
import Title from "../../../components/Partials/Title";
import Preview from "./UpdateComponent/Preview";
import FormWork from "./UpdateComponent/FormWork";

export default function UpdateWork({
    getData,
    setOnUpdate,
    work,
    refreshData,
}) {
    const [name, setName] = useState(work.name || "");
    const [duration, setDuration] = useState(work.waiting_duration_id || 0);
    const [utils, setUtils] = useState(work.utils || "");
    const [mapCase, setMapCase] = useState(work.map_case_id || 0);
    const [object, setObject] = useState(work.object_id || 0);
    const [planet, setPlanet] = useState(work.planet_id || 0);
    const [thumbnail, setThumbnail] = useState(
        work.thumbnail ||
            "https://www.dragonballrebirth.fr/img/metiers/[image.png]"
    );
    const [unlockStep, setUnlockStep] = useState(work.unlock_step || 0);

    // !FORM CHARACTER
    const form = useRef();

    const handleSubmit = (e) => {
        e.preventDefault();
        const inputs = form.current;

        let data = {};

        data = {
            name: inputs[0].value,
            utils: inputs[1].value,
            thumbnail: inputs[2].value,
            unlock_step: inputs[3].value,
            waiting_duration_id: inputs[4].value,
            map_case_id: inputs[5].value,
            planet_id: inputs[6].value,
            object_id: inputs[7].value,
            id: work.id,
        };

        console.log(data);

        if (work == "NEW") {
            axios
                .post("api/work/create", data)
                .then((res) => {
                    if (res.status == 200) {
                        refreshData();
                        setOnUpdate(false);
                    }
                })
                .catch((err) => console.log(err));
        } else {
            axios
                .post("api/work/update", data)
                .then((res) => {
                    if (res.status == 200) {
                        refreshData();
                        setOnUpdate(false);
                    }
                })
                .catch((err) => console.log(err));
        }
    };

    return (
        <>
            <Title setOnUpdate={setOnUpdate} onUpdate={work}>
                <span>
                    {work == "NEW" ? (
                        <span>Nouveau métier</span>
                    ) : (
                        <span>
                            {work.name}
                            <img src={work.icon} alt="" />
                        </span>
                    )}
                </span>
            </Title>
            <FormWork
                forwardRef={form}
                handleSubmit={handleSubmit}
                buttonText={work == "NEW" ? "Ajouter" : "Mettre à jour"}
                getData={getData}
                name={name}
                duration={duration}
                utils={utils}
                mapCase={mapCase}
                object={object}
                planet={planet}
                thumbnail={thumbnail}
                unlockStep={unlockStep}
                setName={setName}
                setDuration={setDuration}
                setUtils={setUtils}
                setMapCase={setMapCase}
                setObject={setObject}
                setPlanet={setPlanet}
                setThumbnail={setThumbnail}
                setUnlockStep={setUnlockStep}
            />
            <Preview
                getData={getData}
                name={name}
                duration={duration}
                utils={utils}
                mapCase={mapCase}
                object={object}
                planet={planet}
                thumbnail={thumbnail}
                unlockStep={unlockStep}
            />
        </>
    );
}
