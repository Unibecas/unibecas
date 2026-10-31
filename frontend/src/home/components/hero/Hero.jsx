import "./hero.css";
import Input from "../../../components/input/Input";
import heroImg from "../../../assets/images/home/hero-img.jpg";

import { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";

import useFetch from "../../../hooks/useFetch";

import { Search } from "../../../components/icons/home/Search";

const Hero = () => {
  const frases = ["beca ideal", "futuro", "próxima meta"];

  const [texto, setTexto] = useState("");
  const [indiceFrase, setIndiceFrase] = useState(0);
  const [borrando, setBorrando] = useState(false);

  const [nombreBeca, setNombreBeca] = useState("");
  const [modalidad, setModalidad] = useState("");

  const { fetchData } = useFetch();

  const navigate = useNavigate();

  useEffect(() => {
    const fraseActual = frases[indiceFrase];

    let velocidad = borrando ? 50 : 100;

    // Esperar cuando termine de escribir
    if (!borrando && texto === fraseActual) {
      velocidad = 1500;
    }

    // Pequeña pausa antes de la siguiente frase
    if (borrando && texto === "") {
      velocidad = 300;
    }

    const temporizador = setTimeout(() => {
      if (!borrando && texto === fraseActual) {
        setBorrando(true);
        return;
      }

      if (borrando && texto === "") {
        setBorrando(false);

        setIndiceFrase((indiceFrase + 1) % frases.length);

        return;
      }

      setTexto(
        borrando ? texto.slice(0, -1) : fraseActual.slice(0, texto.length + 1),
      );
    }, velocidad);

    return () => clearTimeout(temporizador);
  }, [texto, indiceFrase, borrando]);

  const filtrarBecas = () => {
    const params = new URLSearchParams();
    const nombre = nombreBeca.trim();

    if (nombre.length >= 4) {
      params.set("schsp", nombre);
    }

    if (modalidad) {
      params.set("fmod", modalidad);
    }

    fetchData(`https://unibecas.onrender.com/main/becas?${params}`);

    navigate("/becas");
  };

  return (
    <div className="hero" id="inicio">
      <div className="hero-contenido">
        <div className="contenido-principal">
          <h1>
            Encuentra tu <span className="typing-text">{texto}</span>
          </h1>
          <p>
            Explora becas de distintas universidades y encuentra oportunidades
            que se ajusten a tu carrera y necesidades.
          </p>

          <div className="hero-buscador">
            <h2>Filtrar por</h2>
            <div>
              <div className="filtro-nombre">
                <Input
                  id="buscador"
                  type="text"
                  placeholder="Palabra clave..."
                  className="buscador-input"
                  onChange={(e) => setNombreBeca(e.target.value)}
                />
                <button>
                  <Search className="icono-busqueda" />
                </button>
              </div>
              <div>
                <span>Modalidad</span>
                <select onChange={(e) => setModalidad(e.target.value)}>
                  <option value="">Todas</option>
                  <option value="Pregrado">Pregrado</option>
                  <option value="Postgrado">Postgrado</option>
                  <option value="Tecnologica">Tecnologica</option>
                  <option value="Tecnica">Tecnica</option>
                  <option value="Especialidad">Especialidad</option>
                  <option value="Doctorado">Doctorado</option>
                </select>
              </div>
              <div>
                <span>Estado</span>
                <select disabled>
                  <option value="Activa">Activa</option>
                  <option value="Vencida">Vencida</option>
                  <option value="En proceso">En proceso</option>
                  <option value="Suspendida">Suspendida</option>
                </select>
              </div>
            </div>

            <button className="buscador-boton" onClick={filtrarBecas}>
              Buscar
            </button>
          </div>
        </div>
        <div className="hero-background">
          <img src={heroImg} alt="Mujer leyendo" />
        </div>
      </div>
    </div>
  );
};

export default Hero;
