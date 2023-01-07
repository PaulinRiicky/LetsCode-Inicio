import express from "express";
import routes from "./routes.js";

const api = express();

api.use(express.json()); // Informando o tipo de comunicação entre front e back, neste caso, json

api.use('/', routes)

api.listen(3333, () => {
  console.log("Server is Running...");
});
