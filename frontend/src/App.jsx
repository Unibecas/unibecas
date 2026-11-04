import "./App.css";
import Router from "./Router";
import errorImagen from "./assets/images/error/error-img.png";
import { Toaster } from "sonner";

// Precargar la imagen para que esté disponible en caché cuando se necesite mostrar en el componente Error
const imagen = new Image();
imagen.src = errorImagen;

function App() {
  return (
    <>
      <Toaster position="top-right" richColors />
      <Router />
    </>
  );
}

export default App;
