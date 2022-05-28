import React, { useEffect, useState } from "react";
import CapsSelect from "../../components/Select/CapsSelect";
import StorySelect from "../../components/Select/StorySelect";

export default function Character() {
    const [characters, setCharacters] = useState([]);
    const [greenCaps, setGreenCaps] = useState([]);
    const [stories, setStories] = useState([]);
    const [greenCapsIcon, setGreenCapsIcon] = useState("");

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

    return (
        <>
            <h2 className="title">Les personnages</h2>
            <div className="flex-galery">
                {characters.length !== 0 &&
                    characters.map((character) => {
                        return (
                            <form className="character-list" key={character.id}>
                                <span className="name">
                                    <input
                                        type="text"
                                        name="name"
                                        value={character.name}
                                    />
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
                                {!character.is_pnj && (
                                    <>
                                        <span className="step">
                                            Etape
                                            <input
                                                type="number"
                                                name="step_unlock"
                                                value={character.step_unlock}
                                            />
                                        </span>
                                        <StorySelect
                                            stories={stories}
                                            characterUnlock={character.story_id}
                                            selectName="story_id"
                                        />
                                        <CapsSelect
                                            caps={greenCaps}
                                            greenCaps={true}
                                            selectName="caps_id"
                                            characterCapsId={character.caps_id}
                                            capsIcon={greenCapsIcon}
                                        />
                                    </>
                                )}
                                <span className="ruby">
                                    <label htmlFor="ruby">Ruby</label>
                                    <input
                                        type="number"
                                        name="ruby_cost"
                                        id="ruby"
                                        value={character.ruby_cost}
                                    />
                                </span>
                                <span className="pnj">
                                    {character.is_pnj ? (
                                        <input
                                            type="checkbox"
                                            name="is_pnj"
                                            id="pnj"
                                            checked
                                        />
                                    ) : (
                                        <input
                                            type="checkbox"
                                            name="is_pnj"
                                            id="pnj"
                                        />
                                    )}
                                    <label htmlFor="pnj">PNJ</label>
                                </span>
                            </form>
                        );
                    })}
            </div>
        </>
    );
}
