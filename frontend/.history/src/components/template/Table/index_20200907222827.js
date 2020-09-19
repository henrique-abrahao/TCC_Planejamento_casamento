import Table from 'react-bootstrap/Table'
import React, { Component } from 'react';


export default class TableCustom extends Component {

  renderColumn = (client) => {
    let data = client.data_casamento;

    data = `${data[8]}${data[9]}/${data[5]}${data[6]}/${data[0]}${data[1]}${data[2]}${data[3]}`

    return (
      <tr>
        <td>{client.id}</td>
        <td>{client.nome_noiva}</td>
        <td>{client.nome_noivo}</td>
        <td>{data}</td>
        <td>{client.numeroConvidados || 0}</td>
      </tr>
    );
  }

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
          </tr>
        </thead>
        <tbody>
          {this.props.client.map(item => this.renderColumn(item))}
        </tbody>
      </Table>
    );
  }
} 