import React, { useEffect, useRef, useState } from "react";
import FormStory from "./UpdateComponent/FormStory";
import { useInsertOrUpdate } from "../../../customHook/useInsertOrUpdate";
import Title from "../../../components/Partials/Title";

export default function UpdateStory({
    story,
    setOnUpdate,
    getData,
    refreshData,
}) {
    // !PREVIEW DATA CHARACTER
    const [storyUnlock, setStoryUnlock] = useState(story.story_unlock?.id || 1);
    const [mainStoryId, setMainStoryId] = useState(story.main_story?.id || 1);

    // !FORM CHARACTER
    const form = useRef();

    const handleSubmit = (e) => {
        e.preventDefault();
        const inputs = form.current;

        let data = {};

        data = {
            story_name: inputs.story_name.value,
            thumbnail: inputs.thumbnail.value,
            step_unlock: Number(inputs.step_unlock.value),
            main_story: Number(mainStoryId),
            story_unlock: Number(storyUnlock),
            story_number: Number(inputs.story_number.value),
            custom_requirement: inputs.custom_requirement.value,
            visible: inputs.visible.checked,
            id: story.id,
        };

        console.log(data);

        useInsertOrUpdate(story == "NEW", "story", data, refreshData, () =>
            setOnUpdate(false)
        );
    };

    return (
        <>
            <Title setOnUpdate={setOnUpdate} onUpdate={story}>
                {story == "NEW" ? "Nouvelle histoire" : story.story_name}
            </Title>
            <FormStory
                forwardRef={form}
                story={story}
                handleSubmit={handleSubmit}
                storyUnlock={storyUnlock}
                setStoryUnlock={setStoryUnlock}
                mainStoryId={mainStoryId}
                setMainStoryId={setMainStoryId}
                getData={getData}
                buttonText={story == "NEW" ? "Ajouter" : "Mettre à jour"}
            />
        </>
    );
}
