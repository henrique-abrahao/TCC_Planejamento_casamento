import React from 'react';
import Main from '../template/Main/index'
import NavServices from '../template/NavServices';
import Axios from 'axios';
import Card from 'react-bootstrap/Card';
import Button from 'react-bootstrap/Button'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faEdit, faTrash } from '@fortawesome/free-solid-svg-icons'


class ListPhoto extends React.Component {

  state = { items: [] }

  componentDidMount = async () => {

    const services = await Axios.get('http://192.168.15.200:3333/photo');
    this.setState({ items: services.data });
    return console.log(this.state.items);
  }

  renderCard(items) {
    return (
      <Card style={{ width: '18rem', marginRight: 15 }}>
        <Card.Img variant="top" src={items.url} style={{ width: 250, height: 140 }} />
        <Card.Body>
          <Card.Title>{items.nome_companha}</Card.Title>
          <button className="btn btn-primary">
            <FontAwesomeIcon icon={faTrash} />
          </button>
          <button className="btn btn-warning ml-2">
            <FontAwesomeIcon icon={faEdit} />
          </button>

        </Card.Body>
      </Card>
    )
  }

  render() {

    return (
      <Main title="Lista de Serviços"
        subtitle="Veja os serviços disponíveis para seus clientes.">
        <NavServices id={3} list />
        <div style={{ display: 'flex', flexDirection: "row", flexWrap: "wrap", marginTop: 25 }}>
          {this.state.items.map(
            items => this.renderCard(items)
          )}
        </div>

      </Main>
    );
  }
}

export default ListPhoto;
