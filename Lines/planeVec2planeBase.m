function E = planeVec2planeBase(n)

% PLANEVEC2PLANEBASE  Orthonormal base for a plane
%   E = PLANEVEC2PLANEBASE(N) is an orthonormal base E=[e1 e2] of a plane
%   normal to N and passing through the origin. N is required to be
%   normalized. The two vectors of the base are computed as follows
%
%       e1 = [-N(2);N(1);0]/norm(N(1:2))
%       e2 = cross(e1,N)

%   Copyright 2008-2009 Joan Sola @ LAAS-CNRS.


e1 = [n(2);-n(1);0]/sqrt(dot(n(1:2),n(1:2)));
e2 = cross(n,e1);
E  = [e1 e2];



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

