import Foundation

public struct LeaderboardV3: Codable, Hashable {
    public let entries: [LeaderboardEntryV3]
    
    enum CodingKeys: String, CodingKey {
        case entries = "data"
    }
}

public struct LeaderboardEntryV3: Codable, Hashable {
    public let rank: Int
    public let change: Int?
    public let name: String
    public let steamName: String
    public let xboxName: String
    public let psnName: String
    public let leagueNumber: Int?
    public let league: String?
    public let rankScore: Int?
    public let cashouts: Int?    
}

public extension LeaderboardEntryV3 {
    
}
