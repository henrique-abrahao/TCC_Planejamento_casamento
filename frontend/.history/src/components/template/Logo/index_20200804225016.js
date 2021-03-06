import { AsideCustom, ImageCustom } from './styles';
import logo from '../../../assets/realizar.png'
import React from 'react'
import { Link } from 'react-router-dom'

export default props =>
    <AsideCustom className="logo">
        <Link to="/" className="logo">
            <ImageCustom src={logo}/>
        </Link>
    </AsideCustom>