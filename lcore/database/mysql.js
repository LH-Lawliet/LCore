// get the client
const mysql = require('mysql2');
let ready = false

exports('isMysqlReady', function() {
    return ready
})

// create the connection to database
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'fivem',
    password: 'fivemServer',
    database: 'fivem',
})
ready = true


exports('mysqlQuery', function (string, variables, callback) {
    connection.query(string, variables, function(err, results, fields) {
        if (err) throw err;
        if (callback) {
            callback(results)
        }
    })
})

console.log("Connected To mysql");


