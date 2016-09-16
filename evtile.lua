
function data()

race ={}
m = {}
w = {}
list = {"Centaur","Draconian","Demonspawn","Deep Dwarf","Deep Elf","Demigod","Felid","Formicid","Ghoul","Gargoyle","Halfling","High Elf","Hill orc",
"Human","Kobold","Merfolk","Minotaur","Mummy","Naga","Ogre","Octopode","Spriggan","Tengu","Troll","Vine Stalker","Vampire"}
for index,value in pairs(list) do
race[value] = {}
end


race["Centaur"][m] = {[6]="tile:MONS_CENTAUR_WARRIOR_MELEE",[10]="nessos"}
race["Centaur"][w] = {[6]="tile:MONS_CENTAUR_WARRIOR_MELEE",[10]="nessos"}
race["Draconian"][m] = {[6]="bai suzhen"}
race["Draconian"][w] = {[6]="tiamat"}
race["Demonspawn"][m] = {[6]="rakshasa",[12]="mara",[18]="tile:MONS_DIMME"}
race["Demonspawn"][w] = {[6]="pandemonium lord"}
race["Deep Dwarf"][m] = {[10]="jorgrun"}
race["Deep Dwarf"][w] = {[10]="dwarf",[15]="tile_mons:wiglaf"}
race["Deep Elf"][m] = {[6]="deep elf mage",[12]="deep elf sorcerer",[18]="deep elf annihilator"}
race["Deep Elf"][w] = {[6]="deep elf archer",[12]="deep elf knight",[18]="deep elf blademaster"}
race["Demigod"][m] = {[10]="frances"}
race["Demigod"][w] = {[10]="frederick"}
race["Felid"][m] = {[10]="natasha"}
race["Felid"][w] = {[10]="natasha"}
race["Formicid"][m] = {[10]="entropy weaver"}
race["Formicid"][w] = {[10]="entropy weaver"}
race["Ghoul"][m] = {[6]="necrophage",[12]="imperial myrmidon",[18]="ragged hierophant"}
race["Ghoul"][w] = {[6]="necrophage",[12]="imperial myrmidon",[18]="ragged hierophant"}
race["Gargoyle"][m] = {[6]="war gargoyle",[12]="molten gargoyle"}
race["Gargoyle"][w] = {[6]="war gargoyle",[12]="molten gargoyle"}
race["Halfling"][m] = {[6]="joseph"}
race["Halfling"][w] = {[6]="joseph"}
race["High Elf"][m] = {[6]="dowan"}
race["High Elf"][w] = {[6]="duvessa"}
race["Hill orc"][m] = {[6]="orc wizard",[12]="nergalle",[16]="orc high priest",[20]="saint roka"}
race["Hill orc"][w] = {[6]="orc warrior",[12]="orc knight",[16]="Orc warlord",[20]="saint roka"}
race["Human"][m] = {[6]="psyche",[10]="wizard",[15]="cloud mage",[18]="hellbinder",[21]="tile:MONS_MASTER_ELEMENTALIST",[24] ="servant of whispers"}
race["Human"][w] = {[6]="vault guard",[12]="vault sentinel",[18]="vault warden",[21]="hell knight"}
race["Kobold"][m] = {[6]="kobold demonologist"}
race["Kobold"][w] = {[6]="big kobold",[12]="pikel",[18]="sonja"}
race["Merfolk"][m] = {[6]="tile:mons_merfolk_avatar_water",[12]="tile:MONS_MERFOLK_AQUAMANCER_WATER",[16]="tile:MONS_ILSUIW_WATER"}
race["Merfolk"][w] = {[6]="merfolk javelineer",[12]="merfolk impaler"}
race["Minotaur"][m] = {[10]="asterion"}
race["Minotaur"][w] = {[10]="asterion"}
race["Mummy"][m] = {[6]="mummy priest",[12]="menkaure",[18]="halazid warlock",[21]="khufu"}
race["Mummy"][w] = {[6]="guardian mummy",[12]="jiangshi"}
race["Naga"][m] = {[6]="naga mage",[12]="naga ritualist",[18]="greater naga",[21]="tile:mons_lamia"}
race["Naga"][w] = {[6]="naga sharpshooter",[12]="naga warrior",[18]="vashnia"}
race["Ogre"][m] = {[6]="ogre mage",[12]="erolcha",[18]="tile:mons_chuck"}
race["Ogre"][w] = {[6]="tile:mons_two_headed_ogre",[12]="hill giant",[18]="iron giant"}
race["Octopode"][m] = {[10]="kraken"}
race["Octopode"][w] = {[10]="kraken"}
race["Spriggan"][m] = {[6]="spriggan air mage",[12]="spriggan druid",[18]="enchantress"}
race["Spriggan"][w] = {[6]="spriggan berserker",[12]="spriggan defender",[18]="agnes"}
race["Tengu"][m] = {[6]="tengu conjurer",[12]="tengu reaver",[18]="sojobo"}
race["Tengu"][w] = {[6]="tengu warrior",[12]="sojobo"}
race["Troll"][m] = {[6]="purgy",[12]="snorg",[18]="moon troll"}
race["Troll"][w] = {[6]="purgy",[12]="snorg",[18]="moon troll"}
race["Vine Stalker"][m] = {[10]="tile:mons_vine_golem"}
race["Vine Stalker"][w] = {[10]="tile:mons_vine_golem"}
race["Vampire"][m] = {[6]="ghost",[12]="vampire mage",[18]="jory"}
race["Vampire"][w] = {[6]="vampire knight",[12]="profane servitor",[18]="jory"}

