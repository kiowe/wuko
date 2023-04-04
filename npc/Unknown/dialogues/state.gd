extends Node

var dialogue_is_going: bool = false

# Unknown
var relationship: String = "unknown"
var strange_item: String = "no"
var asked: bool = false
var otodvigator: bool = false
var buy_a_item: bool = false
var otodv_used: bool = false

# Strange Man
var disappeared: bool = false

# Theme
var button_pressed: bool = false

# Skull
var skull_touched: bool = false

# Roll
var rand: float = floor(randf_range(2, 998))

# MidStone
var equiped: bool = false
