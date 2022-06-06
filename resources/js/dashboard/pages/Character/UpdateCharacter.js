import React, { useRef, useState } from "react";
import Preview from "./UpdateComponent/Preview";
import FormCharacter from "./UpdateComponent/FormCharacter";
import axios from "axios";

export default function UpdateCharacter({
    characterSelect,
    setOnUpdate,
    caps,
    capsIcon,
    stories,
    setDbCharacters,
    dbCharacters,
    mainStories,
}) {
    const [name, setName] = useState(characterSelect.name || "");
    const [avatar, setAvatar] = useState(
        characterSelect.avatar ||
            "https://dragonballrebirth.fr/img/characters/[nom]/"
    );
    const [capsId, setCapsId] = useState(characterSelect.caps_id || 1);
    const [stepUnlock, setStepUnlock] = useState(
        characterSelect.step_unlock || 0
    );
    const [storyUnlock, setStoryUnlock] = useState(
        characterSelect.story_id || 1
    );
    const [pnj, setPnj] = useState(characterSelect.is_pnj ? true : false);
    const [ruby, setRuby] = useState(characterSelect.ruby_cost || 0);
    const [mainStoryId, setMainStoryId] = useState(
        characterSelect.main_story_id || 0
    );

    const form = useRef();

    const back = () => {
        setOnUpdate(false);
    };

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
            is_pnj: !pnj ? null : 1,
            id: characterSelect.id,
        };

        if (characterSelect === "NEW") {
            axios
                .post("api/character/create", data)
                .then((res) => {
                    if (res.status === 200) {
                        setDbCharacters([...dbCharacters, data]);
                        setOnUpdate(false);
                    }
                })
                .catch((err) => console.log(err));
        } else {
            axios
                .post("api/character/update", data)
                .then((res) => {
                    if (res.status === 200) {
                        let updatedDataCharacters = [];
                        dbCharacters.forEach((character) => {
                            if (character.id === data.id) {
                                character = data;
                            }
                            updatedDataCharacters.push(character);
                        });
                        setDbCharacters(updatedDataCharacters);
                        setOnUpdate(false);
                    }
                })
                .catch((err) => console.log(err));
        }
    };

    return (
        <>
            <h2 className="title">
                {characterSelect.name || "Nouveau personnages"}
                <span className="btn-home invert" onClick={back}>
                    Retour
                </span>
            </h2>
            <FormCharacter
                forwardRef={form}
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
                stories={stories}
                mainStoryId={mainStoryId}
                setMainStoryId={setMainStoryId}
                caps={caps}
                mainStories={mainStories}
                buttonText={
                    characterSelect === "NEW" ? "Ajouter" : "Mettre à jour"
                }
            />
            {!pnj && (
                <Preview
                    name={name}
                    capsId={capsId}
                    avatar={avatar}
                    stepUnlock={stepUnlock}
                    storyUnlock={storyUnlock}
                    pnj={pnj}
                    ruby={ruby}
                    caps={caps}
                    capsIcon={capsIcon}
                    stories={stories}
                />
            )}
        </>
    );
}
