import Foundation
import YASU

public struct Leaderboards {
    
}

public extension Leaderboards {
    enum identifiers: String {
        case ClosedBeta1 =      "https://embark-discovery-leaderboard.storage.googleapis.com/leaderboard-beta-1.json"
        case ClosedBeta2 =      "https://embark-discovery-leaderboard.storage.googleapis.com/leaderboard.json"
        case OpenBeta =         "https://storage.googleapis.com/embark-discovery-leaderboard/leaderboard-crossplay.json"
        case LiveCrossplay =    "https://storage.googleapis.com/embark-discovery-leaderboard/leaderboard-crossplay-discovery-live.json"
        case LivePSN =          "https://storage.googleapis.com/embark-discovery-leaderboard/leaderboard-psn-discovery-live.json"
        case LiveXbox =         "https://storage.googleapis.com/embark-discovery-leaderboard/leaderboard-xbox-discovery-live.json"
        case LiveSteam =        "https://storage.googleapis.com/embark-discovery-leaderboard/leaderboard-steam-discovery-live.json"
    }
    
    enum archives: String {
        case ClosedBeta1 =  "CB1.json"
        case ClosedBeta2 =  "CB2.json"
        case OpenBeta =     "OB.json"
    }
    
    /// attempt to get the current leaderboards
    /// - Parameter identifier: the desired leaderboard
    /// - Returns: an array of leaderboard entries?
    static func getLeaderboard(_ identifier: identifiers) async -> [LeaderboardEntry]? {
        return await loadData(URL(string: identifier.rawValue)!) as [LeaderboardEntry]?
    }
    
    /// get an archived version of the leaderboard for past seasons
    /// - Parameter archive: the desired leaderboard
    /// - Returns: an array of leaderboard entries
    static func getArchivedLeaderboard(_ archive: archives) async -> [LeaderboardEntry] {
        return Bundle.module.decode(archive.rawValue) as [LeaderboardEntry]
    }
}
