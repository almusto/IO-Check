

import Foundation

/*
 "mythic_plus_best_runs": [
     {
         "dungeon": "Mechagon Junkyard",
         "short_name": "YARD",
         "mythic_level": 25,
         "completed_at": "2020-05-17T01:19:41.000Z",
         "clear_time_ms": 2025346,
         "num_keystone_upgrades": 1,
         "map_challenge_mode_id": 369,
         "score": 421.6,
         "affixes": [
             {
                 "id": 10,
                 "name": "Fortified",
                 "description": "Non-boss enemies have 20% more health and inflict up to 30% increased damage.",
                 "wowhead_url": "https://wowhead.com/affix=10"
             },
 */


struct Dungeon: Codable {
    let id = UUID()
    let dungeon: String
    let mythic_level: Int
    let completed_at: String
    let clear_time_ms: Double
    let num_keystone_upgrades: Int
    let score: Double
    let affixes: [Affix]
    
    var clearTimeString: String {
        let minute = Int(clear_time_ms) / 60000
        let second = Int(clear_time_ms) % 60
        return String(format: "%02i:%02i", minute, second)

    }
    
    var name: String {
        return shortHandDungeon(rawValue: dungeon)?.shorthand ?? ""
    }
    
}
