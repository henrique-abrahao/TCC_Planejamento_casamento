import './index.css';
import React from 'react'
import ReactDOM from 'react-dom'
import { createStore, compose, applyMiddleware } from 'redux'
import { Provider } from 'react-redux'
import { BrowserRouter } from "react-router-dom";


import App from './main/App'
import rootReducer from './reducers/combineReducers'
import thunk from 'redux-thunk';


const store = createStore(rootReducer, compose(applyMiddleware(thunk)))
ReactDOM.render(
  <Provider store={store}>
    <BrowserRouter >
      <App />
    </BrowserRouter>
  </Provider>
  , document.getElementById('root'))
