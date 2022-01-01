local allFuel = {
    'éthanol',
    'diesel',
    'bio-éthanol',
}

local noDiesel = {
    'éthanol',
    'bio-éthanol',
}

local ethanolOnly = {
    'éthanol',
}

local fullyElectric = {
    'électrique',
}

config.vehiclesInfo = {
    ["-713569950"] = {
        modelName = 'bus',
        fuelTypes = allFuel,
        tankSize = 250,
        consumption = 15.2,
        importantWheel = 0
    },
    ["-579747861"] = {
        modelName = 'scarab3',
        fuelTypes = allFuel,
        tankSize = 110,
        consumption = 86.2,
        importantWheel = 0
    },
    ["1033245328"] = {
        modelName = 'dinghy',
        fuelTypes = noDiesel,
        tankSize = 120,
        consumption = 45.8
    },
    ["444583674"] = {
        modelName = 'handler',
        fuelTypes = allFuel,
        tankSize = 90,
        consumption = 25.6,
        importantWheel = 0
    },
    ["-1295027632"] = {
        modelName = 'nimbus',
        fuelTypes = ethanolOnly,
        tankSize = 300,
        consumption = 75.9
    },
    ["-1809822327"] = {
        modelName = 'asea',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 5.7,
        importantWheel = 0
    },
    ["1641462412"] = {
        modelName = 'tractor',
        fuelTypes = noDiesel,
        tankSize = 30,
        consumption = 50.2,
        importantWheel = 2
    },
    ["-89291282"] = {
        modelName = 'felon2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.5,
        importantWheel = 2
    },
    ["16646064"] = {
        modelName = 'virgo3',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 5.5,
        importantWheel = 2
    },
    ["1753414259"] = {
        modelName = 'enduro',
        fuelTypes = noDiesel,
        tankSize = 18,
        consumption = 4.1,
        importantWheel = 0
    },
    ["2067820283"] = {
        modelName = 'tyrus',
        fuelTypes = noDiesel,
        tankSize = 68,
        consumption = 8.7,
        importantWheel = 2
    },
    ["788045382"] = {
        modelName = 'sanchez',
        fuelTypes = noDiesel,
        tankSize = 17,
        consumption = 3.9,
        importantWheel = 0
    },
    ["2006918058"] = {
        modelName = 'cavalcade',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 6.6,
        importantWheel = 0
    },
    ["822018448"] = {
        modelName = 'defiler',
        fuelTypes = allFuel,
        tankSize = 19,
        consumption = 5.3,
        importantWheel = 0
    },
    ["-312295511"] = {
        modelName = 'dune5',
        fuelTypes = allFuel,
        tankSize = 30,
        consumption = 4.9,
        importantWheel = 2
    },
    ["184361638"] = {
        modelName = 'freightcar',
        train = true
    },
    ["2016027501"] = {
        modelName = 'trailerlogs',
        trailer = true
    },
    ["-34623805"] = {
        modelName = 'policeb',
        fuelTypes = allFuel,
        tankSize = 25,
        consumption = 5.1,
        importantWheel = 0
    },
    ["-1145771600"] = {
        modelName = 'policeb1',
        fuelTypes = noDiesel,
        tankSize = 25,
        consumption = 5.6,
        importantWheel = 0
    },
    ["-1921512137"] = {
        modelName = 'policeb2',
        fuelTypes = noDiesel,
        tankSize = 17,
        consumption = 3.9,
        importantWheel = 0
    },
    ["-1207771834"] = {
        modelName = 'rebel',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.8,
        importantWheel = 2
    },
    ["745926877"] = {
        modelName = 'buzzard2',
        fuelTypes = ethanolOnly,
        tankSize = 175,
        consumption = 652.4
    },
    ["989381445"] = {
        modelName = 'sandking2',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.1,
        importantWheel = 2
    },
    ["86520421"] = {
        modelName = 'bf400',
        fuelTypes = noDiesel,
        tankSize = 18,
        consumption = 4.5,
        importantWheel = 0
    },
    ["-1671539132"] = {
        modelName = 'supervolito2',
        fuelTypes = ethanolOnly,
        tankSize = 220,
        consumption = 560.0
    },
    ["-1006919392"] = {
        modelName = 'cutter',
        fuelTypes = allFuel,
        tankSize = 180,
        consumption = 55.1,
        importantWheel = 0
    },
    ["-377465520"] = {
        modelName = 'penumbra',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.2,
        importantWheel = 2
    },
    ["1518533038"] = {
        modelName = 'hauler',
        fuelTypes = allFuel,
        tankSize = 420,
        consumption = 14.7,
        importantWheel = 2
    },
    ["-2096818938"] = {
        modelName = 'technical',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 7.8,
        importantWheel = 2
    },
    ["-1745203402"] = {
        modelName = 'gburrito',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.2,
        importantWheel = 2
    },
    ["-1207431159"] = {
        modelName = 'armytanker',
        trailer = true
    },
    ["1653666139"] = {
        modelName = 'pounder2',
        fuelTypes = allFuel,
        tankSize = 510,
        consumption = 14.1,
        importantWheel = 2
    },
    ["1491375716"] = {
        modelName = 'forklift',
        fuelTypes = noDiesel,
        tankSize = 40,
        consumption = 10.1,
        importantWheel = 2
    },
    ["-2045594037"] = {
        modelName = 'rebel2',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.5,
        importantWheel = 2
    },
    ["1043222410"] = {
        modelName = 'tula',
        fuelTypes = noDiesel,
        tankSize = 500,
        consumption = 120.8
    },
    ["-599568815"] = {
        modelName = 'sadler',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.5,
        importantWheel = 2
    },
    ["840387324"] = {
        modelName = 'monster4',
        fuelTypes = allFuel,
        tankSize = 90,
        consumption = 51.6,
        importantWheel = 0
    },
    ["1127131465"] = {
        modelName = 'fbi',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.3,
        importantWheel = 2
    },
    ["-1193103848"] = {
        modelName = 'zion2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.4,
        importantWheel = 2
    },
    ["-2076478498"] = {
        modelName = 'tractor2',
        fuelTypes = noDiesel,
        tankSize = 70,
        consumption = 20.5,
        importantWheel = 2
    },
    ["-825837129"] = {
        modelName = 'vigero',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.4,
        importantWheel = 2
    },
    ["-1860900134"] = {
        modelName = 'insurgent',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 15.4,
        importantWheel = 2
    },
    ["-150975354"] = {
        modelName = 'blimp',
        fuelTypes = ethanolOnly,
        tankSize = 60,
        consumption = 5.8
    },
    ["390201602"] = {
        modelName = 'cliffhanger',
        fuelTypes = allFuel,
        tankSize = 19,
        consumption = 4.3,
        importantWheel = 0
    },
    ["540101442"] = {
        modelName = 'zr380',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.7,
        importantWheel = 2
    },
    ["482197771"] = {
        modelName = 'lynx',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.1,
        importantWheel = 2
    },
    ["-1311154784"] = {
        modelName = 'cheetah',
        fuelTypes = noDiesel,
        tankSize = 65,
        consumption = 9.9,
        importantWheel = 2
    },
    ["330661258"] = {
        modelName = 'cogcabrio',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 5.8,
        importantWheel = 2
    },
    ["-1683328900"] = {
        modelName = 'sheriff',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.6,
        importantWheel = 2
    },
    ["-1066334226"] = {
        modelName = 'submersible2',
        fuelTypes = noDiesel,
        tankSize = 300,
        consumption = 65.9,
    },
    ["-2048333973"] = {
        modelName = 'italigtb',
        fuelTypes = noDiesel,
        tankSize = 65,
        consumption = 6.3,
        importantWheel = 2
    },
    ["867467158"] = {
        modelName = 'dinghy4',
        fuelTypes = noDiesel,
        tankSize = 120,
        consumption = 45.8
    },
    ["1531094468"] = {
        modelName = 'tornado2',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.2,
        importantWheel = 2
    },
    ["884422927"] = {
        modelName = 'habanero',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.4,
        importantWheel = 2
    },
    ["108773431"] = {
        modelName = 'coquette',
        fuelTypes = noDiesel,
        tankSize = 65,
        consumption = 6.7,
        importantWheel = 2
    },
    ["-1233807380"] = {
        modelName = 'tribike2',
        bike = true
    },
    ["-1529242755"] = {
        modelName = 'raiden',
        fuelTypes = fullyElectric,
        regeneration = true,
        tankSize = 70,
        consumption = 8.7,
        importantWheel = 0
    },
    ["2025593404"] = {
        modelName = 'cargobob4',
        fuelTypes = ethanolOnly,
        tankSize = 700,
        consumption = 1354.7
    },
    ["-784816453"] = {
        modelName = 'mixer',
        fuelTypes = allFuel,
        tankSize = 310,
        consumption = 13.5,
        importantWheel = 2
    },
    ["-604842630"] = {
        modelName = 'cognoscenti2',
        fuelTypes = allFuel,
        tankSize = 69,
        consumption = 6.3,
        importantWheel = 2
    },
    ["1069929536"] = {
        modelName = 'bobcatxl',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 6.6,
        importantWheel = 2
    },
    ["-1848994066"] = {
        modelName = 'neon',
        fuelTypes = fullyElectric,
        regeneration = true,
        tankSize = 75,
        consumption = 9.8,
        importantWheel = 0
    },
    ["1912215274"] = {
        modelName = 'police3',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.4,
        importantWheel = 2
    },
    ["-602287871"] = {
        modelName = 'btype3',
        fuelTypes = noDiesel,
        tankSize = 45,
        consumption = 11.6,
        importantWheel = 2
    },
    ["437538602"] = {
        modelName = 'speeder2',
        fuelTypes = noDiesel,
        tankSize = 200,
        consumption = 38.9,
    },
    ["-1961627517"] = {
        modelName = 'stretch',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 7.1,
        importantWheel = 2
    },
    ["1941029835"] = {
        modelName = 'tourbus',
        fuelTypes = allFuel,
        tankSize = 85,
        consumption = 7.9,
        importantWheel = 2
    },
    ["906642318"] = {
        modelName = 'cog55',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 5.8,
        importantWheel = 2
    },
    ["-1693015116"] = {
        modelName = 'riot2',
        fuelTypes = allFuel,
        tankSize = 130,
        consumption = 24.4,
        importantWheel = 2
    },
    ["240201337"] = {
        modelName = 'freightcont2',
        train = true
    },
    ["1981688531"] = {
        modelName = 'titan',
        fuelTypes = ethanolOnly,
        tankSize = 300,
        consumption = 90.0,  
    },
    ["1132262048"] = {
        modelName = 'burrito5',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.5,
        importantWheel = 2
    },
    ["-986944621"] = {
        modelName = 'dominator3',
        fuelTypes = allFuel,
        tankSize = 85,
        consumption = 18.1,
        importantWheel = 2
    },
    ["-1930048799"] = {
        modelName = 'windsor2',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.2,
        importantWheel = 2
    },
    ["2053223216"] = {
        modelName = 'benson',
        fuelTypes = allFuel,
        tankSize = 105,
        consumption = 8.2,
        importantWheel = 2
    },
    ["-909201658"] = {
        modelName = 'pcj',
        fuelTypes = noDiesel,
        tankSize = 20,
        consumption = 4.2,
        importantWheel = 0
    },
    ["-907477130"] = {
        modelName = 'burrito2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.5,
        importantWheel = 2
    },
    ["-399841706"] = {
        modelName = 'baletrailer',
        trailer = true
    },
    ["-1009268949"] = {
        modelName = 'zombiea',
        fuelTypes = allFuel,
        tankSize = 20,
        consumption = 5.1,
        importantWheel = 0
    },
    ["-282946103"] = {
        modelName = 'suntrap',
        fuelTypes = ethanolOnly,
        tankSize = 60,
        consumption = 5.8
    },
    ["1126868326"] = {
        modelName = 'bfinjection',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 7.6,
        importantWheel = 2
    },
    ["1770332643"] = {
        modelName = 'dloader',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.8,
        importantWheel = 2
    },
    ["1077420264"] = {
        modelName = 'velum2',
        fuelTypes = ethanolOnly,
        tankSize = 280,
        consumption = 48.0
    },
    ["101905590"] = {
        modelName = 'trophytruck',
        fuelTypes = noDiesel,
        tankSize = 95,
        consumption = 9.8,
        importantWheel = 2
    },
    ["-1523619738"] = {
        modelName = 'alphaz1',
        fuelTypes = ethanolOnly,
        tankSize = 150,
        consumption = 80.2
    },
    ["-27326686"] = {
        modelName = 'deathbike',
        fuelTypes = allFuel,
        tankSize = 22,
        consumption = 5.9,
        importantWheel = 0
    },
    ["837858166"] = {
        modelName = 'annihilator',
        fuelTypes = ethanolOnly,
        tankSize = 280,
        consumption = 754.2
    },
    ["1074745671"] = {
        modelName = 'specter2',
        fuelTypes = noDiesel,
        tankSize = 65,
        consumption = 6.1,
        importantWheel = 2
    },
    ["1279262537"] = {
        modelName = 'deviant',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.7,
        importantWheel = 2
    },
    ["1051415893"] = {
        modelName = 'jb700',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.3,
        importantWheel = 2
    },
    ["223240013"] = {
        modelName = 'cheetah2',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 11.1,
        importantWheel = 2
    },
    ["-591651781"] = {
        modelName = 'blista3',
        fuelTypes = allFuel,
        tankSize = 45,
        consumption = 6.1,
        importantWheel = 0
    },
    ["1177543287"] = {
        modelName = 'dubsta',
        fuelTypes = allFuel,
        tankSize = 80,
        consumption = 6.8,
        importantWheel = 0
    },
    ["1543134283"] = {
        modelName = 'valkyrie2',
        fuelTypes = ethanolOnly,
        tankSize = 450,
        consumption = 785.2
    },
    ["1504306544"] = {
        modelName = 'torero',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 6.1,
        importantWheel = 2
    },
    ["-616331036"] = {
        modelName = 'seashark2',
        fuelTypes = ethanolOnly,
        tankSize = 32.0,
        consumption = 35.4,
    },
    ["-313185164"] = {
        modelName = 'autarch',
        fuelTypes = noDiesel,
        tankSize = 70,
        consumption = 85.3,
        importantWheel = 2
    },
    ["387748548"] = {
        modelName = 'hauler2',
        fuelTypes = allFuel,
        tankSize = 470,
        consumption = 15.1,
        importantWheel = 2
    },
    ["886810209"] = {
        modelName = 'stromberg',
        fuelTypes = noDiesel,
        tankSize = 65,
        consumption = 7.8,
        importantWheel = 2
    },
    ["1909141499"] = {
        modelName = 'fugitive',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.3,
        importantWheel = 2
    },
    ["1663218586"] = {
        modelName = 't20',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.6,
        importantWheel = 2
    },
    ["-1532697517"] = {
        modelName = 'riata',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.7,
        importantWheel = 0
    },
    ["177270108"] = {
        modelName = 'phantom3',
        fuelTypes = allFuel,
        tankSize = 500,
        consumption = 12.8,
        importantWheel = 2
    },
    ["1784254509"] = {
        modelName = 'tr3',
        trailer = true
    },
    ["-893578776"] = {
        modelName = 'ruffian',
        fuelTypes = allFuel,
        tankSize = 20,
        consumption = 4.8,
        importantWheel = 0
    },
    ["679453769"] = {
        modelName = 'cerberus2',
        fuelTypes = allFuel,
        tankSize = 180,
        consumption = 12.5,
        importantWheel = 2
    },
    ["-1590337689"] = {
        modelName = 'blazer5',
        fuelTypes = allFuel,
        tankSize = 20,
        consumption = 4.9,
        importantWheel = 0
    },
    ["-2128233223"] = {
        modelName = 'blazer',
        fuelTypes = allFuel,
        tankSize = 23,
        consumption = 4.2,
        importantWheel = 2
    },
    ["1337041428"] = {
        modelName = 'serrano',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.3,
        importantWheel = 0
    },
    ["1923400478"] = {
        modelName = 'stalion',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 8.8,
        importantWheel = 2
    },
    ["1762279763"] = {
        modelName = 'tornado3',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.2,
        importantWheel = 2
    },
    ["-570033273"] = {
        modelName = 'zombieb',
        fuelTypes = allFuel,
        tankSize = 20,
        consumption = 5.1,
        importantWheel = 0
    },
    ["1537277726"] = {
        modelName = 'issi5',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 6.2,
        importantWheel = 2
    },
    ["-2119578145"] = {
        modelName = 'faction',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.1,
        importantWheel = 2
    },
    ["-49115651"] = {
        modelName = 'vamos',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.6,
        importantWheel = 2
    },
    ["1560980623"] = {
        modelName = 'airtug',
        regeneration = false,
        fuelTypes = fullyElectric,
        tankSize = 10,
        consumption = 10,
        importantWheel = 2
    },
    ["-50547061"] = {
        modelName = 'cargobob',
        fuelTypes = ethanolOnly,
        tankSize = 700,
        consumption = 1354.7
    },
    ["-746882698"] = {
        modelName = 'schwarzer',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.8,
        importantWheel = 2
    },
    ["-998177792"] = {
        modelName = 'visione',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 6.4,
        importantWheel = 2
    },
    ["-2022483795"] = {
        modelName = 'jester3',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 7.1,
        importantWheel = 2
    },
    ["-214906006"] = {
        modelName = 'comet3',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.6,
        importantWheel = 2
    },
    ["1909189272"] = {
        modelName = 'gb200',
        fuelTypes = noDiesel,
        tankSize = 45,
        consumption = 11.7,
        importantWheel = 2
    },
    ["1909189272"] = {
        modelName = 'brutus',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 12.8,
        importantWheel = 2
    },
    ["-1259134696"] = {
        modelName = 'flashgt',
        fuelTypes = noDiesel,
        tankSize = 45,
        consumption = 9.6,
        importantWheel = 2
    },
    ["-121446169"] = {
        modelName = 'kamacho',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 12.4,
        importantWheel = 2
    },
    ["-613725916"] = {
        modelName = 'blimp2',
        fuelTypes = ethanolOnly,
        tankSize = 60,
        consumption = 5.8
    },
    ["-827162039"] = {
        modelName = 'dune4',
        fuelTypes = allFuel,
        tankSize = 30,
        consumption = 4.9,
        importantWheel = 2
    },
    ["475220373"] = {
        modelName = 'mixer2',
        fuelTypes = allFuel,
        tankSize = 310,
        consumption = 13.5,
        importantWheel = 2
    },
    ["-1696146015"] = {
        modelName = 'bullet',
        fuelTypes = noDiesel,
        tankSize = 65,
        consumption = 9.1,
        importantWheel = 2
    },
    ["-1800170043"] = {
        modelName = 'gauntlet',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.5,
        importantWheel = 2
    },
    ["-1030275036"] = {
        modelName = 'seashark',
        fuelTypes = ethanolOnly,
        tankSize = 32.0,
        consumption = 35.4,
    },
    ["-748008636"] = {
        modelName = 'mesa2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.4,
        importantWheel = 2
    },
    ["-1660945322"] = {
        modelName = 'mamba',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.3,
        importantWheel = 2
    },
    ["384071873"] = {
        modelName = 'surano',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 6.2,
        importantWheel = 2
    },
    ["-1098802077"] = {
        modelName = 'rentalbus',
        fuelTypes = allFuel,
        tankSize = 85,
        consumption = 7.9,
        importantWheel = 2
    },
    ["-401643538"] = {
        modelName = 'stalion2',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 9.1,
        importantWheel = 2
    },
    ["-1374500452"] = {
        modelName = 'deathbike3',
        fuelTypes = allFuel,
        tankSize = 22,
        consumption = 6,
        importantWheel = 0
    },
    ["-1995326987"] = {
        modelName = 'feltzer2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.2,
        importantWheel = 2
    },
    ["1032823388"] = {
        modelName = 'ninef',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.3,
        importantWheel = 2
    },
    ["777714999"] = {
        modelName = 'ruiner3',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.9,
        importantWheel = 2
    },
    ["-2140210194"] = {
        modelName = 'docktrailer',
        trailer = true
    },
    ["1723137093"] = {
        modelName = 'stratum',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.8,
        importantWheel = 2
    },
    ["1886268224"] = {
        modelName = 'specter',
        fuelTypes = noDiesel,
        tankSize = 65,
        consumption = 5.9,
        importantWheel = 2
    },
    ["500482303"] = {
        modelName = 'swinger',
        fuelTypes = noDiesel,
        tankSize = 50,
        consumption = 6.7,
        importantWheel = 2
    },
    ["2123327359"] = {
        modelName = 'prototipo',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 9.8,
        importantWheel = 2
    },
    ["640818791"] = {
        modelName = 'lectro',
        fuelTypes = noDiesel,
        tankSize = 20,
        consumption = 4.7,
        importantWheel = 0
    },
    ["196747873"] = {
        modelName = 'elegy',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 5.5,
        importantWheel = 2
    },
    ["1692272545"] = {
        modelName = 'strikeforce',
        fuelTypes = ethanolOnly,
        tankSize = 240,
        consumption = 120.5
    },
    ["914654722"] = {
        modelName = 'mesa',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.4,
        importantWheel = 2
    },
    ["-2122757008"] = {
        modelName = 'stunt',
        fuelTypes = ethanolOnly,
        tankSize = 240,
        consumption = 45.1
    },
    ["-810318068"] = {
        modelName = 'speedo',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.9,
        importantWheel = 2
    },
    ["-624529134"] = {
        modelName = 'jackal',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.8,
        importantWheel = 2
    },
    ["-2130482718"] = {
        modelName = 'dump',
        fuelTypes = allFuel,
        tankSize = 280,
        consumption = 30.1,
        importantWheel = 2
    },
    ["1392481335"] = {
        modelName = 'cyclone',
        fuelTypes = fullyElectric,
        regeneration = true,
        tankSize = 125,
        consumption = 15,
        importantWheel = 2
    },
    ["1102544804"] = {
        modelName = 'verlierer2',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.9,
        importantWheel = 2
    },
    ["-186537451"] = {
        modelName = 'scorcher',
        bike = true
    },
    ["-1744505657"] = {
        modelName = 'impaler4',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 6.4,
        importantWheel = 2
    },
    ["-901163259"] = {
        modelName = 'dodo',
        fuelTypes = noDiesel,
        tankSize = 300,
        consumption = 60.2
    },
    ["-1779120616"] = {
        modelName = 'policeold2',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.6,
        importantWheel = 2
    },
    ["1507916787"] = {
        modelName = 'picador',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.8,
        importantWheel = 2
    },
    ["908897389"] = {
        modelName = 'toro2',
        fuelTypes = ethanolOnly,
        tankSize = 250,
        consumption = 40.2,
    },
    ["-1289178744"] = {
        modelName = 'faggio3',
        fuelTypes = noDiesel,
        tankSize = 15,
        consumption = 4.3,
        importantWheel = 0
    },
    ["-2058878099"] = {
        modelName = 'trailers3',
        trailer = true
    },
    ["2112052861"] = {
        modelName = 'pounder',
        fuelTypes = allFuel,
        tankSize = 510,
        consumption = 14.1,
        importantWheel = 2
    },
    ["1938952078"] = {
        modelName = 'firetruk',
        fuelTypes = allFuel,
        tankSize = 280,
        consumption = 12.4,
        importantWheel = 2
    },
    ["418536135"] = {
        modelName = 'infernus',
        fuelTypes = noDiesel,
        tankSize = 65,
        consumption = 6.3,
        importantWheel = 2
    },
    ["516990260"] = {
        modelName = 'utillitruck',
        fuelTypes = allFuel,
        tankSize = 90,
        consumption = 9.7,
        importantWheel = 2
    },
    ["920453016"] = {
        modelName = 'freightcont1',
        train = true
    },
    ["-1845487887"] = {
        modelName = 'volatus',
        fuelTypes = ethanolOnly,
        tankSize = 250,
        consumption = 612.0
    },
    ["1356124575"] = {
        modelName = 'technical3',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 7.8,
        importantWheel = 0
    },
    ["-755532233"] = {
        modelName = 'imperator3',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.5,
        importantWheel = 2
    },
    ["-609625092"] = {
        modelName = 'vortex',
        fuelTypes = noDiesel,
        tankSize = 22,
        consumption = 4.1,
        importantWheel = 0
    },
    ["-1661854193"] = {
        modelName = 'dune',
        fuelTypes = allFuel,
        tankSize = 45,
        consumption = 4.7,
        importantWheel = 2
    },
    ["710198397"] = {
        modelName = 'supervolito',
        fuelTypes = ethanolOnly,
        tankSize = 220,
        consumption = 560.0
    },
    ["-1478704292"] = {
        modelName = 'zr3803',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 7.2,
        importantWheel = 2
    },
    ["943752001"] = {
        modelName = 'pony2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 7.1,
        importantWheel = 2
    },
    ["1093792632"] = {
        modelName = 'nero2',
        fuelTypes = noDiesel,
        tankSize = 105,
        consumption = 23.5,
        importantWheel = 2
    },
    ["-692292317"] = {
        modelName = 'chernobog',
        fuelTypes = allFuel,
        tankSize = 190,
        consumption = 17.2,
        importantWheel = 2
    },
    ["903794909"] = {
        modelName = 'savestra',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.9,
        importantWheel = 2
    },
    ["-1757836725"] = {
        modelName = 'seven70',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 5.7,
        importantWheel = 2
    },
    ["-1289722222"] = {
        modelName = 'ingot',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.9,
        importantWheel = 0
    },
    ["850565707"] = {
        modelName = 'bjxl',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 6.8,
        importantWheel = 0
    },
    ["1456744817"] = {
        modelName = 'tulip',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.3,
        importantWheel = 2
    },
    ["1119641113"] = {
        modelName = 'slamvan3',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.5,
        importantWheel = 2
    },
    ["771711535"] = {
        modelName = 'submersible',
        fuelTypes = noDiesel,
        tankSize = 300,
        consumption = 65.9,
    },
    ["-730904777"] = {
        modelName = 'tanker',
        trailer = true
    },
    ["642617954"] = {
        modelName = 'freightgrain',
        train = true
    },
    ["165154707"] = {
        modelName = 'miljet',
        fuelTypes = ethanolOnly,
        tankSize = 300,
        consumption = 75.9
    },
    ["444994115"] = {
        modelName = 'imperator',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.1,
        importantWheel = 2
    },
    ["-566387422"] = {
        modelName = 'elegy2',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.9,
        importantWheel = 2
    },
    ["1036591958"] = {
        modelName = 'nokota',
        fuelTypes = ethanolOnly,
        tankSize = 120,
        consumption = 80.5
    },
    ["-48031959"] = {
        modelName = 'blazer2',
        fuelTypes = allFuel,
        tankSize = 26,
        consumption = 4.4,
        importantWheel = 2
    },
    ["1491277511"] = {
        modelName = 'sanctus',
        fuelTypes = noDiesel,
        tankSize = 19,
        consumption = 4.1,
        importantWheel = 0
    },
    ["904750859"] = {
        modelName = 'mule',
        fuelTypes = allFuel,
        tankSize = 160,
        consumption = 9.2,
        importantWheel = 2
    },
    ["433954513"] = {
        modelName = 'nightshark',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 7.8,
        importantWheel = 2
    },
    ["-42959138"] = {
        modelName = 'hunter',
        fuelTypes = ethanolOnly,
        tankSize = 240,
        consumption = 345.7,
    },
    ["2071877360"] = {
        modelName = 'insurgent2',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 16.2,
        importantWheel = 2
    },
    ["841808271"] = {
        modelName = 'rhapsody',
        fuelTypes = noDiesel,
        tankSize = 45,
        consumption = 5.6,
        importantWheel = 2
    },
    ["-1045541610"] = {
        modelName = 'comet2',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.6,
        importantWheel = 2
    },
    ["-1649536104"] = {
        modelName = 'phantom2',
        fuelTypes = allFuel,
        tankSize = 500,
        consumption = 15.9,
        importantWheel = 2
    },
    ["867799010"] = {
        modelName = 'pariah',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 6.4,
        importantWheel = 2
    },
    ["728614474"] = {
        modelName = 'speedo2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.9,
        importantWheel = 2
    },
    ["1945374990"] = {
        modelName = 'mule4',
        fuelTypes = allFuel,
        tankSize = 160,
        consumption = 9.2,
        importantWheel = 2
    },
    ["-1291952903"] = {
        modelName = 'entityxf',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 6.8,
        importantWheel = 2
    },
    ["668439077"] = {
        modelName = 'bruiser',
        fuelTypes = allFuel,
        tankSize = 110,
        consumption = 12.8,
        importantWheel = 2
    },
    ["-2033222435"] = {
        modelName = 'tornado4',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.4,
        importantWheel = 2
    },
    ["2006667053"] = {
        modelName = 'voodoo',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.5,
        importantWheel = 2
    },
    ["-1566607184"] = {
        modelName = 'clique',
        fuelTypes = noDiesel,
        tankSize = 50,
        consumption = 6.1,
        importantWheel = 2
    },
    ["-498054846"] = {
        modelName = 'virgo',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 5.5,
        importantWheel = 2
    },
    ["1591739866"] = {
        modelName = 'deveste',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 7.8,
        importantWheel = 2
    },
    ["534258863"] = {
        modelName = 'dune2',
        fuelTypes = allFuel,
        tankSize = 45,
        consumption = 4.9,
        importantWheel = 2
    },
    ["-2052737935"] = {
        modelName = 'mule3',
        fuelTypes = allFuel,
        tankSize = 160,
        consumption = 9.2,
        importantWheel = 2
    },
    ["1939284556"] = {
        modelName = 'vagner',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.7,
        importantWheel = 2
    },
    ["1131912276"] = {
        modelName = 'bmx',
        bike = true
    },
    ["92612664"] = {
        modelName = 'kalahari',
        fuelTypes = allFuel,
        tankSize = 40,
        consumption = 4.4,
        importantWheel = 2
    },
    ["741090084"] = {
        modelName = 'gargoyle',
        fuelTypes = allFuel,
        tankSize = 22,
        consumption = 5.1,
        importantWheel = 0
    },
    ["758895617"] = {
        modelName = 'ztype',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 7.4,
        importantWheel = 2
    },
    ["-410205223"] = {
        modelName = 'revolter',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.1,
        importantWheel = 2
    },
    ["1044954915"] = {
        modelName = 'skylift',
        fuelTypes = ethanolOnly,
        tankSize = 1150,
        consumption = 3207.4
    },
    ["1621617168"] = {
        modelName = 'cargobob2',
        fuelTypes = ethanolOnly,
        tankSize = 700,
        consumption = 1354.7
    },
    ["-2118308144"] = {
        modelName = 'avenger',
        fuelTypes = ethanolOnly,
        tankSize = 340,
        consumption = 212.0
    },
    ["408970549"] = {
        modelName = 'avenger2',
        fuelTypes = ethanolOnly,
        tankSize = 340,
        consumption = 212.0
    },
    ["-2124201592"] = {
        modelName = 'manana',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.9,
        importantWheel = 2
    },
    ["682434785"] = {
        modelName = 'boxville5',
        fuelTypes = allFuel,
        tankSize = 85,
        consumption = 8.1,
        importantWheel = 2
    },
    ["2035069708"] = {
        modelName = 'esskey',
        fuelTypes = noDiesel,
        tankSize = 20,
        consumption = 4.8,
        importantWheel = 0
    },
    ["-808831384"] = {
        modelName = 'baller',
        fuelTypes = allFuel,
        tankSize = 80,
        consumption = 6.2,
        importantWheel = 0
    },
    ["-2039755226"] = {
        modelName = 'faction3',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 7.2,
        importantWheel = 2
    },
    ["-212993243"] = {
        modelName = 'barrage',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 14.2,
        importantWheel = 2
    },
    ["2006142190"] = {
        modelName = 'daemon',
        fuelTypes = allFuel,
        tankSize = 20,
        consumption = 4.8,
        importantWheel = 0
    },
    ["-307958377"] = {
        modelName = 'blimp3',
        fuelTypes = ethanolOnly,
        tankSize = 60,
        consumption = 5.8
    },
    ["301427732"] = {
        modelName = 'hexer',
        fuelTypes = allFuel,
        tankSize = 19,
        consumption = 4.9,
        importantWheel = 0
    },
    ["296357396"] = {
        modelName = 'gburrito2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.2,
        importantWheel = 2
    },
    ["1221512915"] = {
        modelName = 'seminole',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.4,
        importantWheel = 2
    },
    ["-749299473"] = {
        modelName = 'mogul',
        fuelTypes = ethanolOnly,
        tankSize = 100,
        consumption = 80.1
    },
    ["-310465116"] = {
        modelName = 'minivan',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.8,
        importantWheel = 0
    },
    ["1841130506"] = {
        modelName = 'retinue',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.7,
        importantWheel = 2
    },
    ["390902130"] = {
        modelName = 'raketrailer',
        trailer = true
    },
    ["223258115"] = {
        modelName = 'sabregt2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.2,
        importantWheel = 2
    },
    ["-2040426790"] = {
        modelName = 'primo2',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.3,
        importantWheel = 2
    },
    ["-5153954"] = {
        modelName = 'exemplar',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.9,
        importantWheel = 2
    },
    ["159274291"] = {
        modelName = 'ardent',
        fuelTypes = noDiesel,
        tankSize = 65,
        consumption = 25,
        importantWheel = 2
    },
    ["-1435919434"] = {
        modelName = 'bodhi2',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 6.8,
        importantWheel = 2
    },
    ["-1536924937"] = {
        modelName = 'policeold1',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 6.1,
        importantWheel = 2
    },
    ["2072687711"] = {
        modelName = 'carbonizzare',
        fuelTypes = noDiesel,
        tankSize = 80,
        consumption = 8.9,
        importantWheel = 2
    },
    ["2072156101"] = {
        modelName = 'bison2',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 7.2,
        importantWheel = 2
    },
    ["1026149675"] = {
        modelName = 'youga2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.6,
        importantWheel = 2
    },
    ["-326143852"] = {
        modelName = 'dukes2',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 8.2,
        importantWheel = 2
    },
    ["321739290"] = {
        modelName = 'crusader',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.6,
        importantWheel = 0
    },
    ["-432008408"] = {
        modelName = 'xls2',
        fuelTypes = allFuel,
        tankSize = 58,
        consumption = 7.1,
        importantWheel = 0
    },
    ["-1670998136"] = {
        modelName = 'double',
        fuelTypes = allFuel,
        tankSize = 19,
        consumption = 4.3,
        importantWheel = 0
    },
    ["-1404136503"] = {
        modelName = 'daemon2',
        fuelTypes = allFuel,
        tankSize = 20,
        consumption = 4.7,
        importantWheel = 0
    },
    ["1180875963"] = {
        modelName = 'technical2',
        fuelTypes = allFuel,
        tankSize = 170,
        consumption = 8.1,
        importantWheel = 2
    },
    ["633712403"] = {
        modelName = 'banshee2',
        fuelTypes = noDiesel,
        tankSize = 75,
        consumption = 8.4,
        importantWheel = 2
    },
    ["-1323100960"] = {
        modelName = 'towtruck',
        fuelTypes = allFuel,
        tankSize = 90,
        consumption = 7.8,
        importantWheel = 2
    },
    ["1747439474"] = {
        modelName = 'stockade',
        fuelTypes = allFuel,
        tankSize = 80,
        consumption = 10.5,
        importantWheel = 2
    },
    ["-2137348917"] = {
        modelName = 'phantom',
        fuelTypes = allFuel,
        tankSize = 500,
        consumption = 12.8,
        importantWheel = 2
    },
    ["-1912017790"] = {
        modelName = 'wastelander',
        fuelTypes = allFuel,
        tankSize = 120,
        consumption = 12.1,
        importantWheel = 0
    },
    ["231083307"] = {
        modelName = 'speeder',
        fuelTypes = noDiesel,
        tankSize = 200,
        consumption = 38.9,
    },
    ["861409633"] = {
        modelName = 'jetmax',
        fuelTypes = noDiesel,
        tankSize = 200,
        consumption = 37.2,
    },
    ["-1943285540"] = {
        modelName = 'nightshade',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.7,
        importantWheel = 2
    },
    ["142944341"] = {
        modelName = 'baller2',
        fuelTypes = allFuel,
        tankSize = 85,
        consumption = 5.9,
        importantWheel = 0
    },
    ["-349601129"] = {
        modelName = 'bifta',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 5.8,
        importantWheel = 2
    },
    ["-1041692462"] = {
        modelName = 'banshee',
        fuelTypes = noDiesel,
        tankSize = 75,
        consumption = 8.2,
        importantWheel = 2
    },
    ["-757735410"] = {
        modelName = 'fcr2',
        fuelTypes = noDiesel,
        tankSize = 21,
        consumption = 4.4,
        importantWheel = 0
    },
    ["-975345305"] = {
        modelName = 'rogue',
        fuelTypes = ethanolOnly,
        tankSize = 115,
        consumption = 79.8
    },
    ["234062309"] = {
        modelName = 'reaper',
        fuelTypes = noDiesel,
        tankSize = 75,
        consumption = 6.3,
        importantWheel = 2
    },
    ["1922257928"] = {
        modelName = 'sheriff2',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 6.1,
        importantWheel = 2
    },
    ["-253767517"] = {
        modelName = 'sheriff3',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.4,
        importantWheel = 2
    },
    ["-801730735"] = {
        modelName = 'sheriff4',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.1,
        importantWheel = 2
    },
    ["-823509173"] = {
        modelName = 'barracks',
        fuelTypes = allFuel,
        tankSize = 315,
        consumption = 29.7,
        importantWheel = 2
    },
    ["-1372848492"] = {
        modelName = 'kuruma',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 5.8,
        importantWheel = 2
    },
    ["-2030171296"] = {
        modelName = 'cognoscenti',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 5.8,
        importantWheel = 2
    },
    ["470404958"] = {
        modelName = 'baller5',
        fuelTypes = allFuel,
        tankSize = 82,
        consumption = 8,
        importantWheel = 0
    },
    ["784565758"] = {
        modelName = 'coquette3',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 7.3,
        importantWheel = 2
    },
    ["1171614426"] = {
        modelName = 'ambulance',
        fuelTypes = allFuel,
        tankSize = 85,
        consumption = 7.5,
        importantWheel = 0
    },

    ["-66164407"] = {
        modelName = 'emsscout',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.8,
        importantWheel = 2
    },

    ["-524315614"] = {
        modelName = 'emsroamer',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 7.3,
        importantWheel = 2
    },
    ["-1825752590"] = {
        modelName = 'emscoroner',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.9,
        importantWheel = 2
    },
    
    ["1039450829"] = {
        modelName = 'emsspeedo',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 7.5,
        importantWheel = 2
    },

    
    ["2046537925"] = {
        modelName = 'police',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.6,
        importantWheel = 2
    },
    ["-618617997"] = {
        modelName = 'wolfsbane',
        fuelTypes = allFuel,
        tankSize = 22,
        consumption = 4.7,
        importantWheel = 0
    },
    ["723973206"] = {
        modelName = 'dukes',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 5.8,
        importantWheel = 2
    },
    ["-1214505995"] = {
        modelName = 'shamal',
        fuelTypes = ethanolOnly,
        tankSize = 300,
        consumption = 75.9
    },
    ["1917016601"] = {
        modelName = 'trash',
        fuelTypes = allFuel,
        tankSize = 120,
        consumption = 11.6,
        importantWheel = 2
    },
    ["-1842748181"] = {
        modelName = 'faggio',
        fuelTypes = noDiesel,
        tankSize = 15,
        consumption = 3.6,
        importantWheel = 0
    },
    ["1878062887"] = {
        modelName = 'baller3',
        fuelTypes = allFuel,
        tankSize = 86,
        consumption = 5.8,
        importantWheel = 0
    },
    ["-1606187161"] = {
        modelName = 'nightblade',
        fuelTypes = allFuel,
        tankSize = 19,
        consumption = 4.9,
        importantWheel = 0
    },
    ["-1189015600"] = {
        modelName = 'sandking',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.1,
        importantWheel = 2
    },
    ["-836512833"] = {
        modelName = 'fixter',
        bike = true
    },
    ["-688189648"] = {
        modelName = 'dominator4',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 11.9,
        importantWheel = 2
    },
    ["-1637149482"] = {
        modelName = 'armytrailer2',
        trailer = true
    },
    ["1581459400"] = {
        modelName = 'windsor',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.2,
        importantWheel = 2
    },
    ["-114627507"] = {
        modelName = 'limo2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.7,
        importantWheel = 2
    },
    ["569305213"] = {
        modelName = 'packer',
        fuelTypes = allFuel,
        tankSize = 600,
        consumption = 19.7,
        importantWheel = 2
    },
    ["1274868363"] = {
        modelName = 'bestiagts',
        fuelTypes = allFuel,
        tankSize = 80,
        consumption = 7.2,
        importantWheel = 2
    },
    ["15219735"] = {
        modelName = 'hermes',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.4,
        importantWheel = 2
    },
    ["683047626"] = {
        modelName = 'contender',
        fuelTypes = allFuel,
        tankSize = 80,
        consumption = 7.1,
        importantWheel = 0
    },
    ["1887331236"] = {
        modelName = 'tropos',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 7.5,
        importantWheel = 2
    },
    ["1104234922"] = {
        modelName = 'sentinel3',
        fuelTypes = noDiesel,
        tankSize = 45,
        consumption = 5.8,
        importantWheel = 2
    },
    ["-1566741232"] = {
        modelName = 'feltzer3',
        fuelTypes = noDiesel,
        tankSize = 50,
        consumption = 7.7,
        importantWheel = 2
    },
    ["524108981"] = {
        modelName = 'boattrailer',
        trailer = true
    },
    ["447548909"] = {
        modelName = 'volatol',
        fuelTypes = ethanolOnly,
        tankSize = 1500,
        consumption = 512.7
    },
    ["886934177"] = {
        modelName = 'intruder',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.6,
        importantWheel = 2
    },
    ["1127861609"] = {
        modelName = 'tribike',
        bike = true
    },
    ["-808457413"] = {
        modelName = 'patriot',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 6.2,
        importantWheel = 2
    },
    ["-1479664699"] = {
        modelName = 'brawler',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 6.9,
        importantWheel = 2
    },
    ["-311022263"] = {
        modelName = 'seashark3',
        fuelTypes = ethanolOnly,
        tankSize = 32.0,
        consumption = 35.4,
    },
    ["-674927303"] = {
        modelName = 'raptor',
        fuelTypes = noDiesel,
        tankSize = 45,
        consumption = 5.8,
        importantWheel = 2
    },
    ["6774487"] = {
        modelName = 'chimera',
        fuelTypes = allFuel,
        tankSize = 25,
        consumption = 5.4,
        importantWheel = 2
    },
    ["-2107990196"] = {
        modelName = 'guardian',
        fuelTypes = allFuel,
        tankSize = 80,
        consumption = 7.5,
        importantWheel = 2
    },
    ["2078290630"] = {
        modelName = 'tr2',
        trailer = true
    },
    ["-1361687965"] = {
        modelName = 'chino2',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 5.6,
        importantWheel = 2
    },
    ["1682114128"] = {
        modelName = 'dilettante2',
        fuelTypes = fullyElectric,
        regeneration = false,
        tankSize = 40,
        consumption = 10,
        importantWheel = 0
    },
    ["117401876"] = {
        modelName = 'btype',
        fuelTypes = noDiesel,
        tankSize = 45,
        consumption = 11.6,
        importantWheel = 2
    },
    ["-845979911"] = {
        modelName = 'ripley',
        fuelTypes = allFuel,
        tankSize = 130,
        consumption = 28.2,
        importantWheel = 2
    },
    ["-1375060657"] = {
        modelName = 'dominator5',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 19.1,
        importantWheel = 2
    },
    ["-2042350822"] = {
        modelName = 'bruiser3',
        fuelTypes = allFuel,
        tankSize = 110,
        consumption = 12.8,
        importantWheel = 2
    },
    ["1448677353"] = {
        modelName = 'tropic2',
        fuelTypes = noDiesel,
        tankSize = 220,
        consumption = 38.2,
    },
    ["1074326203"] = {
        modelName = 'barracks2',
        fuelTypes = allFuel,
        tankSize = 280,
        consumption = 25.2,
        importantWheel = 2
    },
    ["356391690"] = {
        modelName = 'proptrailer',
        trailer = true
    },
    ["734217681"] = {
        modelName = 'sadler2',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.5,
        importantWheel = 2
    },
    ["-789894171"] = {
        modelName = 'cavalcade2',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 6.6,
        importantWheel = 0
    },
    ["-1071380347"] = {
        modelName = 'tampa2',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.9,
        importantWheel = 2
    },
    ["736902334"] = {
        modelName = 'buffalo2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.9,
        importantWheel = 2
    },
    ["1181327175"] = {
        modelName = 'akula',
        fuelTypes = ethanolOnly,
        tankSize = 300,
        consumption = 790.5
    },
    ["719660200"] = {
        modelName = 'ruston',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 5.9,
        importantWheel = 2
    },
    ["-233098306"] = {
        modelName = 'boxville2',
        fuelTypes = allFuel,
        tankSize = 85,
        consumption = 8.1,
        importantWheel = 2
    },
    ["-982130927"] = {
        modelName = 'turismo2',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 7.4,
        importantWheel = 2
    },
    ["-638562243"] = {
        modelName = 'scramjet',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.8,
        importantWheel = 2
    },
    ["1742022738"] = {
        modelName = 'slamvan6',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 7.2,
        importantWheel = 2
    },
    ["699456151"] = {
        modelName = 'surfer',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 13.5,
        importantWheel = 2
    },
    ["2068293287"] = {
        modelName = 'lurcher',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.9,
        importantWheel = 2
    },
    ["456714581"] = {
        modelName = 'policet',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.9,
        importantWheel = 2
    },
    ["-344943009"] = {
        modelName = 'blista',
        fuelTypes = allFuel,
        tankSize = 45,
        consumption = 5.5,
        importantWheel = 0
    },
    ["-1973172295"] = {
        modelName = 'police4',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.6,
        importantWheel = 2
    },
    ["704435172"] = {
        modelName = 'cog552',
        fuelTypes = allFuel,
        tankSize = 68,
        consumption = 6.3,
        importantWheel = 2
    },
    ["219613597"] = {
        modelName = 'speedo4',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.9,
        importantWheel = 2
    },
    ["321186144"] = {
        modelName = 'stafford',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 9.8,
        importantWheel = 2
    },
    ["1030400667"] = {
        modelName = 'freight',
        train = true
    },
    ["2016857647"] = {
        modelName = 'futo',
        fuelTypes = allFuel,
        tankSize = 45,
        consumption = 5.6,
        importantWheel = 2
    },
    ["1721676810"] = {
        modelName = 'monster3',
        fuelTypes = allFuel,
        tankSize = 90,
        consumption = 50.3,
        importantWheel = 0
    },
    ["-1647941228"] = {
        modelName = 'fbi2',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 6.1,
        importantWheel = 2
    },
    ["-1386191424"] = {
        modelName = 'pyro',
        fuelTypes = ethanolOnly,
        tankSize = 210,
        consumption = 58.7
    },
    ["743478836"] = {
        modelName = 'sovereign',
        fuelTypes = allFuel,
        tankSize = 25,
        consumption = 5.1,
        importantWheel = 0
    },
    ["-1007528109"] = {
        modelName = 'howard',
        fuelTypes = ethanolOnly,
        tankSize = 80,
        consumption = 90.7
    },
    ["-391594584"] = {
        modelName = 'felon',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.5,
        importantWheel = 2
    },
    ["-1089039904"] = {
        modelName = 'furoregt',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.5,
        importantWheel = 2
    },
    ["400514754"] = {
        modelName = 'squalo',
        fuelTypes = ethanolOnly,
        tankSize = 200,
        consumption = 38.7,
    },
    ["1445631933"] = {
        modelName = 'tractor3',
        fuelTypes = noDiesel,
        tankSize = 70,
        consumption = 20.5,
        importantWheel = 2
    },
    ["-1106120762"] = {
        modelName = 'zr3802',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.9,
        importantWheel = 2
    },
    ["-1122289213"] = {
        modelName = 'zion',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.4,
        importantWheel = 2
    },
    ["-1984275979"] = {
        modelName = 'havok',
        fuelTypes = ethanolOnly,
        tankSize = 90,
        consumption = 224.4,
    },
    ["-1403128555"] = {
        modelName = 'zentorno',
        fuelTypes = noDiesel,
        tankSize = 65,
        consumption = 7.8,
        importantWheel = 2
    },
    ["-120287622"] = {
        modelName = 'journey',
        fuelTypes = allFuel,
        tankSize = 80,
        consumption = 9.7,
        importantWheel = 0
    },
    ["-1622444098"] = {
        modelName = 'voltic',
        fuelTypes = fullyElectric,
        regeneration = true,
        tankSize = 100,
        consumption = 12.6,
        importantWheel = 2
    },
    ["-1600252419"] = {
        modelName = 'valkyrie',
        fuelTypes = ethanolOnly,
        tankSize = 450,
        consumption = 785.2
    },
    ["-988501280"] = {
        modelName = 'cheburek',
        fuelTypes = allFuel,
        tankSize = 45,
        consumption = 6.1,
        importantWheel = 2
    },
    ["-391595372"] = {
        modelName = 'viseris',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.1,
        importantWheel = 2
    },
    ["-899509638"] = {
        modelName = 'virgo2',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 5.5,
        importantWheel = 2
    },
    ["-1746576111"] = {
        modelName = 'mammatus',
        fuelTypes = ethanolOnly,
        tankSize = 280,
        consumption = 50.2
    },
    ["-644710429"] = {
        modelName = 'cuban800',
        fuelTypes = ethanolOnly,
        tankSize = 400,
        consumption = 94.4
    },
    ["-1743316013"] = {
        modelName = 'burrito3',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.5,
        importantWheel = 2
    },
    ["-1694081890"] = {
        modelName = 'bruiser2',
        fuelTypes = allFuel,
        tankSize = 110,
        consumption = 12.8,
        importantWheel = 2
    },
    ["1162065741"] = {
        modelName = 'rumpo',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.9,
        importantWheel = 2
    },
    ["-1353081087"] = {
        modelName = 'vindicator',
        fuelTypes = allFuel,
        tankSize = 25,
        consumption = 4.7,
        importantWheel = 0
    },
    ["-1242608589"] = {
        modelName = 'vigilante',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 9.7,
        importantWheel = 2
    },
    ["1341619767"] = {
        modelName = 'vestra',
        fuelTypes = ethanolOnly,
        tankSize = 250,
        consumption = 51.0
    },
    ["-1311240698"] = {
        modelName = 'surfer2',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 13.5,
        importantWheel = 2
    },
    ["408192225"] = {
        modelName = 'turismor',
        fuelTypes = noDiesel,
        tankSize = 70,
        consumption = 9.5,
        importantWheel = 2
    },
    ["627094268"] = {
        modelName = 'romero',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.2,
        importantWheel = 2
    },
    ["-2115793025"] = {
        modelName = 'avarus',
        fuelTypes = allFuel,
        tankSize = 17,
        consumption = 4.24,
        importantWheel = 0
    },
    ["-286046740"] = {
        modelName = 'rcbandito',
        fuelTypes = fullyElectric,
        regeneration = false,
        tankSize = 0.06105,
        consumption = 0.06105,
        importantWheel = 2
    },
    ["-682211828"] = {
        modelName = 'buccaneer',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 6.8,
        importantWheel = 2
    },
    ["-140902153"] = {
        modelName = 'vader',
        fuelTypes = allFuel,
        tankSize = 20,
        consumption = 4.3,
        importantWheel = 0
    },
    ["11251904"] = {
        modelName = 'carbonrs',
        fuelTypes = allFuel,
        tankSize = 18,
        consumption = 5.1,
        importantWheel = 0
    },
    ["-1770643266"] = {
        modelName = 'tvtrailer',
        trailer = true
    },
    ["1348744438"] = {
        modelName = 'oracle',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.9,
        importantWheel = 2
    },
    ["-2100640717"] = {
        modelName = 'tug',
        fuelTypes = {
            'éthanol',
            'diesel',
        },
        tankSize = 1200.0,
        consumption = 350.4,
    },
    ["-663299102"] = {
        modelName = 'trophytruck2',
        fuelTypes = noDiesel,
        tankSize = 95,
        consumption = 10.1,
        importantWheel = 0
    },
    ["-400295096"] = {
        modelName = 'tribike3',
        bike = true
    },
    ["-1352468814"] = {
        modelName = 'trflat',
        trailer = true
    },
    ["-1255698084"] = {
        modelName = 'trash2',
        fuelTypes = allFuel,
        tankSize = 120,
        consumption = 11.6,
        importantWheel = 2
    },
    ["-960289747"] = {
        modelName = 'cablecar',
        train = true
    },
    ["-1881846085"] = {
        modelName = 'trailersmall2',
        trailer = true
    },
    ["1737773231"] = {
        modelName = 'rapidgt2',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 6.2,
        importantWheel = 2
    },
    ["931280609"] = {
        modelName = 'issi3',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 6.1,
        importantWheel = 0
    },
    ["-947761570"] = {
        modelName = 'tiptruck2',
        fuelTypes = allFuel,
        tankSize = 180,
        consumption = 15.8,
        importantWheel = 2
    },
    ["-442313018"] = {
        modelName = 'towtruck2',
        fuelTypes = allFuel,
        tankSize = 80,
        consumption = 8.4,
        importantWheel = 2
    },
    ["-1776615689"] = {
        modelName = 'rumpo2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.9,
        importantWheel = 2
    },
    ["-634879114"] = {
        modelName = 'nemesis',
        fuelTypes = noDiesel,
        tankSize = 19,
        consumption = 4.5,
        importantWheel = 0
    },
    ["1475773103"] = {
        modelName = 'rumpo3',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.9,
        importantWheel = 0
    },
    ["48339065"] = {
        modelName = 'tiptruck',
        fuelTypes = allFuel,
        tankSize = 180,
        consumption = 15.4,
        importantWheel = 2
    },
    ["1824333165"] = {
        modelName = 'besra',
        fuelTypes = ethanolOnly,
        tankSize = 180,
        consumption = 100.2,
    },
    ["-591610296"] = {
        modelName = 'f620',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.7,
        importantWheel = 2
    },
    ["-877478386"] = {
        modelName = 'trailers',
        trailer = true
    },
    ["-54332285"] = {
        modelName = 'freecrawler',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 8.5,
        importantWheel = 2
    },
    ["1645267888"] = {
        modelName = 'rancherxl',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 6.1,
        importantWheel = 2
    },
    ["1830407356"] = {
        modelName = 'peyote',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 5.8,
        importantWheel = 2
    },
    ["-1988428699"] = {
        modelName = 'terbyte',
        fuelTypes = noDiesel,
        tankSize = 180,
        consumption = 20.5,
        importantWheel = 2
    },
    ["-2072933068"] = {
        modelName = 'coach',
        fuelTypes = allFuel,
        tankSize = 210,
        consumption = 13.1,
        importantWheel = 2
    },
    ["-956048545"] = {
        modelName = 'taxi',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.6,
        importantWheel = 2
    },
    ["1234311532"] = {
        modelName = 'gp1',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 6.7,
        importantWheel = 2
    },
    ["628003514"] = {
        modelName = 'issi4',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 6.1,
        importantWheel = 2
    },
    ["-1210451983"] = {
        modelName = 'tampa3',
        fuelTypes = noDiesel,
        tankSize = 45,
        consumption = 5.8,
        importantWheel = 2
    },
    ["-1205801634"] = {
        modelName = 'blade',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.7,
        importantWheel = 2
    },
    ["-1255452397"] = {
        modelName = 'schafter2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.2,
        importantWheel = 2
    },
    ["-1008861746"] = {
        modelName = 'tailgater',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.3,
        importantWheel = 2
    },
    ["-339587598"] = {
        modelName = 'swift',
        fuelTypes = ethanolOnly,
        tankSize = 220,
        consumption = 564.0
    },
    ["1147287684"] = {
        modelName = 'caddy',
        regeneration = false,
        fuelTypes = fullyElectric,
        tankSize = 10,
        consumption = 10,
        importantWheel = 2
    },
    ["-1894894188"] = {
        modelName = 'surge',
        fuelTypes = fullyElectric,
        regeneration = true,
        tankSize = 100,
        consumption = 24.3,
        importantWheel = 0
    },
    ["-478643743"] = {
        modelName = 'police9',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 9.1,
        importantWheel = 2
    },
    ["-1417902848"] = {
        modelName = 'fbi3',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.9,
        importantWheel = 2
    },
    ["-1185144641"] = {
        modelName = 'fbi4',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 7.5,
        importantWheel = 2
    },
    ["-1038306700"] = {
        modelName = 'fbi5',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.5,
        importantWheel = 2
    },
    ["-799748380"] = {
        modelName = 'fbi6',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.3,
        importantWheel = 2
    },
    ["-560501911"] = {
        modelName = 'fbi7',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.1,
        importantWheel = 2
    },
    ["-319518737"] = {
        modelName = 'fbi8',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.3,
        importantWheel = 2
    },
    ["-295689028"] = {
        modelName = 'sultanrs',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.3,
        importantWheel = 2
    },
    ["887537515"] = {
        modelName = 'utillitruck2',
        fuelTypes = allFuel,
        tankSize = 90,
        consumption = 8.9,
        importantWheel = 2
    },
    ["-214455498"] = {
        modelName = 'stockade3',
        fuelTypes = allFuel,
        tankSize = 80,
        consumption = 10.5,
        importantWheel = 2
    },
    ["-2098947590"] = {
        modelName = 'stingergt',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 9.1,
        importantWheel = 2
    },
    ["-1685021548"] = {
        modelName = 'sabregt',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.9,
        importantWheel = 2
    },
    ["-1700874274"] = {
        modelName = 'starling',
        fuelTypes = ethanolOnly,
        tankSize = 130,
        consumption = 40.25
    },
    ["-142942670"] = {
        modelName = 'massacro',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.1,
        importantWheel = 2
    },
    ["1897744184"] = {
        modelName = 'dune3',
        fuelTypes = allFuel,
        tankSize = 45,
        consumption = 4.9,
        importantWheel = 2
    },
    ["1488164764"] = {
        modelName = 'paradise',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.3,
        importantWheel = 2
    },
    ["276773164"] = {
        modelName = 'dinghy2',
        fuelTypes = noDiesel,
        tankSize = 120,
        consumption = 45.8
    },
    ["1031562256"] = {
        modelName = 'tezeract',
        fuelTypes = fullyElectric,
        regeneration = true,
        tankSize = 120,
        consumption = 12.5,
        importantWheel = 2
    },
    ["-405626514"] = {
        modelName = 'shotaro',
        fuelTypes = noDiesel,
        tankSize = 20,
        consumption = 5,
        importantWheel = 0
    },
    ["-726768679"] = {
        modelName = 'seasparrow',
        fuelTypes = ethanolOnly,
        tankSize = 160,
        consumption = 210.1
    },
    ["-392675425"] = {
        modelName = 'seabreeze',
        fuelTypes = ethanolOnly,
        tankSize = 250,
        consumption = 55.0
    },
    ["-1700801569"] = {
        modelName = 'scrap',
        fuelTypes = allFuel,
        tankSize = 80,
        consumption = 8.2,
        importantWheel = 2
    },
    ["-845961253"] = {
        modelName = 'monster',
        fuelTypes = allFuel,
        tankSize = 90,
        consumption = 50.3,
        importantWheel = 2
    },
    ["-507495760"] = {
        modelName = 'schlagen',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 7.1,
        importantWheel = 2
    },
    ["630371791"] = {
        modelName = 'barracks3',
        fuelTypes = allFuel,
        tankSize = 315,
        consumption = 29.5,
        importantWheel = 2
    },
    ["-1883869285"] = {
        modelName = 'premier',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.7,
        importantWheel = 0
    },
    ["55628203"] = {
        modelName = 'faggio2',
        fuelTypes = noDiesel,
        tankSize = 15,
        consumption = 4.1,
        importantWheel = 0
    },
    ["368211810"] = {
        modelName = 'cargoplane',
        fuelTypes = ethanolOnly,
        tankSize = 1500.0,
        consumption = 500.0,
    },
    ["-82626025"] = {
        modelName = 'savage',
        fuelTypes = ethanolOnly,
        tankSize = 240,
        consumption = 321.8,
    },
    ["-1453280962"] = {
        modelName = 'sanchez2',
        fuelTypes = noDiesel,
        tankSize = 17,
        consumption = 3.9,
        importantWheel = 0
    },
    ["1549126457"] = {
        modelName = 'brioso',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 5.6,
        importantWheel = 0
    },
    ["941800958"] = {
        modelName = 'casco',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 6.8,
        importantWheel = 2
    },
    ["410882957"] = {
        modelName = 'kuruma2',
        fuelTypes = allFuel,
        tankSize = 63,
        consumption = 6.4,
        importantWheel = 2
    },
    ["-239841468"] = {
        modelName = 'diablous',
        fuelTypes = allFuel,
        tankSize = 20,
        consumption = 4.8,
        importantWheel = 0
    },
    ["-227741703"] = {
        modelName = 'ruiner',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.8,
        importantWheel = 2
    },
    ["1876516712"] = {
        modelName = 'camper',
        fuelTypes = allFuel,
        tankSize = 90,
        consumption = 15.8,
        importantWheel = 0
    },
    ["-1705304628"] = {
        modelName = 'rubble',
        fuelTypes = allFuel,
        tankSize = 210,
        consumption = 10.4,
        importantWheel = 2
    },
    ["-1924800695"] = {
        modelName = 'impaler3',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 5.8,
        importantWheel = 2
    },
    ["-1205689942"] = {
        modelName = 'riot',
        fuelTypes = allFuel,
        tankSize = 90,
        consumption = 14.5,
        importantWheel = 2
    },
    ["-14495224"] = {
        modelName = 'regina',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.9,
        importantWheel = 2
    },
    ["-1673356438"] = {
        modelName = 'velum',
        fuelTypes = ethanolOnly,
        tankSize = 270,
        consumption = 48.2
    },
    ["-589178377"] = {
        modelName = 'ratloader2',
        fuelTypes = allFuel,
        tankSize = 45,
        consumption = 6.6,
        importantWheel = 2
    },
    ["-631760477"] = {
        modelName = 'massacro2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.7,
        importantWheel = 2
    },
    ["-667151410"] = {
        modelName = 'ratloader',
        fuelTypes = noDiesel,
        tankSize = 45,
        consumption = 6.8,
        importantWheel = 2
    },
    ["1741861769"] = {
        modelName = 'streiter',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.9,
        importantWheel = 0
    },
    ["349605904"] = {
        modelName = 'chino',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 5.5,
        importantWheel = 2
    },
    ["-1763555241"] = {
        modelName = 'microlight',
        fuelTypes = ethanolOnly,
        tankSize = 20,
        consumption = 15.4,
    },
    ["338562499"] = {
        modelName = 'vacca',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 7.6,
        importantWheel = 2
    },
    ["-2103821244"] = {
        modelName = 'rallytruck',
        fuelTypes = allFuel,
        tankSize = 130,
        consumption = 28.7,
        importantWheel = 0
    },
    ["989294410"] = {
        modelName = 'voltic2',
        fuelTypes = fullyElectric,
        regeneration = true,
        tankSize = 90,
        consumption = 13.2,
        importantWheel = 2
    },
    ["-1177863319"] = {
        modelName = 'issi2',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 5.1,
        importantWheel = 0
    },
    ["1873600305"] = {
        modelName = 'ratbike',
        fuelTypes = noDiesel,
        tankSize = 20,
        consumption = 4.9,
        importantWheel = 0
    },
    ["1489874736"] = {
        modelName = 'thruster',
        fuelTypes = ethanolOnly,
        tankSize = 5.0,
        consumption = 50.2
    },
    ["373261600"] = {
        modelName = 'slamvan5',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.8,
        importantWheel = 2
    },
    ["-1651067813"] = {
        modelName = 'radi',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.9,
        importantWheel = 0
    },
    ["-537896628"] = {
        modelName = 'caddy2',
        fuelTypes = fullyElectric,
        regeneration = false,
        tankSize = 10,
        consumption = 10,
        importantWheel = 2
    },
    ["1058115860"] = {
        modelName = 'jet',
        fuelTypes = ethanolOnly,
        tankSize = 1500.0,
        consumption = 500.0,
    },
    ["-1150599089"] = {
        modelName = 'primo',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.2,
        importantWheel = 2
    },
    ["-1485523546"] = {
        modelName = 'schafter3',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.2,
        importantWheel = 2
    },
    ["729783779"] = {
        modelName = 'slamvan',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.8,
        importantWheel = 2
    },
    ["-1523428744"] = {
        modelName = 'manchez',
        fuelTypes = noDiesel,
        tankSize = 19,
        consumption = 3.8,
        importantWheel = 0
    },
    ["-433375717"] = {
        modelName = 'monroe',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 11.1,
        importantWheel = 2
    },
    ["970356638"] = {
        modelName = 'duster',
        fuelTypes = ethanolOnly,
        tankSize = 215,
        consumption = 68.4
    },
    ["-769147461"] = {
        modelName = 'caddy3',
        regeneration = false,
        fuelTypes = fullyElectric,
        tankSize = 10,
        consumption = 10,
        importantWheel = 2
    },
    ["782665360"] = {
        modelName = 'rhino',
        fuelTypes = noDiesel,
        tankSize = 200,
        consumption = 80.1,
        importantWheel = 0
    },
    ["-159126838"] = {
        modelName = 'innovation',
        fuelTypes = allFuel,
        tankSize = 22,
        consumption = 4.7,
        importantWheel = 0
    },
    ["1987142870"] = {
        modelName = 'osiris',
        fuelTypes = noDiesel,
        tankSize = 80,
        consumption = 13.9,
        importantWheel = 2
    },
    ["-1450650718"] = {
        modelName = 'prairie',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.7,
        importantWheel = 0
    },
    ["-2140431165"] = {
        modelName = 'bagger',
        fuelTypes = allFuel,
        tankSize = 23,
        consumption = 3.8,
        importantWheel = 0
    },
    ["-119658072"] = {
        modelName = 'pony',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.9,
        importantWheel = 2
    },
    ["1672195559"] = {
        modelName = 'akuma',
        fuelTypes = noDiesel,
        tankSize = 22,
        consumption = 4.1,
        importantWheel = 0
    },
    ["-2061049099"] = {
        modelName = 'slamvan4',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.8,
        importantWheel = 2
    },
    ["-884690486"] = {
        modelName = 'docktug',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 11.9,
        importantWheel = 2
    },
    ["-431692672"] = {
        modelName = 'panto',
        fuelTypes = noDiesel,
        tankSize = 30,
        consumption = 4.3,
        importantWheel = 2
    },
    ["-1627000575"] = {
        modelName = 'police2',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.5,
        importantWheel = 2
    },
    ["-1674384553"] = {
        modelName = 'police5',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.6,
        importantWheel = 2
    },
    ["-1291872016"] = {
        modelName = 'police6',
        fuelTypes = allFuel,
        tankSize = 90,
        consumption = 12.4,
        importantWheel = 2
    },
    ["-994755493"] = {
        modelName = 'police7',
        fuelTypes = allFuel,
        tankSize = 120,
        consumption = 16.1,
        importantWheel = 2
    },
    ["-793815985"] = {
        modelName = 'police8',
        fuelTypes = allFuel,
        tankSize = 120,
        consumption = 16.1,
        importantWheel = 2
    },
    ["-2095439403"] = {
        modelName = 'phoenix',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.1,
        importantWheel = 2
    },
    ["-488123221"] = {
        modelName = 'predator',
        fuelTypes = noDiesel,
        tankSize = 135,
        consumption = 60.4
    },
    ["2136773105"] = {
        modelName = 'rocoto',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.4,
        importantWheel = 0
    },
    ["-1829802492"] = {
        modelName = 'pfister811',
        fuelTypes = noDiesel,
        tankSize = 70,
        consumption = 6.8,
        importantWheel = 2
    },
    ["1373123368"] = {
        modelName = 'warrener',
        fuelTypes = noDiesel,
        tankSize = 45,
        consumption = 5.8,
        importantWheel = 2
    },
    ["1777363799"] = {
        modelName = 'washington',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.7,
        importantWheel = 2
    },
    ["-1758137366"] = {
        modelName = 'penetrator',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 6.8,
        importantWheel = 2
    },
    ["1075432268"] = {
        modelName = 'swift2',
        fuelTypes = ethanolOnly,
        tankSize = 220,
        consumption = 564.0
    },
    ["-2007026063"] = {
        modelName = 'pbus',
        fuelTypes = allFuel,
        tankSize = 100,
        consumption = 8.4,
        importantWheel = 2
    },
    ["712162987"] = {
        modelName = 'trailersmall',
        trailer = true
    },
    ["-420911112"] = {
        modelName = 'patriot2',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 7.3,
        importantWheel = 2
    },
    ["1070967343"] = {
        modelName = 'toro',
        fuelTypes = ethanolOnly,
        tankSize = 250,
        consumption = 40.2,
    },
    ["2132890591"] = {
        modelName = 'utillitruck3',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.5,
        importantWheel = 2
    },
    ["1039032026"] = {
        modelName = 'blista2',
        fuelTypes = allFuel,
        tankSize = 45,
        consumption = 6.1,
        importantWheel = 0
    },
    ["-331467772"] = {
        modelName = 'italigto',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 6.1,
        importantWheel = 2
    },
    ["2091594960"] = {
        modelName = 'tr4',
        trailer = true
    },
    ["-511601230"] = {
        modelName = 'oracle2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.9,
        importantWheel = 2
    },
    ["1483171323"] = {
        modelName = 'deluxo',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 5.3,
        importantWheel = 2
    },
    ["-777172681"] = {
        modelName = 'omnis',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 6.8,
        importantWheel = 2
    },
    ["-1461482751"] = {
        modelName = 'ninef2',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.3,
        importantWheel = 2
    },
    ["448402357"] = {
        modelName = 'cruiser',
        bike = true
    },
    ["1949211328"] = {
        modelName = 'frogger2',
        fuelTypes = ethanolOnly,
        tankSize = 400,
        consumption = 758.1
    },
    ["634118882"] = {
        modelName = 'baller4',
        fuelTypes = allFuel,
        tankSize = 90,
        consumption = 6.3,
        importantWheel = 0
    },
    ["525509695"] = {
        modelName = 'moonbeam',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.2,
        importantWheel = 2
    },
    ["-394074634"] = {
        modelName = 'dubsta2',
        fuelTypes = allFuel,
        tankSize = 80,
        consumption = 6.8,
        importantWheel = 0
    },
    ["-1214293858"] = {
        modelName = 'luxor2',
        fuelTypes = ethanolOnly,
        tankSize = 350,
        consumption = 76.2
    },
    ["-1168952148"] = {
        modelName = 'toros',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.7,
        importantWheel = 2
    },
    ["1933662059"] = {
        modelName = 'rancherxl2',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 6.1,
        importantWheel = 2
    },
    ["972671128"] = {
        modelName = 'tampa',
        fuelTypes = noDiesel,
        tankSize = 45,
        consumption = 5.8,
        importantWheel = 2
    },
    ["1034187331"] = {
        modelName = 'nero',
        fuelTypes = noDiesel,
        tankSize = 100,
        consumption = 22.5,
        importantWheel = 2
    },
    ["1951180813"] = {
        modelName = 'taco',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 8.1,
        importantWheel = 2
    },
    ["-409512831"] = {
        modelName = 'taco2',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 8.1,
        importantWheel = 2
    },
    ["-1050465301"] = {
        modelName = 'mule2',
        fuelTypes = allFuel,
        tankSize = 160,
        consumption = 9.2,
        importantWheel = 2
    },
    ["-715746948"] = {
        modelName = 'monster5',
        fuelTypes = allFuel,
        tankSize = 90,
        consumption = 51.7,
        importantWheel = 0
    },
    ["272929391"] = {
        modelName = 'tempesta',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 7,
        importantWheel = 2
    },
    ["349315417"] = {
        modelName = 'gauntlet2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.7,
        importantWheel = 2
    },
    ["767087018"] = {
        modelName = 'alpha',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.5,
        importantWheel = 2
    },
    ["1352136073"] = {
        modelName = 'sc1',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 6.8,
        importantWheel = 2
    },
    ["666166960"] = {
        modelName = 'baller6',
        fuelTypes = allFuel,
        tankSize = 88,
        consumption = 9.4,
        importantWheel = 0
    },
    ["1269098716"] = {
        modelName = 'landstalker',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 6,
        importantWheel = 2
    },
    ["-1346687836"] = {
        modelName = 'burrito',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.9,
        importantWheel = 2
    },
    ["65402552"] = {
        modelName = 'youga',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.6,
        importantWheel = 2
    },
    ["970598228"] = {
        modelName = 'sultan',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.8,
        importantWheel = 2
    },
    ["-2064372143"] = {
        modelName = 'mesa3',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 6.7,
        importantWheel = 2
    },
    ["1545842587"] = {
        modelName = 'stinger',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 8.8,
        importantWheel = 2
    },
    ["1922255844"] = {
        modelName = 'schafter6',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.8,
        importantWheel = 2
    },
    ["741586030"] = {
        modelName = 'pranger',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 6.1,
        importantWheel = 0
    },
    ["523724515"] = {
        modelName = 'voodoo2',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.7,
        importantWheel = 2
    },
    ["-16948145"] = {
        modelName = 'bison',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 7.2,
        importantWheel = 2
    },
    ["2049897956"] = {
        modelName = 'rapidgt3',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 6.6,
        importantWheel = 2
    },
    ["1283517198"] = {
        modelName = 'airbus',
        fuelTypes = allFuel,
        tankSize = 250,
        consumption = 25.7
    },
    ["444171386"] = {
        modelName = 'boxville4',
        fuelTypes = allFuel,
        tankSize = 85,
        consumption = 8.1,
        importantWheel = 2
    },
    ["80636076"] = {
        modelName = 'dominator',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 11.9,
        importantWheel = 2
    },
    ["-1477580979"] = {
        modelName = 'stanier',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.9,
        importantWheel = 2
    },
    ["-1043459709"] = {
        modelName = 'marquis',
        fuelTypes = ethanolOnly,
        tankSize = 1.0,
        consumption = 0.0
    },
    ["121658888"] = {
        modelName = 'boxville3',
        fuelTypes = allFuel,
        tankSize = 85,
        consumption = 8.1,
        importantWheel = 2
    },
    ["1790834270"] = {
        modelName = 'diablous2',
        fuelTypes = allFuel,
        tankSize = 20,
        consumption = 4.8,
        importantWheel = 0
    },
    ["-1232836011"] = {
        modelName = 'le7b',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 6.8,
        importantWheel = 2
    },
    ["-1281684762"] = {
        modelName = 'lazer',
        fuelTypes = ethanolOnly,
        tankSize = 280,
        consumption = 80.4,
    },
    ["1739845664"] = {
        modelName = 'bison3',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 7.4,
        importantWheel = 2
    },
    ["-831834716"] = {
        modelName = 'btype2',
        fuelTypes = allFuel,
        tankSize = 45,
        consumption = 15.2,
        importantWheel = 2
    },
    ["884483972"] = {
        modelName = 'oppressor',
        fuelTypes = noDiesel,
        tankSize = 20,
        consumption = 15.2,
        importantWheel = 0
    },
    ["1896491931"] = {
        modelName = 'moonbeam2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.4,
        importantWheel = 2
    },
    ["353883353"] = {
        modelName = 'polmav',
        fuelTypes = ethanolOnly,
        tankSize = 145,
        consumption = 850.0
    },
    ["-577031001"] = {
        modelName = 'polmav2',
        fuelTypes = ethanolOnly,
        tankSize = 145,
        consumption = 850.0
    },
    ["-1106353882"] = {
        modelName = 'jester2',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.4,
        importantWheel = 2
    },
    ["-32878452"] = {
        modelName = 'bombushka',
        fuelTypes = ethanolOnly,
        tankSize = 350,
        consumption = 215.0
    },
    ["-1297672541"] = {
        modelName = 'jester',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.1,
        importantWheel = 2
    },
    ["1203490606"] = {
        modelName = 'xls',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.4,
        importantWheel = 0
    },
    ["-482719877"] = {
        modelName = 'italigtb2',
        fuelTypes = noDiesel,
        tankSize = 65,
        consumption = 6.3,
        importantWheel = 2
    },
    ["290013743"] = {
        modelName = 'tropic',
        fuelTypes = noDiesel,
        tankSize = 220,
        consumption = 38.2,
    },
    ["-1924433270"] = {
        modelName = 'insurgent3',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 15.4,
        importantWheel = 2
    },
    ["469291905"] = {
        modelName = 'lguard',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 6.3,
        importantWheel = 2
    },
    ["-1216765807"] = {
        modelName = 'adder',
        fuelTypes = ethanolOnly,
        tankSize = 98,
        consumption = 21.7,
        importantWheel = 2
    },
    ["744705981"] = {
        modelName = 'frogger',
        fuelTypes = ethanolOnly,
        tankSize = 400,
        consumption = 758.1
    },
    ["1489967196"] = {
        modelName = 'schafter4',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.3,
        importantWheel = 2
    },
    ["893081117"] = {
        modelName = 'burrito4',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.5,
        importantWheel = 2
    },
    ["-1435527158"] = {
        modelName = 'khanjali',
        fuelTypes = allFuel,
        tankSize = 120,
        consumption = 25.4,
        importantWheel = 2
    },
    ["873639469"] = {
        modelName = 'sentinel2',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.6,
        importantWheel = 2
    },
    ["-1807623979"] = {
        modelName = 'asea2',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 5.7,
        importantWheel = 0
    },
    ["1836027715"] = {
        modelName = 'thrust',
        fuelTypes = allFuel,
        tankSize = 22,
        consumption = 4.8,
        importantWheel = 0
    },
    ["-304802106"] = {
        modelName = 'buffalo',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.9,
        importantWheel = 2
    },
    ["1909700336"] = {
        modelName = 'cerberus3',
        fuelTypes = allFuel,
        tankSize = 180,
        consumption = 12.5,
        importantWheel = 2
    },
    ["-32236122"] = {
        modelName = 'halftrack',
        fuelTypes = allFuel,
        tankSize = 90,
        consumption = 15.6,
        importantWheel = 2
    },
    ["464687292"] = {
        modelName = 'tornado',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.1,
        importantWheel = 2
    },
    ["-255678177"] = {
        modelName = 'hakuchou2',
        fuelTypes = noDiesel,
        tankSize = 25,
        consumption = 5.8,
        importantWheel = 0
    },
    ["-2079788230"] = {
        modelName = 'gt500',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.3,
        importantWheel = 2
    },
    ["1565978651"] = {
        modelName = 'molotok',
        fuelTypes = ethanolOnly,
        tankSize = 100,
        consumption = 80.1
    },
    ["-1543762099"] = {
        modelName = 'gresley',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.7,
        importantWheel = 0
    },
    ["-1775728740"] = {
        modelName = 'granger',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 6.1,
        importantWheel = 0
    },
    ["-1137532101"] = {
        modelName = 'fq2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.4,
        importantWheel = 2
    },
    ["37348240"] = {
        modelName = 'hotknife',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 5.8,
        importantWheel = 2
    },
    ["788747387"] = {
        modelName = 'buzzard',
        fuelTypes = ethanolOnly,
        tankSize = 175,
        consumption = 652.4
    },
    ["-114291515"] = {
        modelName = 'bati',
        fuelTypes = noDiesel,
        tankSize = 22,
        consumption = 5.2,
        importantWheel = 0
    },
    ["345756458"] = {
        modelName = 'pbus2',
        fuelTypes = allFuel,
        tankSize = 100,
        consumption = 9.8,
        importantWheel = 2
    },
    ["-1790546981"] = {
        modelName = 'faction2',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.1,
        importantWheel = 2
    },
    ["1426219628"] = {
        modelName = 'fmj',
        fuelTypes = noDiesel,
        tankSize = 65,
        consumption = 9.7,
        importantWheel = 2
    },
    ["1886712733"] = {
        modelName = 'bulldozer',
        fuelTypes = allFuel,
        tankSize = 100,
        consumption = 40.1,
        importantWheel = 0
    },
    ["819197656"] = {
        modelName = 'sheava',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 6.3,
        importantWheel = 2
    },
    ["917809321"] = {
        modelName = 'xa21',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 6.8,
        importantWheel = 0
    },
    ["544021352"] = {
        modelName = 'khamelion',
        fuelTypes = fullyElectric,
        regeneration = true,
        tankSize = 60,
        consumption = 8.8,
        importantWheel = 2
    },
    ["850991848"] = {
        modelName = 'biff',
        fuelTypes = allFuel,
        tankSize = 360,
        consumption = 28.1,
        importantWheel = 2
    },
    ["627535535"] = {
        modelName = 'fcr',
        fuelTypes = noDiesel,
        tankSize = 21,
        consumption = 4.4,
        importantWheel = 0
    },
    ["-1797613329"] = {
        modelName = 'tornado5',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.1,
        importantWheel = 2
    },
    ["-1241712818"] = {
        modelName = 'emperor3',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.8,
        importantWheel = 2
    },
    ["-1883002148"] = {
        modelName = 'emperor2',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.8,
        importantWheel = 2
    },
    ["941494461"] = {
        modelName = 'ruiner2',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.8,
        importantWheel = 2
    },
    ["-1660661558"] = {
        modelName = 'maverick',
        fuelTypes = ethanolOnly,
        tankSize = 145,
        consumption = 780.3
    },
    ["833469436"] = {
        modelName = 'slamvan2',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.6,
        importantWheel = 2
    },
    ["-888242983"] = {
        modelName = 'schafter5',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.8,
        importantWheel = 2
    },
    ["-1237253773"] = {
        modelName = 'dubsta3',
        fuelTypes = allFuel,
        tankSize = 90,
        consumption = 15.7,
        importantWheel = 2
    },
    ["586013744"] = {
        modelName = 'tankercar',
        train = true
    },
    ["621481054"] = {
        modelName = 'luxor',
        fuelTypes = ethanolOnly,
        tankSize = 350,
        consumption = 76.2
    },
    ["-2096690334"] = {
        modelName = 'impaler',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 5.8,
        importantWheel = 2
    },
    ["509498602"] = {
        modelName = 'dinghy3',
        fuelTypes = noDiesel,
        tankSize = 120,
        consumption = 45.8
    },
    ["486987393"] = {
        modelName = 'huntley',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.4,
        importantWheel = 2
    },
    ["-915704871"] = {
        modelName = 'dominator2',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 12.4,
        importantWheel = 2
    },
    ["-1130810103"] = {
        modelName = 'dilettante',
        fuelTypes = fullyElectric,
        regeneration = false,
        tankSize = 40,
        consumption = 10,
        importantWheel = 0
    },
    ["-1405937764"] = {
        modelName = 'infernus2',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 6.7,
        importantWheel = 2
    },
    ["-1812949672"] = {
        modelName = 'deathbike2',
        fuelTypes = allFuel,
        tankSize = 22,
        consumption = 6.1,
        importantWheel = 0
    },
    ["-1934452204"] = {
        modelName = 'rapidgt',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 6.2,
        importantWheel = 2
    },
    ["-1558399629"] = {
        modelName = 'tornado6',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.9,
        importantWheel = 2
    },
    ["-1903012613"] = {
        modelName = 'asterope',
        fuelTypes = allFuel,
        tankSize = 52,
        consumption = 5.3,
        importantWheel = 2
    },
    ["1123216662"] = {
        modelName = 'superd',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 6.1,
        importantWheel = 2
    },
    ["1239571361"] = {
        modelName = 'issi6',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 6.4,
        importantWheel = 2
    },
    ["-801550069"] = {
        modelName = 'cerberus',
        fuelTypes = allFuel,
        tankSize = 180,
        consumption = 12.5,
        importantWheel = 2
    },
    ["1542143200"] = {
        modelName = 'scarab2',
        fuelTypes = allFuel,
        tankSize = 110,
        consumption = 86.2,
        importantWheel = 0
    },
    ["1353720154"] = {
        modelName = 'flatbed',
        fuelTypes = allFuel,
        tankSize = 210,
        consumption = 9.7,
        importantWheel = 2
    },
    ["-1126264336"] = {
        modelName = 'minivan2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.8,
        importantWheel = 0
    },
    ["1265391242"] = {
        modelName = 'hakuchou',
        fuelTypes = noDiesel,
        tankSize = 25,
        consumption = 5.6,
        importantWheel = 0
    },
    ["-440768424"] = {
        modelName = 'blazer4',
        fuelTypes = allFuel,
        tankSize = 22,
        consumption = 5.3,
        importantWheel = 0
    },
    ["970385471"] = {
        modelName = 'hydra',
        fuelTypes = ethanolOnly,
        tankSize = 280,
        consumption = 80.4,
    },
    ["1956216962"] = {
        modelName = 'tanker2',
        trailer = true
    },
    ["562680400"] = {
        modelName = 'apc',
        fuelTypes = ethanolOnly,
        tankSize = 200,
        consumption = 92.6,
        importantWheel = 0
    },
    ["1115909093"] = {
        modelName = 'hotring',
        fuelTypes = noDiesel,
        tankSize = 45,
        consumption = 6.4,
        importantWheel = 2
    },
    ["-1013450936"] = {
        modelName = 'buccaneer2',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 7.4,
        importantWheel = 2
    },
    ["1011753235"] = {
        modelName = 'coquette2',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 7,
        importantWheel = 2
    },
    ["-305727417"] = {
        modelName = 'brickade',
        fuelTypes = allFuel,
        tankSize = 240,
        consumption = 17.3,
        importantWheel = 2
    },
    ["-1987130134"] = {
        modelName = 'boxville',
        fuelTypes = allFuel,
        tankSize = 85,
        consumption = 8.1,
        importantWheel = 2
    },
    ["237764926"] = {
        modelName = 'buffalo3',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 7.3,
        importantWheel = 2
    },
    ["-1269889662"] = {
        modelName = 'blazer3',
        fuelTypes = allFuel,
        tankSize = 18,
        consumption = 5.2,
        importantWheel = 2
    },
    ["-1579533167"] = {
        modelName = 'trailers2',
        trailer = true
    },
    ["1637620610"] = {
        modelName = 'imperator2',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.1,
        importantWheel = 2
    },
    --[[["1862507111"] = {
        modelName = 'zion3',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 7.3,
        importantWheel = erreur
    },]]
    ["1233534620"] = {
        modelName = 'marshall',
        fuelTypes = allFuel,
        tankSize = 80,
        consumption = 60.1,
        importantWheel = 2
    },
    ["499169875"] = {
        modelName = 'fusilade',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.6,
        importantWheel = 2
    },
    ["75131841"] = {
        modelName = 'glendale',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 5.7,
        importantWheel = 2
    },
    ["2069146067"] = {
        modelName = 'oppressor2',
        fuelTypes = noDiesel,
        tankSize = 20,
        consumption = 15.2,
        importantWheel = 0
    },
    ["1009171724"] = {
        modelName = 'impaler2',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 6.2,
        importantWheel = 2
    },
    ["2044532910"] = {
        modelName = 'menacer',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 7.7,
        importantWheel = 0
    },
    ["1349725314"] = {
        modelName = 'sentinel',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.6,
        importantWheel = 2
    },
    ["-1146969353"] = {
        modelName = 'scarab',
        fuelTypes = allFuel,
        tankSize = 110,
        consumption = 86.2,
        importantWheel = 0
    },
    ["-891462355"] = {
        modelName = 'bati2',
        fuelTypes = noDiesel,
        tankSize = 22,
        consumption = 5.6,
        importantWheel = 0
    },
    ["1871995513"] = {
        modelName = 'yosemite',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.7,
        importantWheel = 2
    },
    ["-685276541"] = {
        modelName = 'emperor',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 5.8,
        importantWheel = 2
    },
    ["1783355638"] = {
        modelName = 'mower',
        fuelTypes = noDiesel,
        tankSize = 10,
        consumption = 3.6,
        importantWheel = 0
    },
    ["1019737494"] = {
        modelName = 'graintrailer',
        trailer = true
    },
    ["1394036463"] = {
        modelName = 'cargobob3',
        fuelTypes = ethanolOnly,
        tankSize = 700,
        consumption = 1354.7
    },
    ["1561920505"] = {
        modelName = 'comet4',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 7.1,
        importantWheel = 2
    },
    ["1078682497"] = {
        modelName = 'pigalle',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.6,
        importantWheel = 0
    },
    ["-324618589"] = {
        modelName = 's80',
        fuelTypes = ethanolOnly,
        tankSize = 55,
        consumption = 6.6,
        importantWheel = 2
    },
    ["-447711397"] = {
        modelName = 'paragon',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 5.9,
        importantWheel = 2
    },
    ["1416466158"] = {
        modelName = 'paragon2',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.5,
        importantWheel = 2
    },
    ["686471183"] = {
        modelName = 'drafter',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.1,
        importantWheel = 0
    },
    ["1044193113"] = {
        modelName = 'thrax',
        fuelTypes = ethanolOnly,
        tankSize = 90,
        consumption = 29.7,
        importantWheel = 0
    },
    ["-1349095620"] = {
        modelName = 'caracara2',
        fuelTypes = {
            'éthanol',
            'diesel',
        },
        tankSize = 95,
        consumption = 7.6,
        importantWheel = 0
    },
    ["1854776567"] = {
        modelName = 'issi7',
        fuelTypes = ethanolOnly,
        tankSize = 50,
        consumption = 5.9,
        importantWheel = 2
    },
    ["-1620126302"] = {
        modelName = 'neo',
        fuelTypes = ethanolOnly,
        tankSize = 60,
        consumption = 7.2,
        importantWheel = 0
    },
    ["722226637"] = {
        modelName = 'gauntlet3',
        fuelTypes = {
            'éthanol',
            'diesel',
        },
        tankSize = 70,
        consumption = 10.2,
        importantWheel = 2
    },
    ["1934384720"] = {
        modelName = 'gauntlet4',
        fuelTypes = {
            'éthanol',
            'diesel',
        },
        tankSize = 80,
        consumption = 13.5,
        importantWheel = 2
    },
    ["1323778901"] = {
        modelName = 'emerus',
        fuelTypes = ethanolOnly,
        tankSize = 80,
        consumption = 28.3,
        importantWheel = 2
    },
    ["-882629065"] = {
        modelName = 'nebula',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 4.9,
        importantWheel = 2
    },
    ["-941272559"] = {
        modelName = 'locust',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.9,
        importantWheel = 2
    },
    ["310284501"] = {
        modelName = 'dynasty',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 4.5,
        importantWheel = 2
    },
    ["-362150785"] = {
        modelName = 'hellion',
        fuelTypes = allFuel,
        tankSize = 80,
        consumption = 8.3,
        importantWheel = 0
    },
    ["-208911803"] = {
        modelName = 'jugular',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 12.7,
        importantWheel = 2
    },
    ["-664141241"] = {
        modelName = 'krieger',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.8,
        importantWheel = 2
    },
    ["-1829436850"] = {
        modelName = 'novak',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 7.9,
        importantWheel = 0
    },
    ["-1804415708"] = {
        modelName = 'peyote2',
        fuelTypes = {
            'éthanol',
            'diesel',
        },
        tankSize = 70,
        consumption = 8.9,
        importantWheel = 2
    },
    ["916547552"] = {
        modelName = 'rrocket',
        fuelTypes = ethanolOnly,
        tankSize = 30,
        consumption = 15.0,
        importantWheel = 2
    },
    ["-682108547"] = {
        modelName = 'zorrusso',
        fuelTypes = {
            'éthanol',
            'diesel',
        },
        tankSize = 70,
        consumption = 22.2,
        importantWheel = 2
    },
    ["1118611807"] = {
        modelName = 'asbo',
        fuelTypes = allFuel,
        tankSize = 40,
        consumption = 2.4,
        importantWheel = 2
    },
    ["-1756021720"] = {
        modelName = 'everon',
        fuelTypes = {
            'éthanol',
            'diesel',
        },
        tankSize = 90,
        consumption = 10.8,
        importantWheel = 0
    },
    ["-834353991"] = {
        modelName = 'komoda',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 16.4,
        importantWheel = 2
    },
    ["2031587082"] = {
        modelName = 'retinue2',
        fuelTypes = {
            'éthanol',
            'diesel',
        },
        tankSize = 60,
        consumption = 12.5,
        importantWheel = 2
    },
    ["83136452"] = {
        modelName = 'rebla',
        fuelTypes = allFuel,
        tankSize = 90,
        consumption = 12.6,
        importantWheel = 2
    },
    ["740289177"] = {
        modelName = 'vagrant',
        fuelTypes = ethanolOnly,
        tankSize = 30,
        consumption = 5.5,
        importantWheel = 2
    },
    ["960812448"] = {
        modelName = 'furia',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 25.4,
        importantWheel = 2
    },
    ["1284356689"] = {
        modelName = 'zhaba',
        fuelTypes = ethanolOnly,
        tankSize = 150,
        consumption = 30.0,
        importantWheel = 2
    },
    ["872704284"] = {
        modelName = 'sultan2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 13.2,
        importantWheel = 2
    },
    ["408825843"] = {
        modelName = 'outlaw',
        fuelTypes = allFuel,
        tankSize = 30,
        consumption = 6.5,
        importantWheel = 2
    },
    ["1693751655"] = {
        modelName = 'yosemite2',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 15.8,
        importantWheel = 2
    },
    ["987469656"] = {
        modelName = 'sugoi',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 9.5,
        importantWheel = 0
    },
    ["409049982"] = {
        modelName = 'kanjo',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 7.5,
        importantWheel = 0
    },
    ["301304410"] = {
        modelName = 'stryder',
        fuelTypes = allFuel,
        tankSize = 20,
        consumption = 3.0,
        importantWheel = 2
    },
    ["394110044"] = {
        modelName = 'jb7002',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 8.5,
        importantWheel = 2
    },
    ["-1132721664"] = {
        modelName = 'imorgon',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 12.5,
        importantWheel = 0
    },
    ["1456336509"] = {
        modelName = 'vstr',
        fuelTypes = allFuel,
        tankSize = 80,
        consumption = 17.4,
        importantWheel = 2
    },
    ["340154634"] = {
        modelName = 'formula',
        fuelTypes = ethanolOnly,
        tankSize = 30,
        consumption = 30.0,
        importantWheel = 2
    },
    ["-1960756985"] = {
        modelName = 'formula2',
        fuelTypes = ethanolOnly,
        tankSize = 30,
        consumption = 30.0,
        importantWheel = 2
    },
    ["-2098954619"] = {
        modelName = 'club',
        fuelTypes = allFuel,
        tankSize = 50,
        consumption = 4.0,
        importantWheel = 0
    },
    ["2134119907"] = {
        modelName = 'dukes3',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 8.6,
        importantWheel = 2
    },
    ["-2122646867"] = {
        modelName = 'gauntlet5',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 12.5,
        importantWheel = 2
    },
    ["67753863"] = {
        modelName = 'yosemite3',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 12.5,
        importantWheel = 2
    },
    ["1492612435"] = {
        modelName = 'openwheel1',
        fuelTypes = ethanolOnly,
        tankSize = 30,
        consumption = 30.0,
        importantWheel = 2
    },
    ["1181339704"] = {
        modelName = 'openwheel2',
        fuelTypes = ethanolOnly,
        tankSize = 30,
        consumption = 30.0,
        importantWheel = 2
    },
    ["-838099166"] = {
        modelName = 'landstalker2',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 6.0,
        importantWheel = 2
    },
    ["-1810806490"] = {
        modelName = 'seminole2',
        fuelTypes = allFuel,
        tankSize = 80,
        consumption = 7.0,
        importantWheel = 2
    },
    ["-913589546"] = {
        modelName = 'glendale2',
        fuelTypes = {
            'éthanol',
            'diesel',
        },
        tankSize = 60,
        consumption = 5.5,
        importantWheel = 2
    },
    ["-1728685474"] = {
        modelName = 'coquette4',
        fuelTypes = ethanolOnly,
        tankSize = 70,
        consumption = 12.5,
        importantWheel = 2
    },
    ["-631322662"] = {
        modelName = 'penumbra2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 8.0,
        importantWheel = 0
    },
    ["1717532765"] = {
        modelName = 'manana2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.5,
        importantWheel = 2
    },
    ["1107404867"] = {
        modelName = 'peyote3',
        fuelTypes = {
            'éthanol',
            'diesel',
        },
        tankSize = 50,
        consumption = 8.5,
        importantWheel = 2
    },
    ["-1358197432"] = {
        modelName = 'tigon',
        fuelTypes = ethanolOnly,
        tankSize = 60,
        consumption = 18.4,
        importantWheel = 2
    },
    ["1802742206"] = {
        modelName = 'youga3',
        fuelTypes = allFuel,
        tankSize = 80,
        consumption = 7.2,
        importantWheel = 2
    },
    ["-1706603682"] = {
        modelName = 'avisa',
        fuelTypes = noDiesel,
        tankSize = 120,
        consumption = 45.6,
    },
    ["-980573366"] = {
        modelName = 'dinghy5',
        fuelTypes = noDiesel,
        tankSize = 110,
        consumption = 48.5,
    },
    ["1336872304"] = {
        modelName = 'kosatka',
        fuelTypes = noDiesel,
        tankSize = 2000,
        consumption = 150.0,
    },
    ["1861786828"] = {
        modelName = 'longfin',
        fuelTypes = noDiesel,
        tankSize = 150,
        consumption = 60.0,
    },
    ["-276744698"] = {
        modelName = 'patrolboat',
        fuelTypes = noDiesel,
        tankSize = 200,
        consumption = 40.0,
    },
    ["1429622905"] = {
        modelName = 'brioso2',
        fuelTypes = allFuel,
        tankSize = 40,
        consumption = 4.0,
        importantWheel = 2
    },
    ["1644055914"] = {
        modelName = 'weevil',
        fuelTypes = allFuel,
        tankSize = 40,
        consumption = 4.5,
        importantWheel = 2
    },
    ["295054921"] = {
        modelName = 'annihilator2',
        fuelTypes = noDiesel,
        tankSize = 200,
        consumption = 754.2,
    },
    ["1229411063"] = {
        modelName = 'seasparrow2',
        fuelTypes = allFuel,
        tankSize = 100,
        consumption = 350.4,
        importantWheel = 2
    },
    ["1593933419"] = {
        modelName = 'seasparrow3',
        fuelTypes = allFuel,
        tankSize = 100,
        consumption = 350.4,
        importantWheel = 2
    },
    ["2014313426"] = {
        modelName = 'vetir',
        fuelTypes = ethanolOnly,
        tankSize = 150,
        consumption = 7.5,
        importantWheel = 2
    },
    ["1086534307"] = {
        modelName = 'manchez2',
        fuelTypes = ethanolOnly,
        tankSize = 19,
        consumption = 3.8,
        importantWheel = 0
    },
    ["298565713"] = {
        modelName = 'verus',
        fuelTypes = ethanolOnly,
        tankSize = 19,
        consumption = 3.8,
        importantWheel = 2
    },
    ["-210308634"] = {
        modelName = 'winky',
        fuelTypes = ethanolOnly,
        tankSize = 70,
        consumption = 6.0,
        importantWheel = 2
    },
    ["-365873403"] = {
        modelName = 'alkonost',
        fuelTypes = ethanolOnly,
        tankSize = 2000,
        consumption = 600.0,
        importantWheel = 2
    },
    ["-102335483"] = {
        modelName = 'squaddie',
        fuelTypes = ethanolOnly,
        tankSize = 110,
        consumption = 9.0,
        importantWheel = 2
    },
    ["-1149725334"] = {
        modelName = 'italirsx',
        fuelTypes = ethanolOnly,
        tankSize = 60,
        consumption = 29.2,
        importantWheel = 2
    },
    ["-857356038"] = {
        modelName = 'veto',
        fuelTypes = ethanolOnly,
        tankSize = 10,
        consumption = 1.5,
        importantWheel = 0
    },
    ["-1492917079"] = {
        modelName = 'veto2',
        fuelTypes = ethanolOnly,
        tankSize = 10,
        consumption = 1.5,
        importantWheel = 0
    },
    ["1455990255"] = {
        modelName = 'toreador',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 15.4,
        importantWheel = 2
    },
    ["-1045911276"] = {
        modelName = 'slamtruck',
        fuelTypes = allFuel,
        tankSize = 80,
        consumption = 20.0,
        importantWheel = 2
    },

    ["2139203625"] = {
        modelName = 'brutus',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 9.0,
        importantWheel = 2
    },
    ["-1890996696"] = {
        modelName = 'brutus2',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 9.0,
        importantWheel = 2
    },
    ["2038858402"] = {
        modelName = 'brutus3',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 9.0,
        importantWheel = 2
    },
    ["2038858402"] = {
        modelName = 'brutus3',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 9.0,
        importantWheel = 2
    },
    ["-1267543371"] = {
        modelName = 'ellie',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.8,
        importantWheel = 2
    },
    ["600450546"] = {
        modelName = 'hustler',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 7.8,
        importantWheel = 2
    },

    ["-1293924613"] = {
        modelName = 'dominator6',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 19.1,
        importantWheel = 2
    },
    ["1254014755"] = {
        modelName = 'caracara',
        fuelTypes = {
            'éthanol',
            'diesel',
        },
        tankSize = 95,
        consumption = 7.6,
        importantWheel = 0
    },
    ["661493923"] = {
        modelName = 'comet5',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.4,
        importantWheel = 2
    },
    ["1617472902"] = {
        modelName = 'fagaloa',
        fuelTypes = noDiesel,
        tankSize = 75,
        consumption = 6.5,
        importantWheel = 2
    },
    ["1046206681"] = {
        modelName = 'michelli',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 7.2,
        importantWheel = 2
    },
    ["838982985"] = {
        modelName = 'z190',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 14.4,
        importantWheel = 2
    },
    ["1862507111"] = {
        modelName = 'zion3',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 7.3
    },

    ["-376434238"] = {
        modelName = 'tyrant',
        fuelTypes = noDiesel,
        tankSize = 70,
        consumption = 9.9,
        importantWheel = 2
    },
    ["-1134706562"] = {
        modelName = 'taipan',
        fuelTypes = noDiesel,
        tankSize = 65,
        consumption = 7.4,
        importantWheel = 2
    },
    ["-2120700196"] = {
        modelName = 'entity2',
        fuelTypes = noDiesel,
        tankSize = 64,
        consumption = 6.5,
        importantWheel = 2
    },
    ["-74027062"] = {
        modelName = 'newsvan',
        fuelTypes = allFuel,
        tankSize = 75,
        consumption = 7.5,
        importantWheel = 2
    },
    ["-1470089635"] = {
        modelName = 'newsmav',
        fuelTypes = ethanolOnly,
        tankSize = 145,
        consumption = 850.0
    },
    ["-477396552"] = {
        modelName = 'foodcar',
        fuelTypes = allFuel,
        tankSize = 45,
        consumption = 6.1,
        importantWheel = 0
    },
    ["-1662714101"] = {
        modelName = 'foodcar2',
        fuelTypes = allFuel,
        tankSize = 45,
        consumption = 5.5,
        importantWheel = 0
    },
    ["1806048398"] = {
        modelName = 'foodcar3',
        fuelTypes = fullyElectric,
        regeneration = false,
        tankSize = 40,
        consumption = 10,
        importantWheel = 0
    },
    ["946779680"] = {
        modelName = 'foodcar4',
        fuelTypes = noDiesel,
        tankSize = 30,
        consumption = 4.3,
        importantWheel = 2
    },
    ["-2027301995"] = {
        modelName = 'foodcar5',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 7.1,
        importantWheel = 2
    },
    ["1236861718"] = {
        modelName = 'foodbike',
        fuelTypes = noDiesel,
        tankSize = 15,
        consumption = 3.9,
        importantWheel = 0
    },
    ["-1184640984"] = {
        modelName = 'foodbike2',
        fuelTypes = noDiesel,
        tankSize = 15,
        consumption = 4.5,
        importantWheel = 0
    },
    

    -- Los Santos Tuners --

    ["1416471345"] = {
        modelName = 'previon',
        fuelTypes = noDiesel,
        tankSize = 45,
        consumption = 5.8,
        importantWheel = 2
    },

    ["426742808"] = {
        modelName = 'dominator7',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 9.2,
        importantWheel = 2
    },
    ["736672010"] = {
        modelName = 'dominator8',
        fuelTypes = noDiesel,
        tankSize = 80,
        consumption = 18.5,
        importantWheel = 2
    },
    ["-1244461404"] = {
        modelName = 'tailgater2',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.1,
        importantWheel = 2
    },
    ["-1858654120"] = {
        modelName = 'zr350',
        fuelTypes = {
            'éthanol',
            'diesel',
        },
        tankSize = 55,
        consumption = 6.9,
        importantWheel = 2
    },
    ["-1193912403"] = {
        modelName = 'calico',
        fuelTypes = {
            'éthanol',
            'diesel',
        },
        tankSize = 50,
        consumption = 7.5,
        importantWheel = 2
    },

    ["-1507230520"] = {
        modelName = 'futo2',
        fuelTypes = allFuel,
        tankSize = 45,
        consumption = 6.4,
        importantWheel = 2
    },
    ["2038480341"] = {
        modelName = 'euros',
        fuelTypes = noDiesel,
        tankSize = 55,
        consumption = 6.8,
        importantWheel = 2
    },
    ["-1582061455"] = {
        modelName = 'jester4',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 7.3,
        importantWheel = 2
    },

    ["1377217886"] = {
        modelName = 'remus',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.9,
        importantWheel = 2
    },

    ["1377217886"] = {
        modelName = 'remus',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.9,
        importantWheel = 2
    },

    ["-1726022652"] = {
        modelName = 'comet6',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.8,
        importantWheel = 2
    },

    ["1304459735"] = {
        modelName = 'growler',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.9,
        importantWheel = 2
    },

    ["-1540373595"] = {
        modelName = 'vectre',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 6.7,
        importantWheel = 2
    },

    ["1755697647"] = {
        modelName = 'cypher',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.6,
        importantWheel = 2
    },

    ["-291021213"] = {
        modelName = 'sultan3',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 13.2,
        importantWheel = 2
    },


    ["-452604007"] = {
        modelName = 'rt3000',
        fuelTypes = allFuel,
        tankSize = 45,
        consumption = 8.6,
        importantWheel = 2
    },

    ["-1108591207"] = {
        modelName = '-1108591207',
        trailer = true
    },
    ["-1476447243"] = {
        modelName = '-1476447243',
        trailer = true
    },
    ["-1254331310"] = {
        modelName = '-1254331310',
        trailer = true
    },
    ["-777275802"] = {
        modelName = '-777275802',
        trailer = true
    },
    ["-1254331310"] = {
        modelName = '-1254331310',
        trailer = true
    },
    ["1502869817"] = {
        modelName = '1502869817',
        trailer = true
    },
    ["-1100548694"] = {
        modelName = '-1100548694',
        trailer = true
    },
    ["868868440"] = {
        modelName = 'metrotrain',
        trailer = true
    },



    ["1343932732"] = {
        modelName = 'mule',
        fuelTypes = allFuel,
        tankSize = 160,
        consumption = 9.2,
        importantWheel = 2
    },

    ["1486521356"] = {
        modelName = 'youga4',
        fuelTypes = allFuel,
        tankSize = 80,
        consumption = 6.8,
        importantWheel = 2
    },

    ["-261346873"] = {
        modelName = 'granger2',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 5.9,
        importantWheel = 0
    },

    ["655665811"] = {
        modelName = 'zeno',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 8.3,
        importantWheel = 2
    },

    ["-670086588"] = {
        modelName = 'patriot3',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 7.1,
        importantWheel = 2
    },

    ["461465043"] = {
        modelName = 'jubilee',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 7.4,
        importantWheel = 2
    },

    ["-1444114309"] = {
        modelName = 'ignus',
        fuelTypes = noDiesel,
        tankSize = 60,
        consumption = 8.6,
        importantWheel = 2
    },

    ["1532171089"] = {
        modelName = 'deity',
        fuelTypes = allFuel,
        tankSize = 65,
        consumption = 7.2,
        importantWheel = 2
    },

    ["1141395928"] = {
        modelName = 'comet7',
        fuelTypes = allFuel,
        tankSize = 55,
        consumption = 6.8,
        importantWheel = 2
    },

    ["-619930876"] = {
        modelName = 'buffalo4',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.7,
        importantWheel = 2
    },

    ["359875117"] = {
        modelName = 'baller7',
        fuelTypes = allFuel,
        tankSize = 90,
        consumption = 6.8,
        importantWheel = 0
    },

    ["629969764"] = {
        modelName = 'astron',
        fuelTypes = allFuel,
        tankSize = 60,
        consumption = 6.6,
        importantWheel = 2
    },

    ["662793086"] = {
        modelName = 'iwagen',
        fuelTypes = fullyElectric,
        regeneration = true,
        tankSize = 110,
        consumption = 10.5,
        importantWheel = 0
    },

    ["-1527436269"] = {
        modelName = 'cinquemila',
        fuelTypes = allFuel,
        tankSize = 70,
        consumption = 7.3,
        importantWheel = 2
    },

    ["-915234475"] = {
        modelName = 'champion',
        fuelTypes = noDiesel,
        tankSize = 45,
        consumption = 9.1,
        importantWheel = 2
    },

    ["1993851908"] = {
        modelName = 'reever',
        fuelTypes = noDiesel,
        tankSize = 22,
        consumption = 3.8,
        importantWheel = 0
    },

    ["1353120668"] = {
        modelName = 'shinobi',
        fuelTypes = allFuel,
        tankSize = 30,
        consumption = 4,
        importantWheel = 0
    },
}