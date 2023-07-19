clear;
clc;

portate = ["Pasta al pesto genovese", "Gnocchi alla sorrentina", "Vitello in salsa Tonnata", "Insalata Russa"];
calorie = [82.3, 34, 211.7, 67];

for i = 1:4
    fprintf("%d: %s\n", i, portate(i))
end

x = input("Inserire portata: ");

if x < 1 || x > 4
    disp("Errore: portata non esistente");
else
    disp(portate(x));
    disp(calorie(x));
end
