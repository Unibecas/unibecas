import { Routes, Route } from "react-router-dom";

import HomeLayout from "./home/layout/HomeLayout";
import BecaLayout from "./becas/layout/BecaLayout";

import BecaDetails from "./components/becaDetails/BecaDetails";

const Router = () => {
  return (
    <Routes>
      <Route path="/" element={<HomeLayout />} />

      <Route path="/becas" element={<BecaLayout />} />
      <Route path="/beca/:id" element={<BecaDetails />} />
    </Routes>
  );
};

export default Router;
