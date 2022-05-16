import React, {Fragment,useState,useEffect} from "react";
import Categorias from "./Categorias";
import TablaProductos from "./TablaProductos";
import '../css/Main.css'

function Productos(){

    const [prod,setPro]=useState([])

    
    useEffect(()=>{
        const getProd=() =>{
            fetch('http://localhost:3030/api/products')
            .then(res=>res.json())
            .then(res=> setPro(res))
            
        }
    

        getProd()

    },[])

    const catego = prod.countByCategory
        
       return( 
           <div className="main">
               <div>
               <Categorias 
                categors = {catego}
               />
               </div>
               <div className="tabla">
               <TablaProductos 
               data ={prod.data}
               />
               </div>
               
           </div>
    
    
    );

}

export default Productos

