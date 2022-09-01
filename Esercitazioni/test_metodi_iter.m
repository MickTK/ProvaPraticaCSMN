warning("off"); % Disabilita i messaggi di warning (per rendere l'output più leggibile)

% Nome dei metodi
fprintf("\t\t\tMetodo di Jacobi\t\t\t\t\t\t\t\t\t" + ...
        "Metodo di Gauss-Seidel\n");
% Informazioni da visualizzare
fprintf(['Dimensione\t' ...
         'N. Iterazioni\tErrore relativo\tRaggio spettrale\t' ...
         'N. Iterazioni\tErrore relativo\tRaggio spettrale\n']);

% Generazione matrici
for n = 100:100:1000   % Numero di righe e di colonne della matrice

    % Inizializzazione
    A = rand(n);       % Matrice su cui calcolare i metodi
    s = n * ones(n,1); % Nuova diagonale di A
    A = A + diag(s);   % Viene resa A strettamente diagonalmente dominante
    x = ones(n,1);     % Soluzione del sistema
    b = A * x;         % Vettore dei termini noti
    D = diag(diag(A)); % Matrice di zeri avente la diagonale di A
    E = -tril(A,-1);   % Matrice triangolare superiore di A meno la diagonale e con i termini cambiati di segno
    F = -triu(A,1);    % Matrice triangolare inferiore di A meno la diagonale e con i termini cambiati di segno
    tol = 1e-20;       % Tolleranza
    kmax = 10;         % Numero massimo di iterazioni
    x0 = zeros(n,1);   % Vettore iniziale

    % Metodo di Jacobi
    Bj = D \ (E + F);                         % Matrice di iterazione
    [xj,kj] = jacobi(A,b,tol,kmax,x0);        % Applicazione metodo di Jacobi
    err_j = norm(xj - x) / norm(x);           % Errore relativo
    rho_j = max(abs(eig(Bj)));                % Raggio spettrale

    % Metodo di Gauss-Seidel
    Bgs = (D - E) \ F;                        % Matrice di iterazione
    [xgs,kgs] = function_gs(A,b,tol,kmax,x0); % Applicazione metodo di Gauss-Seidel
    err_gs = norm(xgs - x) / norm(x);         % Errore relativo
    rho_gs = max(abs(eig(Bgs)));              % Raggio spettrale

    % Stampa
    if n == 1000
        t = "\t\t";
    else
        t = "\t\t\t";
    end
    fprintf("%d" + t + ...                       % Dimensione matrice
            "%d\t\t\t\t%.2e\t\t%.2e\t\t\t" + ... % Informazioni metodo di Jacobi
            "%d\t\t\t\t%.2e\t\t%.2e\n", ...      % Informazioni metodo di Gauss-Seidel
            n,kj,err_j,rho_j,kgs,err_gs,rho_gs); % Variabili da stampare
end

warning("on"); % Abilita i messaggi di warning
