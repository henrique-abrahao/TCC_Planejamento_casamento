import styled from 'styled-components';
import Card from 'react-bootstrap/Card'

export const ImageCard = styled(Card.Img)`
  height: 150px;
  object-fit: cover;
  background-image: black;
`;

export const CardStyle = styled(Card)`
  width: 15%;
  &:hover {
    width: 20%;
    cursor: pointer;
  }
`;