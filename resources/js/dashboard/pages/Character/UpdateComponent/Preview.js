import React, { useState } from "react";
import CapsSelect from "../../../components/Select/CapsSelect";
import StorySelect from "../../../components/Select/StorySelect";
import CategoryCharacterSelect from "../../../components/Select/CategoryCharacterSelect";

export default function Preview({
    capsIcon,
    name,
    avatar,
    capsId,
    stepUnlock,
    storyUnlock,
    categories,
    setCategories,
    ruby,
    getData,
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
                                        stories={getData.stories}
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
                        <CapsSelect
                            caps={getData.caps}
                            characterCapsId={capsId}
                        />
                    </p>
                </div>
                <div className="categories">
                    <h3>Catégories</h3>
                    <ul>
                        <CategoryCharacterSelect
                            categories={getData.categories}
                            characterCategory={categories}
                        />
                    </ul>
                </div>
            </div>
        </div>
    );
}
