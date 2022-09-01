function [L,U] = gauss_lu(A)

% Metodo di Gauss per la fattorizzazione A = LU
% @param matrice da fattorizzare
% @return matrice triangolare inferiore, matrice triangolare superiore

[m,n] = size(A); % Dimensioni matrice (m righe, n colonne)

if (m ~= n)                              % Se la matrice non è quadrata
    error('Matrice non quadrata.')       % Lancia un errore e stampa il messaggio
end

if (abs(det(A)) < 1e-14)                 % Se il determinante della matrice A è più piccolo di 10^-14
    error('Determinante molto piccolo.') % Lancia un errore e stampa il messaggio
end

% Matrice dei moltiplicatori
L = zeros(n);                       % Inizializzazione
L = L + diag(ones(n,1));            % Aggiunge la diagonale di valori uguali a 1

% Applicazione metodo di Gauss
U = A;                              % Inizializzazione
for k = 1:n-1                       % Itera per ogni colonna
    for i = k+1:n                   % Itera per ogni riga
    	m = U(i,k) / U(k,k);        % Moltiplicatore riga i
    	U(i,:) = U(i,:) - m*U(k,:); % Calcolo e assegnamento riga i della matrice U
    	L(i,k) = m;                 % Assegnamento moltiplicatore i della matrice L
    end
end
