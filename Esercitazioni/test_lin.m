err = zeros(10,1); % Vettore errori relativi
i = 0;             % Indice matrice
for n = 10:10:100  % Numero di righe e di colonne della matrice
    i = i + 1;                               % Incrementa l'indice della matrice
    A = 7 * rand(n);                         % Matrice su cui calcolare il metodo
    s = diag(A);                             % Nuova diagonale di A
    A = A + diag(100 * s);                   % Viene resa A strettamente diagonalmente dominante
    x = ones(n,1);                           % Soluzione del sistema
    b = A * x;                               % Vettore dei termini noti
    tol = 1e-6;                              % Tolleranza
    [x1,k] = jacobi(A,b,tol,100,zeros(n,1)); % Applicazione metodo di Jacobi
    err(i) = norm(x1-x)/norm(x);             % Salva l'errore relativo per la soluzione corrente
end
