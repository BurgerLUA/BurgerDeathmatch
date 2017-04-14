AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
include( "shared.lua" )

DEFINE_BASECLASS( "gamemode_base" )

function GM:PlayerSpawn( pl )
	player_manager.SetPlayerClass( pl, "player_deathmatch" )
	BaseClass.PlayerSpawn( self, pl )
end

function GM:PlayerShouldTakeDamage( ply, attacker )
	return true
end

function GM:ShowHelp( ply )
	Player:ConCommand("playermodel_selector")
end

function GM:CanEditVariable( ent, ply, key, val, editor )
	return false
end

function GM:PlayerSpawnObject( ply )
	return false
end

function GM:CanPlayerUnfreeze( ply, entity, physobject )
	return false
end

function GM:PlayerSpawnRagdoll( ply, model )
	return false
end

function GM:PlayerSpawnProp( ply, model )
	return false
end

function GM:PlayerSpawnEffect( ply, model )
	return false
end

function GM:PlayerSpawnVehicle( ply, model, vname, vtable )
	return false
end

function GM:PlayerSpawnSWEP( ply, wname, wtable )
	return false
end

function GM:PlayerGiveSWEP( ply, wname, wtable )
	return false
end

function GM:PlayerSpawnSENT( ply, name )
	return false
end

function GM:PlayerSpawnNPC( ply, npc_type, equipment )
	return false
end


-- Do I need these?
--[[
function CCSpawn( player, command, arguments )
	return
end

function DoPlayerEntitySpawn( player, entity_name, model, iSkin, strBody )
	return nil
end

function Spawn_SENT( player, EntityName, tr )
	return
end

function CCGiveSWEP( player, command, arguments )
	return
end

function Spawn_Weapon( Player, wepname, tr )
	return
end

function Spawn_Vehicle( Player, vname, tr )
	return
end
--]]