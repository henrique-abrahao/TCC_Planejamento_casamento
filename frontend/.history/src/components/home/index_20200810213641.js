import React, { Component } from 'react'
import Main from '../template/Main/index'
import TableCustom from '../template/Table/index'
import axios from 'axios';

import 'bootstrap/dist/css/bootstrap.min.css';


export default class Home extends Component {

  state = {
    client: [],
  }

  componentDidMount = async () => {
    const clients = await axios.get('http://localhost:3333/client')
    return this.setState({ client: clients });
  }

  render() {
    return (
      <Main title="Início"
        subtitle="Segue lista de clientes abaixo">
        <TableCustom client={this.state.client} />
      </Main>
    );
  };
}
