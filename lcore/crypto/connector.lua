crypto = {}

function crypto:encrypt(password, iterations, callback)
    exports[config.resourceName]:encrypt(password, iterations, callback)
end

function crypto:compareCrypto(password, hashed, callback)
    exports[config.resourceName]:compareCrypto(password, hashed, callback)
end