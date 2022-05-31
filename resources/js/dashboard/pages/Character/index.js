import axios from "axios";
import React, { useEffect, useState } from "react";
import CapsSelect from "../../components/Select/CapsSelect";
import StorySelect from "../../components/Select/StorySelect";
import UpdateCharacter from "./UpdateCharacter";

export default function Character() {
    const [characters, setCharacters] = useState([]);
    const [greenCaps, setGreenCaps] = useState([]);
    const [stories, setStories] = useState([]);
    const [greenCapsIcon, setGreenCapsIcon] = useState("");
    const [onUpdate, setOnUpdate] = useState(false);

    useEffect(() => {
        fetch("/api/character")
            .then((res) => res.json())
            .then((data) => {
                setCharacters(data.characters);
                setGreenCaps(data.greenCaps);
                setGreenCapsIcon(data.capsIcon.icon);
                setStories(data.stories);
            });
    }, []);

    const deleteCharacter = (character) => {
        console.log(character);
        axios
            .post("/api/character/delete", { id: character.id })
            .then((res) => {
                if (res.status === 200) {
                    window.location = "/dashboard";
                }
            })
            .catch((err) => console.log(err));
    };

    return (
        <>
            {onUpdate === false ? (
                <>
                    <h2 className="title">
                        Les personnages{" "}
                        <span
                            className="btn-home invert"
                            onClick={() => setOnUpdate("NEW")}
                        >
                            Ajouter
                        </span>
                    </h2>
                    <div className="flex-galery">
                        {characters.length !== 0 &&
                            characters.map((character) => {
                                return (
                                    <div
                                        className="character-list"
                                        key={character.id}
                                    >
                                        <span className="name">
                                            {character.name}
                                            {character.avatar && (
                                                <img
                                                    src={
                                                        character.avatar +
                                                        "transformations/base/head.png"
                                                    }
                                                    alt={character.name}
                                                />
                                            )}
                                        </span>
                                        {!character.is_pnj ? (
                                            <>
                                                {character.ruby_cost === 0 ? (
                                                    <div className="story-info">
                                                        <StorySelect
                                                            stories={stories}
                                                            characterUnlock={
                                                                character.story_id
                                                            }
                                                            selectName="story_id"
                                                            selectMode={false}
                                                        />
                                                        &nbsp; &nbsp; &nbsp;
                                                        <span className="step">
                                                            Etape{" "}
                                                            {
                                                                character.step_unlock
                                                            }
                                                        </span>
                                                    </div>
                                                ) : (
                                                    <span className="empty"></span>
                                                )}
                                                <CapsSelect
                                                    caps={greenCaps}
                                                    characterCapsId={
                                                        character.caps_id
                                                    }
                                                    capsIcon={greenCapsIcon}
                                                    selectMode={false}
                                                />
                                                {character.ruby_cost !== 0 ? (
                                                    <span className="ruby">
                                                        {character.ruby_cost}{" "}
                                                        <img
                                                            src="https://www.dragonballrebirth.fr/css/images/ruby.svg"
                                                            alt="ruby"
                                                        />
                                                    </span>
                                                ) : (
                                                    <span className="empty"></span>
                                                )}
                                            </>
                                        ) : (
                                            <>
                                                <span className="empty"></span>
                                                <span className="empty"></span>
                                                <span className="pnj">
                                                    {character.is_pnj && "PNJ"}
                                                </span>
                                            </>
                                        )}
                                        <span
                                            className="edit"
                                            onClick={() =>
                                                setOnUpdate(character)
                                            }
                                        >
                                            <i className="fa-solid fa-pen-to-square"></i>
                                        </span>
                                        <span
                                            className="delete"
                                            onClick={() =>
                                                deleteCharacter(character)
                                            }
                                        >
                                            <i className="fa-solid fa-trash"></i>
                                        </span>
                                    </div>
                                );
                            })}
                    </div>
                </>
            ) : (
                <UpdateCharacter
                    characterSelect={onUpdate}
                    caps={greenCaps}
                    capsIcon={greenCapsIcon}
                    stories={stories}
                    setOnUpdate={setOnUpdate}
                />
            )}
        </>
    );
}
