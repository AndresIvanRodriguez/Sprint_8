import React from "react";
import PropTypes from "prop-types";
import '../css/Main.css'
function TablaProductos(props){
   return( 
       <div className="tabla">
           <table>
           <thead>
        <tr>
                     <th> Nombre </th>
                     <th> Descripción </th>
        </tr>
      </thead>
      <tbody>
      {
                props.data.map((item,i)=> 
                   <tr key={item.id+i}>
                    <td>{item.name} </td> 
                    <td>{item.description}</td> 
                   </tr>)
               }
      </tbody>
           </table>
           
               
           
       </div>


);
}
TablaProductos.defaultProps={
    data: [{name:'Sin definir',description:'Sin definir'}]
}
TablaProductos.propTypes={
    data: PropTypes.array
}

export default TablaProductos

