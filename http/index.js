const express = require("express");
const app = express();

app.get("/me", (req, res) => {
  res.status(200).json({
    nombre: "Daniel Abril",
    edad: 29,
    pais: "Colombia",
  });
});
app.post("/metas", (req, res) => {
  res.status(200).json({
    hobbies: ["Futbol", "Videojuegos", "Programacion", "Tocar Guitarra"],
  });
});
app.patch("/metas", (req, res) => {
  res.status(200).json({
    metas: [
      "Conseguir un tranajo como Desarrollador",
      "Algun dia trabajar en una multinacional",
    ],
  });
});
app.put("/business", (req, res) => {
  res.status(200).json({
    empresas: ["Google", "Globant", "Adidas"],
  });
});

app.listen(4000, () => {
  console.log("Server started at port 4000");
});
