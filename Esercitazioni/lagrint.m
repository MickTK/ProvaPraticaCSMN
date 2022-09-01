function yy = lagrint(x,y,xx)

% Funzione per l'interpolazione polinomiale tramite polinomio interpolante
% di lagrange.
% @param vettore ascisse, vettore ordinate, vettore ascisse per il grafico
% @return valori assunti dal polinomio nei punti del grafico

% Inizializzazione
x = x(:);         % Trasforma il vettore in vettore colonna
y = y(:);         % Trasforma il vettore in vettore colonna
xx = xx(:);       % Trasforma il vettore in vettore colonna
n = size(x,1);    % Lunghezza del vettore x
m = size(xx,1);   % Lunghezza del vettore xx
yy = zeros(m,1);  % Ordinate dei punti del grafico
den = zeros(n,1); % Vettore denominatori di Lj

% Polinomio caratteristico
for j = 1:n
    den(j) = prod(x(j) - x([1:j-1,j+1:end])); % Denominatore polinomio
end

% Polinomio interpolante di Lagrange
for i = 1:m % Itera per ogni polinomio caratteristico L
    if prod(xx(i)-x) == 0     % Se il prodotto tra il vettore e l'elemento i-esimo delle ascisse del grafico
        for j = 1:n           % Itera per ogni elemento del vettore x
            if x(j) == xx(i)  % Quando i valori dei due vettori combaciano
                yy(i) = y(j); % Salva il risultato dalle ascisse note
            end
        end
    else    % Altrimenti
        num = prod((xx(i)-x))./(xx(i)-x); % Calcola il numeratore del polinomio
        L = num./den;                     % Calcola il valore del polinomio caratteristico i
        yy(i) = y'*L;                     % Calcola il risultato del polinomio interpolante di Lagrange
    end
end

% Disegna il grafico a video
plot(x,y,'.k',xx,yy,'-r'); % Dati da disegnare
legend('Dati da interpolare','Polinomio interpolante'); % Legenda
