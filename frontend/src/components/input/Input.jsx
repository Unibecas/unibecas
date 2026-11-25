import "./input.css";

const Input = ({ id, type = "text", value = "", error, textoLabel, ref, ...props }) => {
  return (
    <div className="contenedor-input">
      <label htmlFor={id}>{textoLabel}</label>
      <input type={type} id={id} value={value} {...props} ref={ref} />
      {error && <span>{error}</span>}
    </div>
  );
};

export default Input;
