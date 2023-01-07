import express, { application } from "express";
import cria from '../Services/movieService.js';

//cria uma rota para cadastro de usuários
const routes = express.Router();

routes.post("/", async (request, response) => {
  const {name, email, password, typeUser} = request.body;

  if(name === ''){
    return response.status(400).send('Nome não pode ser vazio')
  }

  await cria.createUser(name, email, password, typeUser);

  response.status(200).send("Funcionou");
});

export default routes;