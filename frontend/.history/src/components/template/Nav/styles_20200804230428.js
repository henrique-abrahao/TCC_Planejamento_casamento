import styled from 'styled-components';

export const AsideMenu = styled.aside`
  background-color: #aad4f8;
  box-shadow: 
    2px 0 10px 0 rgba(0, 0, 0, 0.12),
    2px 0 15px 0 rgba(0, 0, 0, 0.09);
`;

export const MenuLink = styled.nav`
    display: block;
    text-decoration: none;
    color: #FFF;
    font-weight: 300;
    padding: 15px;
    :hover{
      background: linear-gradient(135deg, #07a7e3 0%, #32dac3 100%);
    }
`;