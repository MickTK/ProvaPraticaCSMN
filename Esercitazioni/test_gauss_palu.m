% Generazione e test matrici
for n = 100:100:1000         % Numero di righe e di colonne della matrice

    % Inizializzazione
    A = rand(n);             % Matrice da fattorizzare
    x = ones(n,1);           % Soluzione del sistema
    b = A * x;               % Vettore dei termini noti
    [P,L,U] = gauss_palu(A); % Matrici ottenute tramite fattorizzazione PA = LU
    
    % Risoluzione sistema
    y = L \ (P * b);         % Ly = Pb => L^-1 * Pb
    x1 = U \ y;              % Ux = y  => x = U^-1 * y
    
    err = norm(x1 - x) / norm(x);   % Calcolo errore relativo
    
    % Stampa
    disp("Matrice " + n + "x" + n); % Stampa dimensione matrice
    stampa = '\tErrore relativo: %1.2E\n\tIndice di condizionamento: %.2E\n'; % Informazioni mostrate tramite stampa
    fprintf(stampa, err, cond(A));  % Valori da stampare
end
