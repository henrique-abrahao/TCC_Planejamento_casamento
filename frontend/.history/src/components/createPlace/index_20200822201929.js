import React from 'react';
import Main from '../template/Main/index'
import { Form, Col, Button } from 'react-bootstrap';
import Axios from 'axios';
import Paper from '@material-ui/core/Paper';


class CreatePlace extends React.Component {

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
      <Main title="Criar Local"
        subtitle="Crie um novo espaço para seus noivos">
        
        <Form>
          <Form.Row>

            <Form.Group as={Col} controlId="formGridEmail">
              <Form.Label>Local</Form.Label>
              <Form.Control onChange={e => this.setState({ nome: e.target.value })} value={this.state.nome} placeholder="Digite o nome do local" />
            </Form.Group>

            <Form.Group as={Col} controlId="formGridEmail">
              <Form.Label>Serviço</Form.Label>
              <Form.Control as="select" defaultValue="Selecione o serviço" >
                <option value="0">Selecione o serviço</option>
                <option>Salão</option>
                <option>Buffet</option>
                <option>Bandas</option>
                <option>DJ</option>
                <option>Loja de Roupas</option>
                <option>Igraja</option>
              </Form.Control>
            </Form.Group>

            <Form.Group as={Col} controlId="formGridEmail">
              <Form.Label>Preço</Form.Label>
              <Form.Control placeholder="Digite o Valor por alocação" />
            </Form.Group>
          </Form.Row>

          <Form.Row>
            <Form.Group as={Col} controlId="formGridZip">
              <Form.Label>Cep</Form.Label>
              <Form.Control value={this.state.cepControll} onChange={(e) => this.insertCep(e.target.value)} />
            </Form.Group>

            <Form.Group as={Col} controlId="formGridCity">
              <Form.Label>Estado</Form.Label>
              <Form.Control disabled={this.state.localCompleto.uf} value={this.state.uf} />
            </Form.Group>

            <Form.Group as={Col} controlId="formGridCity">
              <Form.Label>Cidade</Form.Label>
              <Form.Control disabled={this.state.localCompleto.localidade} value={this.state.cidade} />
            </Form.Group>

          </Form.Row>

          <Form.Row>
            <Form.Group as={Col} controlId="formGridZip">
              <Form.Label>Rua</Form.Label>
              <Form.Control disabled={this.state.localCompleto.logradouro} value={this.state.rua} />
            </Form.Group>

            <Form.Group as={Col} controlId="formGridCity">
              <Form.Label>Bairro</Form.Label>
              <Form.Control disabled={this.state.localCompleto.bairro} value={this.state.bairro} />
            </Form.Group>

            <Form.Group as={Col} controlId="formGridCity">
              <Form.Label>Numero</Form.Label>
              <Form.Control placeholder="Digite o numero" onChange={e => this.setState({ numero: e.target.value })} />
            </Form.Group>

            <Form.Group as={Col} controlId="formGridCity">
              <Form.Label>Complemento</Form.Label>
              <Form.Control placeholder="Digite o complemento" />
            </Form.Group>

          </Form.Row>

          <Button variant="primary" type="submit">
            Criar Local
          </Button>
        </Form>
        <div>
          <Paper  elevation={3} />
        </div>
      </Main>
    );
  }
}

export default CreatePlace;
