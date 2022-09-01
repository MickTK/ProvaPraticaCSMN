% Input (utente)
n = input('Inserire una dimensione: '); % Prende in input la dimensione delle matrici

% Inizializzazione
R = rand(n)  % Matrice quadrata con elementi pseudo-casuali
x = diag(R)  % Diagonale della matrice R
D = diag(x)  % Matrice con gli elementi di x come diagonale
U = triu(D)  % Parte triangolare superiore della matrice D
L = tril(D)  % Parte triangolare inferiore della matrice D

% Controlli
if (isdiag(D))                          % Se la matrice D è diagonale
    disp('D è diagonale.');             % Stampa a video il risultato positivo del controllo
end
if (istriu(U))                          % Se la matrice U è triangolare superiore
    disp('U è triangolare superiore.'); % Stampa a video il risultato positivo del controllo
end
if (istril(L))                          % Se la matrice L è triangolare inferiore
    disp('L è triangolare inferiore.'); % Stampa a video il risultato positivo del controllo
end
