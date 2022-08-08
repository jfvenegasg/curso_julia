## Primeros pasos en Julia

print("Hola mundo")

θ=π/4

a=1+2
typeof(a)

b="Hola"
typeof(b)


valor=true

valor==true
valor==false

if valor==true
    print("El valor es verdadero")
end

if valor==false
    print("El valor es falso")
else
    print("El valor no es falso")
end

"Hola "*"mun"*"do"


string("Hola a todo el mundo,el valor pi es de ",3.14)


rmse=1.5
mse=1.1
r2=0.94

"Nuestro modelo tiene un R^2 de $(r2),rmse de $(rmse) y un $mse(1.1)"

using Printf
str = @sprintf("Archimedes approximated pi to 22/7, which is %.2f ", 3.14)


# Ciclo for sencillo
x=0

for k in 1:100
    x=x+(1/k)^2    
end

# Ciclo  for complejo

x=0
for k in 1:100000
    term = (1/k)^2
    x = x + term
    if (abs(term) < 1e-10) break end
end

# Ciclo  for anidado con break

for i in 1:5
    for j in 1:5
        if i==4 break end
        print("El valor de i=",i," El valor de j=",j,"\n")       
    end
end

# Ciclo  while

x=0
iter=0

while iter<10
    x=x*2
    iter=iter+1
    print("El valor de x es:",x," y el valor de la iteracion es",iter,"\n")
end

# Ciclo for con condicional y continue

numeros=randn(100)
sum=0

for i in numeros
    if i==0 continue end
    sum=sum+1/i
    print("La suma es:",sum,"El i es:",i,"\n")
end

# Funciones en Julia

function sum_zeta(s,nterms)
    x=0
    for n in 1:nterms
        x=x+(1/n)^s
    end
    return x
end

sum_zeta(1,3)

function sum_n(num,exp=1)
    x=0
    for i in 1:num
       x=(x+i)^exp
       y=(x+i)*exp
    end
    return x,y,exp
end

salida=sum_n(3,2)
salida[2]

# LLamar a funcion que esta en un archivo diferente

include("my_fun.jl")

salida=suma_exp(3)

salida[1]