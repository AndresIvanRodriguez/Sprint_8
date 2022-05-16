import React from "react";

function TotalCart(props){
   return( 
       <div className="totalCart">
           <h1 >
               Total 
           </h1>
           <h2>
               {props.propiedad}
           </h2>
           <p>
               {props.numeroTotal}
           </p>
       </div>


);
}

export default TotalCart
