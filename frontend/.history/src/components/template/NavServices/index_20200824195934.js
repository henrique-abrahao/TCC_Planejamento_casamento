import React, { Component } from 'react';
import { Nav } from 'react-bootstrap';

import 'bootstrap/dist/css/bootstrap.min.css';

export default class navServices extends Component {
  render() {
    return (
      <Nav defaultActiveKey="/home" as="ul">
        <Nav.Item as="li">
          <Nav.Link href="/home">Active</Nav.Link>
        </Nav.Item>
        <Nav.Item as="li">
          <Nav.Link eventKey="link-1">Link</Nav.Link>
        </Nav.Item>
        <Nav.Item as="li">
          <Nav.Link eventKey="link-2">Link</Nav.Link>
        </Nav.Item>
      </Nav>
    );
  }
}