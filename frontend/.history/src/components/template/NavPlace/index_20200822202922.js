import Card from 'react-bootstrap/Card'
import React, { Component } from 'react';


export default class NavPlace extends Component {

  render() {
    return (
      <Card className="text-center" style={{ width: '10%' }} >
        <Card.Img variant="top" src="https://i.pinimg.com/originals/de/f6/96/def69643889ee29e232637646e839064.jpg" />
        <Card.Title>Salão</Card.Title>
      </Card>
    );
  }
} 