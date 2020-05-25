const Postgrator = require("postgrator");

const postgrator = new Postgrator({
  // Directory containing migration files
  migrationDirectory: __dirname + "/migration",
  // migrationPattern: __dirname + "/migration/**",
  driver: "mssql",
  host: "127.0.0.1",
  port: 1433,
  database: "HFLA",
  username: "test",
  password: "test",
  schemaTable: "schema_version",
  enableArithAbort: true,
  newline: "CRLF"
  // For SQL Server, you may optionally provide an additional options configuration.
  // This may be necessary if requiring a secure connection for Azure.
  //   requestTimeout: 1000 * 60 * 60, // Default 1 hour
  //   connectionTimeout: 30000, // override mssql 15 second default
  //   options: {
  //     encrypt: true
  //   }
});

postgrator
  .migrate()
  .then(appliedMigrations => {
    console.log(
      "+++++++++ Applied Migrations: +++++++++ \n",
      appliedMigrations,
      "\n +++++++++++++++++++++++++++++++++++++++\n"
    );
  })
  .catch(error => console.log(error));
