import express, { application } from "express";
import cria from '../Services/movieService.js';

//cria uma rota para cadastro de filmes
const routes = express.Router();

routes.post("/", async (request, response) => {
  const {name, year, duration, idDirector, idGender} = request.body;

  await cria.createMovie(name, year, duration, idDirector, idGender);

  response.status(200).send("Funcionou");
});

export default routes;