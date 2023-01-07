import database from '../Repository/connection.js'; 


async function createActor(name, gender, date){
  const sql = 'insert into ator(nome_ator, sexo, dt_nascimento) values(?, ?, ?)';
  const dados = [name, gender, date];

  const conn = await database.connect();
  conn.query(sql,dados);
  conn.end();
 
}



async function updateActor(name, gender, date, idActor){
  const sql = 'update into filme set nome_ator = ?, sexo = ?, dt_nascimento = ? where id_ator = ?';
  const dados = [name, gender, date, idActor];

  const conn = await database.connect();
  conn.query(sql,dados);
  conn.end();
}

export default {updateActor, createActor};