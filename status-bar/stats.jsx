import Battery from "./lib/Battery.jsx";
import Led from "./lib/Led.jsx";
import Time from "./lib/Time.jsx";
import Volume from './lib/Volume.jsx';
import parse from "./lib/parse.jsx";
import styles from "./lib/styles.jsx";

const style = {
  display: "grid",
  padding: "6px 26px",
  gridAutoFlow: "column",
  gridGap: "32px",
  position: "fixed",
  overflow: "hidden",
  right: "50%",
  transform: "translateX(50%)",
  top: "0px",
  margin: "4px",
  color: styles.colors.dim,
  fontFamily: styles.fontFamily,
  lineHeight: styles.lineHeight,
  fontSize: "14px",
  backgroundColor: "#262626",
  color: "#d3d3d3",
};

export const refreshFrequency = 1000;

export const command = "./status-bar/scripts/stats.sh";

export const render = ({ output }) => {
  const data = parse(output);
  if (typeof data === "undefined") {
    return <div style={style}>Loading...</div>;
  }
  return (
    <div style={style}>
      <Led />
      <Volume output={data.volume} />
      <Battery output={data.battery} />
      <Time output={data.time} />
    </div>
  );
};

export default null;
