# Ospuze [^1]

### a package to work with THE FINALS data

## Leaderboards
Supports both live and archived leaderboards
```swift
let beta = await Leaderboards.getArchivedLeaderboard(.OpenBeta)
let live = await Leaderboards.getLeaderboard(.LiveCrossplay)

print(beta.first!.name)
print(live!.first!.name)
```

[^1]: a fictional energy drink company in THE FINALS
