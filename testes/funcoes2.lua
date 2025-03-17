function antecessor_sucessor(num):
    return num - 1, num + 1

end

n = 10
n1, n2 = antecessor_sucessor(n)

print(n, n1, n2)