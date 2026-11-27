import "./becaCard.css";
import { ArrowUpRight } from "../icons/home/ArrowUpRight";

const BecaCard = ({
  universidad,
  nombre,
  vigencia,
  cobertura,
  modalidad,
  estado,
  ref,
}) => {
  const clase = estado === "Activa" ? "activa" : "vencida";

  return (
    <article className="becaCard" ref={ref}>
      <header className="becaCard-header">
        <span className="becaCard-modalidad">{modalidad}</span>
        <h2 className="becaCard-universidad">{universidad}</h2>
      </header>

      <div className="becaCard-contenido">
        <h3>{nombre}</h3>

        <div className="becaCard-requisitos">
          <h3>Cobertura:</h3>
          <span>{cobertura}</span>
        </div>
      </div>

      <footer className="becaCard-footer">
        <div className="becaCard-vigencia">
          <span>Vigencia:</span>
          <br />
          <span className="becaCard-inscripciones">{vigencia}</span>
        </div>
        <div className="bottom">
          <div className={`contenedor-becaCard-estado ${clase}`}>
            <span className="becaCard-estado">{estado}</span>
            <span className={`punto ${clase}`}></span>
          </div>
          <ArrowUpRight />
        </div>
      </footer>
    </article>
  );
};

export default BecaCard;
