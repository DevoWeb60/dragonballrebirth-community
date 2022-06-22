import React, { useState, useRef } from "react";
import Title from "../../../components/Partials/Title";
import Preview from "./UpdateComponent/Preview";
import FormTrain from "./UpdateComponent/FormTrain";

export default function UpdateTrain({
    getData,
    setOnUpdate,
    train,
    refreshData,
}) {
    const [name, setName] = useState(train.name || "");
    const [icon, setIcon] = useState(
        train.icon || "https://www.dragonballrebirth.fr/img/training/[image]"
    );
    const [duration, setDuration] = useState(train.duration_id || 0);
    const [gain, setGain] = useState(train.gain || 0);
    const [stepId, setStepId] = useState(train.step_id || 0);
    const [requiredLevel, setRequiredLevel] = useState(
        train.required_level || 0
    );
    const [mapCase, setMapCase] = useState(train.map_case_id || 0);
    const [planet, setPlanet] = useState(train.planet_id || 0);
    const [thumbnail, setThumbnail] = useState(
        train.thumbnail ||
            "https://www.dragonballrebirth.fr/img/metiers/[image.png]"
    );

    // !FORM CHARACTER
    const form = useRef();

    const handleSubmit = (e) => {
        e.preventDefault();
        const inputs = form.current;

        let data = {};

        data = {
            name: inputs[0].value,
            icon: inputs[1].value,
            thumbnail: inputs[2].value,
            step_id: inputs[3].value,
            required_level: inputs[4].value,
            gain: inputs[5].value,
            duration_id: inputs[6].value,
            map_case_id: inputs[7].value,
            planet_id: inputs[8].value,
            id: train.id,
        };

        if (train == "NEW") {
            axios
                .post("api/train/create", data)
                .then((res) => {
                    if (res.status == 200) {
                        refreshData();
                        setOnUpdate(false);
                    }
                })
                .catch((err) => console.log(err));
        } else {
            axios
                .post("api/train/update", data)
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
            <Title setOnUpdate={setOnUpdate} onUpdate={train}>
                <span>
                    {train == "NEW" ? (
                        <span>Nouveau métier</span>
                    ) : (
                        <span>
                            {train.name}
                            <img src={train.icon} alt="" />
                        </span>
                    )}
                </span>
            </Title>
            <FormTrain
                forwardRef={form}
                handleSubmit={handleSubmit}
                buttonText={train == "NEW" ? "Ajouter" : "Mettre à jour"}
                getData={getData}
                name={name}
                duration={duration}
                mapCase={mapCase}
                planet={planet}
                thumbnail={thumbnail}
                stepId={stepId}
                requiredLevel={requiredLevel}
                icon={icon}
                gain={gain}
                setIcon={setIcon}
                setGain={setGain}
                setStepId={setStepId}
                setRequiredLevel={setRequiredLevel}
                setName={setName}
                setDuration={setDuration}
                setMapCase={setMapCase}
                setPlanet={setPlanet}
                setThumbnail={setThumbnail}
            />
            <Preview
                getData={getData}
                name={name}
                icon={icon}
                thumbnail={thumbnail}
                stepId={stepId}
                requiredLevel={requiredLevel}
                gain={gain}
                duration={duration}
                mapCase={mapCase}
                planet={planet}
            />
        </>
    );
}
