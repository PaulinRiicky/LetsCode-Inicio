import express, { application } from "express";
import cria from '../Services/directorService.js';

//cria uma rota para cadastro do diretores
const routes = express.Router();

routes.post("/", async (request, response) => {
  const {name, country, date, gender} = request.body;

  await cria.createDirector(name, country, date, gender);

  response.status(200).send("Funcionou");
});

export default routes;