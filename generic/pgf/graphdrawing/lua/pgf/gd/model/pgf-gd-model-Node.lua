-- Copyright 2012 by Till Tantau
--
-- This file may be distributed an/or modified
--
-- 1. under the LaTeX Project Public License and/or
-- 2. under the GNU Public License
--
-- See the file doc/generic/pgf/licenses/LICENSE for more information

-- @release $Header: /home/mojca/cron/mojca/github/cvs/pgf/pgf/generic/pgf/graphdrawing/lua/pgf/gd/model/pgf-gd-model-Node.lua,v 1.2 2012/04/18 15:28:18 tantau Exp $





--- The Node class ...
--
--

local Node = pgf.graphdrawing.Node
Node.__index = Node


-- Namespace

local model   = require "pgf.gd.model"
model.Node = Node



-- Done

return Node