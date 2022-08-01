clc;
clear all;
close all;

maxt = 240;

t = 0:maxt-1;

rt = rand_std(80,0.005,maxt);
rt = round(rt);
rp = rand_std(1500,0.025,maxt);
rp = round(rp);

gor = rand_std(600,0.25,maxt);
gor = round(gor);

wc = rand_std(0.009,0.25,maxt);

% choke = 0.3+rand(1,maxt)*0.7;
% 
% for s = 1:maxt
%     id = round(s/2);
%     
%     if (s/2 == id)
%         choket(s) = 2*t(id) + 1/48;                
%     else
%         choket(s) = 2*t(id);
%     end
%     
%     chokev(s+1) = choke(id);
% end   
% 
% chokev(1) = chokev(2);
% chokev(end) = [];

randchoke =  0.6+rand()*0.4;
for t=1:maxt
   if (round(t/7) == t/7)
        randchoke =  0.6+rand()*0.4;
   end

   chokev(t) = randchoke;
   choket(t) = t-1;
end

writeOlgaVar("t", t); 

writeOlgaVar("rt", rt); 
writeOlgaVar("rp", rp); 

writeOlgaVar("gor", gor); 
writeOlgaVar("wc", wc, "%0.2g"); 

writeOlgaVar("choket", choket, "%0.5g"); 
writeOlgaVar("choke", chokev, "%0.1g"); 