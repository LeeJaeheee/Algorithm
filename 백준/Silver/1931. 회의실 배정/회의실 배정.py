N = int(input())
arr = [list(map(int, input().split())) for _ in range(N)]

arr.sort(key=lambda x: (x[1], x[0]))

selected = 0
cnt = 0
for a in arr:
    if a[0] >= selected:
        cnt += 1
        selected = a[1]
print(cnt)