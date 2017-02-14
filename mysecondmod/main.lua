local mySecondMod = RegisterMod("mySecondMod",1)
--devenons immortels

function mySecondMod:immortality(_mySecondMod)
  local player = Isaac.GetPlayer(0)
  player:SetFullHearts()
  Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_LIL_BATTERY,1, player.Position, player.Velocity, player)
end

mySecondMod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, mySecondMod.immortality, EntityType.EntityPlayer)
