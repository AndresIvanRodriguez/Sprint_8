const db = require ('../database/models');
const sequelize = db.sequelize;
const {Op} = require('sequelize');
const controlProductos = require('./apiProductos');

const controlUsuarios ={

    total:async(req,res)=>{
        const users=await db.User.findAll();
        const response={
            
            count:users.length,
            
           
            data: users.map((item)=>(
                {id:item.id,
                name:item.nombre,
                email:item.email,
                detail:'/api/users/'+item.id
            })),
        }
        res.json(response);
    },
    usuario:async(req,res)=>{
        const user= await db.User.findByPk(req.params.id);
        const response={
            id:user.id,
            name:user.nombre,
            lastname:user.apellido,
            email:user.email,
            fechaNacimiento:user.fechaNacimiento,
            address:user.direccion,
            urlImagen:'/api/users/imagenUser'+user.id
        }
       return  res.json(response);
    },
}

module.exports = controlUsuarios;