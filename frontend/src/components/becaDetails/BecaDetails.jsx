import "./becaDetails.css";

import { useParams, Link } from "react-router-dom";

import Header from "../../home/components/header/Header";
import Footer from "../../home/components/footer/Footer";

import PanelAccesible from "../panelAccesible/PanelAccesible";

import useFetch from "../../hooks/useFetch";
import { useEffect } from "react";

import BecaDetailsSkeleton from "../../skeletons/BecaDetailsSkeleton";

import { ArrowUpRight } from "../icons/home/ArrowUpRight";

import Error from "../error/Error";

const BecaDetails = () => {
  const { data, loading, error, fetchData } = useFetch();

  const { id } = useParams();

  const reintentar = () => {
    fetchData(`https://unibecas.onrender.com/main/becas/${id}`);
  };

  useEffect(() => {
    reintentar();
  }, [id]);

  const clase = data?.INFO?.estado === "Activa" ? "activa" : "vencida";

  if (error) return <Error reintentar={reintentar} />;

  return (
    <div className="beca-details">
      <div>
        <Header />
        <div className="beca-details-contenido">
          <div className="contenedor-navegacion">
            <Link to="/" className="volver">
              Volver al inicio
            </Link>

            <h2>Becas</h2>
          </div>

          <section>
            {loading ? (
              <BecaDetailsSkeleton />
            ) : (
              <>
                <h2 className="universidad">{data?.INFO?.universidad}</h2>

                <div className="contenedor-nombre-beca">
                  <h1>{data?.INFO?.nombre}</h1>
                  <span className="modalidad">{data?.INFO?.modalidad}</span>
                  <div className={`contenedor-estado ${clase}`}>
                    <span className="estado">{data?.INFO?.estado}</span>
                    <span className={`punto ${clase}`}></span>
                  </div>
                </div>

                <p className="cobertura">{data?.INFO?.cobertura}</p>

                <p>{data?.INFO?.descripcion}</p>

                <h2 className="como-aplicar">¿Como aplicar?</h2>
                <p>{data?.INFO?.aplicar}</p>

                <div className="contenedor-link">
                  <a
                    href={data?.INFO?.url}
                    target="_blanck"
                    rel="noopener noreferrer"
                  >
                    Aplica aquí
                  </a>
                  <ArrowUpRight width="23px" heigth="23" />
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

export default BecaDetails;
