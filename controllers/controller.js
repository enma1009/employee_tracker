const cTable = require('console.table');

module.exports = {
    viewTables: function(connection, tableName) {
        let queryString = "SELECT * FROM ";
        queryString += tableName;
        connection.query(queryString, function(err, res) {
        if (err) throw err;
        console.table(res);
        connection.end();
        });
    }
};