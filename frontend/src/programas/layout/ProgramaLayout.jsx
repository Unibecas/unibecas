import "./programaLayout.css";

import { useContext, useEffect, useState } from "react";

import Header from "../../home/components/header/Header";
import PanelAccesible from "../../components/panelAccesible/PanelAccesible";
import ProgramaList from "../components/programaList/ProgramaList";

import { Search } from "../../components/icons/home/Search";
import { Medalla } from "../../components/icons/home/Medalla";

import Input from "../../components/input/Input";
import BecaCardSkeleton from "../../skeletons/BecaCardSkeleton";

import { ProgramaContext } from "../../context/ProgramaContext";
import { NIVELES } from "../niveles";

import { useSearchParams } from "react-router-dom";

const LIMITE = 10;
// El backend exige mínimo 4 caracteres en los filtros de texto (nprog, etc.)
const MIN_BUSQUEDA = 4;

const ProgramaLayout = () => {
  const { data, loading, error, buscarProgramas } =
    useContext(ProgramaContext);

  const programas = data?.datos ?? [];

  const [textoBusqueda, setTextoBusqueda] = useState("");
  const [busqueda, setBusqueda] = useState("");
  const [pagina, setPagina] = useState(1);

  // El nivel vive en la URL (?nform=Maestría) para poder enlazarlo desde el menú
  const [searchParams, setSearchParams] = useSearchParams();
  const nivelURL = searchParams.get("nform") ?? "";
  const nivel = NIVELES.includes(nivelURL) ? nivelURL : "";
  const [mostrarFiltroNivel, setMostrarFiltroNivel] = useState(false);

  const busquedaMuyCorta =
    textoBusqueda.trim().length > 0 &&
    textoBusqueda.trim().length < MIN_BUSQUEDA;

  // Pide los programas al backend cada vez que cambia un filtro o la página
  useEffect(() => {
    buscarProgramas({ busqueda, nivel, pagina, limite: LIMITE });
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [busqueda, nivel, pagina]);

  const aplicarBusqueda = () => {
    if (busquedaMuyCorta) return;
    setPagina(1);
    setBusqueda(textoBusqueda.trim());
  };

  const seleccionarNivel = (nuevoNivel) => {
    setSearchParams(nuevoNivel ? { nform: nuevoNivel } : {});
    setMostrarFiltroNivel(false);
  };

  // Al cambiar de nivel (desde el filtro o desde el menú) se vuelve a la página 1
  useEffect(() => {
    setPagina(1);
  }, [nivel]);

  const cambiarPagina = (nuevaPagina) => {
    setPagina(nuevaPagina);
    window.scrollTo({ top: 0, behavior: "smooth" });
  };

  return (
    <div className="programa-layout">
      <Header />
      <main className="contenido">
        <div className="filtros">
          <div>
            <div
              className="filtro-nombre"
              onKeyDown={(e) => e.key === "Enter" && aplicarBusqueda()}
            >
              <Input
                id="buscador"
                type="text"
                placeholder="Buscar programa por nombre..."
                className="buscador-input"
                value={textoBusqueda}
                onChange={(e) => {
                  const valor = e.target.value;
                  setTextoBusqueda(valor);
                  if (valor.trim() === "") {
                    setBusqueda("");
                    setPagina(1);
                  }
                }}
              />
              <button type="button" onClick={aplicarBusqueda}>
                <Search className="icono-busqueda" />
              </button>
            </div>
            {busquedaMuyCorta && (
              <p className="aviso-busqueda">
                Escribe al menos {MIN_BUSQUEDA} caracteres para buscar.
              </p>
            )}
            <div className="filtro-botones">
              <button
                type="button"
                onClick={() => setMostrarFiltroNivel(!mostrarFiltroNivel)}
              >
                <Medalla />
                <span>{nivel || "Nivel de formación"}</span>
              </button>
            </div>
          </div>
          <div className="tipos-de-filtros">
            {mostrarFiltroNivel && (
              <div>
                <button type="button" onClick={() => seleccionarNivel("")}>
                  Todos
                </button>
                {NIVELES.map((n) => (
                  <button
                    type="button"
                    key={n}
                    onClick={() => seleccionarNivel(n)}
                  >
                    {n}
                  </button>
                ))}
              </div>
            )}
          </div>
        </div>

        <div className="ordenar">
          {!loading && !error && (
            <h1>
              {programas.length}{" "}
              {programas.length === 1
                ? "programa encontrado"
                : "programas encontrados"}
            </h1>
          )}
        </div>

        {error ? (
          <p className="error-programas">
            No pudimos cargar los programas. Intenta de nuevo en un momento.
          </p>
        ) : loading ? (
          <div className="programa-list">
            {Array.from({ length: LIMITE }).map((_, index) => (
              <BecaCardSkeleton key={index} />
            ))}
          </div>
        ) : (
          <ProgramaList
            programas={programas}
            pagina={pagina}
            hayMas={programas.length === LIMITE}
            onCambiarPagina={cambiarPagina}
          />
        )}
      </main>

      <PanelAccesible />
    </div>
  );
};

export default ProgramaLayout;