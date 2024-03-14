randomize();
player_start_x = 960;
player_start_y = 576;
player_safe_radius = 64;

var tilelayer = layer_get_id("Tiles_1"); 
var _map = layer_tilemap_get_id(tilelayer); 
var _tileWidth = 64;
var _tileHeight = 64;
_numTiles = 16;

for (var _x = 0; _x < room_width; _x += _tileWidth) {
    for (var _y = 0; _y < room_height; _y += _tileHeight) {
        var _tileIndex = irandom_range(1, _numTiles - 1); 
        tilemap_set(_map, _tileIndex, _x / _tileWidth, _y / _tileHeight);
    }
}

global.objectTypes = [
    [obj_tree],
    [obj_wall],
    [obj_tile]
];
var roomWidth = room_width;
var roomHeight = room_height;
var numObjects = 20;

for (var i = 0; i < numObjects; i++) {
	var safePositionFound = false;
    var tries = 0; // 避免无限循环
	
	while (!safePositionFound && tries < 100) {
        var x1 = irandom(roomWidth - 1);
        var y1 = irandom(roomHeight - 1);
		var distanceToPlayerStart = point_distance(x1, y1, player_start_x, player_start_y);
		var objectTypeIndex = irandom(array_length_1d(global.objectTypes) - 1);
		
		if (distanceToPlayerStart > player_safe_radius) {
            safePositionFound = true;
            
            // 位置安全，可以生成物体
            var objectTypeIndex = irandom(array_length_1d(global.objectTypes) - 1);
            var object = global.objectTypes[objectTypeIndex][0];
            instance_create_layer(x1, y1, "Instances_2", object);
        }
        tries++;
	}

}
