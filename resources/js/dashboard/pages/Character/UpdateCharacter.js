import React, { useEffect, useState } from "react";
import CapsSelect from "../../components/Select/CapsSelect";
import StorySelect from "../../components/Select/StorySelect";
import Preview from "./UpdateComponent/Preview";

export default function UpdateCharacter({
    characterSelect,
    setOnUpdate,
    caps,
    capsIcon,
    stories,
}) {
    const [name, setName] = useState(characterSelect.name);
    const [avatar, setAvatar] = useState(characterSelect.avatar);
    const [capsId, setCapsId] = useState(characterSelect.caps_id);
    const [stepUnlock, setStepUnlock] = useState(characterSelect.step_unlock);
    const [storyUnlock, setStoryUnlock] = useState(characterSelect.story_id);
    const [pnj, setPnj] = useState(characterSelect.is_pnj);
    const [ruby, setRuby] = useState(characterSelect.ruby_cost);

    const back = () => {
        setOnUpdate(false);
    };

    return (
        <>
            <h2 className="title">
                {characterSelect.name}{" "}
                <span className="btn-home invert" onClick={back}>
                    Retour
                </span>
            </h2>
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
            <form action="" method="POST" class="form-flex">
                <div className="form-group">
                    <input
                        type="text"
                        id="name"
                        name="name"
                        value={name}
                        onChange={(e) => setName(e.target.value)}
                        placeholder="CSS"
                    />
                    <label htmlFor="name">Nom</label>
                </div>
                <div className="form-group">
                    <input
                        type="text"
                        id="avatar"
                        name="avatar"
                        value={avatar}
                        onChange={(e) => setAvatar(e.target.value)}
                        placeholder="CSS"
                    />
                    <label htmlFor="avatar">Avatar</label>
                </div>
                <div className="form-group">
                    <input
                        type="number"
                        id="step"
                        name="step"
                        value={stepUnlock}
                        onChange={(e) => setStepUnlock(Number(e.target.value))}
                        placeholder="CSS"
                    />
                    <label htmlFor="step_unlock">Etape</label>
                </div>
                <div className="form-group">
                    <StorySelect
                        stories={stories}
                        characterUnlock={storyUnlock}
                        selectName="story_id"
                        selectMode={true}
                        onChangeFunc={(e) =>
                            setStoryUnlock(Number(e.target.value))
                        }
                    />
                    <label htmlFor="story_id">Histoire</label>
                </div>
                <div className="form-group">
                    <input
                        type="number"
                        id="ruby"
                        name="ruby"
                        value={ruby}
                        onChange={(e) => setRuby(Number(e.target.value))}
                        placeholder="CSS"
                    />
                    <label htmlFor="ruby">Prix</label>
                </div>
                <div className="form-group">
                    <CapsSelect
                        caps={caps}
                        characterCapsId={capsId}
                        selectMode={true}
                        greenCaps={true}
                        selectName="caps_id"
                        onChangeFunc={(e) => setCapsId(Number(e.target.value))}
                    />
                    <label htmlFor="caps_id">Capsule</label>
                </div>
                <button type="submit">Mettre à jour</button>
            </form>
        </>
    );
}
