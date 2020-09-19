import React from 'react';
import Main from '../template/Main/index'
import { Form, Col, Button } from 'react-bootstrap';
import { uniqueId } from 'lodash';
import filesize from 'filesize';
import api from '../../services/api';

import Axios from 'axios';
import UploadImage from '../template/UploadImage/index';
import FileList from '../template/UploadImage/FileList';
import NavServices from '../template/NavServices';


class CreatePhoto extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      nome: '',
      desc: '',
      uploadedFiles: [],
    };
  }

  handleUpload = files => {
    const uploadedFiles = files.map(file => ({
      file,
      id: uniqueId(),
      name: file.name,
      readableSize: filesize(file.size),
      preview: URL.createObjectURL(file),
      progress: 0,
      uploaded: false,
      error: false,
      url: null,
    }))

    this.setState({
      uploadedFiles: this.state.uploadedFiles.concat(uploadedFiles)
    });
  };

  updateFile = (id, data) => {
    this.setState({
      uploadedFiles: this.state.uploadedFiles.map(uploadedFile => {
        return id === uploadedFile.id ? { ...uploadedFile, ...data } : uploadedFile
      })
    })
  };

  processUpload = (photoId) => {

    const { uploadedFiles } = this.state;
    const data = new FormData();

    uploadedFiles.length && uploadedFiles.forEach(
      async item => {
        data.append('file', item.file, item.name)
        data.append('idPhoto', photoId);
        const dataUpload = await api.post('/image', {data, idPhoto: photoId}, {
          onUploadProgress: e => {
            const progress = parseInt(Math.round((e.loaded * 100) / e.total));

            this.updateFile(item.id, {
              progress,
            })
          }  
        });
        console.log(dataUpload);
      }
    )
  };

  handleClick = async () => {

    try {
      const data = await Axios({
        method: 'post',
        url: 'http://localhost:3333/photo',
        data: {
          name_companha: this.state.nome,
          desc: this.state.desc,
        }
      })
      console.log(data.data[0]);
      alert(`Companhia Criada com sucesso`);
      this.processUpload(data.data[0]);
      return this.props.history.push('/')
    }
    catch (e) {
      alert('Dados Inválidos')
    }
  }


  render() {

    const { uploadedFiles } = this.state;

    return (
      <Main title="Insirir um novo fotógrafo!"
        subtitle="Crie um novo espaço para seus noivos">
        <NavServices id={3} />
        <Form>

          <Form.Group controlId="formGridEmail">
            <Form.Label>Nome da Companhia</Form.Label>
            <Form.Control onChange={e => this.setState({ nome: e.target.value })} value={this.state.nome} placeholder="Digite o nome da companhia" />
          </Form.Group>

          <Form.Group controlId="exampleForm.ControlTextarea1">
            <Form.Label>Escreva uma descrição sobre seu fotógrafo</Form.Label>
            <Form.Control onChange={e => this.setState({ desc: e.target.value })} value={this.state.desc} as="textarea" rows="3" />
          </Form.Group>

          <Button variant="primary" onClick={() => this.handleClick()}>
            Criar Companhia
          </Button>
        </Form>

        <UploadImage onUpload={this.handleUpload} />
        {!!uploadedFiles.length && <FileList files={uploadedFiles} />}
      </Main>
    );
  }
}

export default CreatePhoto;
