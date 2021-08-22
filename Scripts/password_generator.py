import random
uppercase_letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
lowercase_letters = uppercase_letters.lower()
digits = '1234567890'
symbols = '@#$%=.,:;'

upper,lower,nums,syms = True,True,True,True

all = ''

if upper:
    all += uppercase_letters
if lower:
    all += lowercase_letters
if nums:
    all += digits
if syms:
    all += symbols
print('############################')
print('#----Password Generator----#')
print('############################')
print('\n')
print('1) How long you want your password?')
length = int(input())
print('2) How many password do you want to generate?')
passwords = int(input())
for x in range(passwords):
    password = "".join(random.sample(all, length))
    print(password)
print('####### Done ###############')
