local util = require("__bzzirconium__.data-util");

util.add_prerequisite("advanced-material-processing", "zirconia-processing")
util.add_prerequisite("low-density-structure", "zirconia-processing")
util.set_prerequisite("explosives", {"zirconium-processing"})
util.add_prerequisite("military-3", "zirconium-processing")
util.add_prerequisite("nuclear-power", "zirconium-processing")

-- Nixie tubes
util.add_prerequisite("cathodes", "zirconia-processing")
util.add_prerequisite("SNTD-nixie-tubes-1", "zirconia-processing")

if util.me.use_cermet() then
  -- production science techs behind cermet
  util.add_prerequisite("effect-transmission", "cermet")
  if not util.fe_plus("Machines") then
    util.add_prerequisite("automation-3", "cermet")
  else
    util.add_prerequisite("mechanical-engineer", "cermet")
    util.add_prerequisite("advanced-oil-processing-3", "cermet")
  end
  util.add_prerequisite("productivity-module-3", "cermet")
  util.add_prerequisite("speed-module-3", "cermet")
  util.add_prerequisite("effectivity-module-3", "cermet")

  -- utility science techs behind cermet
  util.add_prerequisite("rocket-control-unit", "cermet")

  -- Bob's
  util.add_prerequisite("chemical-plant-3", "cermet")
  util.add_prerequisite("oil-processing-3", "cermet")
  util.add_prerequisite("bob-drills-4", "cermet")
  util.add_prerequisite("bob-area-drills-4", "cermet")


  if mods["space-exploration"] then
    util.set_tech_recipe("cermet",
          {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
          })
    util.add_prerequisite("cermet", "advanced-materials-processing-2")
    util.remove_prerequisite("cermet", "production-science-pack")
  end
end
