# You get an array of numbers, return the sum of all of the positives ones.

# Example [1,-4,7,12] => 1 + 7 + 12 = 20


def positive_sum(arr):
    pos = []
    for x in arr:
        if x > 0:
            pos.append(x)
    return sum(pos)
