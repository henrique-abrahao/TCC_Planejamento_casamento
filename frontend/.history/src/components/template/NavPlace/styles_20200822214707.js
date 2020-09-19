import styled from 'styled-components';
import Card from 'react-bootstrap/Card'

export const ImageCard = styled.img`
  
  `;

export const CardStyle = styled(Card)`
  width: 15%;
  &:hover {
    width: 20%;
  }
  :img {
    height: 150px;
    object-fit: cover;
  }
`;