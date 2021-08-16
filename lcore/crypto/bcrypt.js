const bcrypt = require('bcryptjs');

exports('encrypt', function (password, iterations, callback) {
    bcrypt.hash(password, iterations, function (err,hashed) {
        if (err) throw err;
        callback(hashed)
    });
})

exports('compareCrypto', function (password, hashed, callback) {
    bcrypt.compare(password, hashed, function (err, valid) {
        if (err) throw err;
        callback(valid)
    });
})