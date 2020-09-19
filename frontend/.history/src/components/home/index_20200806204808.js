import React, { Component } from 'react'
import Main from '../template/Main/index'
import { Table } from '../template/Table'


export default class Home extends Component {
  render() {
    return (
      <Main title="Início"
        subtitle="Segue lista de clientes abaixo">
        <Table />
      </Main>
    );
  };
}
