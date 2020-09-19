import React from 'react'
import { Switch, Route, Redirect } from 'react-router'
import 'bootstrap/dist/css/bootstrap.min.css'
import 'font-awesome/css/font-awesome.min.css'
import "semantic-ui-css/semantic.min.css";
import './App.css'
import { BrowserRouter } from 'react-router-dom'

import Logo from '../components/template/Logo/index'
import Nav from '../components/template/Nav/index'
import Home from '../components/home/index'
import Locais from '../components/locais/index'
import CreateUser from '../components/createUser/index'
import CreatePlace from '../components/createPlace/index'
import CreatePhoto from '../components/createPhoto/index'


export default props =>
  <BrowserRouter>
    <div className="app">
      <Logo />
      <Nav />
      <Switch>
        <Route path='/index' component={Home} />
        <Route path='/local' component={Locais} />
        <Route path='/createuser' component={CreateUser} />
        <Route path='/createplace' component={CreatePlace} />
        <Route path='/createphoto' component={CreatePhoto} />
        <Redirect from='*' to='/index' />
      </Switch>

    </div>
  </BrowserRouter>