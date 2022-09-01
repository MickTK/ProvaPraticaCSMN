warning("off"); % Disabilita i messaggi di warning (per rendere l'output più leggibile)

% 7.1
disp(" ");disp("7.1) Metodo di bisezione");disp(" "); % Tabella 7.1
tol = 1e-8; kmax = 100; % Tolleranza e numero massimo di iterazioni

% 7.1.1
disp("1) f(x) = x^2 - 2, alpha = sqrt(2)");
% Dati
fun = @(x)(x.^2)-2; % Funzione
alpha = sqrt(2);    % Radice
% Primo test
a = 0; % Estremo sinistro
b = 2; % Estremo destro
    [x,k] = bisec(fun,a,b,tol,kmax); % Applicazione metodo
    s = "\t[%d, %d], |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,a,b,abs(x-alpha),k);   % Stampa risultato
% Secondo test
a = 0;   % Estremo sinistro
b = 200; % Estremo destro
    [x,k] = bisec(fun,a,b,tol,kmax); % Applicazione metodo
    s = "\t[%d, %d], |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,a,b,abs(x-alpha),k);   % Stampa risultato

% 7.1.2
disp("2) f(x) = e^x - 2, alpha = log(2)");
% Dati
fun = @(x)exp(x)-2; % Funzione
alpha = log(2);     % Radice
% Primo test
a = 0; % Estremo sinistro
b = 2; % Estremo destro
    [x,k] = bisec(fun,a,b,tol,kmax); % Applicazione metodo
    s = "\t[%d, %d], |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,a,b,abs(x-alpha),k);   % Stampa risultato
% Secondo test
a = 0;   % Estremo sinistro
b = 200; % Estremo destro
    [x,k] = bisec(fun,a,b,tol,kmax); % Applicazione metodo
    s = "\t[%d, %d], |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,a,b,abs(x-alpha),k);   % Stampa risultato

% 7.1.3
disp("3) f(x) = 1/x - 3, alpha = 1/3");
% Dati
fun = @(x)(1/x)-3; % Funzione
alpha = 1/3;       % Radice
% Primo test
a = 0; % Estremo sinistro
b = 2; % Estremo destro
    [x,k] = bisec(fun,a,b,tol,kmax); % Applicazione metodo
    s = "\t[%d, %d], |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,a,b,abs(x-alpha),k);   % Stampa risultato
% Secondo test
a = 0;   % Estremo sinistro
b = 200; % Estremo destro
    [x,k] = bisec(fun,a,b,tol,kmax); % Applicazione metodo
    s = "\t[%d, %d], |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,a,b,abs(x-alpha),k);   % Stampa risultato

% 7.1.4
disp("4) f(x) = (x - 3)^3, alpha = 3");
% Dati
fun = @(x)(x-3).^3; % Funzione
alpha = 3;          % Radice
% Primo test
a = 4/3;  % Estremo sinistro
b = 10/3; % Estremo destro
    [x,k] = bisec(fun,a,b,tol,kmax); % Applicazione metodo
    s = "\t[%.2f, %.2f], |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,a,b,abs(x-alpha),k);   % Stampa risultato
% Secondo test
a = 4/3;   % Estremo sinistro
b = 604/3; % Estremo destro
    [x,k] = bisec(fun,a,b,tol,kmax); % Applicazione metodo
    s = "\t[%.2f, %.2f], |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,a,b,abs(x-alpha),k);   % Stampa risultato


% 7.2
disp(" ");disp("7.2) Metodo di Newton");disp(" "); % Tabella 7.2
tol = 1e-8; kmax = 100; % Tolleranza e numero massimo di iterazioni

% 7.2.1
disp("1) f(x) = x^2 - 2, alpha = sqrt(2)");
% Dati
fun = @(x)x.^2-2; % Funzione
fund = @(x)2*x;   % Derivata prima
alpha = sqrt(2);  % Radice
% Primo test
x0 = 2; % Valore iniziale
    [x,k] = newton(fun,fund,x0,tol,kmax); % Applicazione metodo
    s = "\t%d, |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,abs(x-alpha),k);         % Stampa risultato
% Secondo test
x0 = 200; % Valore iniziale
    [x,k] = newton(fun,fund,x0,tol,kmax); % Applicazione metodo
    s = "\t%d, |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,abs(x-alpha),k);         % Stampa risultato

% 7.2.2
disp("2) f(x) = e^x - 2, alpha = log(2)");
% Dati
fun = @(x)exp(x)-2; % Funzione
fund = @(x)exp(x);  % Derivata prima
alpha = log(2);     % Radice
% Primo test
x0 = 2; % Valore iniziale
    [x,k] = newton(fun,fund,x0,tol,kmax); % Applicazione metodo
    s = "\t%d, |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,abs(x-alpha),k);         % Stampa risultato
% Secondo test
x0 = 200; % Valore iniziale
    [x,k] = newton(fun,fund,x0,tol,kmax); % Applicazione metodo
    s = "\t%d, |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,abs(x-alpha),k);         % Stampa risultato

% 7.2.3
disp("3) f(x) = 1/x - 3, alpha = 1/3");
% Dati
fun = @(x)(1./x)-3;   % Funzione
fund = @(x)-1/(x.^2); % Derivata prima
alpha = 1/3;          % Radice
% Primo test
x0 = 2; % Valore iniziale
    [x,k] = newton(fun,fund,x0,tol,kmax); % Applicazione metodo
    s = "\t%d, |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,abs(x-alpha),k);         % Stampa risultato
% Secondo test
x0 = 0.1; % Valore iniziale
    [x,k] = newton(fun,fund,x0,tol,kmax); % Applicazione metodo
    s = "\t%.2f, |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,abs(x-alpha),k);         % Stampa risultato

% 7.2.4
disp("4) f(x) = (x - 3)^3, alpha = 3");
% Dati
fun = @(x)(x-3).^3;    % Funzione
fund = @(x)3*(x-3).^2; % Derivata prima
alpha = 3;             % Radice
% Primo test
x0 = 2; % valore iniziale
    [x,k] = newton(fun,fund,x0,tol,kmax); % Applicazione metodo
    s = "\t%d, |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,abs(x-alpha),k);         % Stampa risultato
% Secondo test
x0 = 2.9; % Valore iniziale
    [x,k] = newton(fun,fund,x0,tol,kmax); % Applicazione metodo
    s = "\t%.2f, |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,abs(x-alpha),k);         % Stampa risultato


% 7.3
disp(" ");disp("7.3) Metodo delle corde");disp(" "); % Tabella 7.3
tol = 1e-8; kmax = 2000; % Tolleranza e numero massimo di iterazioni

% 7.3.1
disp("1) f(x) = x^2 - 2, alpha = sqrt(2)");
% Dati
fun = @(x)x.^2-2; % Funzione
fund = @(x)x.*2;  % Derivata prima
alpha = sqrt(2);  % Radice
% Primo test
x0 = 2;       % Valore iniziale
m = fund(x0); % Pendenza
    [x,k] = corde(fun,m,x0,tol,kmax); % Applicazione metodo
    s = "\t%d, |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,abs(x-alpha),k);     % Stampa risultato
% Secondo test
x0 = 200;     % Valore iniziale
m = fund(x0); % Pendenza
    [x,k] = corde(fun,m,x0,tol,kmax); % Applicazione metodo
    s = "\t%d, |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,abs(x-alpha),k);     % Stampa risultato

% 7.3.2
disp("2) f(x) = e^x - 2, alpha = log(2)");
% Dati
fun = @(x)exp(x)-2; % Funzione
fund = @(x)exp(x);  % Derivata prima
alpha = log(2);     % Radice
% Primo test
x0 = 2;       % Valore iniziale
m = fund(x0); % Pendenza
    [x,k] = corde(fun,m,x0,tol,kmax); % Applicazione metodo
    s = "\t%d, |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,abs(x-alpha),k);     % Stampa risultato
% Secondo test
x0 = 200;     % Valore iniziale
m = fund(x0); % Pendenza
    [x,k] = corde(fun,m,x0,tol,kmax); % Applicazione metodo
    s = "\t%d, |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,abs(x-alpha),k);     % Stampa risultato

% 7.3.3
disp("3) f(x) = 1/x - 3, alpha = 1/3");
% Dati
fun = @(x)(1/x) - 3; % Funzione
fund = @(x)-1/(x^2); % Derivata prima
alpha = 1/3;         % Radice
% Primo test
x0 = 2;       % Valore iniziale
m = fund(x0); % Pendenza
    [x,k] = corde(fun,m,x0,tol,kmax); % Applicazione metodo
    s = "\t%d, |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,abs(x-alpha),k);     % Stampa risultato
% Secondo test
x0 = 0.1;     % Valore iniziale
m = fund(x0); % Pendenza
    [x,k] = corde(fun,m,x0,tol,kmax); % Applicazione metodo
    s = "\t%.2f, |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,abs(x-alpha),k);     % Stampa risultato

% 7.3.4
disp("4) f(x) = (x - 3)^3, alpha = 3");
% Dati
fun = @(x)(x-3).^3;   % Funzione
fund = @(x)3*(x-3)^2; % Derivata prima
alpha = 3;            % Radice
% Primo test
x0 = 2;       % Valore iniziale
m = fund(x0); % Pendenza
    [x,k] = corde(fun,m,x0,tol,kmax); % Applicazione metodo
    s = "\t%d, |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,abs(x-alpha),k);     % Stampa risultato
% Secondo test
x0 = 2.9;     % Valore iniziale
m = fund(x0); % Pendenza
    [x,k] = corde(fun,m,x0,tol,kmax); % Applicazione metodo
    s = "\t%.2f, |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,abs(x-alpha),k);     % Stampa risultato


% 7.4
disp(" ");disp("7.4) Metodo delle secanti");disp(" "); % Tabella 7.4
tol = 1e-8; kmax = 100; % Tolleranza e numero massimo di iterazioni

% 7.4.1
disp("1) f(x) = x^2 - 2, alpha = sqrt(2)");
% Dati
fun = @(x)x.^2-2; % Funzione
alpha = sqrt(2);  % Radice
% Primo test
x0 = 1; % Valore iniziale
x1 = 2; % Valore iniziale
    [x,k] = secanti(fun,x0,x1,tol,kmax); % Applicazione metodo
    s = "\t[%d, %d], |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,x1,abs(x-alpha),k);     % Stampa risultato
% Secondo test
x0 = 199; % Valore iniziale
x1 = 200; % Valore iniziale
    [x,k] = secanti(fun,x0,x1,tol,kmax); % Applicazione metodo
    s = "\t[%d, %d], |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,x1,abs(x-alpha),k);     % Stampa risultato

% 7.4.2
disp("2) f(x) = e^3, alpha = log(2)");
% Dati
fun = @(x)exp(x)-2; % Funzione
alpha = log(2);     % Radice
% Primo test
x0 = 2; % Valore iniziale
x1 = 3; % Valore iniziale
    [x,k] = secanti(fun,x0,x1,tol,kmax); % Applicazione metodo
    s = "\t[%d, %d], |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,x1,abs(x-alpha),k);     % Stampa risultato
% Secondo test
x0 = 199; % Valore iniziale
x1 = 200; % Valore iniziale
    [x,k] = secanti(fun,x0,x1,tol,kmax); % Applicazione metodo
    s = "\t[%d, %d], |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,x1,abs(x-alpha),k);     % Stampa risultato

% 7.4.3
disp("3) f(x) = 1/x - 3, alpha = 1/3");
% Dati
fun = @(x)(1./x)-3; % Funzione
alpha = 1/3;        % Radice
% Primo test
x0 = 2; % Valore iniziale
x1 = 3; % Valore iniziale
    [x,k] = secanti(fun,x0,x1,tol,kmax); % Applicazione metodo
    s = "\t[%d, %d], |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,x1,abs(x-alpha),k);     % Stampa risultato
% Secondo test
x0 = 0.1;  % Valore iniziale
x1 = 0.11; % Valore iniziale
    [x,k] = secanti(fun,x0,x1,tol,kmax); % Applicazione metodo
    s = "\t[%.2f, %.2f], |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,x1,abs(x-alpha),k);     % Stampa risultato

% 7.4.4
disp("4) f(x) = (x - 3)^3, alpha = 3");
% Dati
fun = @(x)(x-3).^3; % Funzione
alpha = 3;          % Radice
% Primo test
x0 = 1; % Valore iniziale
x1 = 2; % Valore iniziale
    [x,k] = secanti(fun,x0,x1,tol,kmax); % Applicazione metodo
    s = "\t[%d, %d], |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,x1,abs(x-alpha),k);     % Stampa risultato
% Secondo test
x0 = 2.5; % Valore iniziale
x1 = 2.9; % Valore iniziale
    [x,k] = secanti(fun,x0,x1,tol,kmax); % Applicazione metodo
    s = "\t[%.2f, %.2f], |x - alpha| = %.2e, n. iter. = %d\n";
    fprintf(s,x0,x1,abs(x-alpha),k);     % Stampa risultato

warning("on"); % Abilita i messaggi di warning
