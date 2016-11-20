-- reload recipes and technologies in game from prototypes (aka update existing ones with changes)
for i, player in ipairs(game.players) do
  player.force.resetrecipes()
  player.force.resettechnologies()
end

for index, force in pairs(game.forces) do
  -- generate technology / recipes tables once and store them
  local tech = force.technologies
  local recipes = force.recipes 
  
  -- if this tech exists and is researched then
  if tech["logistics"] and tech["logistics"].researched then
    -- these checks are really only for if another mod changes things
    if recipes["fast-short-inserter"] then -- not sure if this is needed by this mod...
      recipes["fast-short-inserter"].enabled = true
    end
  end
end