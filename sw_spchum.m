function [a] = spchum(airtmp,press,relhum)

%  This function calculates the specific humidity as function of air 
%  temperature, pressure and humidity. Based on A. Gill's book 
%  Atmosphere-Ocean Dynamics p 605.
%
%  SPCHUM ------------ Specific humidity (the mass of vapour per unit 
%                      mass of moist air
%  RMIXRT ------------ The mixing ratio
%  AIRTMP ------------ Air temperature (C)
%  PRESS ------------- Barometric pressure (mb)
%  RELHUM ------------ Relative humidity defined as 100%*W/Ws, where W is
%                      the mixing ratio and Ws the saturation mixing ratio
%
%w=sw_rmixrt(airtmp,press,relhum);
e_a = relhum.*10.^((0.7859+0.03477*airtmp)./(1.0+0.00412*airtmp) + 2);
a = 0.622*e_a./(press-0.378*e_a);

%a=w./(1.0+w);
