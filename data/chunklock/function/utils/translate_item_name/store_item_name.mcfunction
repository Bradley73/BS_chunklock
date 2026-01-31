# when an item entity contains an id, the name will mirror that of the item
# this name can then be stored and displayed using "translate" to display the item name
# this works for custom items, resource packs, and even different languages

#store item id in item
$item replace entity @s contents with $(id)

#store item name in item
item modify entity @s contents {function:"minecraft:set_name",entity:"this",name:{selector:"@s"}}

#copy to master
data modify storage chunklock:master stored_item_name set from entity @s Item.components.minecraft:custom_name.translate

#kill
kill @s