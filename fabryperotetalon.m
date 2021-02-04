prompt = 'Reflectance: ';
R = input(prompt)
prompt2 = 'Free Spectral Range (in GHz): ';
FSR = input(prompt2) 
prompt3 = 'Starting wavelength (in nm): ';
lambda1 = input(prompt3) 
prompt4 = 'Ending wavelength (in nm): ';
lambda2 = input(prompt4) 
c = 299792458; %light speed in m/s
n = 1; %refractive index of air
theta = 0; %degree
lambda1 = 1545; %in nm
lambda2 = 1555; %in nm
F = (4*R)/(1-R)^2
d = c/(2*FSR*(10^9)) %in meters
for j = lambda1:0.001:lambda2
   delta = ((4*pi)/j)*d;
   T = 1/(1+F*(sin(delta/2)^2));
   Tdb = 10*log10(1/T);
   plot(j, Tdb, '.-'); hold on, grid on
end