 local _ENV = _ENV if _VERSION < "Lua 5.2" then 	_ENV = (getfenv and getfenv()) or _G end		 --0
 local __export = {}  		 --0
----
local input = _ENV.io . open ( "input.txt" ) : read ( "*a" ) --1
local window = { } --4
local windowsize = 4 --6
local count = 0 --10
local result = nil --11
repeat--12
count = count + ( 1 ) --13
local char = input : sub ( count , count ) --14
_ENV.table . insert ( window , char ) --15
if not window [ char ] then --17
window [ char ] = 1 --18
else--19
window [ char ] = window [ char ] + ( 1 ) --20
end--21
if # window > windowsize then --22
local removed = _ENV.table . remove ( window , 1 ) --23
window [ removed ] = window [ removed ] - ( 1 ) --24
end--26
if count > 3 then --28
local finished = true --29
for i = 1 , windowsize do --30
if window [ window [ i ] ] > 1 then --32
finished = false --33
end--34
end--35
if finished then --36
result = count --37
end--38
end--39
until result --40
_ENV.print ( result ) --41
window = { } --4
count = 0 --10
result = nil --11
repeat--12
count = count + ( 1 ) --13
local char = input : sub ( count , count ) --14
_ENV.table . insert ( window , char ) --15
if not window [ char ] then --17
window [ char ] = 1 --18
else--19
window [ char ] = window [ char ] + ( 1 ) --20
end--21
if # window > windowsize then --22
local removed = _ENV.table . remove ( window , 1 ) --23
window [ removed ] = window [ removed ] - ( 1 ) --24
end--26
if count > 3 then --28
local finished = true --29
for i = 1 , windowsize do --30
if window [ window [ i ] ] > 1 then --32
finished = false --33
end--34
end--35
if finished then --36
result = count --37
end--38
end--39
until result --40
_ENV.print ( result ) --41
---