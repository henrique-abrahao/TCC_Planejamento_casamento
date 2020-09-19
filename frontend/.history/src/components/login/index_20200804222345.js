import React, { Component } from 'react';
import { ImgCustom } from './styles'
import { Button, Card, Form } from 'react-bootstrap'
import 'bootstrap/dist/css/bootstrap.min.css';

import logo from '../../assets/realizar.png';

export default class Login extends Component {

  constructor() {
    super();
    this.state = {
        email: "",
        pass: ""
    }
}

onEntrar() {
    const { nome, senha } = this.state;
    if (nome && senha) {
            sessionStorage.setItem('usuarioLogado', 'true') 
            window.location.reload();  
      
    } else {
        alert("Usuario Invalido")
    }
}
updateField(event) {
    const login = { ...this.state }
    console.log('login ', login) 
    login[event.target.name] = event.target.value
    this.setState({ ...login })
}

  render() {
    return (
      <div style={{ backgroundColor:'#F5F5F5', display: 'flex', justifyContent: 'Center', height: '100vh', width: '100%' }}>
        <Card style={{ width: '500px', alignSelf: 'center' }}>
          <ImgCustom src={logo} />
          <Form style={{ margin: '0px 30px 20px 30px'}}>
            <Form.Group controlId="formBasicEmail">
              <Form.Label>Email</Form.Label>
              <Form.Control name='email' type="email"  onChange={e => this.updateField(e)} value={this.state.email} placeholder="Digite seu e-mail" />
            </Form.Group>

            <Form.Group controlId="formBasicPassword">
              <Form.Label>Senha</Form.Label>
              <Form.Control name='pass' type="password"  onChange={e => this.updateField(e)} value={this.state.pass}  placeholder="Digite sua senha" />
            </Form.Group>
            <Button onClick={this.onEntrar.bind(this)} variant="primary" type="submit" block>
              Entrar
            </Button>
          </Form>
        </Card>
      </div>
    );
  }
}