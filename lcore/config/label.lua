label = {
    ['fr'] = {
        ['WIP']="Fonctionnalité non implémenté, cette dernière est en cours de développement",
        ['openDebugMenu']="Ouvre le menu debug",
        ['chooseAnOption']="Choisir une option",
        ['close']="Fermer",
        ['menuUp']="Menu 'Haut'",
        ['menuDown']="Menu 'Bas'",
        ['menuLeft']="Menu 'Gauche'",
        ['menuRight']="Menu 'Droite'",
        ['menuEnter']="Menu 'Séléctionner'",
        ['putInClipboard']="Met la position dans le presse-papier",
        ['back']="Retour",
        ['spoiler']="Aileron",
        ['bumper_f']="Par-Choc avant",
        ['bumper_r']="Par-Choc arrière",
        ['skirt']="Bas de caisse",
        ['stockEngine']="Reprog moteur de série",
        ['brakes']="Freins",
        ['suspensions']="Suspensions",
        ['connectionDatabaseCheck']="Nous vous recherchons dans notre base de donnée",
        ['yourInformations']="Vos informations",
        ['notWhitelisted']="Désolé, vous n'êtes pas whitelisté, plus d'informations ici : ",
        ['password']="Mot de passe",
        ['forgetPasswordAdvice'] = "Si vous avez oublié votre mot de passe, merci de contacter un administrateur sur discord",
        ['validate'] = "Valider",
        ['wrongPassword'] = "Mauvais mot de passe",
        ['newCharacter'] = "Créer un nouveau personnage",
        ['characters'] = "Personnages",
        ['notAllowedToCreateMoreChar'] = "Désolé, vous n'avez pas le droit de créer plus de personnage",
        ['gender'] = "Genre",
        ['male'] = "Homme",
        ['female'] = "Femme",
        ['firstName'] = "Prénom",
        ['lastName'] = "Nom",
        ['useAPed'] = "Utiliser un ped",
        ['HadToBeVipToUsePed'] = "Désolé, vous devez être vip niveau "..config.minVipLlvToUsePed.." pour pouvoir utiliser des peds",
    
        ['petitBrestoi']="Et c'est alors que le petit brestois, jura mais un peu tard, de ne plus faire chambard, car il voyait germer en sont cerveau, bérénice cayenne conseille de guerre à l\'échafaud, et en avant la maritime les chevalier d\'la discipline, nous irons tous a pont-aniou, casser des caillou, comme des vrais piou pioou... Serons les rangs et marchons calmement, sous les drapeaux de la machine a carreau, Vivre sans soucis boire du purain bouffer de la merde, c'est le seul moyen de ne jamais creuver de fin, ZOB PUTE CALBUTE Toquet"
    }
}


function _(code)
    return (label[config.language][code] or "no label for "..(code or "nil").." in "..config.language)
end

function reverseLabel(resultText)
    for k, text in pairs(label[config.language]) do
        if text == resultText then
            return k
        end
    end
end