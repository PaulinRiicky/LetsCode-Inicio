import database from '../Repository/connection.js'; 

async function createUser(name, email, password, typeUser){
  const sql = 'insert into usuario(nome, email, senha, tipo_usuario) values(?, ?, ?, ?)';
  const dados = [name, email, password, typeUser];

  const conn = await database.connect();
  conn.query(sql,dados);
  conn.end();
 
}

async function updateUser(name, email, password, typeUser, idUser){
  const sql = 'update into usuario set nome_usuario = ?, email_usuario = ?, senha, tipo_usuario = ? where id_usuario = ?';
  const dados = [name, email, password, typeUser, idUser];

  const conn = await database.connect();
  conn.query(sql,dados);
  conn.end();
 }

export default {updateUser, createUser};