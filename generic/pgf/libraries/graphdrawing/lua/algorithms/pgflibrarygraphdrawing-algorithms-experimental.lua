-- Copyright 2011 by Jannis Pohlmann
--
-- This file may be distributed and/or modified
--
-- 1. under the LaTeX Project Public License and/or
-- 2. under the GNU Public License
--
-- See the file doc/generic/pgf/licenses/LICENSE for more information

--- @release $Header: /home/mojca/cron/mojca/github/cvs/pgf/pgf/generic/pgf/libraries/graphdrawing/lua/algorithms/Attic/pgflibrarygraphdrawing-algorithms-experimental.lua,v 1.1 2011/05/02 02:34:04 jannis-pohlmann Exp $

pgf.module("pgf.graphdrawing")



function drawGraphAlgorithm_experimental(graph)
  require('pgflibrarygraphdrawing-algorithms-spring.lua')
  drawGraphAlgorithm_spring(graph)

  orientation.adjust(graph)
end
