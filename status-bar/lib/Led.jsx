import { run } from 'uebersicht';

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
  cursor: 'pointer',
};

let toggle = false;

const render = () => {
  const onClick = async () => {
    toggle = !toggle;

    if (toggle) {
      await run('python3 ./status-bar/scripts/on.py');
    } else {
      await run('python3 ./status-bar/scripts/off.py');
    }
  };

  return (
    <div>
      <div style={renderStyle}>
        <div onClick={onClick} style={clockStyle}>
          {toggle ? '': '' }
        </div>
      </div>
    </div>
  );
};

export default render;
