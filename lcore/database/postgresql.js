// get the client
const {Client} = require('pg');
let ready = false

exports('isDatabaseReady', function() {
    return ready
})

// create the connection to database
client = new Client({
    host: "127.0.0.1",
    user: "fivem",
    password: "fivemServer",
    database: "fivem"
});
client.connect();
ready = true


exports('databaseQuery', function (string, variables, callback) {
    client.query(string, variables, function(err, results, fields) {
        if (err) throw err;
        if (callback) {
            callback(results.rows)
        }
    })
})

console.log("Connected To postgres");


