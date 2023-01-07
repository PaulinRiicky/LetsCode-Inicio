import express, { application } from "express";
import cria from '../Services/genderService.js';

//cria uma rota para cadastro de gêneros
const routes = express.Router();

routes.post("/", async (request, response) => {
  const {name} = request.body;

  await cria.createGender(name);

  response.status(200).send("Funcionou");
});

export default routes;