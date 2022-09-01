% Input (utente)
a = input("Inserire valore di a: "); % Prende in input e salva il valore di a
b = input("Inserire valore di b: "); % Prende in input e salva il valore di b
c = input("Inserire valore di c: "); % Prende in input e salva il valore di c

% Calcolo quantità reali
d1_reale = (a + b) + c; % Calcolo non approssimato della quantità d1
d2_reale = a + (b + c); % Calcolo non approssimato della quantità d2

% Approssimazione valori inseriti in input
N = 3; % Numero di cifre significative del sistema a virgola mobile
a = round(a, N, "significant"); % Approssimazione valore di a
b = round(b, N, "significant"); % Approssimazione valore di b
c = round(c, N, "significant"); % Approssimazione valore di c

% Calcolo quantità d1 e d2 nel sistema a virgola mobile
d1 = round(a + b, N, "significant") + c; % Calcolo prima quantità
d1 = round(d1, N, "significant");        % Approssimazione
d2 = a + round(b + c, N, "significant"); % Calcolo seconda quantità
d2 = round(d2, N, "significant");        % Approssimazione

% Calcolo errori relativi
p1 = abs(d1 - d1_reale) / abs(d1_reale); % Errore relativo di d1
p2 = abs(d2 - d2_reale) / abs(d2_reale); % Errore relativo di d2

% Stampa risultati a video
disp(" ")                            % Stampa riga vuota
disp("1) d1 = (a + b) + c = " + d1); % Stampa prima quantità
disp("1) Errore relativo = " + p1);  % Stampa errore relativo in relazione alla prima quantità
disp(" ")                            % Stampa riga vuota
disp("2) d2 = a + (b + c) = " + d2); % Stampa seconda quantità
disp("2) Errore relativo = " + p2);  % Stampa errore relativo in relazione alla seconda quantità
