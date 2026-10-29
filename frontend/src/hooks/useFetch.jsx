import { useState } from "react";

function useFetch() {
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);

  const fetchData = async (url) => {
    try {
      setError(null);
      setLoading(true);

      const response = await fetch(url);

      if (!response.ok) throw new Error(`Error HTTP: ${response.status}`);

      const data = await response.json();

      setData(data);
      console.log(data);
    } catch (error) {
      setError(error);
      console.error("Error fetching data:", error);
    } finally {
      setLoading(false);
    }
  };

  return { data, loading, error, fetchData };
}

export default useFetch;
