import Foundation

public struct LeaderboardEntry: Codable, Hashable {
    public let r: Int //Rank
    public let name: String //EmbarkID
    public let f: Int //Fame
    public let of: Int
    public let or: Int
    public let c: Int //Cashout
    public let steam: String?
    public let xbox: String?
    public let psn: String?
}

public extension LeaderboardEntry {
    var rankChange: Int { or - r }
    var fameChange: Int { of - f }
    
    var formattedRankChange: String { formattedChange(rankChange) }
    var formattedFameChange: String { formattedChange(fameChange) }
    
    func formattedChange(_ input: Int) -> String {
        let formatter = NumberFormatter()
        formatter.positivePrefix = "+"
        
        return formatter.string(for: input) ?? ""
    }
}
