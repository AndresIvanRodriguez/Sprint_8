import React, {Fragment,useState,useEffect} from "react";
import TotalCart from "./TotalCart"
import '../css/Main.css'
function Totales(){

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
    
   return( 
       <div className="totales">
           
           <TotalCart 
            propiedad='Categorias '
            numeroTotal={productos.totalCategorias}
           />
           <TotalCart
            propiedad='Productos'
            numeroTotal={productos.count}
           />
           <TotalCart
            propiedad='Usuarios'
            numeroTotal={usuarios.count}
           />

       </div>


);
}

export default Totales
