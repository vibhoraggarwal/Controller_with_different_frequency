clear 
clc


Config.ON_GAZEBO = false;%Set 'True', if working with Gazebo
Config.Ts = 0.01;
configjoint= 'l_ankle_pitch';%The joint on which you want to run the experiment

%%Setting the PID values

%pids = WBToolbox.PIDConfiguration;
%pids.addPID(WBToolbox.PID('r_ankle_pitch', 150, 0, 0));

%%Running the model in a loop
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


