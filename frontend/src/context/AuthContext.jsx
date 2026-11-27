import { createContext } from "react";
import { useState } from "react";

export const AuthContext = createContext();

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null);
  const [loadingLogin, setLoading] = useState(false);
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
        credentials: "include",
        body: JSON.stringify({ username, password }),
      });

      const data = await response.json();

      if (!response.ok) {
        throw new Error(
          data.error || `Error al iniciar sesion: ${response.status}`,
        );
      }

      setUser(data);
      setEstaAutenticado(true);

      return { success: true, data };
    } catch (error) {
      setError(error);
      console.error("Error al iniciar sesion:", error);
      return { success: false, error: error.message };
    } finally {
      setLoading(false);
    }
  };

  const interpretarErrores = (error) => {
    if (
      error.includes(
        "Info: Formato de correo inválido o contiene caracteres no permitidos",
      )
    ) {
      return "El formato del correo es inválido o contiene caracteres no permitidos";
    } else if (
      error.includes("Info: La contraseña debe de ser de minimo 8 caracteres")
    ) {
      return "La contraseña debe de ser de minimo 8 caracteres";
    } else if (
      error.includes("Info: Debe de contener un caracter especial: !@#$%^&*")
    ) {
      return "Debe de contener un caracter especial (!@#$%^&*)";
    }
    if (error.includes("Ya existe un registro con los mismos datos únicos")) {
      return "Este usuario y correo ya está registrado";
    } else {
      return "Ha ocurrido un error al registrarse";
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

      const data = await response.json();

      if (!response.ok) {
        throw new Error(
          data.error || `Error al registrar codigo: ${response.status}`,
        );
      }

      setUser(data);

      return { success: true, data };
    } catch (error) {
      const mensajePersonalizado = interpretarErrores(error.message);
      setError(mensajePersonalizado);

      console.error("Error al registrar:", error.message);
      return { success: false, error: mensajePersonalizado };
    } finally {
      setLoading(false);
    }
  };

  const logout = async () => {
    try {
      setError(null);
      setLoading(true);

      const response = await fetch(
        "https://unibecas.onrender.com/auth/logout",
        {
          method: "POST",
          headers: {
            Origin: "http://localhost:5173",
            "Content-Type": "application/json",
          },
          credentials: "include",
        },
      );

      if (!response.ok) {
        throw new Error(`Error al cerrar sesion: ${response.status}`);
      }

      setUser(null);
      setEstaAutenticado(false);

      return { success: true };
    } catch (error) {
      setError(error);
      console.error("Error al cerrar sesion:", error);
      return { success: false, error };
    } finally {
      setLoading(false);
    }
  };

  return (
    <AuthContext.Provider
      value={{
        user,
        loadingLogin,
        errorLogin,
        estaAutenticado,
        login,
        register,
        logout,
      }}
    >
      {children}
    </AuthContext.Provider>
  );
};
