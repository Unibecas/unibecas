import "./becaList.css";

import BecaCard from "../../../components/becaCard/BecaCard";
import { Link } from "react-router-dom";

const BecaList = ({ becas }) => {
  return (
    <div className="beca-list">
      {becas?.map((info) => (
        <Link to={`/beca/${info.id}`} className="link-beca-card" key={info.id}>
          <BecaCard
            universidad={info.universidad}
            nombre={info.nombre}
            vigencia={info.vigencia}
            descripcion={info.descripcion_informacion}
            info_aplicar={info.aplicar}
            modalidad={info.modalidad}
            estado={info.estado}
          />
        </Link>
      ))}
    </div>
  );
};

export default BecaList;
