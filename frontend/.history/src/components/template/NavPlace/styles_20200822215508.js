import styled from 'styled-components';
import Card from 'react-bootstrap/Card'

export const ImageCard = styled(Card.Img)`
  height: 150px;
  object-fit: cover;
`;

export const CardStyle = styled(Card)`
  width: 15%;
  &:hover {
    width: 20%;
    height: 200;
  }
`;