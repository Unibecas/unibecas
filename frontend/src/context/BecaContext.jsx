import { createContext } from "react";
import useFetch from "../hooks/useFetch";
import { useEffect } from "react";

export const BecaContext = createContext();

export const BecaProvider = ({ children }) => {
  const { data, loading, error, fetchData } = useFetch();

  useEffect(() => {
    fetchData("https://unibecas.onrender.com/main/becas");
  }, []);

  return (
    <BecaContext.Provider value={{ data, loading, error, fetchData }}>
      {children}
    </BecaContext.Provider>
  );
};
