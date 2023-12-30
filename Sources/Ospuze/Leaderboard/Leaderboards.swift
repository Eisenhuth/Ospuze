import Foundation
import YASU

public struct Leaderboards {
    static let CB1 = "https://embark-discovery-leaderboard.storage.googleapis.com/leaderboard-beta-1.json"
    static let CB2 = "https://embark-discovery-leaderboard.storage.googleapis.com/leaderboard.json"
    static let OB = "https://storage.googleapis.com/embark-discovery-leaderboard/leaderboard-crossplay.json"
    static let S1 = "https://storage.googleapis.com/embark-discovery-leaderboard/leaderboard-crossplay-discovery-live.json"
}

public extension Leaderboards {
    enum identifiers {
        case CB1, CB2, OB, S1
    }
    
    enum archives {
        case CB1, CB2, OB
    }
    
    /// attempt to get the current leaderboards
    /// - Parameter identifier: the desired leaderboard
    /// - Returns: an array of leaderboard entries?
    static func getLeaderboard(_ identifier: identifiers) async -> [LeaderboardEntry]? {
        
        var leaderboard = ""
        switch identifier {
        case .CB1:
            leaderboard = CB1 //closed beta 1
        case .CB2:
            leaderboard = CB2 //closed beta 2
        case .OB:
            leaderboard = OB //open beta
        case .S1:
            leaderboard = S1 //season 1
        }
        
        return await loadData(URL(string: leaderboard)!) as [LeaderboardEntry]?
    }
    
    /// get an archived version of the leaderboard for past seasons
    /// - Parameter archive: the desired leaderboard
    /// - Returns: an array of leaderboard entries
    static func getArchivedLeaderboard(_ archive: archives) async -> [LeaderboardEntry] {
        var fileName = ""
        
        switch archive {
        case .CB1:
            fileName = "CB1.json"
        case .CB2:
            fileName = "CB2.json"
        case .OB:
            fileName = "OB.json"
        }
        
        return Bundle.module.decode(fileName) as [LeaderboardEntry]
    }
}
