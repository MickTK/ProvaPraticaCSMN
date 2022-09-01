% Input (utente)
n = input('Inserire una dimensione: '); % Prende in input la dimensione delle matrici

% Creazione matrice
S = 10 + rand(n) * (20 - 10); % Matrice quadrata con elementi pseudo-casuali compresi tra 10 e 20

% Controllo
if (~issymmetric(S))  % Se S non è simmetrica
    S = (S + S') / 2; % La matrice viene resa simmetrica e salvata
end

% Stampa
S                        % Stampa a video la matrice S
disp('S è simmetrica.'); % Stampa a video il messaggio

% Autovalori
d = eig(S);                            % Autovalori della matrice S
disp(" ")                              % Riga vuota
disp("Autovalori della matrice S = "); % Stampa a vide oil messaggio
disp(d);                               % Stampa a video gli autovalori della matrice S

% Norme
norm1 = norm(d, 1);                  % Calcola la norma con indice 1 del vettore d
disp("Norma indice 1 = " + norm1);   % Stampa a video la norma 1
norm2 = norm(d);                     % Calcola la norma con indice 2 del vettore d
disp("Norma indice 2 = " + norm2);   % Stampa a video la norma 2
norminf = norm(d, Inf);              % Calcola la norma con indice ∞ del vettore d
disp("Norma indice ∞ = " + norminf); % Stampa a video la norma ∞
