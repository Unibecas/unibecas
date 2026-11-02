import "./footer.css";
import { Link, useLocation } from "react-router-dom";
import { useEffect } from "react";

const Footer = () => {
  const { hash } = useLocation();

  useEffect(() => {
    if (!hash) return;

    document.querySelector(hash)?.scrollIntoView({
      behavior: "smooth",
    });
  }, [hash]);

  return (
    <footer className="footer">
      <div className="footer-contenido">
        <div className="footer-info">
          <h2>UNIBECAS</h2>
        </div>

        <div className="footer-seccion">
          <h3>Navegación</h3>
          <ul>
            <li>
              <Link to="/#inicio">Inicio</Link>
            </li>
            <li>
              <Link to="/#becas">Becas</Link>
            </li>
            <li>
              <Link to="/#oferta-academica">Sobre UNIBECAS</Link>
            </li>
          </ul>
        </div>
      </div>

      <div className="footer-inferior">
        <p>
          © {new Date().getFullYear()} UNIBECAS. Todos los derechos reservados.
        </p>
      </div>
    </footer>
  );
};

export default Footer;
