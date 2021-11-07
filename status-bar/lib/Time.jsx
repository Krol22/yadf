const clockStyle = {
  fontFamily: 'Hack Nerd Font',
  fontSize: '18px',
  verticalAlign: 'middle',
  marginRight: '8px',
};

const renderStyle = {
  display: 'flex',
  alignItems: 'center',
  color: '#62d196',
};

const render = ({ output }) => {
  return (
    <div>
      <div
        style={renderStyle}
      >
        <div style={clockStyle}></div>
        {output}
      </div>
    </div>
  );
};

export default render;
