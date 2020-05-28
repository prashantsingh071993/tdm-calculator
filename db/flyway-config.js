// This can be a function or an object literal.
module.exports = function () {
  return {
    flywayArgs: {
      url: "jdbc:sqlserver://127.0.0.1:1433;databaseName=HFLA",
      schemas: "dbo", //rename: "tdm"
      locations: "filesystem:./db/migration",
      user: "test",
      password: "test",
      sqlMigrationSuffixes: ".sql",
      baselineOnMigrate: true
    }
  };
};
