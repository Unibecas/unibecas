import "./panelAccesible.css";
import { useState, useEffect } from "react";

import darkmode from "../../assets/icons/home/darkmode.svg";
import lightmode from "../../assets/icons/home/lightmode.svg";

export const PanelAccesible = () => {
  // Recuperar el tamaño de letra guardado
  const [fontSize, setFontSize] = useState(() => {
    return Number(localStorage.getItem("fontSize")) || 1;
  });

  // Recuperar el modo guardado
  const [mode, setMode] = useState(() => {
    return localStorage.getItem("mode") || "lightmode";
  });

  // Aplicar y guardar el tamaño de letra
  useEffect(() => {
    document.documentElement.style.fontSize = `${fontSize}rem`;
    localStorage.setItem("fontSize", String(fontSize));
  }, [fontSize]);

  // Aplicar y guardar el tema
  useEffect(() => {
    document.documentElement.classList.toggle("darkmode", mode === "darkmode");

    localStorage.setItem("mode", mode);
  }, [mode]);

  const verificarTamanno = (nuevoFontSize) =>
    nuevoFontSize >= 1.4 || nuevoFontSize <= 0.8;

  const aumentarTamanno = () => {
    const nuevoFontSize = fontSize + 0.05;

    if (verificarTamanno(nuevoFontSize)) return;

    setFontSize(nuevoFontSize);
  };

  const disminuirTamanno = () => {
    const nuevoFontSize = fontSize - 0.05;

    if (verificarTamanno(nuevoFontSize)) return;

    setFontSize(nuevoFontSize);
  };

  const cambiarModo = () => {
    setMode(mode === "lightmode" ? "darkmode" : "lightmode");
  };

  const icono = mode === "lightmode" ? darkmode : lightmode;
  const imgAlt =
    mode === "lightmode" ? "Activar modo oscuro" : "Activar modo claro";

  return (
    <div className="contenedor-panel-accesible">
      <div onClick={cambiarModo}>
        <span>
          <img src={icono} alt={imgAlt} />
        </span>
      </div>

      <div onClick={aumentarTamanno}>
        <span title="Aumentar el tamaño de la letra">A+</span>
      </div>

      <div onClick={disminuirTamanno}>
        <span title="Disminuir el tamaño de la letra">A-</span>
      </div>
    </div>
  );
};

export default PanelAccesible;
