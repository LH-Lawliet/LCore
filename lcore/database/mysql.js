// get the client
const mysql = require('mysql2');
let ready = false

exports('isMysqlReady', function() {
    return ready
})

// create the connection to database
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database:'fivem'
})
ready = true


exports('mysqlQuery', function (string, variables, callback) {
    connection.query(string, variables, function(err, results, fields) {
        if (err) throw err;
        callback(results)
    })
})

console.log("Connected To mysql");


