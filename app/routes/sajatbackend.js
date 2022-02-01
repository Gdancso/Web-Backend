const { authJwt } = require("../middleware");
const controller = require("../controllers/user.controller");

module.exports = function(app) {
  app.use(function(req, res, next) {
    res.header(
      "Access-Control-Allow-Headers",
      "x-access-token, Origin, Content-Type, Accept"
    );
    next();
  });
  app.get('/statisztika', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 's4_Project_M'
    })
    
    connection.connect()
    
    connection.query('SELECT * from statisztika', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows);
      res.send(rows);
    })
    
    connection.end()
  
  
    
  })
  /*------------------------------------------------------------------------------------------------------------*/
  /*rendezések-----------------------------------------------------------------------------------------------------*/
app.get('/rend_pont', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 's4_Project_M'
    })
    
    connection.connect()
    
    connection.query('SELECT * from statisztika order by statisztika_pont desc', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows);
      res.send(rows);
    })
    
    connection.end()
  
  
    
  })
  app.get('/rend_halal', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 's4_Project_M'
    })
    
    connection.connect()
    
    connection.query('SELECT * from statisztika order by statisztika_halal desc', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows);
      res.send(rows);
    })
    
    connection.end()
  
  
    
  })
  app.get('/rend_ido', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 's4_Project_M'
    })
    
    connection.connect()
    
    connection.query('SELECT * from statisztika order by statisztika_ido desc', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows);
      res.send(rows);
    })
    
    connection.end()
  
  
    
  })
  
  app.get('/rend_date', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 's4_Project_M'
    })
    
    connection.connect()
    
    connection.query('SELECT * from statisztika order by statisztika_date desc', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows);
      res.send(rows);
    })
    
    connection.end()
  
  
    
  })
  /*értékelés-----------------------------------------------------------------------------------------------------*/
app.post('/ertekeles', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 's4_Project_M'
    })
    
    connection.connect()
    let dt=new Date();
    let teljesdat=dt.getFullYear()+"-"+(dt.getMonth()+1)+"-"+dt.getDate();
    connection.query("INSERT INTO ertekeles  VALUES (NULL, '"+req.body.bevitel1+"', '"+req.body.bevitel2+"', '"+teljesdat+"')", function (err, rows, fields) {
      //connection.query("INSERT INTO ertekeles  VALUES (NULL, 'wad', 'ddawda', '2022-01-06')", function (err, rows, fields) {  
    
      if (err) throw err
    
      console.log("Sikeres felvitel!")
      res.send("Sikeres felvitel!")
    })
    
    connection.end()
    
  
  })
  app.get('/ertekeles_uzenet', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 's4_Project_M'
    })
    
    connection.connect()
    
    connection.query('SELECT * from ertekeles', function (err, rows, fields) {
      if (err) throw err
    
      console.log(rows);
      res.send(rows);
    })
    
    connection.end()
  
  
    
  })
  /*Admin---------------------------------------------------------------------------------------------------------------------*/
  app.post('/admin_ertekeles', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 's4_Project_M'
    })
    
    connection.connect()
    let dt=new Date();
    //let teljesdat=dt.getFullYear()+"-"+(dt.getMonth()+1)+"-"+dt.getDate();
    connection.query("delete from ertekeles where ertekeles_id="+req.body.bevitel1+"", function (err, rows, fields) {
    //connection.query("INSERT INTO ertekeles  VALUES (NULL, 'wad', 'ddawda', '2022-01-06')", function (err, rows, fields) {  
    
      if (err) throw err
    
      console.log("Sikeres törlés!")
      res.send("Sikeres törlés!")
    })
    
    connection.end()
    
  
  })
  /*user törlés*/
  /*komment törlés*/
  /*Search---------------------------------------------------------------------------------------------------------------------*/
  app.post('/kereses', (req, res) => {
    var mysql = require('mysql')
    var connection = mysql.createConnection({
      host: 'localhost',
      user: 'root',
      password: '',
      database: 's4_Project_M'
    })
    
    connection.connect()
    connection.query("SELECT * from ertekeles where ertekeles_uzenet like '%"+req.body.bevitel2+"%'", function (err, rows, fields) {
        if (err) throw err
      
        console.log(rows);
        res.send(rows);
      })
    
    connection.end()
    
  
  })
};
