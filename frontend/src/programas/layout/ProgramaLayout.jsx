import "./programaLayout.css";

import { useEffect, useState } from "react";

import Header from "../../home/components/header/Header";
import PanelAccesible from "../../components/panelAccesible/PanelAccesible";
import ProgramaList from "../components/programaList/programaList";

import { Search } from "../../components/icons/home/Search";
import { Medalla } from "../../components/icons/home/Medalla";

import Input from "../../components/input/Input";
import BecaCardSkeleton from "../../skeletons/BecaCardSkeleton";

import useFetch from "../../hooks/useFetch";

// Debe ser la base hasta /main, por ejemplo https://unibecas.onrender.com/main
const API_URL = "https://unibecas.onrender.com/main/programas";

const LIMITE = 10;
// El backend exige mínimo 4 caracteres en los filtros de texto (nprog, etc.)
const MIN_BUSQUEDA = 4;

// Valores exactos que acepta el backend en "nivel"
const NIVELES = [
  "Técnico Profesional",
  "Tecnólogo",
  "Pregrado Universitario",
  "Especialización",
  "Maestría",
  "Doctorado",
];

const ProgramaLayout = () => {
  const { data, loading, error, fetchData } = useFetch();

  const programas = data?.datos ?? [];

  const [textoBusqueda, setTextoBusqueda] = useState("");
  const [busqueda, setBusqueda] = useState("");
  const [nivel, setNivel] = useState("");
  const [pagina, setPagina] = useState(1);
  const [mostrarFiltroNivel, setMostrarFiltroNivel] = useState(false);

  const busquedaMuyCorta =
    textoBusqueda.trim().length > 0 &&
    textoBusqueda.trim().length < MIN_BUSQUEDA;

  // Pide los programas al backend cada vez que cambia un filtro o la página
  useEffect(() => {
    const params = new URLSearchParams({
      limit: LIMITE,
      offset: (pagina - 1) * LIMITE,
    });

    if (busqueda) params.set("nprog", busqueda);
    if (nivel) params.set("nform", nivel); // confirmar el nombre del query en el backend

    fetchData(`${API_URL}?${params}`);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [busqueda, nivel, pagina]);

  const aplicarBusqueda = () => {
    if (busquedaMuyCorta) return;
    setPagina(1);
    setBusqueda(textoBusqueda.trim());
  };

  const seleccionarNivel = (nuevoNivel) => {
    setNivel(nuevoNivel);
    setPagina(1);
    setMostrarFiltroNivel(false);
  };

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