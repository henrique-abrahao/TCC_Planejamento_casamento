import React from 'react';
import Main from '../template/Main/index'
import NavServices from '../template/NavServices';
import Axios from 'axios';


class ListPhoto extends React.Component {

  state = { items: [] }

  componentDidMount = async () => {

    const services = await Axios.get('http://192.168.15.200:3333/photo');
    this.setState({ items: services.data});
    return console.log(this.state.items);
  }

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
