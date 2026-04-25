// Capacitor Charging and Discharging Plot
clc;
clear;
close;

// Parameters
Vs = 5;          // Supply voltage (volts)
R = 1;           // Resistance (ohms)
C = 1;           // Capacitance (farads)
tau = R * C;     // Time constant (seconds)
t = 0:0.01:5*tau; // Time vector (5 time constants)

// Charging
Vc_charge = Vs * (1 - exp(-t / tau));
I_charge = (Vs / R) * exp(-t / tau);

// Discharging
Vc_discharge = Vs * exp(-t / tau);
I_discharge = -(Vs / R) * exp(-t / tau);

// Plot Voltage
subplot(2,1,1);
plot(t, Vc_charge, 'b', t, Vc_discharge, 'r--');
xlabel('Time (seconds)');
ylabel('Voltage (V)');
title('Capacitor Charging and Discharging - Voltage');
legend(['Charging'; 'Discharging']);
xgrid();

// Plot Current
subplot(2,1,2);
plot(t, I_charge, 'g', t, I_discharge, 'm--');
xlabel('Time (seconds)');
ylabel('Current (A)');
title('Capacitor Charging and Discharging - Current');
legend(['Charging'; 'Discharging']);
xgrid();
