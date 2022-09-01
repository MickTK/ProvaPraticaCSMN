% Input (utente)
n = input("Inserire una dimensione: "); % Prende in input la dimensione delle matrici

% Inizializzazione
A = zeros(n, n)  % Matrice quadrata contenente solo elementi uguali a 0
B = ones(n, n)   % Matrice quadrata contenente solo elementi uguali a 1
z = 2*ones(n, 1) % Vettore colonna contenente solo elementi uguali a 2

% Prodotti
b = A * z;  % Primo prodotto
c = z' * B; % Secondo prodotto

% Stampa risultati
disp("b = A * z = ");        % Stampa a video l'equazione del primo prodotto
disp(b);                     % Stampa a video il vettore b
disp("c = trasp(z) * B = "); % Stampa a video l'equazione del secondo prodotto
disp(c);                     % Stampa a video il vettore c
