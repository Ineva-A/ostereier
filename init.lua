--easter mod

local egg_dim = {-.4, -.5, -.4, .4, .6, .4}
local egg_3d_model = 'ineva_egg.obj'
local egg_group = {dig_immediate = 2,}

--local egg_3d_model = 'osterei_korb.obj'


--Schokolade
minetest.register_craftitem("ostereier:schokoladen_teig", {
    description = "Schokolade teig",
    inventory_image = "schokoladen_teig.png",
    on_use = minetest.item_eat(1)
})

minetest.register_craftitem("ostereier:schokoladen_ei", {
    description = "Schokolade Ei",
    inventory_image = "schokoladen_ei.png",
    on_use = minetest.item_eat(1)
})

minetest.register_craftitem("ostereier:kakao_pulver", {
    description = "Kakao Pulver",
    inventory_image = "kakao_pulver.png",
    on_use = minetest.item_eat(1)
})

minetest.register_craftitem("ostereier:kakao_butter", {
    description = "Kakao Butter",
    inventory_image = "kakao_butter.png",
    on_use = minetest.item_eat(1)
})

minetest.register_craftitem("ostereier:schokoladen_weiss_fluessig", {
    description = "flüssige weisse Schokolade",
    inventory_image = "schokoladen_weiss_fluessig.png",
    on_use = minetest.item_eat(1)
})

minetest.register_craftitem("ostereier:schokoladen_weiss", {
    description = "weisse Schokolade",
    inventory_image = "schokoladen_weiss.png",
    on_use = minetest.item_eat(1)
})

minetest.register_craftitem("ostereier:glasur_gruen_cyan", {
    description = "grün cyan Glasur",
    inventory_image = "glasur_gruen_cyan.png",
    on_use = minetest.item_eat(1)
})

minetest.register_craftitem("ostereier:glasur_blau_violet", {
    description = "blau violete Glasur",
    inventory_image = "glasur_blau_violet.png",
    on_use = minetest.item_eat(1)
})

minetest.register_craftitem("ostereier:glasur_braun", {
    description = "braune Glasur",
    inventory_image = "glasur_braun.png",
    on_use = minetest.item_eat(1)
})

minetest.register_craftitem("ostereier:glasur_dunkelgruen", {
    description = "dunkel grüne Glasur",
    inventory_image = "glasur_dunkelgruen.png",
    on_use = minetest.item_eat(1)
})

minetest.register_craftitem("ostereier:glasur_gelb_orange", {
    description = "gelb orange Glasur",
    inventory_image = "glasur_gelb_orange.png",
    on_use = minetest.item_eat(1)
})

minetest.register_craftitem("ostereier:glasur_rot_gelb", {
    description = "rot gelbe Glasur",
    inventory_image = "glasur_rot_gelbe.png",
    on_use = minetest.item_eat(1)
})

minetest.register_craft({
    output = "ostereier:kakao_pulver 2",
    recipe = {
        {"farming:cocoa_beans", "farming:mortar_pestle","farming:cocoa_beans"}
    },
    replacements ={
         {"farming:mortar_pestle", "farming:mortar_pestle"},
        {"farming:cocoa_beans", "ostereier:kakao_butter"}
    }
})

minetest.register_craft({
    type = "shaped",
    output = "ostereier:schokoladen_teig 2",
    recipe = {
        {"ostereier:kakao_pulver", "farming:sugar", "ostereier:kakao_pulver"},
        {"ostereier:kakao_butter", "farming:pot", "ostereier:kakao_butter"},
        {"", "mobs:glass_milk", ""}
    }
})

minetest.register_craft({
    type = "cooking",
    output = "ostereier:schokoladen_ei",
    recipe = "ostereier:schokoladen_teig",
    cooktime = 1,
})

minetest.register_craft({
    type = "shaped",
    output = "ostereier:schokoladen_weiss 2",
    recipe = {
        {"", "farming:sugar", ""},
        {"ostereier:kakao_butter", "farming:pot", "ostereier:kakao_butter"},
        {"", "mobs:glass_milk", ""}
    }
})

minetest.register_craft({
    type = "cooking",
    output = "ostereier:schokoladen_weiss_fluessig",
    recipe = "ostereier:schokoladen_weiss",
    cooktime = 1,
})

