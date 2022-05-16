import React from "react";
import PropTypes from "prop-types";

function Categorias(props){
   return( 
       <div className="categori">
               {
                props.categors.map((item,i)=> 
                   <div className="totalCart" key={item.count+i}>
                     <p>  {item.name} 
                         </p> 
                    <p>

                     Cantidad: {item.count}

                    </p>
                   </div>)
               }
       </div>


);
}
Categorias.defaultProps={
    categors: [{name:'Sin definir',count:3},{name:'Sin definir',count:4},{name:'Sin definir',count:5}]
}
Categorias.propTypes={
    categors: PropTypes.array
}

export default Categorias

