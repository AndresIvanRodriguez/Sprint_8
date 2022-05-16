const  express = require("express");
const router= express.Router() ;
const userController=require("../controllers/apiUsusarios.js");


router.get("/", userController.total);
router.get("/:id", userController.usuario);

module.exports = router;