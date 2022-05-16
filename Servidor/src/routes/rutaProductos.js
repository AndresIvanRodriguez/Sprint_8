const express= require ('express');
const router= express.Router();
const productApi = require ('../controllers/apiProductos.js');

router.get("/",productApi.total);
router.get("/:id",productApi.producto);

module.exports = router;