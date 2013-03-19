function drawHmgPnt(MapFig, Lmk, color, MapOpt)

% DRAWHMGPNT  Draw Homogeneous point landmark in MapFig.

%   Copyright 2008-2009 Joan Sola @ LAAS-CNRS.

global Map

posOffset = [0;0;.2];

% transform to Euclidean
[x,P] = propagateUncertainty(       ...
    Map.x(Lmk.state.r),             ...
    Map.P(Lmk.state.r,Lmk.state.r), ...
    @hmg2euc);

% draw
drawPnt    (MapFig.Lmk(Lmk.lmk).mean,    x,    color.mean)
if MapOpt.showEllip
    drawEllipse(MapFig.Lmk(Lmk.lmk).ellipse, x, P, color.ellip)
end
drawLabel  (MapFig.Lmk(Lmk.lmk).label,   x+posOffset, num2str(Lmk.id))



% ========== End of function - Start GPL license ==========


%   # START GPL LICENSE

%---------------------------------------------------------------------
%
%   This file is part of SLAMTB, a SLAM toolbox for Matlab.
%
%   SLAMTB is free software: you can redistribute it and/or modify
%   it under the terms of the GNU General Public License as published by
%   the Free Software Foundation, either version 3 of the License, or
%   (at your option) any later version.
%
%   SLAMTB is distributed in the hope that it will be useful,
%   but WITHOUT ANY WARRANTY; without even the implied warranty of
%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%   GNU General Public License for more details.
%
%   You should have received a copy of the GNU General Public License
%   along with SLAMTB.  If not, see <http://www.gnu.org/licenses/>.
%
%---------------------------------------------------------------------

%   SLAMTB is Copyright 2007, 2008, 2009, 2010, 2011, 2012 
%   by Joan Sola @ LAAS-CNRS.
%   SLAMTB is Copyright 2009 
%   by Joan Sola, David Marquez and Jean Marie Codol @ LAAS-CNRS.
%   See on top of this file for its particular copyright.

%   # END GPL LICENSE

