clear 
clc

Config.ON_GAZEBO = false;
Config.Ts = 0.01;
configjoint= 'l_ankle_pitch';
%pids = WBToolbox.PIDConfiguration;
%pids.addPID(WBToolbox.PID('r_ankle_pitch', 150, 0, 0));

initdata;
freq=initial:interval:final;
n=fix((final-initial)/interval)+1;
clear initial;
clear final;
clear interval;
for i=1:(n)
   f=freq(i);
   sim('../SetPosition_2016')
  
   
end
clear i;


