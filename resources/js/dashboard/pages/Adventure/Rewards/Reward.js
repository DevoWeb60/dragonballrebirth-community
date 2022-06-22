import axios from "axios";
import React, { useEffect, useState } from "react";
import Title from "../../../components/Partials/Title";
import { useDelete } from "../../../customHook/useDelete";
import RewardList from "./Component/RewardList";
import UpdateReward from "./UpdateReward";

export default function Rewards({ getData, refreshData }) {
    const [rewards, setRewards] = useState([]);
    const [capsIcon, setCapsIcon] = useState([]);
    const [onUpdate, setOnUpdate] = useState(false);

    useEffect(() => {
        setRewards(getData.rewards);
        setCapsIcon(getData.capsScarecities);
    }, [getData]);

    console.log(rewards);

    const handleDelete = (id) => {
        const message =
            "ATTENTION ! Tu es sur le point de supprimer une récompense. Cette action est irréversible.";
        useDelete(id, "reward", refreshData, message);
    };

    return (
        <>
            {onUpdate == false ? (
                <>
                    <Title setOnUpdate={setOnUpdate} onUpdate={onUpdate}>
                        Les récompenses
                    </Title>
                    <div className="flex-galery">
                        <h2 className="category">Objets</h2>
                        {rewards &&
                            rewards.length != 0 &&
                            rewards.map((reward) => {
                                if (reward.object) {
                                    return (
                                        <RewardList
                                            key={reward.id}
                                            reward={reward}
                                            capsIcon={capsIcon}
                                            setOnUpdate={setOnUpdate}
                                            handleDelete={handleDelete}
                                        />
                                    );
                                }
                            })}
                        <h2 className="category">Capsules</h2>
                        {rewards &&
                            rewards.length != 0 &&
                            rewards.map((reward) => {
                                if (reward.caps) {
                                    return (
                                        <RewardList
                                            key={reward.id}
                                            reward={reward}
                                            capsIcon={capsIcon}
                                            setOnUpdate={setOnUpdate}
                                            handleDelete={handleDelete}
                                        />
                                    );
                                }
                            })}
                        <h2 className="category">Personnages</h2>
                        {rewards &&
                            rewards.length != 0 &&
                            rewards.map((reward) => {
                                if (reward.character) {
                                    return (
                                        <RewardList
                                            key={reward.id}
                                            reward={reward}
                                            capsIcon={capsIcon}
                                            setOnUpdate={setOnUpdate}
                                            handleDelete={handleDelete}
                                        />
                                    );
                                }
                            })}
                        <h2 className="category">XP et Skin</h2>
                        {rewards &&
                            rewards.length != 0 &&
                            rewards.map((reward) => {
                                if (reward.rewards_character_id) {
                                    return (
                                        <RewardList
                                            key={reward.id}
                                            reward={reward}
                                            capsIcon={capsIcon}
                                            setOnUpdate={setOnUpdate}
                                            handleDelete={handleDelete}
                                        />
                                    );
                                }
                            })}
                        <h2 className="category">zenis</h2>
                        {rewards &&
                            rewards.length != 0 &&
                            rewards.map((reward) => {
                                if (reward.zenis) {
                                    return (
                                        <RewardList
                                            key={reward.id}
                                            reward={reward}
                                            capsIcon={capsIcon}
                                            setOnUpdate={setOnUpdate}
                                            handleDelete={handleDelete}
                                        />
                                    );
                                }
                            })}
                    </div>
                </>
            ) : (
                <UpdateReward
                    refreshData={refreshData}
                    setOnUpdate={setOnUpdate}
                    reward={onUpdate}
                    getData={getData}
                />
            )}
        </>
    );

    // return <div>Test</div>;
}
