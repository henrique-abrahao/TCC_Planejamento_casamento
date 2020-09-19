import Card from 'react-bootstrap/Card'
import React, { Component } from 'react';
import { ImageCard, CardStyle } from './styles';


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
        image: 'https://fotografiadicas.com.br/wp-content/uploads/2017/10/30-Fotografo-Profissional-Amador-fotografia-dicas-2-min.png',
        name: 'Fotógrafos',
      },
      {
        image: 'https://lh3.googleusercontent.com/proxy/4ujYqwJd1JADuDNYM-T-uIgGQ9EheyCGwpmbvoPjOgl59fNRMwGqrIXFA_LL3dMrnn1qWMubi9E7ZKktuoRR74Rz7AZ8WctY6TMfxn5OVbpl-_nyQ1lfnzzYXJHx2dACJuB4oN1QAqQ4ueWulOWYrtiH76ojMLfH8tGlRR5FTe59VYJCNXQbsB_qWX4',
        name: 'Igrajas',
      },
    ]
  }

  renderCard = (name, image) => {


    return (
      <CardStyle  className="text-center" >
        <ImageCard variant="top" src={image} />
        <div style={{height: 150, backgroundColor: 'black', position:'absolute', top: 0}} />
        <Card.Title>{name}</Card.Title>
      </CardStyle>
    );
  }

  render() {
    return (
      <div style={{ display: 'flex', flexDirection: 'row', width: '100%', justifyContent: 'space-around' }}>
        {this.state.places.map(item => this.renderCard(item.name, item.image))}
      </div>
    );
  }
} 