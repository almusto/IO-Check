//
//  Rank.swift
//  IO Check
//
//  Created by sandro on 6/1/20.
//  Copyright © 2020 sandro. All rights reserved.
//

import Foundation


/*
 "mythic_plus_ranks": {
     "overall": {
         "world": 478,
         "region": 127,
         "realm": 19
     },
     "class": {
         "world": 72,
         "region": 16,
         "realm": 3
     },
 */
struct RankType: Codable {
    let name: String
}

struct Rank: Codable {
    let world: Int
    let region: Int
    let realm: Int
}



/*
 {
 "rankings": [
     {
         "rank": 1,
         "score": 558.2933008587336,
         "run": {
             "season": "season-bfa-4",
             "dungeon": {
                 "id": 800001,
                 "name": "Mechagon Junkyard",
                 "short_name": "YARD",
                 "slug": "operation-mechagon-junkyard",
                 "expansion_id": 7,
                 "patch": "8.3",
                 "keystone_timer_ms": 2280999
             },
             "keystone_run_id": 14265675,
             "keystone_team_id": 67903211,
             "keystone_platoon_id": null,
             "mythic_level": 28,
             "clear_time_ms": 2168010,
             "keystone_time_ms": 2280999,
             "completed_at": "2020-05-16T17:10:53.000Z",
             "num_chests": 1,
             "time_remaining_ms": 112989,
             "faction": "horde",
             "weekly_modifiers": [
                 {
                     "id": 10,
                     "icon": "ability_toughness",
                     "name": "Fortified",
                     "description": "Non-boss enemies have 20% more health and inflict up to 30% increased damage."
                 },
                 {
                     "id": 11,
                     "icon": "ability_ironmaidens_whirlofblood",
                     "name": "Bursting",
                     "description": "Upon death the creature Bursts, inflicting damage equal to 5% of maximum health every 1 sec. This effect stacks."
                 },
                 {
                     "id": 3,
                     "icon": "spell_shaman_lavasurge",
                     "name": "Volcanic",
                     "description": "While in combat, enemies periodically cause gouts of flame to erupt beneath the feet of distant players."
                 },
                 {
                     "id": 120,
                     "icon": "trade_archaeology_nerubian_obelisk",
                     "name": "Awakened",
                     "description": "Obelisks throughout the dungeon allow players to enter Ny'alotha and confront powerful servants of N'Zoth. If a servant is not dealt with, they must be faced during the final boss encounter."
                 }
             ],
             "num_modifiers_active": 4,
             "roster": [
                 {
                     "character": {
                         "id": 22316768,
                         "persona_id": 4072089,
                         "name": "Naeniaqt",
                         "class": {
                             "id": 11,
                             "name": "Druid",
                             "slug": "druid"
                         },
                         "race": {
                             "id": 31,
                             "name": "Zandalari Troll",
                             "slug": "zandalari-troll",
                             "faction": "horde"
                         },
                         "faction": "horde",
                         "level": 120,
                         "spec": {
                             "id": 105,
                             "name": "Restoration",
                             "slug": "restoration"
                         },
                         "path": "/characters/eu/stormreaver/Naeniaqt",
                         "realm": {
                             "id": 712,
                             "connectedRealmId": 310,
                             "name": "Stormreaver",
                             "altName": null,
                             "slug": "stormreaver",
                             "altSlug": "stormreaver",
                             "locale": "en_GB",
                             "isConnected": true
                         },
                         "region": {
                             "name": "Europe",
                             "slug": "eu",
                             "short_name": "EU"
                         }
                     },
                     "oldCharacter": null,
                     "isTransfer": false,
                     "role": "healer"
                 },
                 {
                     "character": {
                         "id": 26219591,
                         "persona_id": 3315386,
                         "name": "Andybrew",
                         "class": {
                             "id": 10,
                             "name": "Monk",
                             "slug": "monk"
                         },
                         "race": {
                             "id": 26,
                             "name": "Pandaren",
                             "slug": "pandaren",
                             "faction": "horde"
                         },
                         "faction": "horde",
                         "level": 120,
                         "spec": {
                             "id": 268,
                             "name": "Brewmaster",
                             "slug": "brewmaster"
                         },
                         "path": "/characters/eu/draenor/Andybrew",
                         "realm": {
                             "id": 579,
                             "connectedRealmId": 308,
                             "name": "Draenor",
                             "altName": null,
                             "slug": "draenor",
                             "altSlug": "draenor",
                             "locale": "en_GB",
                             "isConnected": false
                         },
                         "region": {
                             "name": "Europe",
                             "slug": "eu",
                             "short_name": "EU"
                         }
                     },
                     "oldCharacter": null,
                     "isTransfer": false,
                     "role": "tank"
                 },
                 {
                     "character": {
                         "id": 27412735,
                         "persona_id": 16590499,
                         "name": "Lekträh",
                         "class": {
                             "id": 4,
                             "name": "Rogue",
                             "slug": "rogue"
                         },
                         "race": {
                             "id": 10,
                             "name": "Blood Elf",
                             "slug": "blood-elf",
                             "faction": "horde"
                         },
                         "faction": "horde",
                         "level": 120,
                         "spec": {
                             "id": 260,
                             "name": "Outlaw",
                             "slug": "outlaw"
                         },
                         "path": "/characters/eu/hyjal/Lekträh",
                         "realm": {
                             "id": 625,
                             "connectedRealmId": 335,
                             "name": "Hyjal",
                             "altName": null,
                             "slug": "hyjal",
                             "altSlug": "hyjal",
                             "locale": "fr_FR",
                             "isConnected": false
                         },
                         "region": {
                             "name": "Europe",
                             "slug": "eu",
                             "short_name": "EU"
                         }
                     },
                     "oldCharacter": null,
                     "isTransfer": false,
                     "role": "dps"
                 },
                 {
                     "character": {
                         "id": 30821200,
                         "persona_id": 3253486,
                         "name": "Fanamvp",
                         "class": {
                             "id": 12,
                             "name": "Demon Hunter",
                             "slug": "demon-hunter"
                         },
                         "race": {
                             "id": 10,
                             "name": "Blood Elf",
                             "slug": "blood-elf",
                             "faction": "horde"
                         },
                         "faction": "horde",
                         "level": 120,
                         "spec": {
                             "id": 577,
                             "name": "Havoc",
                             "slug": "havoc"
                         },
                         "path": "/characters/eu/kazzak/Fanamvp",
                         "realm": {
                             "id": 631,
                             "connectedRealmId": 336,
                             "name": "Kazzak",
                             "altName": null,
                             "slug": "kazzak",
                             "altSlug": "kazzak",
                             "locale": "en_GB",
                             "isConnected": false
                         },
                         "region": {
                             "name": "Europe",
                             "slug": "eu",
                             "short_name": "EU"
                         }
                     },
                     "oldCharacter": null,
                     "isTransfer": false,
                     "role": "dps"
                 },
                 {
                     "character": {
                         "id": 35193835,
                         "persona_id": 19329161,
                         "name": "Wildi",
                         "class": {
                             "id": 8,
                             "name": "Mage",
                             "slug": "mage"
                         },
                         "race": {
                             "id": 8,
                             "name": "Troll",
                             "slug": "troll",
                             "faction": "horde"
                         },
                         "faction": "horde",
                         "level": 120,
                         "spec": {
                             "id": 63,
                             "name": "Fire",
                             "slug": "fire"
                         },
                         "path": "/characters/eu/draenor/Wildi",
                         "realm": {
                             "id": 579,
                             "connectedRealmId": 308,
                             "name": "Draenor",
                             "altName": null,
                             "slug": "draenor",
                             "altSlug": "draenor",
                             "locale": "en_GB",
                             "isConnected": false
                         },
                         "region": {
                             "name": "Europe",
                             "slug": "eu",
                             "short_name": "EU"
                         }
                     },
                     "oldCharacter": null,
                     "isTransfer": false,
                     "role": "dps"
                 }
             ],
             "platoon": null
         }
     },
 */



struct Rankings: Codable {
    
}


