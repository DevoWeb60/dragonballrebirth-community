import React from "react";

export default function OtherCaps({ otherCaps, otherCapsIcons }) {
    return (
        <div className="caps-container">
            {otherCaps.length !== 0 &&
                otherCaps.map((caps) => (
                    <div className="caps-list" key={caps.id}>
                        <span className="name">
                            {caps.name}
                            {otherCapsIcons.map((capsIcon) => {
                                if (capsIcon.id === caps.caps_scarecities_id) {
                                    return (
                                        <img
                                            src={capsIcon.icon}
                                            alt={caps.name}
                                            key={capsIcon.id + caps.id}
                                        />
                                    );
                                }
                            })}
                        </span>
                    </div>
                ))}
        </div>
    );
}
