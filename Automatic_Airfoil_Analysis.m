aoa_range = -10:1:10; % Define range of angles of attack
lift_results = zeros(size(aoa_range));
drag_results = zeros(size(aoa_range));

for i = 1:length(aoa_range)
    aoa = aoa_range(i);
    assignin('base', 'aoa', aoa); % Assign AOA to the workspace variable used in Simulink
    
    % Run the simulation
    simOut = sim('E243_Airfoil_Analysis');
    
    % Collect lift and drag from simulation output
    lift_results(i) = simOut.get('Lift'); 
    drag_results(i) = simOut.get('Drag');
end
