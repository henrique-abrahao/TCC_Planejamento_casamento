import Card from 'react-bootstrap/Card'
import React, { Component } from 'react';


export default class NavPlace extends Component {

  state = {
    places: [
      {
        image: 'https://weekeventos.com/wp-content/uploads/2019/09/cerimonia-no-espaco-com-mesa-do-bolo-na-lateral-recepcao-de-casamento-week-eventos-salao-de-festas-bh-1-2.jpg',
        name: 'Salão',
      },
      {
        image: '',
        name: 'Buffet',
      },
      {
        image: '',
        name: 'Bandas',
      },
      {
        image: '',
        name: 'DJ',
      },
      {
        image: '',
        name: 'Loja De Roupas',
      },
      {
        image: '',
        name: 'fotógrafos',
      },
      {
        image: '',
        name: 'Igrajas',
      },
    ]
  }

  renderCard = (name, image) => {
    return (
      <Card className="text-center" style={{ width: '10%' }} >
        <Card.Img variant="top" src={image} />
        <Card.Title>{name}</Card.Title>
      </Card>
    );
  }

  render() {
    return (
      <div>
        {this.state.places.map(item => this.renderCard(item.name, item.image))}
      </div>
    );
  }
} 