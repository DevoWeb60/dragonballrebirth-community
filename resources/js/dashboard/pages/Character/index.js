import axios from "axios";
import React, { useEffect, useState } from "react";
import Title from "../../components/Partials/Title";
import CapsSelect from "../../components/Select/CapsSelect";
import StorySelect from "../../components/Select/StorySelect";
import UpdateCharacter from "./UpdateCharacter";

export default function Character() {
    const [characters, setCharacters] = useState([]);
    const [greenCaps, setGreenCaps] = useState([]);
    const [stories, setStories] = useState([]);
    const [mainStories, setMainStories] = useState([]);
    const [greenCapsIcon, setGreenCapsIcon] = useState("");
    const [onUpdate, setOnUpdate] = useState(false);
    const [requestCount, setRequestCount] = useState(0);

    const getData = () => {
        axios
            .get("api/character")
            .then((res) => {
                console.log(res.data);
                // setCharacters(res.data.characters);
                // setGreenCaps(res.data.greenCaps);
                // setGreenCapsIcon(res.data.capsIcon.icon);
                // setStories(res.data.stories);
                // setMainStories(res.data.mainStories);
            })
            .catch((err) => {
                setRequestCount((count) => count + 1);
                getData();
            });
    };

    if (requestCount > 5) {
        localStorage.removeItem("page");
        localStorage.removeItem("connected");
        window.location = "/dashboard";
    }

    useEffect(() => {
        getData();
    }, []);

    const deleteCharacter = (characterToDelete) => {
        const confirm = window.confirm(
            "ATTENTION ! Tu es sur le point de supprimer un personnage. Cette action est irréversible."
        );
        if (confirm) {
            axios
                .post("api/character/delete", { id: characterToDelete.id })
                .then((res) => {
                    if (res.status === 200) {
                        const newDataCharacter = characters.filter(
                            (character) => character.id !== characterToDelete.id
                        );
                        setCharacters(newDataCharacter);
                    }
                })
                .catch((err) => console.log(err));
        }
    };

    // return (
    //     <>
    //         {onUpdate === false ? (
    //             <>
    //                 <Title setOnUpdate={setOnUpdate} getData={getData}>
    //                     Les personnages
    //                 </Title>
    //                 <div className="flex-galery">
    //                     {characters.length !== 0 &&
    //                         characters.map((character) => {
    //                             return (
    //                                 <div
    //                                     className="character-list"
    //                                     key={character.id}
    //                                 >
    //                                     <span className="name">
    //                                         {character.name}
    //                                         {character.avatar && (
    //                                             <img
    //                                                 src={
    //                                                     character.avatar +
    //                                                     "transformations/base/head.png"
    //                                                 }
    //                                                 alt={character.name}
    //                                             />
    //                                         )}
    //                                     </span>
    //                                     {!character.is_pnj ? (
    //                                         <>
    //                                             {character.ruby_cost === 0 ? (
    //                                                 <div className="story-info">
    //                                                     <StorySelect
    //                                                         stories={stories}
    //                                                         characterUnlock={
    //                                                             character.story_id
    //                                                         }
    //                                                         selectName="story_id"
    //                                                         selectMode={false}
    //                                                     />
    //                                                     &nbsp; &nbsp; &nbsp;
    //                                                     <span className="step">
    //                                                         Etape{" "}
    //                                                         {
    //                                                             character.step_unlock
    //                                                         }
    //                                                     </span>
    //                                                 </div>
    //                                             ) : (
    //                                                 <span className="empty"></span>
    //                                             )}
    //                                             <CapsSelect
    //                                                 caps={greenCaps}
    //                                                 characterCapsId={
    //                                                     character.caps_id
    //                                                 }
    //                                                 capsIcon={greenCapsIcon}
    //                                                 selectMode={false}
    //                                             />
    //                                             {character.ruby_cost !== 0 ? (
    //                                                 <span className="ruby">
    //                                                     {character.ruby_cost}{" "}
    //                                                     <img
    //                                                         src="https://www.dragonballrebirth.fr/css/images/ruby.svg"
    //                                                         alt="ruby"
    //                                                     />
    //                                                 </span>
    //                                             ) : (
    //                                                 <span className="empty"></span>
    //                                             )}
    //                                         </>
    //                                     ) : (
    //                                         <>
    //                                             <span className="empty"></span>
    //                                             <span className="empty"></span>
    //                                             <span className="pnj">
    //                                                 {character.is_pnj && "PNJ"}
    //                                             </span>
    //                                         </>
    //                                     )}
    //                                     <span
    //                                         className="edit"
    //                                         onClick={() =>
    //                                             setOnUpdate(character)
    //                                         }
    //                                     >
    //                                         <i className="fa-solid fa-pen-to-square"></i>
    //                                     </span>
    //                                     <span
    //                                         className="delete"
    //                                         onClick={() =>
    //                                             deleteCharacter(character)
    //                                         }
    //                                     >
    //                                         <i className="fa-solid fa-trash"></i>
    //                                     </span>
    //                                 </div>
    //                             );
    //                         })}
    //                 </div>
    //             </>
    //         ) : (
    //             <UpdateCharacter
    //                 setDbCharacters={setCharacters}
    //                 dbCharacters={characters}
    //                 characterSelect={onUpdate}
    //                 mainStories={mainStories}
    //                 setMainStories={setMainStories}
    //                 caps={greenCaps}
    //                 capsIcon={greenCapsIcon}
    //                 stories={stories}
    //                 setOnUpdate={setOnUpdate}
    //             />
    //         )}
    //     </>
    // );

    return <div>Test</div>;
}
