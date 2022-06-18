import React from "react";
import StorySelect from "../../../../components/Select/StorySelect";
import MainStoriesSelect from "../../../../components/Select/MainStoriesSelect";

export default function FormStory({
    forwardRef,
    story,
    handleSubmit,
    storyUnlock,
    setStoryUnlock,
    mainStoryId,
    setMainStoryId,
    getData,
    buttonText,
}) {
    return (
        <form
            className="form-flex"
            onSubmit={(e) => handleSubmit(e)}
            ref={forwardRef}
        >
            <div className="form-group">
                <input
                    type="text"
                    id="story_name"
                    name="story_name"
                    defaultValue={story.story_name || ""}
                    placeholder="CSS"
                />
                <label htmlFor="story_name">Nom</label>
            </div>
            <div className="form-group">
                <input
                    type="text"
                    id="thumbnail"
                    name="thumbnail"
                    defaultValue={
                        story.thumbnail ||
                        "https://www.dragonballrebirth.fr/img/aventure/histoires/[image.png]"
                    }
                    placeholder="CSS"
                />
                <label htmlFor="thumbnail">Miniature</label>
            </div>
            <div className="form-group">
                <input
                    type="number"
                    id="step_unlock"
                    name="step_unlock"
                    defaultValue={story.step_unlock || 1}
                    placeholder="CSS"
                />
                <label htmlFor="step_unlock">Débloquer à l'étape</label>
            </div>
            <div className="form-group">
                <StorySelect
                    stories={getData.stories}
                    characterUnlock={storyUnlock}
                    selectName="story_unlock"
                    selectMode={true}
                    onChangeFunc={(e) => setStoryUnlock(Number(e.target.value))}
                />
                <label htmlFor="story_unlock">Débloquer à l'histoire</label>
            </div>
            <div className="form-group">
                <input
                    type="number"
                    id="story_number"
                    name="story_number"
                    defaultValue={story.story_number || 1}
                    placeholder="CSS"
                />
                <label htmlFor="story_number">
                    Numéro de l'histoire (Génère les miniatures des étapes)
                </label>
            </div>
            <div className="form-group">
                <MainStoriesSelect
                    mainStories={getData.mainStories}
                    characterMainStory={mainStoryId}
                    selectMode={true}
                    selectName="main_story"
                    onChangeFunc={(e) => setMainStoryId(Number(e.target.value))}
                />
                <label htmlFor="main_story">Histoire principal</label>
            </div>
            <div className="form-group w-100">
                <input
                    type="text"
                    id="custom_requirement"
                    name="custom_requirement"
                    defaultValue={story.custom_requirement || ""}
                    placeholder="CSS"
                />
                <label htmlFor="custom_requirement">
                    Déblocage personnalisé
                </label>
            </div>
            <div className="form-group-check">
                <input
                    type="checkbox"
                    name="visible"
                    id="visible"
                    defaultChecked={story.visible === 1 ? true : false}
                />
                <label htmlFor="visible">Publié</label>
            </div>
            <button type="submit">{buttonText}</button>
        </form>
    );
}
