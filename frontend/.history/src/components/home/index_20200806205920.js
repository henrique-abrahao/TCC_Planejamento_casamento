import React, { Component } from 'react'
import Main from '../template/Main/index'
import Table from '../template/Table/index'


export default class Home extends Component {

  state = {
    client: [
      { 
        id: 1,
        noiva: 'noiva1',
        noivo: 'noivo2',
        data: '00/00/0000',
        numeroConvidados: '10',
        inestimentos: '1000',
      },
      { 
        id: 2,
        noiva: 'noiva1',
        noivo: 'noivo2',
        data: '00/00/0000',
        numeroConvidados: '10',
        inestimentos: '1000',
      },
      { 
        id: 3,
        noiva: 'noiva1',
        noivo: 'noivo2',
        data: '00/00/0000',
        numeroConvidados: '10',
        inestimentos: '1000',
      },
      { 
        id: 4,
        noiva: 'noiva1',
        noivo: 'noivo2',
        data: '00/00/0000',
        numeroConvidados: '10',
        inestimentos: '1000',
      },
      { 
        id: 5,
        noiva: 'noiva1',
        noivo: 'noivo2',
        data: '00/00/0000',
        numeroConvidados: '10',
        inestimentos: '1000',
      },
    ]
  }

  render() {
    return (
      <Main title="Início"
        subtitle="Segue lista de clientes abaixo">
        <Table client={this.state.client} />
      </Main>
    );
  };
}
