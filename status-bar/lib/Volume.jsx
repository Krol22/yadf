const volumeStyle = {
  fontFamily: 'Hack Nerd Font',
  fontSize: '18px',
  verticalAlign: 'middle',
  marginRight: '8px',
  width: '16px',
};

const renderStyle = {
  display: 'flex',
  alignItems: 'center',
};

const render = ({ output }) => {
  const values = output.split(',');
  const volume = values[0].split(':')[1];
  const muted = values[3].split(':')[1] === 'true';

  const renderIcon = () => {
    if (muted) {
      return '';
    }

    if (volume < 50) {
      return '';
    }

    return '';
  }

  return (
    <div style={{
      ...renderStyle,
      color: muted ? '#f02e6e' : '#a37acc',
    }}>
      <div style={volumeStyle}>
        {renderIcon()}
      </div>
      {volume}
    </div>
  );
}

export default render;
