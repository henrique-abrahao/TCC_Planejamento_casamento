import React, { Component } from 'react'
import Main from '../template/Main/index'


export default class Home extends Component {
  render() {
    return (
      <Main title="Início"
        subtitle="Segue lista de clientes abaixo">
        <div className='display-4'>Bem Vindo !!!</div>
      </Main>
    );
  };
}
