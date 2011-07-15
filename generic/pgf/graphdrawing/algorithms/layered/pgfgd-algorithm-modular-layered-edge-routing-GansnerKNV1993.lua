-- Copyright 2011 by Jannis Pohlmann
--
-- This file may be distributed and/or modified
--
-- 1. under the LaTeX Project Public License and/or
-- 2. under the GNU Public License
--
-- See the file doc/generic/pgf/licenses/LICENSE for more information

-- @release $Header: /home/mojca/cron/mojca/github/cvs/pgf/pgf/generic/pgf/graphdrawing/algorithms/layered/pgfgd-algorithm-modular-layered-edge-routing-GansnerKNV1993.lua,v 1.1 2011/07/15 15:53:28 jannis-pohlmann Exp $

pgf.module("pgf.graphdrawing")



EdgeRoutingGansnerKNV1993 = {}
EdgeRoutingGansnerKNV1993.__index = EdgeRoutingGansnerKNV1993



function EdgeRoutingGansnerKNV1993:new(graph)
  local algorithm = {
    graph = graph,
  }
  setmetatable(algorithm, EdgeRoutingGansnerKNV1993)
  return algorithm
end



function EdgeRoutingGansnerKNV1993:run()
end
