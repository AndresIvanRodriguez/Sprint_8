const db = require('../database/models');

const controlProductos={

    total:async(req,res)=>{
        const products=await db.Product.findAll();
        const categories=await db.Categorie.findAll();
        const cbyCategory= await db.Categorie.findAll({include: [{ association: 'Product' }]});
        const response={
            
            count:products.length,
            
            countByCategory:cbyCategory.map((item)=>(
                {
                name:item.nombreCategoria,
                count:item.Product.length
                }
            )),
            totalCategorias: cbyCategory.length,
            data: products.map((item)=>(
                {id:item.id,
                name:item.nombre,
                description:item.descripcion,
                detail:'/api/products/'+item.id,
                category:categories.find((element)=>(element.id==item.categoriaId)).name
            })),
            
            
        }
        res.json(response);
    },
    producto:async(req,res)=>{
        const product= await db.Product.findByPk(req.params.id);
        const categories=await db.Categorie.findAll();
       
        const response={
            id:product.id,
            name:product.nombre,
            price:product.precio,
            stock:product.stock,
            description:product.descripcion,
            color:product.color,
            category:[categories.find((element)=>(element.id==product.categoriaId)).nombreCategoria],
            urlImagen:'/api/products/imagenProduct'+product.id
        }
       return  res.json(response);
    },


}

module.exports  =controlProductos;