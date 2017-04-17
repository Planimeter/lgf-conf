--=========== Copyright © 2017, Planimeter, All rights reserved. =============--
--
-- Purpose:
--
--============================================================================--

argv = {}
for _, v in ipairs( arg ) do argv[ v ] = true end

if ( argv[ "--debug" ] ) then
	_DEBUG = true
end

if ( argv[ "--dedicated" ] ) then
	_SERVER    = true
	_DEDICATED = true
end

if ( not _SERVER ) then
	_CLIENT = true
end

function framework.conf( c )
	if ( _DEDICATED ) then
		c.modules.window = false
		c.modules.graphics = false
	else
		c.window.title = "Untitled"
		c.window.icon = "images/icon.png"
		if ( jit.os == "OSX" ) then
			c.window.icon = "images/icon_osx.png"
		end
	end
	c.identity = false
end
