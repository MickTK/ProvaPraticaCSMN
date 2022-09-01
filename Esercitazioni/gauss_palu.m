function [P,L,U] = gauss_palu(A)

% Metodo di Gauss per la fattorizzazione PA = LU
% @param matrice da fattorizzare
% @return matrice degli scambi effettuati, matrice triangolare inferiore, matrice triangolare superiore

[m,n] = size(A); % Dimensioni matrice (m righe, n colonne)

if (m ~= n)                              % Se la matrice non è quadrata
    error('Matrice non quadrata.')       % Lancia un errore e stampa il messaggio
end

if (abs(det(A)) < 1e-14)                 % Se il determinante della matrice A è più piccolo di 10^-14
    error('Determinante molto piccolo.') % Lancia un errore e stampa il messaggio
end

% Inizializzazione
L = zeros(n);            % Matrice dei moltiplicatori
P = eye(n);              % Matrice degli scambi effettuati

% Applicazione metodo di Gauss
U = A;                                % Inizializzazione
for k = 1:n-1                         % Itera per ogni colonna
    [~,pos] = max(abs(U(k:n,k)));     % Cerca e salva la posizione dell'elemento più grande in modulo della riga
    r = pos + k - 1;                  % Indice colonna con pivot
    U([k r],:) = U([r k],:);          % Scambia le colonne r e k in U
    P([k r],:) = P([r k],:);          % Scambia le colonne r e k in P
    L([k r],:) = L([r k],:);          % Scambia le colonne r e k in L
    for i = k+1:n                     % Itera per ogni riga
    	m = U(i,k) / U(k,k);          % Moltiplicatore riga i
    	U(i,:) = U(i,:) - m * U(k,:); % Calcolo e assegnamento riga i della matrice U 
    	L(i,k) = m;                   % Assegnamento moltiplicatore i della matrice L
    end
end
L = L + diag(ones(n,1)); % Aggiunge la diagonale di valori uguali a 1
