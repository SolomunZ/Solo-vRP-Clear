ConfigClient = {
    unidades = 20,
    distance = 2, -- Distancia que poderá abrir as lojas
    keyBind = true, -- Se o inventário terá key bind ou seja os 5 primeiros itens ele poderá usar com as teclas 1,2,3,4,5 respectivamente
    keyBindWeapon = false, -- Se o inventário terá a opção e pegar a arma na mão e desativar o tab ao usar a keybind
    ip = "itens", -- caso use ip por xammp bote o caminho assim http://ip/caminho e tire as iamgens do fx_manifest
    percentual = 0.85, -- Percentual para venda de itens nesse caso padrão está para 85% do valor do item
    tecla = 'oem_3', -- tecla que abrirá o inventario padrão é o aspas
    blackItemList = {
        trunckchest = {
            "identidade",
            "dinheirosujo",
            "cartao"
        }, -- Itens que não poderá colocar no chest das dos carros
        chest = {
            "identidade",
            "cartao"
        },-- Itens que não poderá colocar no chest das facções
        homes = {
            "identidade",
            "cartao"
        }, -- Itens que não poderá colocar no chest das casas
      
    }, -- Itens que não poderá colocar nos trunckchests, chests, homes

    lojas = {
		arsenal = {
            locs = { 
                { -1136.55,-2276.59,14.62},            
                { 834.62,-1300.53,24.33},           
                { 108.61,6545.42,32.5 },           
                { -2007.65,-475.92,12.23 },            
                {1569.79,839.62,81.3 }            
            },				
            perm = "policia.permissao",
            itens = {
               ['tabletpolicial'] = {price = 0},
               ['colete'] = {price = 0},
               ['wbody|WEAPON_SMG'] = {price = 0},
               ['wbody|WEAPON_PUMPSHOTGUN'] = {price = 0},
               ['wbody|WEAPON_CARBINERIFLE'] = {price = 0},
               ['wbody|WEAPON_FIREEXTINGUISHER'] = {price = 0},
               ['wbody|WEAPON_STUNGUN'] = {price = 0},
               ['wbody|WEAPON_NIGHTSTICK'] = {price = 0},
               ['wbody|WEAPON_COMBATPISTOL'] = {price = 0},
               ['wammo|WEAPON_SMG'] = {price = 0},
               ['wammo|WEAPON_PUMPSHOTGUN'] = {price = 0},
               ['wammo|WEAPON_CARBINERIFLE'] = {price = 0},
               ['wammo|WEAPON_COMBATPISTOL'] = {price = 0},
            },
        },
		mecanico = {
            locs = { 
                { 816.58,-956.36,22.09 }
            }, 
            perm = "mecanico.permissao",
            itens = {
               ['repairkit'] = {price = 0},
               ['pneu'] = {price = 0},
               ['suspensaoar'] = {price = 0},
               ['moduloneon'] = {price = 0},
               ['moduloxenon'] = {price = 0},
            },
        }, 	
		hospital = {
            locs = { 
                { 306.58,-601.82,43.29 }
            }, 
            perm = "paramedico.permissao",
            itens = {
               ['bandagem'] = {price = 0},
               ['analgetico'] = {price = 0},
               ['adrenalina'] = {price = 0},
               ['ibuprofeno'] = {price = 0},
               ['paracetamol'] = {price = 0},
            },
        },		
		pescaria = {
            locs = { 
                { -1665.68,-979.08,8.17 }
            }, 
            perm = nil,
            itens = {
               ['isca'] = {price = 20},
               ['bacalhau'] = {price = 100},
               ['carpa'] = {price = 120},
               ['catfish'] = {price = 140},
               ['pacu'] = {price = 160},
               ['tilapia'] = {price = 200},
            },
        },	
		joalheria = {
            locs = { 
                { -621.49,-231.69,38.06 }
            }, 
            onlyType = "sell",
            perm = nil,
            itens = {
               ['prata'] = {price = 200},
               ['ouro'] = {price = 300},
               ['diamante'] = {price = 400},
               ['esmeralda'] = {price = 500},
            },
        }, 	
        casino = {
            locs = { -- Casino Store
                { 1088.51,219.6,-49.2 }
            }, 
            perm = nil,
            itens = {
               ['ficha'] = {price = 1000},
            },
        }, 			
        ammunation = {
            locs = {
                { 1692.62,3759.50,34.70 },
                { 252.89,-49.25,69.94 },
                { 843.28,-1034.02,28.19 },
                { -331.35,6083.45,31.45 },
                { -663.15,-934.92,21.82 },
                { -1305.18,-393.48,36.69 },
                { -1118.80,2698.22,18.55 },
                { 2568.83,293.89,108.73 },
                { -3172.68,1087.10,20.83 },
                { 21.32,-1106.44,29.79 },
                { 811.19,-2157.67,29.61 },
                {18.07, -1111.09, 29.8}
            }, -- Localizção das ammunations
            perm = nil,
            itens = {
               ['wbody|WEAPON_KNIFE'] = {price = 10000},
               ['wbody|WEAPON_DAGGER'] = {price = 10000},
               ['wbody|WEAPON_KNUCKLE'] = {price = 10000},
               ['wbody|WEAPON_MACHETE'] = {price = 10000},
               ['wbody|WEAPON_SWITCHBLADE'] = {price = 10000},
               ['wbody|WEAPON_WRENCH'] = {price = 10000},
               ['wbody|WEAPON_HAMMER'] = {price = 10000},
               ['wbody|WEAPON_GOLFCLUB'] = {price = 10000},
               ['wbody|WEAPON_CROWBAR'] = {price = 10000},
               ['wbody|WEAPON_HATCHET'] = {price = 10000},
               ['wbody|WEAPON_BAT'] = {price = 10000},
               ['wbody|WEAPON_BATTLEAXE'] = {price = 10000},
               ['wbody|WEAPON_POOLCUE'] = {price = 10000},
               ['wbody|WEAPON_STONE_HATCHET'] = {price = 10000},
            },
        },
        burguershot = {
            locs = {
                {-1183.17, -883.96, 13.76},
            },
            perm = nil,
            itens = {
                ['agua'] = {price = 100 },
                ['cafe'] = {price = 100 },
                ['cola'] = {price = 100 },
                ['limonada'] = {price = 100 },
                ['batatinha'] = {price = 200 },
                ['chocolate'] = {price = 200 },
                ['hotdog'] = {price = 200 },
                ['pizza'] = {price = 200 },
                ['taco'] = {price = 200 },
                ['xburguer'] = {price = 200 },
                ['salgadinho'] = {price = 100 },
                ['xtudo'] = {price = 300 },
                ['sorvete'] = {price = 100 },
                ['coxinha'] = {price = 200 },
                ['paodequeijo'] = {price = 100 },
                ['pastel'] = {price = 150 },
            },
        },
        digitalden = {
            locs = {
                {-657.44, -857.41, 24.5},
            },
            perm = nil,
            itens = {
                ['notebook'] = {price = 10000},
                ['radio'] = {price = 2000 },
                ['smartwatch'] = {price = 1000 },
                ['celular'] = {price = 5000 },
                ['tablet'] = {price = 3000 },
                ['jbl'] = {price = 1800 },
            },
        },
        departamento = {
            locs = {
                { 25.65,-1346.58,29.49 },
                { 2556.75,382.01,108.62 },
                { 1163.54,-323.04,69.20 },
                { -707.37,-913.68,19.21 },
                { -47.73,-1757.25,29.42 },
                { 373.90,326.91,103.56 },
                { -3243.10,1001.23,12.83 },
                { 1729.38,6415.54,35.03 },
                { 547.90,2670.36,42.15 },
                { 1960.75,3741.33,32.34 },
                { 2677.90,3280.88,55.24 },
                { 1698.45,4924.15,42.06 },
                { -1820.93,793.18,138.11 },
                { 1392.46,3604.95,34.98 },
                { -2967.82,390.93,15.04 },
                { -3040.10,585.44,7.90 },
                { 1135.56,-982.20,46.41 },
                { 1165.91,2709.41,38.15 },
                { -1487.18,-379.02,40.16 },
                { -1222.78,-907.22,12.32 },
                { -1095.55,-2594.57,13.92 }
            }, 
			perm = nil,			
            itens = {
               ['celular'] = {price = 3000},
               ['radio'] = {price = 2000},
               ['roupas'] = {price = 2000},
			   ['agua'] = {price = 500},
               ['cola'] = {price = 500},
               ['chocolate'] = {price = 400},
               ['xburguer'] = {price = 600},
               ['mochila'] = {price = 7000},
               ['repairkit'] = {price = 7000},
               ['bandagem'] = {price = 7000},
			   --------------------------------
               ['tequila'] = {price = 100},
               ['vodka'] = {price = 100},
               ['whisky'] = {price = 100},
            },
        },
    },

    chestFac = {
        ['VermelhosBau'] = {
            loc = {-16.57,2662.5,82.92},
            weight = 5000, 
            perm = "ballas.permissao",
            slots = 100, 
            webhook = "",
        },

        ['GrovesBau'] = {
            loc = {1526.36,-640.33,146.01},
            weight = 5000, 
            perm = "grove.permissao",
            slots = 100, 
            webhook = "",
        },

        ['LaranjasBau'] = {
            loc = {-1034.36,1065.35,182.78},
            weight = 5000, 
            perm = "laranjas.permissao",
            slots = 100, 
            webhook = "",
        },       
		
        ['VerdesBau'] = {
            loc = {-16.83,2660.71,82.92},
            weight = 5000, 
            perm = "verdes.permissao",
            slots = 100, 
            webhook = "",
        },

        ['BratvaBau'] = {
            loc = {-1493.51,855.11,181.59},
            weight = 5000, 
            perm = "bratva.permissao",
            slots = 100, 
            webhook = "",
        },

        ['CasaNostraBau'] = {
            loc = {-1868.19,2065.25,135.44},
            weight = 5000, 
            perm = "casanostra.permissao",
            slots = 100, 
            webhook = "",
        },

        ['MotoclubBau'] = {
            loc = {992.25,-135.29,74.07},
            weight = 5000, 
            perm = "motoclub.permissao",
            slots = 100, 
            webhook = "",
        },

        ['SonsofAnarchyBau'] = {
            loc = {882.58,-2107.34,30.77},
            weight = 5000, 
            perm = "sonsofanarchy.permissao",
            slots = 100, 
            webhook = "",
        },	

        ['VanillaBau'] = {
            loc = {93.86,-1290.98,29.27},
            weight = 5000, 
            perm = "vanilla.permissao",
            slots = 100, 
            webhook = "",
        },	

        ['BahamasBau'] = {
            loc = {-1369.22,-624.37,30.32},
            weight = 5000, 
            perm = "bahamas.permissao",
            slots = 100, 
            webhook = "",
        },

        ['FuriusBau'] = {
            loc = {146.38,-3007.71,7.05},
            weight = 5000, 
            perm = "furius.permissao",
            slots = 100, 
            webhook = "",
        },

        ['PoliciaCivilBau'] = {
            loc = {834.57,-1300.59,24.33},
            weight = 5000, 
            perm = "policia.permissao",
            slots = 100, 
            webhook = "",
        },

        ['Policia-Ilegal'] = {
            loc = {2527.91,-319.38,101.9},
            weight = 5000, 
            perm = "bcso.permissao",
            slots = 100, 
            webhook = "",
        },
		
        ['Policia-Legal'] = {
            loc = {2510.03,-330.14,101.9},
            weight = 5000, 
            perm = "bcso.permissao",
            slots = 100, 
            webhook = "",
        },

        ['PoliciaRotaBau'] = {
            loc = {-2010.9,-505.6,12.23},
            weight = 5000, 
            perm = "policia.permissao",
            slots = 100, 
            webhook = "",
        },		
		
        ['PoliciaRodoviarioBau'] = {
            loc = {1535.82,797.34,77.62},
            weight = 5000, 
            perm = "policia.permissao",
            slots = 100, 
            webhook = "",
        },	

        ['HospitalBau'] = {
            loc = {301.81,-599.46,43.28},
            weight = 5000, 
            perm = "paramedico.permissao",
            slots = 100, 
            webhook = "",
        },	

        ['BombeiroBau'] = {
            loc = {358.9,292.34,103.78},
            weight = 5000, 
            perm = "bombeiro.permissao",
            slots = 100, 
            webhook = "",
        },	

        ['MecanicaBau'] = {
            loc = {842.47,-985.34,26.5},
            weight = 5000, 
            perm = "mecanico.permissao",
            slots = 100, 
            webhook = "",
        },	
    } 

}
