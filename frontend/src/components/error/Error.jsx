import "./error.css";
import errorImagen from "../../assets/images/error/error-img.png";

const Error = ({ reintentar }) => {
  return (
    <div className="error">
      <div>
        <img src={errorImagen} alt="Error" />
        <h2>¡Ups! halgo salió mal.</h2>
        <p>
          No pudimos cargar la informaicon. Puede ser un problema de
          <br />
          conexion a internet o un fallo del sistema
        </p>
        <button onClick={reintentar}>Intentar de nuevo</button>
      </div>
    </div>
  );
};

export default Error;
