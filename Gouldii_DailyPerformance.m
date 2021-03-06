
%clc;clear;close all;

% ----------------------------------------------------------------------
%load('C:\Program Files\Matlab\MATLAB Production Server\R2015a\bin\Gouldii_root\Reference\Gouldii_Strategy_Prime_v2\WFA\20070820_20181102_WFAfinaloutput_20181109_001859.mat');
%load('C:\Program Files\Matlab\MATLAB Production Server\R2015a\bin\Gouldii_root\buynhold.mat');

function Gouldii_DailyPerformance(WFAfinaloutput, histocolor,histotrans,TradeDate,initialportfolio,SelectedStrategy_temp)

[NetLiqR, NetLiqC] = size(WFAfinaloutput);
%[NetLiqR, NetLiqC] = size(finaloutput);

NetLiqT = WFAfinaloutput(:,30);
%NetLiqT = finaloutput(:,30);
% ----------------------------------------------------------------------
NetLiqT = NetLiqT(3:end);

NetLiqT = cell2mat(NetLiqT);

Dates = datestr(TradeDate);
Dates = cellstr(Dates);

TimeSeriesObject = fints(Dates, NetLiqT);
idate = {'17-Aug-2007'};
initial = fints(idate,initialportfolio);

DailyData = todaily(TimeSeriesObject);
DailyData = merge(initial,DailyData);

DailyReturns  = tick2ret(DailyData);

DailyReturnsData = fts2mat(DailyReturns);
DailyReturnsDataNoZeros = DailyReturnsData(DailyReturnsData~=0);
xmin = min(DailyReturnsData);
xmin = round(xmin,1);
xmax = max(DailyReturnsData);
xmax= round(xmax,1);
%xtic = [xmin:.01:xmax];
xtic = [-1:.01:1];



figure(31)
HistoGraphps = histogram(DailyReturnsData,xtic);
%HistoGraphps = histogram(DailyReturnsData,201);
xlim([-1 1]);
%xtickformat('percentage');
%HistoGraphps(1).FaceColor = 'b';
HistoGraphps(1).FaceColor = histocolor;
HistoGraphps(1).FaceAlpha = histotrans;
set(gca,'Xtick',-1:.1:1)
%set(gca,'XtickLabel',time(1:3:end))
hold on

figure(41)
HistoGraphps = histogram(DailyReturnsDataNoZeros,xtic);
%HistoGraphps = histogram(DailyReturnsData,201);
xlim([-1 0.5]);
%xtickformat('percentage');
%HistoGraphps(1).FaceColor = 'b';
HistoGraphps(1).FaceColor = histocolor;
HistoGraphps(1).FaceAlpha = histotrans;
set(gca,'Xtick',-1:.1:1)
set(gca,'XMinorTick','on','YMinorTick','on')


% Convert y-axis values to percentage values by multiplication
     xaxispercent=[cellstr(num2str(get(gca,'xtick')'*100))]; 
% Create a vector of '%' signs
     pct = char(ones(size(xaxispercent,1),1)*'%'); 
% Append the '%' signs after the percentage values
     new_xticks = [char(xaxispercent),pct];
% 'Reflect the changes on the plot
     set(gca,'xticklabel',new_xticks)


%xaxislabel

hold on
%{
figure(2001)
HistoGraphs = histogram(DailyReturnsData,zoom);
HistoGraphps(1).FaceColor = random1;
hold on

figure(4001)
HistoGraphps = histogram(DailyReturnsData,zoompos);
HistoGraphps(1).FaceColor = random1;
hold on

figure(3001)
HistoGraphps = histogram(DailyReturnsData,zoomneg);
HistoGraphps(1).FaceColor = random1;
hold on

figindex = floor(200*random1(1));
figure(figindex)
HistoGraph2 = histfit(DailyReturnsData,length(xtic));
HistoGraph2(1).FaceColor = random2;
HistoGraph2(2).Color = random3;
pd = fitdist(DailyReturnsData,'Normal')

results = fts2mat(DailyReturns, 1);
results(:,1) = str2num(datestr(datenum(results(:,1)),'YYYYmmDD'));

xlswrite('DailyReturnsData',DailyReturnsData);
xlswrite('DailyReturnsDataResults',results);
%}
results = fts2mat(DailyReturns, 1);
results(:,1) = str2num(datestr(datenum(results(:,1)),'YYYYmmDD'));
xlswrite('DailyReturnsData',DailyReturnsData);
xlswrite('DailyReturnsDataResults',results);

end