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
        image: 'https://www.enoivado.com.br/wp-content/uploads/2019/01/como-contratar-o-buffet-de-casamento-em-5-passos-buffet-capa.jpeg',
        name: 'Buffet',
      },
      {
        image: 'https://banjomanbold.files.wordpress.com/2017/02/img_8219.png?w=640',
        name: 'Bandas',
      },
      {
        image: 'https://img.stpu.com.br/?img=https://s3.amazonaws.com/pu-mgr/default/a0RG000000ldanaMAA/57a87e9be4b00dab3a056b14.jpg&w=710&h=462',
        name: 'DJ',
      },
      {
        image: '',
        name: 'Fotógrafos',
      },
      {
        image: '',
        name: 'Igrajas',
      },
    ]
  }

  renderCard = (name, image) => {
    return (
      <Card className="text-center" style={{ width: '15%' }} >
        <Card.Img variant="top" src={image} />
        <Card.Title>{name}</Card.Title>
      </Card>
    );
  }

  render() {
    return (
      <div style={{ display: 'flex', flexDirection: 'row', width: '100%', justifyContent: 'space-around'}}>
        {this.state.places.map(item => this.renderCard(item.name, item.image))}
      </div>
    );
  }
} 