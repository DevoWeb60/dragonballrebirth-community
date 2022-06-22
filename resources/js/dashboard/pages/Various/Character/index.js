import axios from "axios";
import React, { useEffect, useState } from "react";
import Title from "../../../components/Partials/Title";
import UpdateCharacter from "./UpdateCharacter";

export default function Character({ getData, refreshData }) {
    const [characters, setCharacters] = useState([]);
    const [onUpdate, setOnUpdate] = useState(false);

    useEffect(() => {
        setCharacters(getData.characters);
    }, [getData]);

    const deleteCharacter = (characterToDelete) => {
        const confirm = window.confirm(
            "ATTENTION ! Tu es sur le point de supprimer un personnage. Cette action est irréversible."
        );
        if (confirm) {
            axios
                .post("api/character/delete", { id: characterToDelete.id })
                .then((res) => {
                    if (res.status == 200) {
                        refreshData();
                    }
                })
                .catch((err) => console.log(err));
        }
    };

    return (
        <>
            {onUpdate == false ? (
                <>
                    <Title setOnUpdate={setOnUpdate} onUpdate={onUpdate}>
                        Les personnages
                    </Title>
                    <div className="flex-galery">
                        {characters &&
                            characters.length != 0 &&
                            characters.map((character) => {
                                return (
                                    <div
                                        className="character-list"
                                        key={character.id}
                                    >
                                        <div className="character-info">
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
                                            <span className="categories">
                                                {character.category.map(
                                                    (category) => {
                                                        return (
                                                            <span
                                                                className="category"
                                                                key={
                                                                    character.id +
                                                                    "-" +
                                                                    category.name
                                                                }
                                                            >
                                                                {category.name}
                                                            </span>
                                                        );
                                                    }
                                                )}
                                            </span>
                                        </div>
                                        {!character.is_pnj ? (
                                            <>
                                                {character.ruby_cost == 0 ? (
                                                    <div className="story-info">
                                                        {
                                                            character.story
                                                                .story_name
                                                        }
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
                                                <span>
                                                    {character.caps?.name}
                                                    <img
                                                        src={
                                                            character
                                                                .scarecities
                                                                ?.icon
                                                        }
                                                        alt={
                                                            character.caps?.name
                                                        }
                                                    />
                                                </span>
                                                {character.ruby_cost != 0 ? (
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
                    refreshData={refreshData}
                    setOnUpdate={setOnUpdate}
                    character={onUpdate}
                    getData={getData}
                />
            )}
        </>
    );

    // return <div>Test</div>;
}
