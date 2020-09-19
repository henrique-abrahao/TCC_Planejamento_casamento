import Table from 'react-bootstrap/Table'
import React, { Component } from 'react';


export default class NavPlace extends Component {

  render() {
    return (
      <Table striped bordered hover >
        <thead>
          <tr>
            <th>Id</th>
            <th>Noiva</th>
            <th>Noivo</th>
            <th>Data do casório</th>
            <th>Numero de Convidados</th>
            <th>Investimento</th>
          </tr>
        </thead>
      </Table>
    );
  }
} 