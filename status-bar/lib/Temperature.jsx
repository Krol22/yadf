const termometerStyle = {
  fontFamily: 'Hack Nerd Font',
  fontSize: '18px',
  verticalAlign: 'middle',
  marginRight: '8px',
};

const renderStyle = {
  display: 'flex',
  alignItems: 'center',
  color: '#87dfeb',
};

const TemperatureIcon = ({ value }) => {
  const temperature = Number(value.split("°")[0]);

  const renderIcon = () => {
    if (temperature < -10) {
      return '';
    }

    if (temperature < 0) {
      return '';
    }

    if (temperature < 10) {
      return '';
    }

    if (temperature < 20) {
      return '';
    }

    return '';
  }
  return (
    <div style={termometerStyle}>{renderIcon()}</div>
  );
};

const render = ({ output }) => {
  return (
    <div>
      <div
        style={renderStyle}
      >
        <TemperatureIcon value={output} style={termometerStyle}></TemperatureIcon>
        {output}
      </div>
    </div>
  );
};

export default render;
