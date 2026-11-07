import "./becaLayout.css";

import Header from "../../home/components/header/Header";

import PanelAccesible from "../../components/panelAccesible/PanelAccesible";
import BecaList from "../components/becaList/BecaList";

import { useContext, useState } from "react";
import { BecaContext } from "../../context/BecaContext";

import { ArrowDawn } from "../../components/icons/home/ArrowDown";
import { Search } from "../../components/icons/home/Search";
import { Medalla } from "../../components/icons/home/Medalla";
import { Universidad } from "../../components/icons/home/Universidad";
import { Estado } from "../../components/icons/home/Estado";

import Input from "../../components/input/Input";
import BecaCardSkeleton from "../../skeletons/BecaCardSkeleton";

import { useSearchParams } from "react-router-dom";

const BecaLayout = () => {
  const { data, loading } = useContext(BecaContext);

  const becas = data?.datos ?? [];

  const [searchParams] = useSearchParams();

  const [mostrarFiltroModalidad, setMostrarFiltroModalidad] = useState(false);
  const [mostrarFiltroUniversidad, setMostrarFiltroUniversidad] =
    useState(false);
  const [mostrarFiltroEstado, setMostrarFiltroEstado] = useState(false);

  const [ordenarUniversidad, setOrdenarUniversidad] = useState(false);
  const [ordenarRecientes, setOrdenarRecientes] = useState(false);
  const [ordenarPopulares, setOrdenarPopulares] = useState(false);

  const nombreInicial = searchParams.get("schsp") || "";
  const modalidadInicial = searchParams.get("fmod") || "";

  const [nombreBeca, setNombreBeca] = useState(nombreInicial);

  const [busqueda, setBusqueda] = useState(nombreInicial);

  const [orden, setOrden] = useState("");

  const becasFiltradas = becas.filter((beca) => {
    const coincideNombre = beca.nombre
      .toLowerCase()
      .includes(busqueda.toLowerCase().trim());

    const coincideModalidad =
      !modalidadInicial || beca.modalidad === modalidadInicial;

    return coincideNombre && coincideModalidad;
  });

  // manejar el ordenamiento de becas
  const becasOrdenadas = [...becasFiltradas];

  if (orden === "universidad-asc") {
    becasOrdenadas.sort((a, b) => a.universidad.localeCompare(b.universidad));
  }

  if (orden === "universidad-desc") {
    becasOrdenadas.sort((a, b) => b.universidad.localeCompare(a.universidad));
  }

  const handleOrdenarUniversidad = () => {
    setOrden((prev) =>
      prev === "universidad-asc" ? "universidad-desc" : "universidad-asc",
    );

    setOrdenarRecientes(false);
    setOrdenarPopulares(false);
  };

  const handleOrdenarRecientes = () => {
    setOrdenarRecientes(!ordenarRecientes);
    setOrdenarUniversidad(false);
    setOrdenarPopulares(false);
  };

  const handleOrdenarPopulares = () => {
    setOrdenarPopulares(!ordenarPopulares);
    setOrdenarUniversidad(false);
    setOrdenarRecientes(false);
  };

  // Mostrar los filtros de modalidad, universidad y estado
  const toggleFiltroModalidad = () => {
    setMostrarFiltroUniversidad(false);
    setMostrarFiltroEstado(false);
    setMostrarFiltroModalidad(!mostrarFiltroModalidad);
  };

  const toggleFiltroUniversidad = () => {
    setMostrarFiltroModalidad(false);
    setMostrarFiltroEstado(false);
    setMostrarFiltroUniversidad(!mostrarFiltroUniversidad);
  };

  const toggleFiltroEstado = () => {
    setMostrarFiltroModalidad(false);
    setMostrarFiltroUniversidad(false);
    setMostrarFiltroEstado(!mostrarFiltroEstado);
  };

  const actualizarBusqueda = () => {
    setBusqueda(nombreBeca.trim());
  };

  return (
    <div className="beca-layout">
      <Header />
      <main className="contenido">
        <div className="filtros">
          <div>
            <div className="filtro-nombre">
              <Input
                id="buscador"
                type="text"
                placeholder="Buscar por palabra clave..."
                className="buscador-input"
                value={nombreBeca}
                onChange={(e) => {
                  const valor = e.target.value;
                  setNombreBeca(valor);
                  if (valor.trim() === "") {
                    setBusqueda("");
                  }
                }}
              />
              <button>
                <Search
                  className="icono-busqueda"
                  onClick={actualizarBusqueda}
                />
              </button>
            </div>
            <div className="filtro-botones">
              <button onClick={toggleFiltroModalidad}>
                <Medalla />
                <span>Modalidad</span>
              </button>
              <button onClick={toggleFiltroUniversidad}>
                <Universidad />
                <span>Universidad</span>
              </button>
              <button onClick={toggleFiltroEstado}>
                <Estado />
                <span>Estado</span>
              </button>
            </div>
          </div>
          <div className="tipos-de-filtros">
            {mostrarFiltroModalidad && (
              <div>
                <button>Todas</button>
                <button>Pregrado</button>
                <button>Postgrado</button>
                <button>Tecnologica</button>
                <button>Tecnica</button>
                <button>Especialidad</button>
                <button>Doctorado</button>
              </div>
            )}

            {mostrarFiltroUniversidad && (
              <div>
                <button>UTB</button>
                <button>Universidad del Sinú</button>
                <button>Universidad de Cartagena</button>
              </div>
            )}

            {mostrarFiltroEstado && (
              <div>
                <button>Activa</button>
                <button>Vencida</button>
                <button>En proceso</button>
                <button>Suspendida</button>
              </div>
            )}
          </div>
        </div>
        <div className="ordenar">
          {loading ? (
            Array.from({ length: 10 }).map((_, index) => (
              <BecaCardSkeleton key={index} />
            ))
          ) : (
            <>
              <h1>{data?.datos.length} becas encontrada</h1>
              <div className="contenedor-botones-ordenar">
                <span>Ordenar por:</span>
                <div>
                  <button
                    className={ordenarUniversidad ? "activo" : ""}
                    onClick={handleOrdenarUniversidad}
                  >
                    <span>Universidad</span>
                    <ArrowDawn />
                  </button>
                </div>
                <div>
                  <button
                    className={ordenarRecientes ? "activo" : ""}
                    onClick={handleOrdenarRecientes}
                  >
                    <span>Mas recientes</span>
                    <ArrowDawn />
                  </button>
                </div>
                <div>
                  <button
                    className={ordenarPopulares ? "activo" : ""}
                    onClick={handleOrdenarPopulares}
                  >
                    <span>Mas populares</span>
                    <ArrowDawn />
                  </button>
                </div>
              </div>
            </>
          )}
        </div>
        <BecaList becas={becasOrdenadas} />
      </main>

      <PanelAccesible />
    </div>
  );
};

export default BecaLayout;
