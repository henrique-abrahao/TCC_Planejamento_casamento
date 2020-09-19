import  styled  from 'styled-components';
import Card from 'react-bootstrap/Card'

export const ImageCard =  styled.img`
  height: 150px;
  object-fit: cover;
  &:hover {
    width: 20%;
    height: 200px;
  }
  `;

export const CardStyle = styled(Card)`
  width: 15%;
  &:hover {
    width: 20%;
    height: 200px;
  }
`;