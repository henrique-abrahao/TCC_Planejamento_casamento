import React from 'react';
import Main from '../template/Main/index'
import { Form, Col, Button } from 'react-bootstrap';
import Axios from 'axios';


class CreatePhoto extends React.Component {

  state = {
    localCompleto: {
      logradouro: '',
      bairro: '',
      uf: '',
      rua: '',
      localidade: ''
    },
    nome: '',
    serviço: '',
    preco: '',
    cepControll: '',
    cidade: '',
    rua: '',
    uf: '',
    bairro: '',
    complemento: '',
    numero: ''
  }

  insertCep = async (e) => {
    this.setState({ cepControll: e })
    if (this.state.cepControll.length === 7) {
      const local = await Axios.get(`https://viacep.com.br/ws/${e}/json/`);
      this.setState({
        localCompleto: local.data,
        street: local.data.logradouro,
        bairro: local.data.bairro,
        uf: local.data.uf,
        rua: local.data.logradouro,
        cidade: local.data.localidade,
      });
    }
    return null
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

          <Button variant="primary" type="submit">
            Criar Local
          </Button>
        </Form>
        
      </Main>
    );
  }
}

export default CreatePhoto;
