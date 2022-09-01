% Menu mostrato a video
disp('1 - Costata di maiale'); % Stampa a video la prima portata
disp('2 - Pesce spada');       % Stampa a video la seconda portata
disp('3 - Pizza margherita');  % Stampa a video la terza portata
disp('4 - Pasta al ragù');     % Stampa a video la quarta portata

% Input (utente)
disp(" "); % Stampa a video una riga vuota
val = input('Inserire numero portata scelta: '); % Prende in input un valore e lo salva

% Output
disp(" "); % Stampa a video una riga vuota
switch val
    case 1                                    % Se è stata scelta la prima portata
        disp('Costata di maiale - 259 Kcal'); % Stampa a video la prima portata
    case 2                                    % Se è stata scelta la seconda portata
        disp('Pesce spada - 172 Kcal');       % Stampa a video la seconda portata
    case 3                                    % Se è stata scelta la terza portata
        disp('Pizza margherita - 700 Kcal');  % Stampa a video la terza portata
    case 4                                    % Se è stata scelta la quarta portata
        disp('Pasta al ragù - 536 Kcal');     % Stampa a video la quarta portata
    otherwise % Se la scelta non corrisponde a nessuna portata presente nel menu
        disp('Il numero della portata deve essere compreso tra 1 e 4.'); % Stampa a video un messaggio di errore
end
disp(""); % Stampa a video una riga vuota
