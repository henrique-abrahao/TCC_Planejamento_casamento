import React from 'react';
import Main from '../template/Main/index'
import NavServices from '../template/NavServices';
import Axios from 'axios';
import Card from 'react-bootstrap/Card';
import Button from 'react-bootstrap/Button'


class ListPhoto extends React.Component {

  state = { items: [] }

  componentDidMount = async () => {

    const services = await Axios.get('http://192.168.15.200:3333/photo');
    this.setState({ items: services.data });
    return console.log(this.state.items);
  }

  renderCard(items) {
    return (
      <Card style={{ width: '18rem' }}>
        <Card.Img variant="top" src={items.url} />
        <Card.Body>
          <Card.Title>{items.nome_companha}</Card.Title>
          <Button variant="primary">Go somewhere</Button>
        </Card.Body>
      </Card>
    )
  }

  render() {

    return (
      <Main title="Lista de Serviços"
        subtitle="Veja os serviços disponíveis para seus clientes.">
        <NavServices id={3} list />

        { this.state.items.map(
          items => this.renderCard(items)
        )}

      </Main>
    );
  }
}

export default ListPhoto;
