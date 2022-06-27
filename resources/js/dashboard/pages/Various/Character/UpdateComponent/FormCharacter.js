import React from "react";
import CapsSelect from "../../../../components/Select/CapsSelect";
import StorySelect from "../../../../components/Select/StorySelect";
import MainStoriesSelect from "../../../../components/Select/MainStoriesSelect";
import CategoryCharacterSelect from "../../../../components/Select/CategoryCharacterSelect";

export default function FormCharacter({
    forwardRef,
    handleSubmit,
    name,
    setName,
    avatar,
    setAvatar,
    stepUnlock,
    setStepUnlock,
    storyUnlock,
    setStoryUnlock,
    pnj,
    setPnj,
    ruby,
    setRuby,
    capsId,
    setCapsId,
    mainStoryId,
    setMainStoryId,
    categories,
    setCategories,
    getData,
    buttonText,
}) {
    const deleteCategory = (id) => {
        const newCategories = categories.filter((category) => category != id);
        setCategories(newCategories);
    };

    return (
        <form
            className="form-flex"
            onSubmit={(e) => handleSubmit(e)}
            ref={forwardRef}
        >
            <div className="form-group">
                <input
                    type="text"
                    id="name"
                    name="name"
                    value={name}
                    onChange={(e) => setName(e.target.value)}
                    placeholder="CSS"
                />
                <label htmlFor="name">Nom</label>
            </div>
            <div className="form-group">
                <input
                    type="text"
                    id="avatar"
                    name="avatar"
                    value={avatar}
                    onChange={(e) => setAvatar(e.target.value)}
                    placeholder="CSS"
                />
                <label htmlFor="avatar">Avatar</label>
            </div>
            <div className="form-group">
                <input
                    type="number"
                    id="step"
                    name="step"
                    value={stepUnlock}
                    onChange={(e) => setStepUnlock(Number(e.target.value))}
                    placeholder="CSS"
                    disabled={pnj}
                />
                <label htmlFor="step_unlock">Etape</label>
            </div>
            <div className="form-group">
                <StorySelect
                    stories={getData.stories}
                    characterUnlock={storyUnlock}
                    selectName="story_id"
                    selectMode={true}
                    onChangeFunc={(e) => setStoryUnlock(Number(e.target.value))}
                    disabled={pnj}
                />
                <label htmlFor="story_id">Histoire</label>
            </div>
            <div className="form-group">
                <input
                    type="number"
                    id="ruby"
                    name="ruby"
                    value={ruby}
                    onChange={(e) => setRuby(Number(e.target.value))}
                    placeholder="CSS"
                    disabled={pnj}
                />
                <label htmlFor="ruby">Prix</label>
            </div>
            <div className="form-group">
                <CapsSelect
                    caps={getData.caps}
                    characterCapsId={capsId}
                    selectMode={true}
                    greenCaps={true}
                    selectName="caps_id"
                    onChangeFunc={(e) => setCapsId(Number(e.target.value))}
                    disabled={pnj}
                />
                <label htmlFor="caps_id">Capsule</label>
            </div>
            <div className="form-group">
                <MainStoriesSelect
                    mainStories={getData.mainStories}
                    characterMainStory={mainStoryId}
                    selectMode={true}
                    selectName="main_story_id"
                    onChangeFunc={(e) => setMainStoryId(Number(e.target.value))}
                    disabled={pnj}
                />
                <label htmlFor="main_story_id">Histoire principal</label>
            </div>
            <div className="form-group">
                <CategoryCharacterSelect
                    categories={getData.categories}
                    characterCategory={categories}
                    selectMode={true}
                    selectName="category_id"
                    onChangeFunc={(e) =>
                        setCategories([...categories, Number(e.target.value)])
                    }
                    disabled={pnj}
                />
                <label htmlFor="category_id">Catégorie</label>
            </div>
            <div className="form-group-check">
                <input
                    type="checkbox"
                    name="is_pnj"
                    id="isPnj"
                    checked={pnj}
                    onChange={(e) => setPnj(e.target.checked)}
                />
                <label htmlFor="isPnj">PNJ</label>
            </div>
            {categories.length != 0 && (
                <ul className="delete-categories">
                    {getData.categories.map((category) => {
                        return categories.map((characterCat) => {
                            if (characterCat == category.id) {
                                return (
                                    <li key={category + Math.random() * 1000}>
                                        {category.name}
                                        <span
                                            className="delete"
                                            onClick={() =>
                                                deleteCategory(category.id)
                                            }
                                        >
                                            <i className="fa-solid fa-trash"></i>
                                        </span>
                                    </li>
                                );
                            }
                        });
                    })}
                </ul>
            )}
            <button type="submit">{buttonText}</button>
        </form>
    );
}
