import React, { useState, useRef } from "react";
import Title from "../../../components/Partials/Title";
import RewardType from "./Component/RewardType";
import ObjectSelect from "../../../components/Select/ObjectSelect";
import CapsSelect from "../../../components/Select/CapsSelect";
import CharacterSelect from "../../../components/Select/CharacterSelect";
import { useInsertOrUpdate } from "../../../customHook/useInsertOrUpdate";

export default function UpdateReward({
    getData,
    refreshData,
    reward,
    setOnUpdate,
}) {
    const [rewardType, setRewardType] = useState(false);
    const [name, setName] = useState(reward.name || "");
    const [object, setObject] = useState(reward.object?.id || 1);
    const [caps, setCaps] = useState(reward.caps?.id || 1);
    const [character, setCharacter] = useState(reward.character?.id || 1);
    const [rewardsOnCharacter, setRewardsOnCharacter] = useState(
        reward.rewards_character_id || 1
    );

    const rewardTypeName = {
        object: "object",
        character: "character",
        caps: "caps",
        exp: "exp",
        skin: "skin",
        zenis: "zenis",
    };

    // !FORM REWARD
    const form = useRef();

    const handleSubmit = (e) => {
        e.preventDefault();
        const inputs = form.current;

        let specificData = {};

        if (rewardType === rewardTypeName.object) {
            specificData = {
                quantity_object: Number(inputs.quantity_object.value),
                object_id: Number(inputs.object_id.value),
            };
        } else if (rewardType === rewardTypeName.caps) {
            specificData = {
                quantity_caps: Number(inputs.quantity_caps.value),
                caps_id: Number(inputs.caps_id.value),
            };
        } else if (rewardType === rewardTypeName.character) {
            specificData = {
                character_id: Number(inputs.character_id.value),
            };
        } else if (rewardType === rewardTypeName.exp) {
            specificData = {
                experience: Number(inputs.experience.value),
                reward_character_id: Number(inputs.reward_character_id.value),
            };
        } else if (rewardType === rewardTypeName.skin) {
            specificData = {
                skin: 1,
                reward_character_id: Number(inputs.reward_character_id.value),
            };
        } else if (rewardType === rewardTypeName.zenis) {
            specificData = {
                zenis: Number(inputs.zenis.value),
            };
        }
        const data = {
            id: reward.id,
            name: inputs.name.value,
            ...specificData,
        };

        // console.log(data);
        useInsertOrUpdate(reward === "NEW", "reward", data, refreshData, () =>
            setOnUpdate(false)
        );
    };
    return (
        <>
            <Title setOnUpdate={setOnUpdate} onUpdate={reward}>
                <span>
                    {reward === "NEW" ? (
                        <span>Nouvelle récompense</span>
                    ) : (
                        <span>{reward.name}</span>
                    )}
                </span>
            </Title>
            <form
                className="form-flex"
                onSubmit={(e) => handleSubmit(e)}
                ref={form}
            >
                <RewardType
                    setRewardType={setRewardType}
                    rewardType={rewardType}
                    reward={reward}
                    rewardTypeName={rewardTypeName}
                />
                <div className="form-group w-100">
                    <input
                        type="text"
                        id="name"
                        name="name"
                        value={name}
                        onChange={(e) => setName(e.target.value)}
                        placeholder="CSS"
                    />
                    <label htmlFor="name">Nom de la récompense</label>
                </div>
                {rewardType === rewardTypeName.object && (
                    <>
                        <div className="form-group">
                            <input
                                type="number"
                                id="quantity_object"
                                name="quantity_object"
                                defaultValue={reward.quantity_object || 1}
                            />
                            <label htmlFor="quantity_object">Quantité</label>
                        </div>
                        <div className="form-group">
                            <ObjectSelect
                                objects={getData.objects}
                                selectName={"object_id"}
                                objectId={object}
                                selectMode={true}
                                onChangeFunc={(e) =>
                                    setObject(Number(e.target.value))
                                }
                            />
                            <label htmlFor="object_id">Objet</label>
                        </div>
                    </>
                )}
                {rewardType === rewardTypeName.caps && (
                    <>
                        <div className="form-group">
                            <input
                                type="number"
                                id="quantity_caps"
                                name="quantity_caps"
                                defaultValue={reward.quantity_caps || 1}
                            />
                            <label htmlFor="quantity_caps">Quantité</label>
                        </div>
                        <div className="form-group">
                            <CapsSelect
                                caps={getData.caps}
                                selectName={"caps_id"}
                                characterCapsId={caps}
                                selectMode={true}
                                onChangeFunc={(e) =>
                                    setCaps(Number(e.target.value))
                                }
                                allCaps={true}
                                scarecities={getData.capsScarecities}
                            />
                            <label htmlFor="caps_id">Capsule</label>
                        </div>
                    </>
                )}
                {rewardType === rewardTypeName.character && (
                    <>
                        <div className="form-group w-100">
                            <CharacterSelect
                                characters={getData.characters}
                                selectName={"character_id"}
                                characterId={character}
                                selectMode={true}
                                onChangeFunc={(e) =>
                                    setCharacter(Number(e.target.value))
                                }
                                noPnj={true}
                            />
                            <label htmlFor="character_id">Personnage</label>
                        </div>
                    </>
                )}
                {rewardType === rewardTypeName.exp && (
                    <>
                        <div className="form-group">
                            <input
                                type="number"
                                id="experience"
                                name="experience"
                                defaultValue={reward.experience || 1}
                            />
                            <label htmlFor="experience">
                                Expérience (Inférieur à 100 = %)
                            </label>
                        </div>
                        <div className="form-group">
                            <CharacterSelect
                                characters={getData.characters}
                                selectName={"reward_character_id"}
                                characterId={rewardsOnCharacter}
                                selectMode={true}
                                onChangeFunc={(e) =>
                                    setRewardsOnCharacter(
                                        Number(e.target.value)
                                    )
                                }
                                noPnj={true}
                            />
                            <label htmlFor="character_id">Personnage</label>
                        </div>
                    </>
                )}
                {rewardType === rewardTypeName.skin && (
                    <>
                        <div className="form-group w-100">
                            <CharacterSelect
                                characters={getData.characters}
                                selectName={"reward_character_id"}
                                characterId={rewardsOnCharacter}
                                selectMode={true}
                                onChangeFunc={(e) =>
                                    setRewardsOnCharacter(
                                        Number(e.target.value)
                                    )
                                }
                                noPnj={true}
                            />
                            <label htmlFor="character_id">Skin pour</label>
                        </div>
                    </>
                )}
                {rewardType === rewardTypeName.zenis && (
                    <div className="form-group w-100">
                        <input
                            type="number"
                            id="zenis"
                            name="zenis"
                            defaultValue={reward.zenis || 1}
                        />
                        <label htmlFor="zenis">Zénis</label>
                    </div>
                )}
                <button type="submit">
                    {reward === "NEW" ? "Ajouter" : "Mettre à jour"}
                </button>
            </form>
        </>
    );
}
