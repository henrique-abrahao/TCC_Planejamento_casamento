import styled from 'styled-components';
import { Link } from 'react-router-dom'

export const AsideMenu = styled.aside`
  background-color: #5698d4;
  box-shadow: 
    2px 0 10px 0 rgba(0, 0, 0, 0.12),
    2px 0 15px 0 rgba(0, 0, 0, 0.09);
`;

export const MenuLink = styled.nav`
    :hover{
      background: linear-gradient(135deg, #FF6CAB 0%, #7366FF 100%);
    }
`;

export const LinkCustom = styled(Link)`
  display: block;
  text-decoration: none;
  color: #FFF;
  font-weight: 300;
  padding: 15px;
`;