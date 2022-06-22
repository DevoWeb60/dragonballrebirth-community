import React, { useEffect } from "react";

export default function RewardType({
    setRewardType,
    rewardType,
    reward,
    rewardTypeName,
}) {
    const { object, character, caps, exp, skin, zenis } = rewardTypeName;

    useEffect(() => {
        if (reward.object_id) {
            setRewardType(object);
        } else if (reward.character_id) {
            setRewardType(character);
        } else if (reward.caps_id) {
            setRewardType(caps);
        } else if (reward.experience) {
            setRewardType(exp);
        } else if (reward.skin) {
            setRewardType(skin);
        } else if (reward.zenis) {
            setRewardType(zenis);
        }
    }, []);

    return (
        <div className="flex-space-between w-100">
            <span
                className={
                    rewardType == object ? "btn-home active" : "btn-home"
                }
                onClick={() => setRewardType(object)}
            >
                Objets
            </span>
            <span
                className={rewardType == caps ? "btn-home active" : "btn-home"}
                onClick={() => setRewardType(caps)}
            >
                Capsules
            </span>
            <span
                className={
                    rewardType == character ? "btn-home active" : "btn-home"
                }
                onClick={() => setRewardType(character)}
            >
                Personnages
            </span>
            <span
                className={rewardType == exp ? "btn-home active" : "btn-home"}
                onClick={() => setRewardType(exp)}
            >
                Expérience
            </span>
            <span
                className={rewardType == skin ? "btn-home active" : "btn-home"}
                onClick={() => setRewardType(skin)}
            >
                Skin
            </span>
            <span
                className={rewardType == zenis ? "btn-home active" : "btn-home"}
                onClick={() => setRewardType(zenis)}
            >
                Zenis
            </span>
        </div>
    );
}
