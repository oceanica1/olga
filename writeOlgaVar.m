function writeOlgaVar(name, data, format) 

if nargin == 2,
    format = "%d";
end

maxt = size(data,2);

fprintf(name);
fprintf("\n");
for t=1:maxt-1
    fprintf(num2str(data(t), format));
    fprintf(", ");
end
fprintf(num2str(data(maxt), format));  
fprintf("\n");
fprintf("\n");