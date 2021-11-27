const labels = {
    "fr":{
        "Inventory":"Inventaire",
        "hat":"Chappeau",
        "glasses":"Lunettes",
        "mask":"Masque",
        "top":"Haut",
        "undertop":"Sous-Haut",
        "gloves":"Gants",
        "pants":"Pantalon",
        "shoes":"Chaussures",
        "FLOOR":"SOL",
        "WEAPONS":"ARMES",
    }
}
let currentLanguage = 'fr'


export function _(code) {
    return labels[currentLanguage][code] || ("nc:"+code)
}