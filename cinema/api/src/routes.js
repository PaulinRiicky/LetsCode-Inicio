import express from "express";


import user from './Controllers/userController.js';
import movie from './Controllers/movieController.js';
import gender from './Controllers/genderController.js';
import director from './Controllers/directorController.js';
import actor from './Controllers/actorController.js'

const route = express();

route.use('/user', user);
route.use('/movie', movie);
route.use('/gender', gender)
route.use('/director', director)
route.use('/actor', actor)

export default route;