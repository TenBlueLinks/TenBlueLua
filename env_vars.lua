-- Load the configuration from conf.lua
dofile("conf.lua")

-- Loop through the conf table and set environment variables
for key, value in pairs(tbl.conf) do
    os.setenv("TENBLUELINKS_" .. key:upper(), tostring(value))
end