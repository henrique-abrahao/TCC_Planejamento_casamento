import React from 'react';
import Main from '../template/Main/index'
import NavServices from '../template/NavServices';



class ListPhoto extends React.Component {

  render() {

    return (
      <Main title="Lista de Serviços"
        subtitle="Veja os serviços disponíveis para seus clientes.">
        <NavServices id={3} list />

      </Main>
    );
  }
}

export default ListPhoto;
