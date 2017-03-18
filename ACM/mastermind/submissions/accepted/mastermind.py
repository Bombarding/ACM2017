#!/usr/bin/python3

line = input()
splitLine = line.split(' ')

nColors = int(splitLine[0])
code = list(splitLine[1])
guess = list(splitLine[2])

r = 0
s = 0

for i in range(nColors):
  if code[i] == guess[i]:
    r += 1
    code[i] = '.'
    guess[i] = ','

for i in range(nColors):
  for j in range(nColors):
    if code[i] == guess[j]:
      s += 1
      code[i] = '.'
      guess[j] = ','

print(r,s)

