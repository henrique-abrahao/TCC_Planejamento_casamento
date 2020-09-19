import { H1, HeaderCustom } from './styles'
import React from 'react'

export default props =>
  <HeaderCustom className="header d-none d-sm-flex flex-column">
    <H1 className="mt-3">
      <i className={`fa fa-${props.icon}`}></i> {props.title}
    </H1>
    <p className="lead text-muted">props</p>
  </HeaderCustom>