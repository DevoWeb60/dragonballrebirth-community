import React from "react";

export default function RewardList({
    reward,
    capsIcon,
    setOnUpdate,
    handleDelete,
}) {
    return (
        <div className="reward-list">
            <span className="name">{reward.name}</span>
            <div className="reward-given">
                {reward.character && (
                    <span className="reward-name">
                        {reward.character.name}
                        <img
                            src={
                                reward.character.avatar +
                                "transformations/base/head.png"
                            }
                            alt=""
                        />
                    </span>
                )}
                {reward.object && (
                    <span className="reward-name">
                        {reward.quantity_object ? reward.quantity_object : 1}
                        x&nbsp;
                        {reward.object.name}
                        <img src={reward.object.icon} alt="" />
                    </span>
                )}
                {reward.zenis && (
                    <span className="reward-name">{reward.zenis} Zenis</span>
                )}
                {reward.caps && (
                    <span className="reward-name">
                        {reward.quantity_caps ? reward.quantity_caps : 1}
                        x&nbsp;
                        {reward.caps.name}
                        {capsIcon &&
                            capsIcon.map((icon) => {
                                if (
                                    icon.id === reward.caps.caps_scarecities_id
                                ) {
                                    return (
                                        <img
                                            src={icon.icon}
                                            alt=""
                                            key={reward.caps.id}
                                        />
                                    );
                                }
                            })}
                        <img src={reward.capsIcon} alt="" />
                    </span>
                )}
                {reward.rewards_character_id && (
                    <span className="reward-name">
                        {reward.experience <= 100 && reward.experience
                            ? reward.experience + "% xp pour "
                            : reward.experience &&
                              reward.experience + " xp pour "}
                        {reward.skin && "Skin "}
                        {reward.rewards_on_character.name}
                        <img
                            src={
                                reward.rewards_on_character.avatar +
                                "/transformations/base/head.png"
                            }
                            alt=""
                        />
                    </span>
                )}
            </div>
            <span className="edit" onClick={() => setOnUpdate(reward)}>
                <i className="fa-solid fa-pen-to-square"></i>
            </span>
            <span className="delete" onClick={() => handleDelete(reward.id)}>
                <i className="fa-solid fa-trash"></i>
            </span>
        </div>
    );
}