minetest.register_craft({
    type = "shapeless",
    output = "ostereier:glasur_gruen_cyan 4",
    recipe = {
        "dye:green",
        "dye:cyan",
        "ostereier:schokoladen_weiss_fluessig",
        "ostereier:schokoladen_weiss_fluessig",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "ostereier:glasur_blau_violet 4",
    recipe = {
        "dye:blue",
        "dye:violet",
        "ostereier:schokoladen_weiss_fluessig",
        "ostereier:schokoladen_weiss_fluessig",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "ostereier:glasur_braun 4",
    recipe = {
        "dye:brown",
        "dye:brown",
        "ostereier:schokoladen_weiss_fluessig",
        "ostereier:schokoladen_weiss_fluessig",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "ostereier:glasur_dunkelgruen 4",
    recipe = {
        "dye:dark_green",
        "dye:dark_green",
        "ostereier:schokoladen_weiss_fluessig",
        "ostereier:schokoladen_weiss_fluessig",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "ostereier:glasur_gelb_orange 4",
    recipe = {
        "dye:yellow",
        "dye:orange",
        "ostereier:schokoladen_weiss_fluessig",
        "ostereier:schokoladen_weiss_fluessig",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "ostereier:glasur_rot_gelb 4",
    recipe = {
        "dye:red",
        "dye:yellow",
        "ostereier:schokoladen_weiss_fluessig",
        "ostereier:schokoladen_weiss_fluessig",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "ostereier:osterei",
    recipe = {
        "ostereier:glasur_gruen_cyan",
        "ostereier:schokoladen_ei",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "ostereier:osterei2",
    recipe = {
        "ostereier:glasur_blau_violet",
        "ostereier:schokoladen_ei",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "ostereier:osterei3",
    recipe = {
        "ostereier:glasur_braun",
        "ostereier:schokoladen_ei",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "ostereier:osterei4",
    recipe = {
        "ostereier:glasur_dunkelgruen",
        "ostereier:schokoladen_ei",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "ostereier:osterei5",
    recipe = {
        "ostereier:glasur_gelb_orange",
        "ostereier:schokoladen_ei",
    },
})

minetest.register_craft({
    type = "shapeless",
    output = "ostereier:osterei6",
    recipe = {
        "ostereier:glasur_rot_gelb",
        "ostereier:schokoladen_ei",
    },
})

--Osterei 1
minetest.register_node ('ostereier:osterei', {
	drop = 'default:stone',
    description = 'Osterei',
    drawtype = 'mesh',
    mesh = egg_3d_model,
    tiles = {'blue_egg.png'},
    inventory_image = 'blue_egg.png',
    groups = egg_group,
    paramtype = 'light',
    paramtype2 = 'facedir',
    selection_box = {
        type = 'fixed',
        fixed = egg_dim,
    },
    on_use = minetest.item_eat(6)
})

--Osterei 2
minetest.register_node ('ostereier:osterei2', {
    description = 'Osterei',
    drawtype = 'mesh',
    mesh = egg_3d_model,
    tiles = {'blue_purple_egg.png'},
    inventory_image = 'blue_purple_egg.png',
    groups = egg_group,
    paramtype = 'light',
    paramtype2 = 'facedir',
    selection_box = {
        type = 'fixed',
        fixed = egg_dim,
    },
    on_use = minetest.item_eat(6)
})

--Osterei 3
minetest.register_node ('ostereier:osterei3', {
    description = 'Osterei',
    drawtype = 'mesh',
    mesh = egg_3d_model,
    tiles = {'chocolate_egg.png'},
    inventory_image = 'chocolate_egg.png',
    groups = egg_group,
    paramtype = 'light',
    paramtype2 = 'facedir',
    selection_box = {
        type = 'fixed',
        fixed = egg_dim,
    },
    on_use = minetest.item_eat(6)
})

--Osterei 4
minetest.register_node ('ostereier:osterei4', {
    description = 'Osterei',
    drawtype = 'mesh',
    mesh = egg_3d_model,
    tiles = {'green_egg1.png'},
    inventory_image = 'green_egg1.png',
    groups = egg_group,
    paramtype = 'light',
    paramtype2 = 'facedir',
    selection_box = {
        type = 'fixed',
        fixed = egg_dim,
    },
    on_use = minetest.item_eat(6)
})

--Osterei 5
minetest.register_node ('ostereier:osterei5', {
    description = 'Osterei',
    drawtype = 'mesh',
    mesh = egg_3d_model,
    tiles = {'orange_egg.png'},
    inventory_image = 'orange_egg.png',
    groups = egg_group,
    paramtype = 'light',
    paramtype2 = 'facedir',
    selection_box = {
        type = 'fixed',
        fixed = egg_dim,
    },
    on_use = minetest.item_eat(6)
})

--Osterei 6
minetest.register_node ('ostereier:osterei6', {
    description = 'Osterei',
    drawtype = 'mesh',
    mesh = egg_3d_model,
    tiles = {'red_egg.png'},
    inventory_image = 'red_egg.png',
    groups = egg_group,
    paramtype = 'light',
    paramtype2 = 'facedir',
    selection_box = {
        type = 'fixed',
        fixed = egg_dim,
    },
    on_use = minetest.item_eat(6)
})

--Osterei rainbow
minetest.register_node ('ostereier:osterei_rainbow', {
	drop = 'default:diamond',
    description = 'Osterei',
    drawtype = 'mesh',
    mesh = egg_3d_model,
    tiles = {'rainbow_egg.png'},
    inventory_image = 'rainbow_egg.png',
    groups = egg_group,
    paramtype = 'light',
    paramtype2 = 'facedir',
    selection_box = {
        type = 'fixed',
        fixed = egg_dim,
    },
    on_use = minetest.item_eat(6)
})
--spawning

minetest.register_decoration({
    deco_type = "simple",
    place_on = {"default:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.00001,
    y_max = 200,
    y_min = 1,
    decoration = "ostereier:osterei",
})

minetest.register_decoration({
    deco_type = "simple",
    place_on = {"default:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.00001,
    y_max = 200,
    y_min = 1,
    decoration = "ostereier:osterei2",
})

minetest.register_decoration({
    deco_type = "simple",
    place_on = {"default:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.00001,
    y_max = 200,
    y_min = 1,
    decoration = "ostereier:osterei3",
})

minetest.register_decoration({
    deco_type = "simple",
    place_on = {"default:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.00001,
    y_max = 200,
    y_min = 1,
    decoration = "ostereier:osterei4",
})

minetest.register_decoration({
    deco_type = "simple",
    place_on = {"default:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.00001,
    y_max = 200,
    y_min = 1,
    decoration = "ostereier:osterei5",
})

minetest.register_decoration({
    deco_type = "simple",
    place_on = {"default:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.00001,
    y_max = 200,
    y_min = 1,
    decoration = "ostereier:osterei6",
})

minetest.register_decoration({
    deco_type = "simple",
    place_on = {"default:dirt_with_grass"},
    sidelen = 16,
    fill_ratio = 0.0000001,
    y_max = 200,
    y_min = 1,
    decoration = "ostereier:osterei_rainbow",
})

--Hunger (hunger_ng)

hunger_ng.add_hunger_data("ostereier:schokoladen_teig", {satiates = 1})
hunger_ng.add_hunger_data("ostereier:schokoladen_ei", {satiates = 1})
hunger_ng.add_hunger_data("ostereier:kakao_pulver", {satiates = 1})
hunger_ng.add_hunger_data("ostereier:kakao_butter", {satiates = 1})
hunger_ng.add_hunger_data("ostereier:schokolade_weiss_fluessig", {satiates = 1})
hunger_ng.add_hunger_data("ostereier:schokoladen_weiss", {satiates = 1})
hunger_ng.add_hunger_data("ostereier:glasur_gruen_cyan", {satiates = 1})
hunger_ng.add_hunger_data("ostereier:glasur_blau_violet", {satiates = 1})
hunger_ng.add_hunger_data("ostereier:glasur_braun", {satiates = 1})
hunger_ng.add_hunger_data("ostereier:glasur_dunkelgruen", {satiates = 1})
hunger_ng.add_hunger_data("ostereier:glasur_gelb_orange", {satiates = 1})
hunger_ng.add_hunger_data("ostereier:glasur_rot_gelb", {satiates = 1})
hunger_ng.add_hunger_data("ostereier:osterei", {satiates = 6})
hunger_ng.add_hunger_data("ostereier:osterei2", {satiates = 6})
hunger_ng.add_hunger_data("ostereier:osterei3", {satiates = 6})
hunger_ng.add_hunger_data("ostereier:osterei4", {satiates = 6})
hunger_ng.add_hunger_data("ostereier:osterei5", {satiates = 6})
hunger_ng.add_hunger_data("ostereier:osterei6", {satiates = 6})
hunger_ng.add_hunger_data("ostereier:osterei_rainbow", {satiates = 6})


--[[

]]--
