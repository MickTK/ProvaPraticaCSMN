function [x,k] = jacobi(A,b,tol,kmax,x0)

% Funzione che approssima la soluzione di una matrice tramite l'algebra
% iterativa di Jacobi.
% @param matrice, termini noti, tolleranza, iterazioni, vettore iniziale
% @return approssimazione, numero di iterazioni effettuate

% Inizializzazione
D = diag(diag(A));       % Matrice di zeri avente la diagonale di A
E = -tril(A,-1);         % Matrice triangolare superiore di A meno la diagonale e con i termini cambiati di segno
F = -triu(A,1);          % Matrice triangolare inferiore di A meno la diagonale e con i termini cambiati di segno
Bj = D \ (E + F);        % Matrice di iterazione
f = D \ b;               % Vettore f
rho = max(abs(eig(Bj))); % Raggio spettrale di Bgs
x_old = x0;              % x^(k)
x_new = Bj*x_old + f;    % x^(k+1)
k = 1;                   % Numero di iterazioni effettuate

% Itera finché: 
% 1. la norma 2 di x^(k+1) - x^(k) è maggiore del prodotto tra tolleranza e
% norma 2 di x^(k);
% 2. non è stato raggiunto il numero massimo di iterazioni.
while (norm(x_new - x_old) > tol*norm(x_old)) && (k < kmax)
    k = k+1;              % Incremento numero di iterazioni
    x_old = x_new;        % Nuovo x^(k)
    x_new = Bj*x_old + f; % Nuovo x^(k+1)
end

if (k>=kmax) % Se viene raggiunto il numero massimo di iterazioni
    warning('Raggiunto il numero massimo di iterazioni'); % Stampa un warning a video
end

x = x_new;   % Vettore x^(k) finale
