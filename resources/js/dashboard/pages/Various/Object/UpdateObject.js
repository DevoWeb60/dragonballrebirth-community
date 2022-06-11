import React, { useState, useRef } from "react";
import Title from "../../../components/Partials/Title";
import FormObject from "./UpdateObject/FormObject";
import Preview from "./UpdateObject/Preview";

export default function UpdateObject({
    getData,
    setOnUpdate,
    object,
    refreshData,
}) {
    const [name, setName] = useState(object.name || "");
    const [icon, setIcon] = useState(
        object.icon ||
            "https://www.dragonballrebirth.fr/img/objet/[nom-image].[extension]"
    );
    const [duration, setDuration] = useState(object.object_duration_id || 0);
    const [consumable, setConsumable] = useState(
        object.consumable === 1 ? true : false || false
    );
    const [using, setUsing] = useState(object.using || "");
    const [description, setDescription] = useState(object.description || "");

    // !FORM CHARACTER
    const form = useRef();

    const handleSubmit = (e) => {
        e.preventDefault();
        const inputs = form.current;

        let data = {};

        data = {
            name: inputs[0].value,
            icon: inputs[1].value,
            object_duration_id: inputs[2].value,
            description: inputs[3].value,
            using: inputs[4].value,
            consumable: inputs[5].checked ? 1 : 0,
            id: object.id,
        };

        if (object === "NEW") {
            axios
                .post("api/object/create", data)
                .then((res) => {
                    if (res.status === 200) {
                        refreshData();
                        setOnUpdate(false);
                    }
                })
                .catch((err) => console.log(err));
        } else {
            axios
                .post("api/object/update", data)
                .then((res) => {
                    if (res.status === 200) {
                        refreshData();
                        setOnUpdate(false);
                    }
                })
                .catch((err) => console.log(err));
        }
    };

    return (
        <>
            <Title setOnUpdate={setOnUpdate} onUpdate={object}>
                <span>
                    {object === "NEW" ? (
                        <span>Nouvelle objet</span>
                    ) : (
                        <span>
                            {object.name}
                            <img src={object.icon} alt="" />
                        </span>
                    )}
                </span>
            </Title>
            <FormObject
                forwardRef={form}
                name={name}
                icon={icon}
                duration={duration}
                consumable={consumable}
                using={using}
                description={description}
                handleSubmit={handleSubmit}
                setName={setName}
                setIcon={setIcon}
                setDuration={setDuration}
                setConsumable={setConsumable}
                setUsing={setUsing}
                setDescription={setDescription}
                buttonText={object === "NEW" ? "Ajouter" : "Mettre à jour"}
                getData={getData}
            />
            <Preview
                getData={getData}
                name={name}
                icon={icon}
                duration={duration}
                consumable={consumable}
                using={using}
                description={description}
            />
        </>
    );
}
