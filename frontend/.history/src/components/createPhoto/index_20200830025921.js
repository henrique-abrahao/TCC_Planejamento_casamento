import React from 'react';
import Main from '../template/Main/index'
import { Form, Col, Button } from 'react-bootstrap';
import { uniqueId } from 'lodash';
import filesize from 'filesize';
import api from '../../services/api';

import Axios from 'axios';
import UploadImage from '../template/UploadImage/index';
import FileList from '../template/UploadImage/FileList';


class CreatePhoto extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      nome: '',
      preco: '',
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

    uploadedFiles.forEach(this.processUpload)
  };

  updateFile = (id, data) => {
    this.setState({
      uploadedFiles: this.state.uploadedFiles.map(uploadedFiles => {
        return id === uploadedFile.id ? { ...uploadedFile, ...data } : uploadedFile
      })
    })
  };

  processUpload = (uploadedFile) => {
    const data = new FormData();

    data.append('file', uploadedFile.file, uploadedFile.name)
    api.post('posts', data, {
      onUploadProgress: e => {
        const progress = parseInt(Math.round((e.loaded * 100) / e.total));

        this.updateFile(uploadedFile.id, {
          progress,
        })
      }
    });
  };


  render() {

    const { uploadedFiles } = this.state;

    return (
      <Main title="Insirir um novo fotógrafo!"
        subtitle="Crie um novo espaço para seus noivos">
        <Form>
          <Form.Row>

            <Form.Group as={Col} controlId="formGridEmail">
              <Form.Label>Nome da Companhia</Form.Label>
              <Form.Control onChange={e => this.setState({ nome: e.target.value })} value={this.state.nome} placeholder="Digite o nome da companhia" />
            </Form.Group>

            <Form.Group as={Col} controlId="formGridEmail">
              <Form.Label>Preço</Form.Label>
              <Form.Control placeholder="Digite o Valor por alocação" />
            </Form.Group>
          </Form.Row>

          <Form.Group controlId="exampleForm.ControlTextarea1">
            <Form.Label>Escreva uma descrição sobre seu fotógrafo</Form.Label>
            <Form.Control as="textarea" rows="3" />
          </Form.Group>

          <Button variant="primary" type="submit">
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
