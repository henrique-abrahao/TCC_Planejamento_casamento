import React from 'react';
import Login from '../components/login'
import './App.css'
import { createBrowserHistory } from "history";

const customHistory = createBrowserHistory();


function App() {
  return (
    <Login />
  );
}

export default App;
