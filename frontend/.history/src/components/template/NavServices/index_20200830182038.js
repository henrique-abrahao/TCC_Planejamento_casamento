import React, { Component } from 'react';
import { Nav } from 'react-bootstrap';

import 'bootstrap/dist/css/bootstrap.min.css';

export default class navServices extends Component {
  render() {
    return (
      <Nav defaultActiveKey="/home" as="ul">
        <Nav.Item as="li">
          <Nav.Link href="/createplace" disabled={this.props.id === 1}>Salão</Nav.Link>
        </Nav.Item>
        <Nav.Item as="li" >
          <Nav.Link href="link-1" disabled={this.props.id === 2}>Buffet</Nav.Link>
        </Nav.Item>
        <Nav.Item as="li" >
          <Nav.Link href="/createphoto" disabled={this.props.id === 3}>fotógrafo</Nav.Link>
        </Nav.Item>
        <Nav.Item as="li" >
          <Nav.Link href="/home" disabled={this.props.id === 4}>Igrejas</Nav.Link>
        </Nav.Item>
        <Nav.Item as="li" >
          <Nav.Link href="link-1" disabled={this.props.id === 5}>DJ</Nav.Link>
        </Nav.Item>
        <Nav.Item as="li" >
          <Nav.Link href="link-2" disabled={this.props.id === 6}>Bandas</Nav.Link>
        </Nav.Item>
      </Nav>
    );
  }
}