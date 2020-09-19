import Card from 'react-bootstrap/Card'
import React, { Component } from 'react';


export default class NavPlace extends Component {

  state = {
    places: [
      {
        image: '',
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
    <Card className="text-center" style={{ width: '10%' }} >
      <Card.Img variant="top" src="https://i.pinimg.com/originals/de/f6/96/def69643889ee29e232637646e839064.jpg" />
      <Card.Title>Salão</Card.Title>
    </Card>
  }

  render() {
    return (
      <div>
        {this.state.places.map(item => this.renderCard(item.name, item.image))}
      </div>
    );
  }
} 