const config = {
    "DEFAULT":"https://raw.githubusercontent.com/PichotM/RPG-Inventory-UI/master/ui/assets/img/items/default.png",
    "WHISKEY":"https://raw.githubusercontent.com/PichotM/RPG-Inventory-UI/master/ui/assets/img/items/alcool.png",
    "BEER":"https://raw.githubusercontent.com/PichotM/RPG-Inventory-UI/master/ui/assets/img/items/beer.png",
    "BINOCULARS":"https://raw.githubusercontent.com/PichotM/RPG-Inventory-UI/master/ui/assets/img/items/binoculars.png",
    "CREDITCARD":"https://raw.githubusercontent.com/PichotM/RPG-Inventory-UI/master/ui/assets/img/items/cb.png",
    "MASK":"https://raw.githubusercontent.com/PichotM/RPG-Inventory-UI/master/ui/assets/img/items/mask.png",
    "SURFBOARD":"https://raw.githubusercontent.com/PichotM/RPG-Inventory-UI/master/ui/assets/img/items/surf.png",
    "WEED":"https://raw.githubusercontent.com/PichotM/RPG-Inventory-UI/master/ui/assets/img/items/weed.png",
    "STUNGUN":"https://www.gtabase.com/images/jch-optimize/ng/images_gta-5_weapons_handguns_stun-gun.webp",
    "SNIPERRIFLE":"https://www.gtabase.com/images/jch-optimize/ng/images_gta-5_weapons_sniper-rifles_sniper-rifle.webp",
    "COMBATPISTOL":"https://www.gtabase.com/images/jch-optimize/ng/images_gta-5_weapons_handguns_combat-pistol.webp",
    "BULLET":"https://raw.githubusercontent.com/PichotM/RPG-Inventory-UI/master/ui/assets/img/items/bullet.png",
    "METH":"https://raw.githubusercontent.com/PichotM/RPG-Inventory-UI/master/ui/assets/img/items/meth.png"
}

export function getImgFromCode(code) {
    return config[code] || config["DEFAULT"]
}

export function getRandomImageKey() {
    var keys = Object.keys(config);
    return keys[ keys.length * Math.random() << 0];
}