def solution(numbers):
    answer = [0 for i in range(len(numbers))]
    temp = []
    for (idx, n) in enumerate(numbers):
        if idx == 0:
            temp.append((idx, n))
            continue
        else:
            while n > temp[-1][1]:
                answer[temp[-1][0]] = n
                temp.pop()
                if len(temp) == 0:
                    break
            temp.append((idx, n))
    for t in temp:
        answer[t[0]] = -1

    return answer