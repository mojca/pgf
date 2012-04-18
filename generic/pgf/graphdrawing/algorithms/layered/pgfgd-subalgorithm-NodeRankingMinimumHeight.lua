-- Copyright 2011 by Jannis Pohlmann
--
-- This file may be distributed and/or modified
--
-- 1. under the LaTeX Project Public License and/or
-- 2. under the GNU Public License
--
-- See the file doc/generic/pgf/licenses/LICENSE for more information

-- @release $Header: /home/mojca/cron/mojca/github/cvs/pgf/pgf/generic/pgf/graphdrawing/algorithms/layered/pgfgd-subalgorithm-NodeRankingMinimumHeight.lua,v 1.3 2012/04/18 15:28:18 tantau Exp $

pgf.module("pgf.graphdrawing")


local Ranking = require "pgf.gd.layered.Ranking"


NodeRankingMinimumHeight = {}
NodeRankingMinimumHeight.__index = NodeRankingMinimumHeight



function NodeRankingMinimumHeight:new(main_algorithm, graph)
  local algorithm = {
    main_algorithm = main_algorithm,
    graph = graph,
  }
  setmetatable(algorithm, NodeRankingMinimumHeight)
  return algorithm
end



function NodeRankingMinimumHeight:run()
  local ranking = Ranking:new()

  for node in lib.Iterators:topologicallySorted(self.graph) do
    local edges = node:getIncomingEdges()

    if #edges == 0 then
      ranking:setRank(node, 1)
    else
      local max_rank = table.combine_values(edges, function (max_rank, edge)
        return math.max(max_rank, ranking:getRank(edge:getNeighbour(node)))
      end, -math.huge)

      assert(max_rank >= 1)

      ranking:setRank(node, max_rank + 1)
    end
  end

  return ranking
end
