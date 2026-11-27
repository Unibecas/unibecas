import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import "./index.css";
import App from "./App.jsx";
import { BrowserRouter } from "react-router-dom";

import { BecaProvider } from "./context/BecaContext.jsx";
import { ProgramaProvider } from "./context/ProgramaContext.jsx";

createRoot(document.getElementById("root")).render(
  <StrictMode>
    <BrowserRouter>
      <BecaProvider>
        <ProgramaProvider>
          <App />
        </ProgramaProvider>
      </BecaProvider>
    </BrowserRouter>
  </StrictMode>,
);