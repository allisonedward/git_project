%% Formulae for oblique shock waves
%% Mach number 5 approaching half double wedge assuming airfoil in air and...
... no reflection from flat surface.
    
M1 = 5
theta = 15;  % Given data
beta = 40;   % From oblique shock chart

% rho1/rho2
density = ((1.4+1)*(M1^2)*(sin(beta))^2)/((1.4-1)*(M1^2)*(sin(beta))^2+2);

% P2/P1
pressure = 1 + ((2 * 1.4)/(1.4 +1))*((M1^2)*((sin(beta))^2 - 1));

% T2/T1
Temperature = 1 + 2*(1.4-1)*M1^2*((sin(beta))^2 -1)*(1.4* M1^2*(sin(beta))^2 +1);

% Normal component of Mach no. M1
Mn1 = M1*sin(40);

% Normal component of Mach no. behind shock
Mn2_sq = (2+ 0.4*M1^2* (sin(beta))^2)/(2*1.4*M1^2*(sin(beta))^2 - 0.4);
M2 = sqrt((Mn2_sq)/(sin(beta-theta)^2))


% Region 3 of expansion fan

% Prandtl Meyer function v from isentropic table
v2 = 21.590;
v3 = v2 + 2*theta;
M3 = 3.09   % From isentropic table for v3

% Region 4 of oblique shock

beta3 = 28;% oblique shock chart
Mn3 = M3*(sin(beta3-theta));

% Normal component behind oblique shock 2
Mn4_sq = (2+ 0.4*M3^2* (sin(beta))^2)/(2*1.4*M3^2*(sin(beta))^2 - 0.4);
M4 = sqrt((Mn4_sq)/(sin(beta-theta)^2))

%% Mach number 5 approaching half modified double wedge assuming airfoil in air and...
... no reflection from flat surface.
    
M1_md = 5;
theta = 15;  % Given data
beta = 40;   % From oblique shock chart

% Normal component of Mach no. M1
Mn1_md = M1_md*sin(40);

% Normal component of Mach no. behind shock
Mn2_sq_md = (2+ 0.4*M1^2* (sin(beta))^2)/(2*1.4*M1^2*(sin(beta))^2 - 0.4);
M2_md = sqrt((Mn2_sq)/(sin(beta-theta)^2))

% Region 3 of expansion fan

% Prandtl Meyer function v from isentropic table
v2 = 21.590;
v3 = v2 + theta
M3 = 2.39;  % From isentropic table for v3








