import { createContext } from "react";
import { useState } from "react";

export const AuthContext = createContext();

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(false);
  const [errorLogin, setError] = useState(null);
  const [estaAutenticado, setEstaAutenticado] = useState(false);

  const login = async ({ username, password }) => {
    try {
      setError(null);
      setLoading(true);

      const response = await fetch("https://unibecas.onrender.com/auth/login", {
        method: "POST",
        headers: {
          Origin: "http://localhost:5173",
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ username, password }),
      });

      if (!response.ok) {
        throw new Error(`Error al iniciar sesion: ${response.status}`);
      }

      const data = await response.json();
      setEstaAutenticado(true);

      setUser(data);
    } catch (error) {
      setError(error);
    } finally {
      setLoading(false);
    }
  };

  const register = async ({ username, email, password }) => {
    try {
      setError(null);
      setLoading(true);

      const response = await fetch(
        "https://unibecas.onrender.com/auth/register",
        {
          method: "POST",
          headers: {
            Origin: "http://localhost:5173",
            "Content-Type": "application/json",
          },
          credentials: "include",
          body: JSON.stringify({ username, email, password }),
        },
      );

      if (!response.ok) {
        throw new Error(`Error al iniciar sesion: ${response.status}`);
      }

      const data = await response.json();

      setUser(data);
    } catch (error) {
      setError(error);
    } finally {
      setLoading(false);
    }
  };

  return (
    <AuthContext.Provider
      value={{ user, loading, errorLogin, estaAutenticado, login, register }}
    >
      {children}
    </AuthContext.Provider>
  );
};
