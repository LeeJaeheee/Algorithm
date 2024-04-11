(N, K) = map(int, input().split())
arr = list(map(int, input().split()))

window = sum(arr[:K])
current_max = window
for i in range(K, N):
    window = window + arr[i] - arr[i-K]
    current_max = max(window, current_max)

print(current_max)