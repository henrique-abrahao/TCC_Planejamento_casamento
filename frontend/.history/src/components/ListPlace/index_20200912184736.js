import React, { Component } from 'react'
import Main from '../template/Main/index'


export default class Locais extends Component {
  render() {
    return (
      <Main title="Lista de Serviços"
        subtitle="Veja os serviços disponíveis para seus clientes.">
        <NavServices id={1} list />
      </Main>
    );
  };
}
