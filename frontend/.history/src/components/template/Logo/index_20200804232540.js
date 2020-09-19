import { AsideCustom, ImageCustom } from './styles';
import logo from '../../../assets/logo.png'
import React from 'react'
import { Link } from 'react-router-dom'

export default props =>
  <AsideCustom className="logo">
    <Link to="/" className="logo">
      <div style={{ display: 'flex', justifyContent: 'center' }}>
        <ImageCustom src={logo} />
      </div>
    </Link>
  </AsideCustom>