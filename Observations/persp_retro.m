function [p,Pup,Ps] = persp_retro(up,s)

% PERSP_RETRO  Retroproject pixel into 3D space.
%   P = PERSP_RETRO(UP,S) retro-projects the point UP of the image
%   plane into the point P at depth S in 3D space using a
%   normalized camera.
%
%   See also INVPINHOLE.

%   Copyright 2008-2009 Joan Sola @ LAAS-CNRS.



p = [s.*up(1,:) ; s.*up(2,:) ; s.*ones(1,size(up,2))];

if nargout > 1
    Pup = s*eye(3,2);
    Ps  = [up;1];
end

return

%% jac

syms u v s real
up = [u;v];

[p,Pup,Ps] = retro(up,s);

Pup - jacobian(p,up)
Ps - jacobian(p,s)



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

