import "./programaList.css";

import ProgramaCard from "../programaCard/ProgramaCard";
import { Link } from "react-router-dom";

const ProgramaList = ({ programas, pagina, hayMas, onCambiarPagina }) => {
  if (!programas?.length) {
    return (
      <p className="programa-vacio">
        No encontramos programas con esos filtros. Prueba con otra búsqueda.
      </p>
    );
  }

  return (
    <>
      <div className="programa-list">
        {programas.map((info) => (
          <Link
            to={`/programa/${info.id}`}
            className="link-programa-card"
            key={info.id}
          >
            <ProgramaCard
              universidad={info.universidad}
              nombre={info.nombre}
              titulo={info.titulo}
              nivel={info.nivel}
              snies={info.snies}
              acreditacion={info.acreditacion}
            />
          </Link>
        ))}
      </div>

      <nav className="programa-paginacion" aria-label="Paginación de programas">
        <button
          type="button"
          onClick={() => onCambiarPagina(pagina - 1)}
          disabled={pagina === 1}
        >
          Anterior
        </button>
        <span>Página {pagina}</span>
        <button
          type="button"
          onClick={() => onCambiarPagina(pagina + 1)}
          disabled={!hayMas}
        >
          Siguiente
        </button>
      </nav>
    </>
  );
};

export default ProgramaList;