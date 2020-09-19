import React from 'react';
import Router from './Routes'
import './App.css'
import { createBrowserHistory } from "history";

const customHistory = createBrowserHistory();


function App() {
  return (
    <Router history={customHistory} />
  );
}

export default App;
