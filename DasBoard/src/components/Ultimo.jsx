import React from "react";
import PropTypes from "prop-types";

function Ultimo(props){
    let num =props.list.length
    console.log(num)
    let last= props.list[num-1]
   return( 
       <div className="totalCart">
            Último: {last.name}     
       </div>


);
}
Ultimo.defaultProps={
    list: [{name:'Sin definir ',descripcion:'Sin definir'},{name:'Sin definir ',descripcion:'Sin definir'},{name:'Sin definir ',descripcion:'Sin definir'}]
}
Ultimo.propTypes={
    list: PropTypes.array
}

export default Ultimo

