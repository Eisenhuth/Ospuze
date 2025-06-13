import Foundation

public struct Leaderboard: Codable, Hashable {
    
    public let meta: Meta
    public let count: Int?
    public let entries: [LeaderboardEntry]
    
    enum CodingKeys: String, CodingKey {
        case meta
        case count
        case entries = "data"
    }
}

public struct Meta: Codable, Hashable {
    public let leaderboardVersion: String?
    public let leaderboardPlatform: String?
    public let dataSource: String?
}

public struct LeaderboardEntry: Codable, Hashable {
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
    public let fans: Int?
    public let sponsor: String?
}
