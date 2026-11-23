import "./programaCard.css";
import { ArrowUpRight } from "../../../components/icons/home/ArrowUpRight";

// Clase de color según el tipo de acreditación
const CLASES_ACREDITACION = {
  "Acreditacion de Alta Calidad": "alta-calidad",
  "Registro Calificado": "registro",
};

// Algunos nombres vienen todo en mayúsculas desde la base de datos
// ("ECONOMÍA PÚBLICA"): se pasan a minúscula con la primera en mayúscula.
const formatearTexto = (texto = "") =>
  texto === texto.toUpperCase()
    ? texto.charAt(0).toUpperCase() + texto.slice(1).toLowerCase()
    : texto;

const ProgramaCard = ({
  universidad,
  nombre,
  titulo,
  nivel,
  snies,
  acreditacion,
  ref,
}) => {
  const clase = CLASES_ACREDITACION[acreditacion] ?? "sin-definir";

  return (
    <article className="programaCard" ref={ref}>
      <header className="programaCard-header">
        <span className="programaCard-nivel">{nivel}</span>
        <h2 className="programaCard-universidad">{universidad}</h2>
      </header>

      <div className="programaCard-contenido">
        <h3 title={formatearTexto(nombre)}>{formatearTexto(nombre)}</h3>

        <p className="programaCard-titulo">Título: {formatearTexto(titulo)}</p>

        <div className="programaCard-snies">
          <h3>Código SNIES</h3>
          <p>{snies}</p>
        </div>
      </div>

      <footer className="programaCard-footer">
        <div className="bottom">
          <div className={`contenedor-programaCard-acreditacion ${clase}`}>
            <span className="programaCard-acreditacion">{acreditacion}</span>
            <span className={`punto-programa ${clase}`}></span>
          </div>
          <ArrowUpRight />
        </div>
      </footer>
    </article>
  );
};

export default ProgramaCard;
