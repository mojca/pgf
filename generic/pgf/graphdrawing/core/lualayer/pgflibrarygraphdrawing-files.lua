-- Copyright 2010 by Renée Ahrens, Olof Frahm, Jens Kluttig, Matthias Schulz, Stephan Schuster
--
-- This file may be distributed an/or modified
--
-- 1. under the LaTeX Project Public License and/or
-- 2. under the GNU Public License
--
-- See the file doc/generic/pgf/licenses/LICENSE for more information

-- @release $Header: /home/mojca/cron/mojca/github/cvs/pgf/pgf/generic/pgf/graphdrawing/core/lualayer/pgflibrarygraphdrawing-files.lua,v 1.4 2011/06/28 01:22:03 jannis-pohlmann Exp $

-- This file defines a list of initial files to load.

local files = {
   "module",
   "table",
   "iter",
   "string",
   "sys",
   "vector",
   "quadtree",
   "path",
   "box",
   "node",
   "edge",
   "graph",
   "traversal",
   "fibonacci-heap",
   "priority-queue",
   "algorithms",
   "coarse-graph",
   "component-packing",
   "interface",
   "orientation",
   "positioning-helpers",
   "texboxregister",
   "ranking",
--   "test-path",
--   "test-box",
--   "test-vector",
--   "test-quadtree",
}

return files
