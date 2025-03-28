import Foundation
import YASU

public struct Leaderboards {
    
}

public extension Leaderboards {
    enum identifiers: String {
        case ClosedBeta1 =      "https://embark-discovery-leaderboard.storage.googleapis.com/leaderboard-beta-1.json"
        case ClosedBeta2 =      "https://embark-discovery-leaderboard.storage.googleapis.com/leaderboard.json"
        case OpenBeta =         "https://storage.googleapis.com/embark-discovery-leaderboard/leaderboard-crossplay.json"
        case S1_Crossplay =     "https://storage.googleapis.com/embark-discovery-leaderboard/leaderboard-crossplay-discovery-live.json"
        case S1_PSN =           "https://storage.googleapis.com/embark-discovery-leaderboard/leaderboard-psn-discovery-live.json"
        case S1_Xbox =          "https://storage.googleapis.com/embark-discovery-leaderboard/leaderboard-xbox-discovery-live.json"
        case S1_Steam =         "https://storage.googleapis.com/embark-discovery-leaderboard/leaderboard-steam-discovery-live.json"
    }
    
    enum identifiersV2: String {
        case S2_Crossplay =    "https://storage.googleapis.com/embark-discovery-leaderboard/s2-leaderboard-crossplay-discovery-live.json"
        case S2_PSN =          "https://storage.googleapis.com/embark-discovery-leaderboard/s2-leaderboard-psn-discovery-live.json"
        case S2_Xbox =         "https://storage.googleapis.com/embark-discovery-leaderboard/s2-leaderboard-xbox-discovery-live.json"
        case S2_Steam =        "https://storage.googleapis.com/embark-discovery-leaderboard/s2-leaderboard-steam-discovery-live.json"
    }
    
    enum identifiersV3: String {
        case S3_Crossplay = "https://api.the-finals-leaderboard.com/v1/leaderboard/s3/crossplay"
        case S3_Worldtour = "https://api.the-finals-leaderboard.com/v1/leaderboard/s3worldtour/crossplay"
        
        case S4_Crossplay = "https://api.the-finals-leaderboard.com/v1/leaderboard/s4/crossplay"
        case S4_Worldtour = "https://api.the-finals-leaderboard.com/v1/leaderboard/s4worldtour/crossplay"
        case S4_Sponsor   = "https://api.the-finals-leaderboard.com/v1/leaderboard/s4sponsor/crossplay"
        
        case S5_Crossplay = "https://api.the-finals-leaderboard.com/v1/leaderboard/s5/crossplay"
        case S5_Worldtour = "https://api.the-finals-leaderboard.com/v1/leaderboard/s5worldtour/crossplay"
        case S5_Sponsor   = "https://api.the-finals-leaderboard.com/v1/leaderboard/s5sponsor/crossplay"
        
        case S6_Crossplay = "https://api.the-finals-leaderboard.com/v1/leaderboard/s6/crossplay"
        case S6_Worldtour = "https://api.the-finals-leaderboard.com/v1/leaderboard/s6worldtour/crossplay"
        case S6_Sponsor   = "https://api.the-finals-leaderboard.com/v1/leaderboard/s6sponsor/crossplay"
    }
    
    enum archives: String {
        case ClosedBeta1 =      "CB1.json"
        case ClosedBeta2 =      "CB2.json"
        case OpenBeta =         "OB.json"
        case S1_Crossplay =     "S1_crossplay.json"
        case S1_PSN =           "S1_psn.json"
        case S1_Xbox =          "S1_xbox.json"
        case S1_Steam =         "S1_steam.json"
    }
    
    enum archivesV2: String {
        case S2_Crossplay =     "S2_crossplay.json"
        case S2_PSN =           "S2_psn.json"
        case S2_Xbox =          "S2_xbox.json"
        case S2_Steam =         "S2_steam.json"
    }
    
    enum archivesV3: String {
        case S3_Crossplay =     "S3_crossplay.json"
        case S3_Worldtour =     "S3_worldtour.json"
        
        case S4_Crossplay =     "S4_crossplay.json"
        case S4_Worldtour =     "S4_worldtour.json"
        case S4_Sponsor   =     "S4_sponsor.json"
        
        case S5_Crossplay =     "S5_crossplay.json"
        case S5_Worldtour =     "S5_worldtour.json"
        case S5_Sponsor   =     "S5_sponsor.json"
    }
    
    /// attempt to get Beta/Season 1 leaderboards
    /// - Parameter identifier: the desired leaderboard
    /// - Returns: an array of leaderboard entries?
    static func getLeaderboard(_ identifier: identifiers) async -> [LeaderboardEntry]? {
        return await loadData(URL(string: identifier.rawValue)!) as [LeaderboardEntry]?
    }
    
    /// attempt to get the current leaderboards for Season 2
    /// - Parameter identifier: the desired leaderboard from Season 2
    /// - Returns: an array of Season 2 leaderboard entries?
    static func getLeaderboardV2(_ identifier: identifiersV2) async -> [LeaderboardEntryV2]? {
        return await loadData(URL(string: identifier.rawValue)!) as [LeaderboardEntryV2]?
    }
    
    /// attempt to get the current leaderboards for Season 3 and Season 4
    /// - Parameter identifier: the desired leaderboard from Season 3/Season 4
    /// - Returns: a current leaderboard?
    static func getLeaderboardV3(_ identifier: identifiersV3) async -> LeaderboardV3? {
        return await loadData(URL(string: identifier.rawValue)!) as LeaderboardV3?
    }
    
    /// get an archived version of the leaderboard for the Betas and Season 1
    /// - Parameter archive: the desired leaderboard
    /// - Returns: an array of leaderboard entries
    static func getArchivedLeaderboard(_ archive: archives) async -> [LeaderboardEntry] {
        return Bundle.module.decode(archive.rawValue) as [LeaderboardEntry]
    }
    
    /// get an archived version of the leaderboard for Season 2
    /// - Parameter archive: the desired leaderboard from Season 2
    /// - Returns: an array of Season 2 leaderboard entries
    static func getArchivedLeaderboardV2(_ archive: archivesV2) async -> [LeaderboardEntryV2] {
        return Bundle.module.decode(archive.rawValue) as [LeaderboardEntryV2]
    }
    
    /// get an archived version of the leaderboard for Season 3
    /// - Parameter archive: the desired leaderboard from Season 3
    /// - Returns: an archived version of the Season 3 leaderboard
    static func getArchivedLeaderboardV3(_ archive: archivesV3) async -> LeaderboardV3 {
        return Bundle.module.decode(archive.rawValue) as LeaderboardV3
    }
}
