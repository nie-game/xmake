--!A cross-platform build utility based on Lua
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--
-- Copyright (C) 2015-2020, TBOOX Open Source Group.
--
-- @author      ruki
-- @file        find_lipo.lua
--

-- imports
import("lib.detect.find_program")
import("lib.detect.find_programver")

-- find lipo
--
-- @param opt   the argument options, e.g. {version = true}
--
-- @return      program, version
--
-- @code
--
-- local lipo = find_lipo()
--
-- @endcode
--
function main(opt)

    -- init options
    opt       = opt or {}
    opt.check = opt.check or function (program) os.run("%s -info %s", program, os.programfile()) end

    -- find program
    return find_program(opt.program or "lipo", opt)
end
