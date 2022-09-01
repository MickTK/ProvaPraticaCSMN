% Input (utente)
val = input('Inserire un valore numerico compreso tra 0 e 50: '); % Prende in input un valore e lo salva

% Output
if val >= 0 & val <= 50 % Se il valore è compreso tra 0 e 50
    disp(sqrt(val));    % Stampa a video la radice quadrata del valore inserito
else                    % Se il valore non è compreso tra 0 e 50
    disp('Il valore inserito non è compreso tra 0 e 50.'); % Stampa a video un messaggio di errore che avvisa l'utente dell'errato inserimento
end
