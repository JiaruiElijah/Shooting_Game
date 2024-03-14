var tile_width = 16; // Tile的宽度
var tile_height = 16; // Tile的高度
var map_width = room_width / tile_width; // Tilemap的宽度
var map_height = room_height / tile_height; // Tilemap的高度）

for (var x1 = 0; x1 < map_width; x1++) {
    for (var y1 = 0; y1 < map_height; y1++) {
        var posX = x1 * tile_width;
        var posY = y1 * tile_height;

        instance_create_layer(posX + tile_width/2, posY + tile_height/2, "Instances", obj_airwall);
    }
}
