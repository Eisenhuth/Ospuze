# Ospuze [^1]

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FEisenhuth%2FOspuze%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/Eisenhuth/Ospuze)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FEisenhuth%2FOspuze%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/Eisenhuth/Ospuze)
[![](https://img.shields.io/badge/DocC-documentation-orange)](https://swiftpackageindex.com/Eisenhuth/Ospuze/master/documentation/ospuze)


### a package to work with THE FINALS data

## Leaderboards
Supports both live and archived leaderboards
```swift
let beta = await Leaderboards.getArchivedLeaderboard(.OpenBeta)
let season1 = await Leaderboard.getLeaderboard(.S1_Crossplay)

let live = await Leaderboards.getLeaderboardV2(.LiveCrossplay)

print(beta.first!.name)
print(season1!.first!.name)
print(live!.first!.name)
```

[^1]: a fictional energy drink company in THE FINALS
