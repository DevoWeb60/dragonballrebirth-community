import React, { useEffect, useRef, useState } from "react";
import Preview from "./UpdateComponent/Preview";
import FormCharacter from "./UpdateComponent/FormCharacter";
import axios from "axios";

export default function UpdateCharacter({
    character,
    setOnUpdate,
    getData,
    refreshData,
}) {
    // !PREVIEW DATA CHARACTER
    const [name, setName] = useState(character.name || "");
    const [avatar, setAvatar] = useState(
        character.avatar || "https://dragonballrebirth.fr/img/characters/[nom]/"
    );
    const [capsId, setCapsId] = useState(character.caps_id || 1);
    const [stepUnlock, setStepUnlock] = useState(character.step_unlock || 0);
    const [storyUnlock, setStoryUnlock] = useState(character.story_id || 1);
    const [pnj, setPnj] = useState(character.is_pnj ? true : false);
    const [ruby, setRuby] = useState(character.ruby_cost || 0);
    const [mainStoryId, setMainStoryId] = useState(
        character.main_story_id || 0
    );
    const [categories, setCategories] = useState(
        character.category?.map((cat) => cat.id) || []
    );

    // !FORM CHARACTER
    const form = useRef();

    const handleSubmit = (e) => {
        e.preventDefault();
        const inputs = form.current;

        let data = {};

        data = {
            name: inputs[0].value,
            avatar: !pnj ? inputs[1].value : null,
            step_unlock: !pnj ? Number(inputs[2].value) : null,
            story_id: !pnj ? Number(inputs[3].value) : null,
            ruby_cost: !pnj ? Number(inputs[4].value) : null,
            caps_id: !pnj ? Number(inputs[5].value) : null,
            main_story_id: !pnj ? Number(inputs[6].value) : null,
            categories: !pnj ? categories : null,
            is_pnj: !pnj ? null : 1,
            id: character.id,
        };

        if (character == "NEW") {
            axios
                .post("api/character/create", data)
                .then((res) => {
                    if (res.status == 200) {
                        refreshData();
                        setOnUpdate(false);
                    }
                })
                .catch((err) => console.log(err));
        } else {
            axios
                .post("api/character/update", data)
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
            <h2 className="title">
                {character.name || "Nouveau personnages"}
                <span
                    className="btn-home invert"
                    onClick={() => setOnUpdate(false)}
                >
                    Retour
                </span>
            </h2>
            <FormCharacter
                forwardRef={form}
                characterSelect={character}
                handleSubmit={handleSubmit}
                name={name}
                setName={setName}
                avatar={avatar}
                setAvatar={setAvatar}
                stepUnlock={stepUnlock}
                setStepUnlock={setStepUnlock}
                storyUnlock={storyUnlock}
                setStoryUnlock={setStoryUnlock}
                pnj={pnj}
                setPnj={setPnj}
                ruby={ruby}
                setRuby={setRuby}
                capsId={capsId}
                setCapsId={setCapsId}
                mainStoryId={mainStoryId}
                setMainStoryId={setMainStoryId}
                categories={categories}
                setCategories={setCategories}
                getData={getData}
                buttonText={character == "NEW" ? "Ajouter" : "Mettre à jour"}
            />
            {!pnj && (
                <Preview
                    getData={getData}
                    name={name}
                    capsId={capsId}
                    avatar={avatar}
                    stepUnlock={stepUnlock}
                    storyUnlock={storyUnlock}
                    ruby={ruby}
                    categories={categories}
                />
            )}
        </>
    );
}
