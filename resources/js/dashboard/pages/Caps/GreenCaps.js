import React from "react";

export default function GreenCaps({ greenCaps, greenCapsIcon }) {
    return (
        <div className="caps-container">
            {greenCaps.length !== 0 &&
                greenCaps.map((caps) => (
                    <div className="caps-list" key={caps.id}>
                        <span className="name">
                            {caps.name}
                            <img src={greenCapsIcon[0].icon} alt={caps.name} />
                        </span>
                    </div>
                ))}
        </div>
    );
}
