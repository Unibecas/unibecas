import { createContext } from "react";
import useFetch from "../hooks/useFetch";

export const ProgramaContext = createContext();

const URL_PROGRAMAS = "https://unibecas.onrender.com/main/programas";

export const ProgramaProvider = ({ children }) => {
  const { data, loading, error, fetchData } = useFetch();

  // Arma la URL con los filtros y la paginación que acepta el backend
  const buscarProgramas = ({
    busqueda = "",
    nivel = "",
    pagina = 1,
    limite = 10,
  } = {}) => {
    const params = new URLSearchParams({
      limit: limite,
      offset: (pagina - 1) * limite,
    });

    if (busqueda) params.set("nprog", busqueda);
    if (nivel) params.set("nform", nivel); // confirmar el nombre del query en el backend

    fetchData(`${URL_PROGRAMAS}?${params}`);
  };

  return (
    <ProgramaContext.Provider
      value={{ data, loading, error, buscarProgramas }}
    >
      {children}
    </ProgramaContext.Provider>
  );
};