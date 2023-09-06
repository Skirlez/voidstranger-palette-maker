// taken and modified from Void Stranger's data.win.
function set_palette(palette_num, name_only = false) {
	var palet_name, colarray;
    switch palette_num
    {
        case 1:
            palet_name = "R***"
            colarray[0] = 1310720
            colarray[1] = 12717325
            colarray[2] = 16284503
            colarray[3] = 16284503
            colarray[4] = 16777215
            break
        case 2:
            palet_name = "O***"
            colarray[0] = 1183493
            colarray[1] = 12606012
            colarray[2] = 16359488
            colarray[3] = 16771289
            colarray[4] = 16777215
            break
        case 3:
            palet_name = "Y***"
            colarray[0] = 986880
            colarray[1] = 12220314
            colarray[2] = 15385344
            colarray[3] = 16775930
            colarray[4] = 16777215
            break
        case 4:
            palet_name = "G***"
            colarray[0] = 5140
            colarray[1] = 815204
            colarray[2] = 5823883
            colarray[3] = 14154984
            colarray[4] = 16777215
            break
        case 5:
            palet_name = "B***"
            colarray[0] = 1387312
            colarray[1] = 488851
            colarray[2] = 6605050
            colarray[3] = 15661309
            colarray[4] = 16777215
            break
        case 6:
            palet_name = "I***"
            colarray[0] = 852000
            colarray[1] = 7685745
            colarray[2] = 10983884
            colarray[3] = 16250871
            colarray[4] = 16777215
            break
        case 7:
            palet_name = "V***"
            colarray[0] = 327710
            colarray[1] = 6631840
            colarray[2] = 12288456
            colarray[3] = 16444664
            colarray[4] = 16777215
            break
        default:
            palet_name = "GRAY"
            colarray[0] = 0
            colarray[1] = 8421504
            colarray[2] = 12632256
            colarray[3] = 16777215
            colarray[4] = 16777215
    }
	// this sucks
	if name_only {
		var length = array_length(global.palette_array)
		for (var i = 0; i < 10; i++) {
			temparray[i][0] = 0
			temparray[i][1] = 0
			temparray[i][2] = 0
		}
	}
	
	for (var i = 0; i < 5; i++) {
		if name_only 
			array_copy(temparray[i], 0, global.palette_array[i], 0, length)
	    global.palette_array[i][0] = (colour_get_blue(colarray[i]) / 255)
	    global.palette_array[i][1] = (colour_get_green(colarray[i]) / 255)
	    global.palette_array[i][2] = (colour_get_red(colarray[i]) / 255)
	}
	
	with (obj_colorslot) {
		if name_only == true
			event_user(0)
		else
			update = true
	}
	
	if name_only {
		for (var i = 0; i < 5; i++) {
			array_copy(global.palette_array[i], 0, temparray[i], 0, length)
		}
	}
	global.palettename = palet_name

}