import React from "react";
import "../css/App.css"
import SideBar from "./SideBar";

import Home from "./Home";
import Productos from "./Productos";
import Usuarios from "./Usuarios";

import { Link,Routes,Route } from 'react-router-dom';


function App(){
   return( 
       <div id="app">
           <SideBar/>
        <Routes>
         <Route path="/" element={<Home/>}/>
         <Route path="/products" element={<Productos/>}/>
         <Route path="/products/:id" element={<Productos/>}/>
         <Route path="/users" element={<Usuarios/>}/>
         <Route path="/users/:id" element={<Usuarios/>}/>
        </Routes>
       </div>

);
} 

export default App