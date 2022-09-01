function [x,k] = secanti(fun,x0,x1,tol,kmax)

% Funzione per la risoluzione di un sistema non lineare tramite il metodo
% delle secanti
% @param funzione, valore iniziale x0, valore iniziale x1, tolleranza, iterazioni massime
% @return approssimazione, numero di iterazioni effettuate

k = 1;               % Variabile numero iterazioni
f1 = fun(x1);        % Valore della funzione calcolata in x1
if (abs(f1) < 1e-10) % Se il valore f1 è molto piccolo
    x = x1;          % Salva x1 come risultato dell'approssimazione
    return           % Restituisce i valori e termina l'esecuzione della funzione
end
f0 = fun(x0);        % Valore della funzione calcolata in x0
if (abs(f0) < 1e-10) % Se il valore f0 è molto piccolo
    x = x0;          % Salva x0 come risultato dell'approssimazione
    return           % Restituisce i valori e termina l'esecuzione della funzione
end

if (abs(fun(x1)-fun(x0))<1e-10)            % Se il valore del denominatore è molto piccolo
    error('Denominatore troppo piccolo.'); % Stampa a video un messaggio di errore
end

% Prima iterazione
k = 2; % Numero iterazione
x_new = (x0*fun(x1) - x1*fun(x0)) / (fun(x1) - fun(x0)); % Valore di x(k+1)

% Successive iterazioni
% Itera finché:
% 1. Il valore assoluto di x(k+1) - x1 è maggiore del prodotto tra la
% tolleranza e il massimo tra 1 e x(k+1)
% 2. Il numero di iterazioni massimo non è stato raggiunto
while (abs(x_new-x1)>tol*max(1,abs(x_new))) && (k < kmax)
    k = k+1;                        % Aggiorna il numero di iterazioni effettuate
    x0 = x1;                        % Salva il nuovo x0
    x1 = x_new;                     % Salva il nuovo x1
    f0 = (x0*fun(x1) - x1*fun(x0)); % Calcola il nuovo numeratore
    x_new = f0/(fun(x1) - fun(x0)); % Calcola il nuovo x(k+1)
end

if (k >= kmax) % Se viene raggiunto e/o superato il numero massimo di iterazioni
    warning('Numero massimo di iterazioni raggiunto.'); % Stampa a video un messaggio 
end

x = x_new; % Aggiorna il valore corrente di x(k+1)
