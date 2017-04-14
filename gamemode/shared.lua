DEFINE_BASECLASS( "gamemode_base" )

GM.Name = "Burger's Deathmatch"
GM.Author = "N/A"
GM.Email = "N/A"
GM.Website = "N/A"

function GM:CanTool( ply, trace, mode )
	return false
end

function GM:PhysgunPickup( ply, ent )
	return false
end

function GM:PlayerNoClip( pl, on )
	return false
end

function GM:CanProperty( pl, property, ent )
	return false
end

function GM:CanDrive( pl, ent )
	return false
end

include( 'player_class/player_deathmatch.lua' )