import React from "react";
import ReactDOM from "react-dom/client";
import App from "./App";

if (document.getElementById("root-app")) {
    const container = document.getElementById("root-app");
    const root = ReactDOM.createRoot(container); // createRoot(container!) if you use TypeScript
    root.render(<App />);
}
