import React, {Fragment,useState,useEffect} from "react";
import '../css/Main.css'
import Totales from './Totales.jsx'
import Ultimo from "./Ultimo";
function Home(){

   const [productos,setProductos]=useState([])

   const [usuarios,setUsuarios]=useState([])
   
   
   useEffect(()=>{
       const getProductos=() =>{
           fetch('http://localhost:3030/api/products')
           .then(res=>res.json())
           .then(res=> setProductos(res))
           
       }
   
       const getUsuarios=() =>{
           fetch('http://localhost:3030/api/users')
           .then(res=>res.json())
           .then(res=> setUsuarios(res))
           
       }
       getProductos()
       getUsuarios()
   },[])
       
   let ultiPro = productos.data
   let ultiUsu = usuarios.data

   return( 
       <div className="main">
           <div>
           <Totales/>
           </div>
         <div className="totales">
         <Ultimo
          list={ultiPro}
          />
           <Ultimo
          list={ultiUsu}
          />
         </div>
          
       </div>

);
}

export default Home

