import { Routes, Route } from "react-router-dom";

import HomeLayout from "./home/layout/HomeLayout";
import BecaLayout from "./becas/layout/BecaLayout";
import ProgramaLayout from "./programas/layout/ProgramaLayout";

import BecaDetails from "./components/becaDetails/BecaDetails";
import ProgramaDetails from "./programas/components/programaDetails/ProgramaDetails";

const Router = () => {
  return (
    <Routes>
      <Route path="/" element={<HomeLayout />} />

      <Route path="/becas" element={<BecaLayout />} />
      <Route path="/beca/:id" element={<BecaDetails />} />

      <Route path="/programas" element={<ProgramaLayout />} />
      <Route path="/programa/:id" element={<ProgramaDetails />} />
    </Routes>
  );
};

export default Router;