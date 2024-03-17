import Foundation

public struct LeaderboardEntryV2: Codable, Hashable {
    public let r: Int //Rank
    public let name: String
    public let ri: Int
    public let p: Int
    public let ori: Int
    public let or: Int
    public let op: Int
    public let c: Int
    public let steam: String
    public let xbox: String
    public let psn: String
}

public extension LeaderboardEntryV2 {
    var rankChange: Int { or - r }
    var formattedRankChange: String { formattedChange(rankChange) }
    var leagueName: String { Leagues.leaguesDict[ri] ?? "Unranked" }
    
    func formattedChange(_ input: Int) -> String {
        let formatter = NumberFormatter()
        formatter.positivePrefix = "+"
        
        return formatter.string(for: input) ?? ""
    }
}
