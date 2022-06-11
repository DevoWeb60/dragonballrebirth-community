import React, { useState, useRef } from "react";
import Title from "../../../components/Partials/Title";
import Preview from "../Caps/UpdateComponent/Preview";
import FormCaps from "./UpdateComponent/FormCaps";

export default function UpdateCaps({ cap, setOnUpdate, refreshData, getData }) {
    const [name, setName] = useState(cap.name || "");
    const [scarecityId, setScarecityId] = useState(
        cap.caps_scarecities_id || 1
    );
    const [minLevel, setMinLevel] = useState(cap.min_level || 1);
    const [strength, setStrength] = useState(cap.strength || 0);
    const [defense, setDefense] = useState(cap.defense || 0);
    const [energy, setEnergy] = useState(cap.energy || 0);
    const [vitality, setVitality] = useState(cap.vitality || 0);
    const [price, setPrice] = useState(cap.price || 5000);
    const [bonus, setBonus] = useState(cap.bonus || "Bonus: +");
    const [malus, setMalus] = useState(cap.malus || "Malus: -");

    // !FORM CAPS
    const form = useRef();

    const handleSubmit = (e) => {
        e.preventDefault();
        const inputs = form.current;

        let data = {};

        data = {
            name: inputs[0].value,
            caps_scarecities_id: inputs[1].value,
            price: Number(inputs[2].value),
            strength: Number(inputs[3].value),
            defense: Number(inputs[4].value),
            energy: Number(inputs[5].value),
            vitality: Number(inputs[6].value),
            min_level: Number(inputs[7].value),
            bonus: inputs[8].value,
            malus: inputs[9].value,
            id: cap.id,
        };

        if (cap === "NEW") {
            axios
                .post("api/caps/create", data)
                .then((res) => {
                    if (res.status === 200) {
                        refreshData();
                        setOnUpdate(false);
                    }
                })
                .catch((err) => console.log(err));
        } else {
            axios
                .post("api/caps/update", data)
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
            <Title setOnUpdate={setOnUpdate} onUpdate={cap}>
                <span>
                    {cap === "NEW" ? (
                        <span>Nouvelle capsule</span>
                    ) : (
                        <span>
                            {cap.name}
                            <img src={cap.scarecities.icon} alt="" />
                        </span>
                    )}
                </span>
            </Title>
            <FormCaps
                forwardRef={form}
                handleSubmit={handleSubmit}
                setName={setName}
                name={name}
                scarecityId={scarecityId}
                setScarecityId={setScarecityId}
                setMinLevel={setMinLevel}
                minLevel={minLevel}
                setStrength={setStrength}
                strength={strength}
                setDefense={setDefense}
                defense={defense}
                setEnergy={setEnergy}
                energy={energy}
                setVitality={setVitality}
                vitality={vitality}
                setPrice={setPrice}
                price={price}
                setBonus={setBonus}
                bonus={bonus}
                setMalus={setMalus}
                malus={malus}
                getData={getData}
                buttonText={cap === "NEW" ? "Ajouter" : "Mettre à jour"}
            />

            <Preview
                getData={getData}
                name={name}
                scarecityId={scarecityId}
                minLevel={minLevel}
                strength={strength}
                defense={defense}
                energy={energy}
                vitality={vitality}
                price={price}
                bonus={bonus}
                malus={malus}
            />
        </>
    );
}
