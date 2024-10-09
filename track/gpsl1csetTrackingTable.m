%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% FGI-GSRx software GNSS receiver
%
% Finnish Geospatial Research Institute
% Department of Navigation and Positioning
% DO NOT DISTRIBUTE
%
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function tC = gpsl1csetTrackingTable(tC, trackState)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Initialises tracking table for gps L1C signals
%
% Inputs:
%   tC          - Results from signal tracking for one channel
%   trackState  - Tracking state of channel
%
% Outputs:
%   tC          - Results from signal tracking for one channel
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Set functions to be executed for each defined mode
switch(trackState)
    case 'STATE_PULL_IN'
        tC.trackTable =...
            {'CN0fromSNR',10;...
            'freqDiscrimAtan',10;...
            'freqLoopFilterWide',10;...            
            'phaseDiscrim',10;...
            'phaseLoopFilterWide',10;...
            'phaseFreqFilter',10;...
            'codeDiscrim',10,;...
            'codeLoopFilter',10;...
            'lockDetect',10;...
            'gpsl1cUpdateChannelState',10};
case 'STATE_COARSE_TRACKING'
        tC.trackTable =...
            {'CN0fromSNR',10;...
            'freqDiscrimAtan',10;...
            'freqLoopFilterNarrow',10;...            
            'phaseDiscrim',10;...
            'phaseLoopFilterNarrow',10;...
            'phaseFreqFilter',10;...          
            'codeDiscrim',10,;...
            'codeLoopFilter',10;...
            'lockDetect',10;...
            'gpsl1cUpdateChannelState',10};        
    case 'STATE_FINE_TRACKING'
        tC.trackTable =...
            {'CN0fromSNR',10;...
            'freqDiscrimAtan',10;...
            'freqLoopFilterVeryNarrow',10;...            
            'phaseDiscrim',10;...
            'phaseLoopFilterVeryNarrow',10;...
            'phaseFreqFilter',10;...         
            'codeDiscrim',10,;...
            'codeLoopFilter',10;...
            'lockDetect',10;...
            'gpsl1cUpdateChannelState',10};
end








