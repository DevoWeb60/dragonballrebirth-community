import React, { useState } from "react";
import CapsSelect from "../../../components/Select/CapsSelect";
import StorySelect from "../../../components/Select/StorySelect";

export default function Preview({
    character,
    caps,
    capsIcon,
    stories,
    name,
    avatar,
    capsId,
    stepUnlock,
    storyUnlock,
    pnj,
    ruby,
}) {
    return (
        <div className="preview">
            <div className="character">
                <div className="shadow">
                    <h2>
                        {name}{" "}
                        <img
                            src={avatar + "transformations/base/head.png"}
                            alt={name}
                        />
                    </h2>
                    <div className="presentation">
                        <div className="avatar">
                            <img
                                src={avatar + "avatars/1.png"}
                                alt={name + "-avatar"}
                            />
                        </div>
                    </div>
                </div>
                <div className="story-unlock">
                    <h3>Débloquer</h3>
                    {ruby === 0 ? (
                        <>
                            <p>
                                Étape N°{" "}
                                <span className="step">{stepUnlock}</span>
                            </p>
                            <p>
                                <span className="step">
                                    <StorySelect
                                        stories={stories}
                                        characterUnlock={storyUnlock}
                                    />
                                </span>
                            </p>
                        </>
                    ) : (
                        <>
                            <p>
                                <span className="step">
                                    {ruby}
                                    <img
                                        src="https://www.dragonballrebirth.fr/css/images/ruby.svg"
                                        alt="rubis"
                                    />
                                </span>
                            </p>
                            <p>Boutique de Rubis</p>
                        </>
                    )}
                </div>
                <div className="caps">
                    <h3>
                        Capsule
                        <img src={capsIcon} alt="" />
                    </h3>
                    <p>
                        <CapsSelect caps={caps} characterCapsId={capsId} />
                    </p>
                </div>
                <div class="categories">
                    <h3>Catégories</h3>
                    <ul></ul>
                </div>
            </div>
        </div>
    );
}
