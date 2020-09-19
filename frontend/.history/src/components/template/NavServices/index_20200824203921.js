import React, { Component } from 'react';
import { Nav } from 'react-bootstrap';

import 'bootstrap/dist/css/bootstrap.min.css';

export default class navServices extends Component {
  render() {
    return (
      <Nav defaultActiveKey="/home" as="ul">
        <Nav.Item as="li">
          <Nav.Link href="/home">Salão</Nav.Link>
        </Nav.Item>
        <Nav.Item as="li">
          <Nav.Link href="link-1">Buffet</Nav.Link>
        </Nav.Item>
        <Nav.Item as="li">
          <Nav.Link href="link-2">fotógrafo</Nav.Link>
        </Nav.Item>
        <Nav.Item as="li">
          <Nav.Link href="/home">Igrejas</Nav.Link>
        </Nav.Item>
        <Nav.Item as="li">
          <Nav.Link href="link-1">DJ</Nav.Link>
        </Nav.Item>
        <Nav.Item as="li">
          <Nav.Link href="link-2">Bandas</Nav.Link>
        </Nav.Item>
      </Nav>
    );
  }
}