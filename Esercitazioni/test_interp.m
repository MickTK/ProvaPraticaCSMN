% Funzioni da interpolare
f1 = @(x) 1./(1+25*x.^2); % Funzione 1
f2 = @(x) sin(2*pi*x);    % Funzione 2

% Inizializzazione
x1 = -1:0.01:1; % Ascisse di interpolazione: punti equispaziati

n = 200; % Numero punti di interpolazione
k = (0:1:n)'; % Deviazioni
x2 = cos(((2.*k+1).*pi)./(2*n+2)); % Ascisse di interpolazione: zeri del polinomio di Chebyshev

xx = (-1:0.01:1)'; % Ascisse calcolate nel polinomio interpolante

% Funzione 1
    % Punti equidistanti
        % Interpolazione in base canonica
        x = x1;                        % Ascisse di interpolazione
        y = f1(x);                     % Ordinate di interpolazione
        nexttile;                      % Accoda il grafico
        yy = canint(x,y,xx);           % Ordinate funzione interpolante
        title("Funzione 1 - Punti equidistanti (Base canonica)"); % Titolo del grafico
        legend("off");                 % Rimuove la legenda
        % Interpolazione metodo di Lagrange
        x = x1;                        % Ascisse di interpolazione
        y = f1(x);                     % Ordinate di interpolazione
        nexttile;                      % Accoda il grafico
        yy = lagrint(x,y,xx);          % Ordinate funzione interpolante
        title("Funzione 1 - Punti equidistanti (Lagrange)"); % Titolo del grafico
        legend("off");                 % Rimuove la legenda

    % Zeri del polinomio di Chebychev
        % Interpolazione in base canonica
        x = x2;                        % Ascisse di interpolazione
        y = f1(x);                     % Ordinate di interpolazione
        nexttile;                      % Accoda il grafico
        yy = canint(x,y,xx);           % Ordinate funzione interpolante
        title("Funzione 1 - Zeri di Chebychev (Base canonica)"); % Titolo del grafico
        legend("off");                 % Rimuove la legenda
        % Interpolazione metodo di Lagrange
        x = x2;                        % Ascisse di interpolazione
        y = f1(x);                     % Ordinate di interpolazione
        nexttile;                      % Accoda il grafico
        yy = lagrint(x,y,xx);          % Ordinate funzione interpolante
        title("Funzione 1 - Zeri di Chebychev (Lagrange)"); % Titolo del grafico
        legend("off");                 % Rimuove la legenda

% Funzione 2
    % Punti equidistanti
        % Interpolazione in base canonica
        x = x1;                        % Ascisse di interpolazione
        y = f2(x);                     % Ordinate di interpolazione
        nexttile;                      % Accoda il grafico
        yy = canint(x,y,xx);           % Ordinate funzione interpolante
        title("Funzione 2 - Punti equidistanti (Base canonica)"); % Titolo del grafico
        legend("off");                 % Rimuove la legenda
        % Interpolazione metodo di Lagrange
        x = x1;                        % Ascisse di interpolazione
        y = f2(x);                     % Ordinate di interpolazione
        nexttile;                      % Accoda il grafico
        yy = lagrint(x,y,xx);          % Ordinate funzione interpolante
        title("Funzione 2 - Punti equidistanti (Lagrange)"); % Titolo del grafico
        legend("off");                 % Rimuove la legenda

    % Zeri del polinomio di Chebychev
        % Interpolazione in base canonica
        x = x2;                        % Ascisse di interpolazione
        y = f2(x);                     % Ordinate di interpolazione
        nexttile;                      % Accoda il grafico
        yy = canint(x,y,xx);           % Ordinate funzione interpolante
        title("Funzione 2 - Zeri di Chebychev (Base canonica)"); % Titolo del grafico
        legend("off");                 % Rimuove la legenda
        % Interpolazione metodo di Lagrange
        x = x2;                        % Ascisse di interpolazione
        y = f2(x);                     % Ordinate di interpolazione
        nexttile;                      % Accoda il grafico
        yy = lagrint(x,y,xx);          % Ordinate funzione interpolante
        title("Funzione 2 - Zeri di Chebychev (Lagrange)"); % Titolo del grafico
        legend("off");                 % Rimuove la legenda