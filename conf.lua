--=========== Copyright © 2016, Planimeter, All rights reserved. =============--
--
-- Purpose:
--
--============================================================================--

argv = {}
for _, v in ipairs( arg ) do
	argv[ v ] = true
end

function love.conf( c )
	c.title = "Untitled"
	c.version = "0.10.1"
	if ( argv[ "--dedicated" ] ) then
		c.modules.keyboard = false
		c.modules.mouse = false
		c.modules.joystick = false
		c.modules.touch = false
		c.modules.image = false
		c.modules.graphics = false
		c.modules.audio = false
		c.modules.sound = false
		c.modules.system = false
		c.modules.font = false
		c.modules.window = false
		c.modules.video = false
	else
		c.window.highdpi = true
		c.window.icon = "images/icon.png"
		require( "love.system" )
		if ( love.system.getOS() == "OS X" ) then
			c.window.icon = "images/icon_osx.png"
		end
	end
	c.identity = false
end
