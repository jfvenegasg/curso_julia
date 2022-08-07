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


x=0

for k in 1:100
    x=x+(1/k)^2    
end

x=0
for k in 1:100000
    term = (1/k)^2
    x = x + term
    if (abs(term) < 1e-10) break end
end