end



function change()
data()
local max_level = you.xl()
breakpoint = 0
for level = 1,max_level do
if race[checkspecies()][checkbg()][level] ~= nil then
breakpoint = level
end
end
if breakpoint ~= 0 then
crawl.mpr("<yellow>You evolved!</yellow>")
if string.find(race[checkspecies()][checkbg()][breakpoint],"tile") then
crawl.setopt("tile_player_tile =" .. race[checkspecies()][checkbg()][breakpoint])
else
crawl.setopt("tile_player_tile = mons:" .. race[checkspecies()][checkbg()][breakpoint])
end
end
end


local start = true
local p_level = 1
local switch = false
local min_level = 6

function EvolutionTile()

local c_level = you.xl()

if start then
if c_level < min_level then
crawl.setopt("tile_player_tile = playermons")
else
change()
end
start = false
crawl.mpr("<cyan>Evtile 0.1 enabled</cyan>")
end

if c_level > p_level and not switch then
change()
p_level = c_level
end
end




function toggle()
if not switch then
crawl.setopt("tile_player_tile = normal")
switch = true
crawl.mpr("<cyan>Evtile 0.1 Disabled</cyan>")
else
switch = false
start = true
end
end


function checkspecies()
local species = you.race()
draconame = {"Red","Grey","White","Green","Yellow","Grey","Black","Purple","Mottled","Pale"}
for index,value in pairs(draconame) do
if string.find(species,value) then
species = "Draconian"
end
end
return species
end

function checkbg()
local background
local magicskill = 0
local meleeskill = 0
magus = {"Spellcasting","Stealth","Conjurations","Hexes","Charms","Summonings","Necromancy","Translocations","Transmutations","Fire Magic","Ice Magic","Air Magic","Earth Magic","Poison Magic"}
warrior = {"Fighting","Armour","Dodging","Short Blades","Long Blades","Axes","Maces & Flails","Polearms","Staves","Slings","Bows","Crossbows","Throwing","Shields","Unarmed Combat"}

for index,value in pairs(magus) do
magicskill = magicskill + you.skill(value)
end
for index,value in pairs(warrior) do
meleeskill = meleeskill + you.skill(value)
end


if magicskill > meleeskill then
background = m
else
background = w
end
return background
end



