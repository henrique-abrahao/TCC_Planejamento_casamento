import React from 'react';
import Main from '../template/Main/index'
import { Form, Col, Button } from 'react-bootstrap';
import Axios from 'axios';


class CreatePhoto extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      nome: '',
      preco: '',
      desc: '',
      pictures: [],
    };
    this.onDrop = this.onDrop.bind(this);
  }

  onDrop(picture) {
    this.setState({
      pictures: this.state.pictures.concat(picture),
    });
    console.log(this.state.pictures);
  }

  render() {
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
      </Main>
    );
  }
}

export default CreatePhoto;
