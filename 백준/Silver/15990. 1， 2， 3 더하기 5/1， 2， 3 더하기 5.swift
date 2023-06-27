import Foundation

let n = Int(readLine()!)!
var dp = [[Int]](repeating: Array(repeating: 0, count: 3), count: 100001)

dp[1] = [1, 0, 0]
dp[2] = [0, 1, 0]
dp[3] = [1, 1, 1]

for i in 4..<100001 {
    // 만약 i가 6일때
    // 5에서 2와 3으로 끝난 횟수에 1을 더하면 6이므로 그 두 개의 횟수를 더해주어 대입
    dp[i][0] = (dp[i - 1][1] + dp[i-1][2])%1000000009
    // 4에서 1과 3으로 끝난 거에서 2를 더하면 6이므로 그 두 개의 횟수를 더해주어 대입.
    dp[i][1] = (dp[i - 2][0]+dp[i-2][2])%1000000009
    // 3에서 1과 2로 끝난 거에서 3을 더하면 6이므로 그 두 개의 횟수를 더해주어 대입.
    dp[i][2] = (dp[i - 3][0] + dp[i - 3][1])%1000000009
}

for _ in 0..<n {
    let m = Int(readLine()!)!
    print((dp[m][0]+dp[m][1]+dp[m][2])%1000000009)
}
