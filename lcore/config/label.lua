label = {
    ['fr'] = {
        ['openDebugMenu']="Ouvre le menu debug",
        ['chooseAnOption']="Choisir une option",
        ['close']="Fermer",
        ['menuUp']="Menu 'Haut'",
        ['menuDown']="Menu 'Bas'",
        ['menuEnter']="Menu 'Séléctionner'",
        ['putInClipboard']="Met la position dans le presse-papier"
    }
}


function _(code)
    return label[config.language][code]
end