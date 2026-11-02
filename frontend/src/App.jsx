import "./App.css";
import Router from "./Router";
import errorImagen from "./assets/images/error/error-img.png";

// Precargar la imagen para que esté disponible en caché cuando se necesite mostrar en el componente Error
const imagen = new Image();
imagen.src = errorImagen;

function App() {
  return (
    <>
      <Router />
    </>
  );
}

export default App;
