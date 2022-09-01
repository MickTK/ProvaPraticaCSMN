function [x,k] = bisec(fun,a,b,tol,kmax)

% Funzione per la risoluzione di un sistema non lineare tramite il metodo
% di bisezione
% @param funzione, estremo sinistro, estremo destro, tolleranza, iterazioni massime
% @return approssimazione, numero di iterazioni effettuate

fa = fun(a); % Valore della funzione calcolata nell'estremo sinistro
fb = fun(b); % Valore della funzione calcolata nell'estremo destro

if (fa*fb > 0) % Se il prodotto tra le due equazioni è maggiore di 0
    error('Intervallo sbagliato.'); % Stampa a video un messaggio di errore
end

k = 0;       % Variabile numero iterazioni 
c = (a+b)/2; % Punto medio
fc = fun(c); % Valore della funzione calcolata nel punto medio

% Iterazioni
% Itera finché:
% 1. Il valore assoluto di b - a è maggiore della tolleranza
% 2. Il numero di iterazioni massimo non è stato raggiunto
while (abs(b-a) > tol) && (k < kmax)
    k = k+1;       % Aggiorna il numero di iterazioni effettuate
    if (fa*fc < 0) % Se il prodotto tra le due equazioni è minore di 0 
        b = c;     % Salva il valore di c come estremo destro
        fb = fc;   % Salva il risultato della funzione calcolata nell'estremo destro
    else           % Altrimenti
        a = c;     % Salva il valore di c come estremo sinistro
        fa = fc;   % Salva il risultato della funzione calcolata nell'estremo sinistro
    end
    c = (a+b)/2;   % Calcola il nuovo punto medio
    fc = fun(c);   % Calcola il risultato della funzione nel punto medio
end

if (k >= kmax)     % Se viene raggiunto e/o superato il numero massimo di iterazioni
    warning('Numero massimo di iterazioni raggiunto.'); % Stampa a video un messaggio
end

x = c;             % Salva il valore di c come approssimazione
