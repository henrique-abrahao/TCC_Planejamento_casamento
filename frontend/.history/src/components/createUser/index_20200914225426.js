import React from 'react';
import Main from '../template/Main/index'
import { Form, Col, Button } from 'react-bootstrap';
import axios from 'axios';
import { validaCpf, verificarEmail} from '../../validators/validators'


import 'bootstrap/dist/css/bootstrap.min.css';

class CreateUsers extends React.Component {

  state = {
    nome_noiva: null,
    email_noiva: null,
    cpf_noiva: null,
    nome_noivo: null,
    email_noivo: null,
    cpf_noivo: null,
    password: null,
    telefone: null,
    data: null,
  }

  CreateUsers = async () => {

    const { nome_noiva, nome_noivo, cpf_noiva, cpf_noivo, email_noiva, email_noivo, telefone, data } = this.state;

    if (!nome_noiva || !nome_noivo || !cpf_noiva || !cpf_noivo || !email_noiva || !email_noivo || !telefone || !data) return alert('Dados em branco')

      const validatorCpf = validaCpf(cpf_noiva) && validaCpf(cpf_noivo);
      const validatorEmail = verificarEmail(email_noivo) && verificarEmail(email_noiva);
                        

    if (!validatorCpf) return alert('CPF Inválido');
    if(!validatorEmail) return alert('Email Inválido');


    try {
      await axios({
        method: 'post',
        url: 'http://localhost:3333/client',
        data: {
          nome_noiva: this.state.nome_noiva,
          email_noiva: this.state.email_noiva,
          cpf_noiva: this.state.cpf_noiva,
          telefone_noiva: this.state.telefone,
          nome_noivo: this.state.nome_noivo,
          email_noivo: this.state.email_noivo,
          cpf_noivo: this.state.cpf_noivo,
          investimento: 0,
          data_casamento: this.state.data,
          password: 'teste',
          cerimonialista_id: 1
        }
      });
      alert(`Noivos ${this.state.nome_noiva} e ${this.state.nome_noivo} cadastrados com sucesso!`);
      return this.props.history.push('/')
    }
    catch (e) {
      alert('Dados Inválidos')
    }
  }

  render() {
    return (
      <Main title="Criar Usuário"
        subtitle="De acesso ao aplicativo para seus clientes">
        <Form>

          <Form.Group as={Col} controlId="formGridZip">
            <Form.Label>Nome da Noiva</Form.Label>
            <Form.Control onChange={e => this.setState({ nome_noiva: e.target.value })} placeholder="Digite o nome da noiva" />
          </Form.Group>

          <Form.Group as={Col} controlId="formGridCity">
            <Form.Label>Email da Noiva</Form.Label>
            <Form.Control onChange={e => this.setState({ email_noiva: e.target.value })} placeholder="Digite o email da noiva" />
          </Form.Group>

          <Form.Group as={Col} controlId="formGridCity">
            <Form.Label>CPF da Noiva</Form.Label>
            <Form.Control onChange={e => this.setState({ cpf_noiva: e.target.value })} placeholder="Digite o cpf da noiva" />
          </Form.Group>


          <Form.Group as={Col} controlId="formGridZip">
            <Form.Label>Nome do Noivo</Form.Label>
            <Form.Control onChange={e => this.setState({ nome_noivo: e.target.value })} placeholder="Digite o nome do noivo" />
          </Form.Group>

          <Form.Group as={Col} controlId="formGridCity">
            <Form.Label>Email do Noivo</Form.Label>
            <Form.Control onChange={e => this.setState({ email_noivo: e.target.value })} placeholder="Digite o email do noivo" />
          </Form.Group>

          <Form.Group as={Col} controlId="formGridCity">
            <Form.Label>CPF do Noivo</Form.Label>
            <Form.Control onChange={e => this.setState({ cpf_noivo: e.target.value })} placeholder="Digite o cpf do noivo" />
          </Form.Group>

          <Form.Group as={Col} controlId="formGridCity">
            <Form.Label>Telefone para contato</Form.Label>
            <Form.Control onChange={e => this.setState({ telefone: e.target.value })} placeholder="Digite um telefone para contato" />
          </Form.Group>

          <Form.Group as={Col} controlId="formGridCity">
            <Form.Label>Data do casamento</Form.Label>
            <Form.Control type='date' onChange={e => this.setState({ data: e.target.value })} />
          </Form.Group>

        </Form>

        <Button variant="primary" onClick={() => this.CreateUsers()}>
          Criar Usuario
          </Button>
      </Main>
    );
  }
}

export default CreateUsers;
