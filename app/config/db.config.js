module.exports = {
  HOST: "localhost",
  USER: "root",
  PASSWORD: "",
  DB: "s4_project_m",
  dialect: "mysql",
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
};
