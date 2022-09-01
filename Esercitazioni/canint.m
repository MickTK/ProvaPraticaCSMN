function yy = canint(x,y,xx)

% Funzione per l'interpolazione polinomiale in base canonica.
% @param vettore ascisse, vettore ordinate, vettore ascisse per il grafico
% @return valori assunti dal polinomio nei punti del grafico

% Inizializzazione
x = x(:);        % Trasforma il vettore in vettore colonna 
y = y(:);        % Trasforma il vettore in vettore colonna
xx = xx(:);      % Trasforma il vettore in vettore colonna
n = size(x,1);   % Lunghezza del vettore x
m = size(xx,1);  % Lunghezza del vettore xx
X = zeros(n);    % Matrice dei coefficienti
yy = zeros(m,1); % Ordinate dei punti del grafico

% Calcolo valori della matrice dei coefficienti
for j = 1:n            % Per ogni colonna della matrice dei coefficienti
    X(:,j) = x.^(j-1); % Calcola i valori contenuti
end

a = pinv(X)*y;  % Calcolo soluzione

% Applicazione funzione interpolante
for j = 1:m     % Per ogni valore del vettore xx
    s = 0;      % Variabile sommatoria
    for i = 1:n % Per ogni valore del vettore x
        s = s + a(i)*(xx(j)^(i-1)); % Calcolo sommatoria
    end
    yy(j) = s;  % Salva ordinata
end

% Disegna il grafico a video
plot(x,y,'.k',xx,yy,'-r'); % Dati da disegnare
legend('Dati da interpolare','Polinomio interpolante'); % Legenda
