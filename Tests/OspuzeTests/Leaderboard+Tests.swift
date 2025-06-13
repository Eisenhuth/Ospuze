import Testing
import Ospuze

struct LeaderboardTests {

    @Test("All Archives", arguments: Leaderboards.archives.allCases) func DecodeArchive(archive: Leaderboards.archives) async throws {
        #expect(await Leaderboards.getArchivedLeaderboard(archive).entries.isEmpty == false)
    }
    
    @Test("All Current", arguments: Leaderboards.identifiers.allCases) func DecodeCurrent(identifier: Leaderboards.identifiers) async throws {                
        let leaderboard = try! #require(await Leaderboards.getLeaderboard(identifier))
        #expect(leaderboard.entries.isEmpty == false)
    }

}
