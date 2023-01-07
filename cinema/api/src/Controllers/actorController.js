import express, { application } from "express";
import cria from '../Services/actorService.js';

//cria uma rota para cadastro do atores
const routes = express.Router();

routes.post("/", async (request, response) => {
  const {name, gender, date} = request.body;

  await cria.createActor(name, gender, date);

  response.status(200).send("Funcionou");
});

export default routes;