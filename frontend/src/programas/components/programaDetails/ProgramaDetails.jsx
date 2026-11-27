import "./programaDetails.css";

import { useParams, Link } from "react-router-dom";
import { useEffect } from "react";

import Header from "../../../home/components/header/Header";
import Footer from "../../../home/components/footer/Footer";

import PanelAccesible from "../../../components/panelAccesible/PanelAccesible";

import useFetch from "../../../hooks/useFetch";

import BecaDetailsSkeleton from "../../../skeletons/BecaDetailsSkeleton";

import ErrorPagina from "../../../components/error/Error";

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

const ProgramaDetails = () => {
  const { data, loading, error, fetchData } = useFetch();

  const { id } = useParams();

  const reintentar = () => {
    fetchData(`https://unibecas.onrender.com/main/programas/${id}`);
  };

  useEffect(() => {
    reintentar();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [id]);

  const programa = data?.INFO;
  const clase = CLASES_ACREDITACION[programa?.acreditacion] ?? "sin-definir";

  if (error) return <ErrorPagina reintentar={reintentar} />;

  return (
    <div className="programa-details">
      <div>
        <Header />
        <div className="programa-details-contenido">
          <div className="contenedor-navegacion">
            <Link to="/programas" className="volver">
              Volver a programas
            </Link>

            <h2>Programas</h2>
          </div>

          <section>
            {loading ? (
              <BecaDetailsSkeleton />
            ) : (
              <>
                <h2 className="universidad">{programa?.universidad}</h2>

                <div className="contenedor-nombre-programa">
                  <h1>{formatearTexto(programa?.nombre)}</h1>
                  <span className="nivel">{programa?.nivel}</span>
                  <div className={`contenedor-acreditacion ${clase}`}>
                    <span className="acreditacion">
                      {programa?.acreditacion}
                    </span>
                    <span className={`punto-acreditacion ${clase}`}></span>
                  </div>
                </div>

                <p className="titulo-programa">
                  Título que otorga: {formatearTexto(programa?.titulo)}
                </p>

                <div className="datos-programa">
                  <div className="dato">
                    <span>Código SNIES</span>
                    <strong>{programa?.snies}</strong>
                  </div>

                  {/* Estos campos aparecen cuando el backend los devuelva */}
                  {programa?.semestres != null && (
                    <div className="dato">
                      <span>Duración</span>
                      <strong>{programa.semestres} semestres</strong>
                    </div>
                  )}
                  {programa?.creditos != null && (
                    <div className="dato">
                      <span>Créditos</span>
                      <strong>{programa.creditos}</strong>
                    </div>
                  )}
                  {programa?.periodo_admision && (
                    <div className="dato">
                      <span>Admisión</span>
                      <strong>{programa.periodo_admision}</strong>
                    </div>
                  )}
                </div>
              </>
            )}
          </section>
        </div>
      </div>
      <Footer />

      <PanelAccesible />
    </div>
  );
};

export default ProgramaDetails;