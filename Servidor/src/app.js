const express = require('express');
const app = express();
const apiProductos = require("./routes/rutaProductos");
const apiUsuarios = require("./routes/rutaUsusarios");
const cors = require('cors')

app.listen(process.env.PORT || 3030, () =>console.log("Servidor corriendo en Puerto 3030"));

app.use(cors())
app.use("/api/products", apiProductos );
app.use("/api/users", apiUsuarios);


app.use((req, res, next) => {
    res.status(404).render("No existe esta vista");
});

module.exports = app;