function [x,k] = corde(fun,m,x0,tol,kmax)

% Funzione per la risoluzione di un sistema non lineare tramite il metodo
% delle corde
% @param funzione, pendenza della retta, valore iniziale, tolleranza, iterazioni massime
% @return approssimazione, numero di iterazioni effettuate

k = 0;               % Variabile numero iterazioni
f0 = fun(x0);        % Valore della funzione calcolata in x0
if (abs(f0) < 1e-10) % Se il valore f0 è molto piccolo
    x = x0;          % Salva x0 come risultato dell'approssimazione
    return           % Restituisce i valori e termina l'esecuzione della funzione
end

if (abs(m) < 1e-10)                       % Se il valore di m è molto piccolo
    error('Valore di m troppo piccolo.'); % Stampa a video un messaggio di errore
end

% Prima iterazione
k = 1;               % Numero iterazione
x_new = x0 - (f0/m); % Valore di x(k+1)

% Successive iterazioni
% Itera finché:
% 1. Il valore assoluto di x(k+1) - xk è maggiore del prodotto tra la
% tolleranza e il massimo tra 1 e x(k+1)
% 2. Il numero di iterazioni massimo non è stato raggiunto
while (abs(x_new-x0)>tol*max(1,abs(x_new))) && (k < kmax)
    k = k+1;             % Aggiorna il numero di iterazioni effettuate
    x0 = x_new;          % Salva il nuovo xk
    f0 = fun(x0);        % Calcola il nuovo numeratore
    x_new = x0 - (f0/m); % Calcola il nuovo x(k+1)
end

if (k >= kmax) % Se viene raggiunto e/o superato il numero massimo di iterazioni
    warning('Numero massimo di iterazioni raggiunto.'); % Stampa a video un messaggio
end

x = x_new; % Aggiorna il valore corrente di x(k+1)
    