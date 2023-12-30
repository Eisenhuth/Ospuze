import Foundation

public struct LeaderboardEntry: Codable {
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
