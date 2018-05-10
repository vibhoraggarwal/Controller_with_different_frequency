
whichsimfile=input('Enter the file number to use:\n');
y_ref= ScopeData(whichsimfile).signals(1).values;
y_meas_tor= ScopeData(whichsimfile).signals(2).values;
y_meas_pos= ScopeData(whichsimfile).signals(3).values;
y_meas_vel= ScopeData(whichsimfile).signals(4).values;
time= ScopeData(whichsimfile).time;