import { AsideMenu, MenuLink, LinkCustom } from './styles'
import React from 'react'

export default props =>
  <AsideMenu className="menu-area">
    <MenuLink className="menu">
      <LinkCustom to="/index">Início</LinkCustom>
    </MenuLink>
    <MenuLink className="menu">
      <LinkCustom to="/createuser">Criar Usuário</LinkCustom>
    </MenuLink>
    <MenuLink className="menu">
      <LinkCustom to="/createplace">Criar Local</LinkCustom>
    </MenuLink>
    <MenuLink className="menu">
      <LinkCustom to="/listplace">Locais</LinkCustom>
    </MenuLink>
  </AsideMenu>