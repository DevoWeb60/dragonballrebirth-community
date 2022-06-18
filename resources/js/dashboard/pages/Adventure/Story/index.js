import React, { useEffect, useState } from "react";
import Title from "../../../components/Partials/Title";
import { useDelete } from "../../../customHook/useDelete";
import UpdateStory from "./UpdateStory";

export default function Story({ getData, refreshData }) {
    const [stories, setStories] = useState([]);
    const [onUpdate, setOnUpdate] = useState(false);

    useEffect(() => {
        setStories(getData.stories);
    }, [getData]);

    console.log(stories);

    const handleDelete = (id) => {
        const message =
            "ATTENTION ! Tu es sur le point de supprimer une histoire. Cette action est irréversible.";
        useDelete(id, "story", refreshData, message);
    };

    return (
        <>
            {onUpdate === false ? (
                <>
                    <Title setOnUpdate={setOnUpdate} onUpdate={onUpdate}>
                        Les histoires
                    </Title>
                    <div className="flex-galery">
                        {stories &&
                            stories.length !== 0 &&
                            stories.map((story) => {
                                return (
                                    <div className="story-list" key={story.id}>
                                        <div className="thumbnail">
                                            <img src={story.thumbnail} alt="" />
                                        </div>
                                        <div className="story-info">
                                            <span className="name">
                                                {story.story_name}
                                            </span>
                                            <span>
                                                Histoire N°{" "}
                                                <strong>
                                                    {story.story_number}
                                                </strong>
                                            </span>
                                            <span className="main-story">
                                                {story.main_story.name}
                                            </span>
                                        </div>
                                        <div className="story-unlock">
                                            <strong>Déblocage</strong>
                                            {story.custom_requirement.length ===
                                            0 ? (
                                                <span>
                                                    <strong>
                                                        {
                                                            story.story_unlock
                                                                .story_name
                                                        }
                                                    </strong>
                                                    &nbsp; à l'étape N°&nbsp;
                                                    <strong>
                                                        {story.step_unlock}
                                                    </strong>
                                                </span>
                                            ) : (
                                                <span>
                                                    {story.custom_requirement}
                                                </span>
                                            )}
                                        </div>
                                        <div className="visible">
                                            {story.visible === 1 ? (
                                                <strong className="publish">
                                                    Publié
                                                </strong>
                                            ) : (
                                                <strong className="no-publish">
                                                    Brouillon
                                                </strong>
                                            )}
                                        </div>
                                        <span
                                            className="edit"
                                            onClick={() => setOnUpdate(story)}
                                        >
                                            <i className="fa-solid fa-pen-to-square"></i>
                                        </span>
                                        <span
                                            className="delete"
                                            onClick={() => handleDelete(story)}
                                        >
                                            <i className="fa-solid fa-trash"></i>
                                        </span>
                                    </div>
                                );
                            })}
                    </div>
                </>
            ) : (
                <UpdateStory
                    refreshData={refreshData}
                    setOnUpdate={setOnUpdate}
                    story={onUpdate}
                    getData={getData}
                />
            )}
        </>
    );

    // return <div>Test</div>;
}
