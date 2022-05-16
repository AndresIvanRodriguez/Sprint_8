import React from "react";
import '../css/SideBar.css'
import Top from "./Top";
import Botones from "./Botones"


function SideBar(){
   return( 
       <div id='sideBar'>
          <Top />
          <Botones />
       </div>


);
}

export default SideBar

