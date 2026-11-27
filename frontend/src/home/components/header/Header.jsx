import { useState, useRef, useEffect } from "react";
import registrarmeIcon from "../../../assets/icons/home/registrarmeIcon.svg";
import { ArrowDawn } from "../../../components/icons/home/ArrowDown";
import Input from "../../../components/input/Input";
import "./header.css";

import hidePassword from "../../../assets/icons/home/hide-password.svg";
import seePassword from "../../../assets/icons/home/see-password.svg";

import logo from "../../../assets/images/home/logo-unibecas.png";

import { Link } from "react-router-dom";

import "react-loading-skeleton/dist/skeleton.css";

import { useContext } from "react";
import { BecaContext } from "../../../context/BecaContext";
import { AuthContext } from "../../../context/AuthContext";

import Skeleton from "react-loading-skeleton";
import { ArrowUpRight } from "../../../components/icons/home/ArrowUpRight";
import { LogOut } from "../../../components/icons/home/LogOut";
import { Retry } from "../../../components/icons/home/Retry";

import { toast } from "sonner";
import Spinner from "../../../components/spinner/Spinner";

const Header = () => {
  const [estaAbierto, setEstaAbierto] = useState(false);
  const [menuAbierto, setMenuAbierto] = useState(false);

  // estados del los inputs del modal de registrarme
  const [usuario, setUsuario] = useState("");
  const [errorUsuario, setErrorUsuario] = useState(null);

  const [email, setEmail] = useState("");
  const [errorEmail, setErrorEmail] = useState(null);

  const [contrasenna, setContrasenna] = useState("");
  const [errorContrasenna, setErrorContrasenna] = useState(null);

  const [mostrarModal, setMostrarModal] = useState("login");

  // estados de los inputs del modal de login
  const [usuarioLogin, setUsuarioLogin] = useState("");
  const [errorUsuarioLogin, setErrorUsuarioLogin] = useState(null);

  const [contrasennaLogin, setContrasennaLogin] = useState("");
  const [errorContrasennaLogin, setErrorContrasennaLogin] = useState(null);

  // type y el icono del modal login
  const [inputLoginType, setInputLoginType] = useState("password");
  const [loginPasswordIcon, setLoginPasswordIcon] = useState(seePassword);

  // type y el icono del modal registrarme
  const [inputRegistrarmeType, setInputRegistrarmeType] = useState("password");
  const [registrarPasswordIcon, setRegistrarmePasswordIcon] =
    useState(seePassword);

  const [mostrarBecas, setMostrarBecas] = useState(false);
  const [cerrarSesion, setCerrarSesion] = useState(false);

  const { data, fetchData, loading, error } = useContext(BecaContext);
  const { loadingLogin, estaAutenticado, login, register, logout } =
    useContext(AuthContext);

  const becas = data?.datos ?? [];

  const inputLoginRef = useRef(null);
  const inputRegistrarmeRef = useRef(null);

  const cerrarModal = () => {
    setEstaAbierto(false);
  };

  const handleRegister = async () => {
    setErrorUsuario(null);
    setErrorEmail(null);
    setErrorContrasenna(null);

    if (!usuario.trim()) {
      setErrorUsuario("¡Oops! debes llenar este campo");
    }

    if (!email.trim()) {
      setErrorEmail("¡Oops! debes llenar este campo");
    }

    if (!contrasenna.trim()) {
      setErrorContrasenna("¡Oops! debes llenar este campo");
    }

    if (!usuario.trim() || !email.trim() || !contrasenna.trim()) {
      return;
    }

    const result = await register({
      username: usuario,
      email,
      password: contrasenna,
    });

    if (result.success) {
      toast.success("Registro exitoso");

      // hacer login automatico despues del registro
      const loginResult = await login({
        username: email,
        password: contrasenna,
      });
      if (loginResult.success) {
        setEstaAbierto(false);
        setUsuario("");
        setEmail("");
        setContrasenna("");
      } else {
        toast.error("Error al registrar usuario");
      }
    } else {
      toast.error("Error al registrar usuario");
    }
  };

  const handleChangeUsuario = (e) => {
    const nuevoUsuario = e.target.value;

    setUsuario(nuevoUsuario);

    if (nuevoUsuario.trim()) {
      setErrorUsuario(null);
    } else {
      setErrorUsuario("¡Oops! debes llenar este campo");
    }
  };

  const handleChangeEmail = (e) => {
    const nuevoEmail = e.target.value;

    setEmail(nuevoEmail);

    if (nuevoEmail.trim()) {
      setErrorEmail(null);
    } else {
      setErrorEmail("¡Oops! debes llenar este campo");
    }
  };

  const handleChangeContrasenna = (e) => {
    const nuevaContrasenna = e.target.value;

    setContrasenna(nuevaContrasenna);

    if (nuevaContrasenna.trim()) {
      setErrorContrasenna(null);
    } else {
      setErrorContrasenna("¡Oops! debes llenar este campo");
    }
  };

  const handleLogin = async () => {
    if (!usuarioLogin.trim()) {
      setErrorUsuarioLogin("¡Oops! debes llenar este campo");
    }
    if (!contrasennaLogin.trim()) {
      setErrorContrasennaLogin("¡Oops! debes llenar este campo");
    }

    if (!usuarioLogin.trim() || !contrasennaLogin.trim()) {
      return;
    }

    const result = await login({
      username: usuarioLogin,
      password: contrasennaLogin,
    });

    if (result.success) {
      toast.success(`Has iniciado sesion como ${result?.data?.info?.user}`);

      setEstaAbierto(false);
      setUsuarioLogin("");
      setContrasennaLogin("");
      return;
    } else {
      toast.error("Credenciales incorrectas");
    }
  };

  const handleChangeUsuarioLogin = (e) => {
    const usuario = e.target.value;

    setUsuarioLogin(usuario);

    if (usuario.trim()) {
      setErrorUsuarioLogin(null);
    } else {
      setErrorUsuarioLogin("¡Oops! debes llenar este campo");
    }
  };

  const handleChangeContrasennaLogin = (e) => {
    const contrasenna = e.target.value;

    setContrasennaLogin(contrasenna);

    if (contrasenna.trim()) {
      setErrorContrasennaLogin(null);
    } else {
      setErrorContrasennaLogin("¡Oops! debes llenar este campo");
    }
  };

  const changeLoginInputType = () => {
    setInputLoginType(inputLoginType === "password" ? "text" : "password");
    setLoginPasswordIcon(
      loginPasswordIcon === seePassword ? hidePassword : seePassword,
    );
  };

  const changeRegistrarmeInputType = () => {
    setInputRegistrarmeType(
      inputRegistrarmeType === "password" ? "text" : "password",
    );
    setRegistrarmePasswordIcon(
      registrarPasswordIcon === seePassword ? hidePassword : seePassword,
    );
  };

  const reintentar = () => {
    fetchData("https://unibecas.onrender.com/main/becas");

    if (error) {
      toast.error("error al cargar las becas");
    }
  };

  const handleCerrarSesion = async (e) => {
    e.stopPropagation();
    const result = await logout();

    setCerrarSesion(false);

    if (result.success) {
      toast.success("Has cerrado sesión");
    } else {
      toast.error("Error al cerrar sesión");
    }
  };

  useEffect(() => {
    if (mostrarModal && estaAbierto && mostrarModal === "login") {
      inputLoginRef.current?.focus();
    }

    if (mostrarModal && estaAbierto && mostrarModal === "registrarme") {
      inputRegistrarmeRef.current?.focus();
    }
  }, [mostrarModal, estaAbierto]);

  return (
    <header>
      <Link to="/" className="link-home">
        <div className="logo-unibecas-contenedor">
          <img src={logo} alt="Logo de UniBecas" className="logo" />
          <h2>UniBecas</h2>
        </div>
      </Link>

      <div className="contenedor-menu-hamburguesa">
        <button
          type="button"
          className={`menu-hamburguesa ${menuAbierto ? "abierto" : ""}`}
          onClick={() => setMenuAbierto(!menuAbierto)}
        >
          <span></span>
          <span></span>
          <span></span>
        </button>

        <div
          className={`overlay-menu-movil ${menuAbierto ? "abierto" : ""}`}
          onClick={() => setMenuAbierto(false)}
        >
          <nav
            className="nav-mobile"
            onClick={(event) => event.stopPropagation()}
          >
            <div className="top-nav-mobile">
              <img src={logo} alt="Logo unibecas" />
              <button
                type="button"
                className="cerrar-menu-mobile"
                onClick={() => setMenuAbierto(false)}
              >
                X
              </button>
            </div>

            <ul>
              <li onClick={() => setMenuAbierto(false)}>
                <Link>Programas</Link>
              </li>
              <li onClick={() => setMenuAbierto(false)}>
                <Link to="/becas">Becas</Link>
              </li>
            </ul>
          </nav>
        </div>
      </div>

      <nav>
        <ul>
          <li>
            <span>Programas</span>
            <ArrowDawn />
          </li>
          <div className="contenedor-becas">
            <li
              onClick={() =>
                setMostrarBecas(mostrarBecas === true ? false : true)
              }
            >
              <span>Becas</span>
              <ArrowDawn />
            </li>
            {mostrarBecas && (
              <div className="becas">
                {loading ? (
                  Array.from({ length: 8 }).map((_, index) => (
                    <Skeleton
                      key={index}
                      width={150}
                      height={35}
                      borderRadius={4}
                      baseColor="var(--skeleton-background)"
                    />
                  ))
                ) : error ? (
                  <div className="error-becas">
                    <p>Ha ocurrido un error al cargar las becas</p>
                    <button onClick={reintentar}>
                      <Retry />
                    </button>
                  </div>
                ) : (
                  <>
                    {becas.slice(0, 10).map((info) => (
                      <Link
                        key={info.id}
                        to={`/beca/${info.id}`}
                        className="beca"
                      >
                        {info.nombre}
                      </Link>
                    ))}
                    <Link to="/becas" className="ver-becas">
                      <span>Ver todas ({becas.length})</span>
                      <ArrowUpRight />
                    </Link>
                  </>
                )}
              </div>
            )}
          </div>
        </ul>
      </nav>

      <div className="contenedor-registrarme">
        {!estaAutenticado ? (
          <button
            onClick={() => setEstaAbierto(!estaAbierto)}
            className="btn-registrarme"
          >
            <span>Iniciar sesion</span>
            <img src={registrarmeIcon} alt="Icono de registrarme" />
          </button>
        ) : (
          <button
            className="btn-registrarme"
            onClick={() => setCerrarSesion(true)}
          >
            <span>Cerrar sesion</span>
            <LogOut />
          </button>
        )}

        <div className={`modal ${estaAbierto ? "abrir-modal" : ""}`}>
          {mostrarModal === "registrarme" ? (
            <div>
              <h3>
                <span>Registrarme</span>
                <span className="cerrar-modal" onClick={cerrarModal}>
                  x
                </span>
              </h3>
              <div className="contenedor-input-registrarme">
                <Input
                  id="nombre"
                  textoLabel="Nombre"
                  onChange={handleChangeUsuario}
                  error={errorUsuario}
                  className={errorUsuario ? "input-error" : null}
                  placeholder="Nombre"
                  value={usuario}
                  ref={inputRegistrarmeRef}
                />
              </div>
              <div className="contenedor-input-registrarme">
                <Input
                  id="Email"
                  type="email"
                  textoLabel="Correo"
                  onChange={handleChangeEmail}
                  error={errorEmail}
                  className={errorEmail ? "input-error" : null}
                  placeholder="ejemplo@gmail.com"
                  value={email}
                />
              </div>
              <div className="contenedor-input-registrarme input-password">
                <Input
                  id="contraseña"
                  type={inputLoginType}
                  textoLabel="Contraseña"
                  onChange={handleChangeContrasenna}
                  error={errorContrasenna}
                  className={errorContrasenna ? "input-error" : null}
                  placeholder="*******"
                  value={contrasenna}
                  onKeyDown={(e) => {
                    if (e.key === "Enter") {
                      handleRegister();
                    }
                  }}
                />
                <img
                  style={errorContrasenna ? { top: 47 } : { top: 46 }}
                  src={loginPasswordIcon}
                  alt=""
                  onClick={changeLoginInputType}
                />
              </div>
              <button className="btn-registrarme" onClick={handleRegister}>
                {loadingLogin ? <Spinner /> : "Registrarme"}
              </button>
              <p className="tiene-cuenta">
                <span>¿Ya tienes cuenta? </span>
                <span className="link" onClick={() => setMostrarModal("login")}>
                  Inicia sesion
                </span>
              </p>
            </div>
          ) : (
            <div>
              <h3>
                <span>Iniciar sesion</span>
                <span className="cerrar-modal" onClick={cerrarModal}>
                  x
                </span>
              </h3>

              <div className="contenedor-input-registrarme">
                <Input
                  id="Correo"
                  type="email"
                  value={usuarioLogin}
                  textoLabel="Correo"
                  onChange={handleChangeUsuarioLogin}
                  error={errorUsuarioLogin}
                  placeholder="ejemplo@gmail.com"
                  ref={inputLoginRef}
                />
              </div>

              <div className="contenedor-input-registrarme input-password">
                <Input
                  type={inputRegistrarmeType}
                  value={contrasennaLogin}
                  id="contraseña"
                  textoLabel="Contraseña"
                  onChange={handleChangeContrasennaLogin}
                  error={errorContrasennaLogin}
                  placeholder="*******"
                  onKeyDown={(e) => {
                    if (e.key === "Enter") {
                      handleLogin();
                    }
                  }}
                />
                <img
                  style={errorContrasennaLogin ? { top: 47 } : { top: 46 }}
                  src={registrarPasswordIcon}
                  alt=""
                  onClick={changeRegistrarmeInputType}
                />
              </div>

              <button
                className="btn-registrarme"
                disabled={loadingLogin ? true : false}
                onClick={handleLogin}
              >
                {loadingLogin ? <Spinner /> : "Iniciar sesion"}
              </button>

              <p className="tiene-cuenta">
                <span>¿No tienes cuenta? </span>
                <span
                  className="link"
                  onClick={() => setMostrarModal("registrarme")}
                >
                  Registrate
                </span>
              </p>
            </div>
          )}
        </div>
      </div>

      {cerrarSesion && (
        <div className="overlay" onClick={() => setCerrarSesion(false)}>
          <div className="modal-cerrar-sesion">
            <h3>¿Estás seguro de que deseas cerrar sesión?</h3>
            <div>
              <button onClick={() => setCerrarSesion(false)}>Cancelar</button>
              <button onClick={handleCerrarSesion}>
                {loadingLogin ? <Spinner /> : "Cerrar sesión"}
              </button>
            </div>
          </div>
        </div>
      )}
    </header>
  );
};

export default Header;
