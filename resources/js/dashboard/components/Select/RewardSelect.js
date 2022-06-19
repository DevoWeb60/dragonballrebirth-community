import React from "react";
import CapsSelect from "./CapsSelect";

export default function RewardsSelect({
    rewards,
    selectName,
    rewardId,
    selectMode,
    onChangeFunc,
    getData,
    disabled = false,
}) {
    if (!selectMode) {
        return rewards.map((reward) => {
            return (
                reward.id === rewardId && (
                    <p key={reward.id}>
                        {reward.zenis && (
                            <>
                                {reward.zenis} <span className="zenis"> Z</span>
                            </>
                        )}
                        {reward.character_id && (
                            <>
                                {reward.character.name}
                                <img
                                    src={
                                        reward.character.avatar +
                                        "/transformations/base/head.png"
                                    }
                                    alt=""
                                />
                            </>
                        )}
                        {reward.object_id && (
                            <>
                                {reward.object.name}
                                &nbsp;
                                <img
                                    src={reward.object.icon}
                                    alt={reward.object.name}
                                />
                                &nbsp;
                                {reward.quantity_object > 1
                                    ? " x" + reward.quantity_object
                                    : null}
                            </>
                        )}
                        {reward.caps_id && (
                            <>
                                <CapsSelect
                                    caps={getData.caps}
                                    characterCapsId={reward.caps_id}
                                />
                                {reward.quantity_caps > 1
                                    ? " x" + reward.quantity_caps
                                    : null}
                            </>
                        )}
                        {reward.experience && (
                            <>
                                {reward.experience >= 100
                                    ? reward.experience
                                    : reward.experience + "%"}{" "}
                                XP pour {reward.rewards_on_character.name}
                                <img
                                    src={
                                        reward.rewards_on_character.avatar +
                                        "transformations/base/head.png"
                                    }
                                    alt=""
                                />
                            </>
                        )}
                        {reward.skin && (
                            <>
                                Skin pour {reward.rewards_on_character.name}
                                <img
                                    src={
                                        reward.rewards_on_character.avatar +
                                        "transformations/base/head.png"
                                    }
                                    alt=""
                                />
                            </>
                        )}
                    </p>
                )
            );
        });
    }

    return (
        <>
            <select
                name={selectName}
                onChange={onChangeFunc}
                disabled={disabled}
                defaultValue="0"
            >
                <option value="0" disabled>
                    Ajouter une récompense
                </option>
                {rewards.map((reward) => (
                    <option value={reward.id} key={reward.id}>
                        {reward.name}
                    </option>
                ))}
            </select>
        </>
    );
}
