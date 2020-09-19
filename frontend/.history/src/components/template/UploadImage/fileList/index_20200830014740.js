import React from 'react';
import CircularProgressBar from 'react-circular-progressbar'
 
import { Container, FileInfo, Preview } from './styles';

const fileList = () => (
  <Container>
    <li>
      <FileInfo>
        <Preview src="https://i.pinimg.com/originals/de/f6/96/def69643889ee29e232637646e839064.jpg" />
        <div>
          <strong>profile.png</strong>
          <span>64kb <button onClick={() => {}}>Excluir</button></span>
        </div>
      </FileInfo>

      <div>
        <CircularProgressBar styles={{
          root: { width: 24},
          path: { stroke: '#7159c1'}
        }}
        strokeWidth={ 10 }
        percentage={60}
        />
        
      </div>
    </li>
  </Container>
)

export default fileList;