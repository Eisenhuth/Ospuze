# Ospuze [^1]

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FEisenhuth%2FOspuze%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/Eisenhuth/Ospuze)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FEisenhuth%2FOspuze%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/Eisenhuth/Ospuze)
[![](https://img.shields.io/badge/DocC-documentation-orange)](https://swiftpackageindex.com/Eisenhuth/Ospuze/master/documentation/ospuze)


### a package to work with THE FINALS data

## Leaderboards
Supports both live and archived leaderboards
```swift
let openBeta = await Leaderboards.getArchivedLeaderboard(.OpenBeta)
let season1 = await Leaderboards.getArchivedLeaderboard(.S1_Crossplay)
let season2 = await Leaderboards.getArchivedLeaderboardV2(.S2_Crossplay)
let season3 = await Leaderboards.getLeaderboardV3(.S3_Worldtour)

if let rank1 = season3?.entries.first {
    print(rank1.name)
}
```

[^1]: a fictional energy drink company in THE FINALS
