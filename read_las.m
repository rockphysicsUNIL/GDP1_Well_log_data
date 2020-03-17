% Read las files
% clear all; close all;

function [Data,header]=read_las(filename)

% The function reads well log curves from the las files in this folder.

% INPUT 
% filename: the string with the file name including .las (and the full path to the data folder if necessary)
% OUTPUT:
% Data: Matrix containing well log curves
%       Each well log curve is represented by a column and the first column is the depth.
% header: the header contains the mnemonics of the logs

fid=fopen(filename);
n=1;

while ~feof(fid)
      tline = fgetl(fid);
     
      
      if strcmpi(tline(1:6),'~CURVE')
         %disp(tline)
         n=-2;
      elseif strcmpi(tline(1:2),'~A')
         disp(tline)
         pause(1)
         header= textscan(tline,'%s');
         sizeA = [n Inf];
         Data=fscanf(fid,'%f',sizeA);
         break
      end
      n=n+1;
    
end
fclose(fid);
Data=Data';


%% Plot data
Temp=Data;
Temp(Temp==-999.25)=NaN;

figure
p=2;
for sp=1:length(Temp(1,2:end))
subplot(1,length(Temp(1,2:end)),sp)
plot(Temp(:,p),Temp(:,1))
xlabel(header{1,1}{p+1,1})
ylabel('depth [m]')
ylim([Temp(1,1) Temp(end,1)])
set(gca,'Ydir','reverse')
if strcmpi(header{1,1}{p+1,1}(1),'R')
   set(gca,'Ydir','reverse','Xscale','log')
end
p=p+1;
end
