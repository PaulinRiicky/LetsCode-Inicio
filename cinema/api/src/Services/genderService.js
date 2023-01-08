import database from '../Repository/connection.js'; 

async function createGender(name){
  const sql = 'insert into genero(genero) values(?)';
  const dados = [name];

  const conn = await database.connect();
  conn.query(sql,dados);
  conn.end();
}

async function updateGender(name, idGender){
  const sql = 'update into genero set genero = ? where id_genero = ?';
  const dados = [name, idGender];

  const conn = await database.connect();
  conn.query(sql,dados);
  conn.end();
}

export default {updateGender, createGender};