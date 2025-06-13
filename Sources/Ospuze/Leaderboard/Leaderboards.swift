import Foundation
import YASU

public struct Leaderboards {
    static let baseUrl: String = "https://api.the-finals-leaderboard.com/v1/leaderboard"
    
    public static func leaderboardUrl(_ identifier: identifiers) -> URL {
        return URL(string: baseUrl + identifier.rawValue)!
    }
    
    //makes an API call to get the specified leaderboard
    public static func getLeaderboard(_ identifier: identifiers) async -> Leaderboard? {
        return await loadData(leaderboardUrl(identifier)) as Leaderboard?
    }
    
    //returns the local archived leaderboards
    public static func getArchivedLeaderboard(_ archive: archives) async -> Leaderboard {
        return Bundle.module.decode(archive.rawValue) as Leaderboard
    }
}

public extension Leaderboards {
    
    enum identifiers: String, CaseIterable {
        case ClosedBeta1 =          "/cb1"
        case ClosedBeta2 =          "/cb2"
        case OpenBeta =             "/ob/crossplay"
        case S1_Crossplay =         "/s1/crossplay"
        case S1_PSN =               "/s1/psn"
        case S1_Xbox =              "/s1/xbox"
        case S1_Steam =             "/s1/steam"
        
        case S2_Crossplay =         "/s2/crossplay"
        case S2_PSN =               "/s2/psn"
        case S2_Xbox =              "/s2/xbox"
        case S2_Steam =             "/s2/steam"
        
        case S3_Crossplay =         "/s3/crossplay"
        case S3_Worldtour =         "/s3worldtour/crossplay"
        
        case S4_Crossplay =         "/s4/crossplay"
        case S4_Worldtour =         "/s4worldtour/crossplay"
        case S4_Sponsor   =         "/s4sponsor/crossplay"
        
        case S5_Crossplay =         "/s5/crossplay"
        case S5_Worldtour =         "/s5worldtour/crossplay"
        case S5_Sponsor   =         "/s5sponsor/crossplay"
        
        case S6_Crossplay =         "/s6/crossplay"
        case S6_Worldtour =         "/s6worldtour/crossplay"
        case S6_Sponsor =           "/s6sponsor/crossplay"
        case S6_PowerShift =        "/s6powershift/crossplay"
        case S6_TDM =               "/s6teamdeathmatch/crossplay"
        case S6_Quickcash =         "/s6quickcash/crossplay"
        case S6_TerminalAttack =    "/s6terminalattack/crossplay"
        
        case S7_Crossplay =         "/s7/crossplay"
        case S7_Worldtour =         "/s7worldtour/crossplay"
        case S7_Sponsor   =         "/s7sponsor/crossplay"
        case S7_PowerShift =        "/s7powershift/crossplay"
        case S7_TDM =               "/s7teamdeathmatch/crossplay"
        case S7_Quickcash =         "/s7quickcash/crossplay"
        case S7_TerminalAttack =    "/s7terminalattack/crossplay"
    }
    
    enum archives: String, CaseIterable {
        case ClosedBeta1 =      "CB1.json"
        case ClosedBeta2 =      "CB2.json"
        case OpenBeta =         "OB.json"
        
        case S1_Crossplay =     "S1_crossplay.json"
        case S1_PSN =           "S1_psn.json"
        case S1_Xbox =          "S1_xbox.json"
        case S1_Steam =         "S1_steam.json"
        
        case S2_Crossplay =     "S2_crossplay.json"
        case S2_PSN =           "S2_psn.json"
        case S2_Xbox =          "S2_xbox.json"
        case S2_Steam =         "S2_steam.json"
        
        case S3_Crossplay =     "S3_crossplay.json"
        case S3_Worldtour =     "S3_worldtour.json"
        
        case S4_Crossplay =     "S4_crossplay.json"
        case S4_Worldtour =     "S4_worldtour.json"
        case S4_Sponsor   =     "S4_sponsor.json"
        
        case S5_Crossplay =     "S5_crossplay.json"
        case S5_Worldtour =     "S5_worldtour.json"
        case S5_Sponsor   =     "S5_sponsor.json"
        
        case S6_Crossplay =         "S6_crossplay.json"
        case S6_Worldtour =         "S6_worldtour.json"
        case S6_Sponsor =           "S6_sponsor.json"
        case S6_PowerShift =        "S6_powershift.json"
        case S6_TDM =               "S6_tdm.json"
        case S6_Quickcash =         "S6_quickcash.json"
        case S6_TerminalAttack =    "S6_terminalattack.json"
    }
}
