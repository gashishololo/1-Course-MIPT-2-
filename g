'upr 1'
'''x=10**-15
e=1
while x+e!=x:
    e=e/10
print (e)'''

'upr 2'
'''xi2=4
xi1=4.25
xi=0
i=1
while i<30:
    xi=108-(815-1500/xi2)/xi1
    a=xi1
    xi1=xi
    xi2=a
    i+=1
print (xi1)'''

'upr 3'
from decimal import Decimal, getcontext
getcontext().prec = 4
s=Decimal(input())
x=Decimal(input())
y=Decimal(input())
A=s*x*Decimal(Decimal((1+x/100)**(12*y))/(Decimal(((1+x/100)**(12*y) - 1)*100)))
print ('Ежемесячная выплата', A)
print('')
print ('Общая сумма выплат',A*12*y)
print('')
i=0
S=[]
while i<12*y:
    if i==0:
        print ('Долг','      Выплата',' На проценты',' На долг')
    if i==12*y-1:
        print (0,'    ', A, '    ', Decimal(s*x/100),'     ', Decimal(A-s*x/100))
        break
    print (Decimal(s-A),'    ', A,'   ', Decimal(s*x/100),'     ', Decimal(A-s*x/100))
    i+=1
    s=s*(1+x/100)-A
    S.append(s)
import numpy as np
import matplotlib.pyplot as plt
x=np.arange(-0,12*y+1,1)
plt.plot(i,S[i])
plt.xlabel(r'$время, месяцев$')
plt.ylabel(r'$долг, денег$')
plt.title(r'$Остаток по кредиту$')
plt.grid(True)
plt.show()
