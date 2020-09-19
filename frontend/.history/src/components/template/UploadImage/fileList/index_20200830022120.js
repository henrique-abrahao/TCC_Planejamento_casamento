import React from 'react';
import { CircularProgressbar } from 'react-circular-progressbar'
import { MdCheckCircle, MdError, MdLink } from 'react-icons/md';

import 'react-circular-progressbar/dist/styles.css'

import { Container, FileInfo, Preview } from './styles';

const FileList = () => (
  <Container>
    <li>
      <FileInfo>
        <Preview src="https://i.pinimg.com/originals/de/f6/96/def69643889ee29e232637646e839064.jpg" />
        <div>
          <strong>profile.png</strong>
          <span>64kb <button onClick={() => { }}>Excluir</button></span>
        </div>
      </FileInfo>

      <div>
        <CircularProgressbar styles={{
          root: { width: 24 },
          path: { stroke: '#7159c1' }
        }}
          strokeWidth={10}
          value={60}
        />

        <a href="https://i.pinimg.com/originals/de/f6/96/def69643889ee29e232637646e839064.jpg"
          target="_blank"
          rel="noopener noreferrer">
          <MdLink style={{ marginRight: 8 }} size={24} color='#222' />
        </a>

        <MdCheckCircle size={24} color="#78e5d5" />
        <MdError size={24} color="#e57878" />

      </div>
    </li>
  </Container>
)

export default FileList;