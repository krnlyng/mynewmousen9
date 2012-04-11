// taken from: https://github.com/foolegg/cute-input-method
// license: GPL

var keycode_0 = 48
var keycode_1 = 49
var keycode_2 = 50
var keycode_3 = 51
var keycode_4 = 52
var keycode_5 = 53
var keycode_6 = 54
var keycode_7 = 55
var keycode_8 = 56
var keycode_9 = 57

var keycode_a = 97
var keycode_b = 98
var keycode_c = 99
var keycode_d = 100
var keycode_e = 101
var keycode_f = 102
var keycode_g = 103
var keycode_h = 104
var keycode_i = 105
var keycode_j = 106
var keycode_k = 107
var keycode_l = 108
var keycode_m = 109
var keycode_n = 110
var keycode_o = 111
var keycode_p = 112
var keycode_q = 113
var keycode_r = 114
var keycode_s = 115
var keycode_t = 116
var keycode_u = 117
var keycode_v = 118
var keycode_w = 119
var keycode_x = 120
var keycode_y = 121
var keycode_z = 122

var keycode_comma = 44
var keycode_dot = 46

var keycode_enter = 10
var keycode_space = 32
var keycode_backspace = 201
var keycode_shift_l = 202
var keycode_shift_r = 203
var keycode_ctrl = 204
var keycode_alt_l = 205
var keycode_alt_r = 206

//var keycode_up = 210
//var keycode_down = 211
//var keycode_left = 212
//var keycode_right = 213

var keysym_0 = Array( 256 )
var keysym_1 = Array( 256 )
var keysym = Array( 2 )

keysym_0[keycode_0] = [ "0", "0", "零", "0" ]
keysym_1[keycode_0] = [ "0", "0", "Ⅹ", "0" ]
keysym_0[keycode_1] = [ "1", "1", "壹", "1" ]
keysym_1[keycode_1] = [ "1", "1", "Ⅰ", "1" ]
keysym_0[keycode_2] = [ "2", "2", "贰", "2" ]
keysym_1[keycode_2] = [ "2", "2", "Ⅱ", "2" ]
keysym_0[keycode_3] = [ "3", "3", "叁", "3" ]
keysym_1[keycode_3] = [ "3", "3", "Ⅲ", "3" ]
keysym_0[keycode_4] = [ "4", "4", "肆", "4" ]
keysym_1[keycode_4] = [ "4", "4", "Ⅳ", "4" ]
keysym_0[keycode_5] = [ "5", "5", "伍", "5" ]
keysym_1[keycode_5] = [ "5", "5", "Ⅴ", "5" ]
keysym_0[keycode_6] = [ "6", "6", "陆", "6" ]
keysym_1[keycode_6] = [ "6", "6", "Ⅵ", "6" ]
keysym_0[keycode_7] = [ "7", "7", "柒", "7" ]
keysym_1[keycode_7] = [ "7", "7", "Ⅶ", "7" ]
keysym_0[keycode_8] = [ "8", "8", "捌", "8" ]
keysym_1[keycode_8] = [ "8", "8", "Ⅷ", "8" ]
keysym_0[keycode_9] = [ "9", "9", "玖", "9" ]
keysym_1[keycode_9] = [ "9", "9", "Ⅸ", "9" ]

keysym_0[keycode_a] = [ "a", "A", "*", "a" ]
keysym_1[keycode_a] = [ "a", "A", "*", "a" ]
keysym_0[keycode_b] = [ "b", "B", "\\", "b" ]
keysym_1[keycode_b] = [ "b", "B", "\\", "b" ]
keysym_0[keycode_c] = [ "c", "C", "：", "c" ]
keysym_1[keycode_c] = [ "c", "C", ":", "c" ]
keysym_0[keycode_d] = [ "d", "D", "#", "d" ]
keysym_1[keycode_d] = [ "d", "D", "#", "d" ]
keysym_0[keycode_e] = [ "e", "E", "［", "e" ]
keysym_1[keycode_e] = [ "e", "E", "[", "e" ]
keysym_0[keycode_f] = [ "f", "F", "-", "f" ]
keysym_1[keycode_f] = [ "f", "F", "-", "f" ]
keysym_0[keycode_g] = [ "g", "G", "_", "g" ]
keysym_1[keycode_g] = [ "g", "G", "_", "g" ]
keysym_0[keycode_h] = [ "h", "H", "（", "h" ]
keysym_1[keycode_h] = [ "h", "H", "(", "h" ]
keysym_0[keycode_i] = [ "i", "I", "%", "i" ]
keysym_1[keycode_i] = [ "i", "I", "%", "i" ]
keysym_0[keycode_j] = [ "j", "J", "）", "j" ]
keysym_1[keycode_j] = [ "j", "J", ")", "j" ]
keysym_0[keycode_k] = [ "k", "K", "&", "k" ]
keysym_1[keycode_k] = [ "k", "K", "&", "k" ]
keysym_0[keycode_l] = [ "l", "L", "=", "l" ]
keysym_1[keycode_l] = [ "l", "L", "=", "l" ]
keysym_0[keycode_m] = [ "m", "M", "”", "m" ]
keysym_1[keycode_m] = [ "m", "M", "'", "m" ]
keysym_0[keycode_n] = [ "n", "N", "“", "n" ]
keysym_1[keycode_n] = [ "n", "N", "\"", "n" ]
keysym_0[keycode_o] = [ "o", "O", "~", "o" ]
keysym_1[keycode_o] = [ "o", "O", "~", "o" ]
keysym_0[keycode_p] = [ "p", "P", "^", "p" ]
keysym_1[keycode_p] = [ "p", "P", "^", "p" ]
keysym_0[keycode_q] = [ "q", "Q", "<", "q" ]
keysym_1[keycode_q] = [ "q", "Q", "<", "q" ]
keysym_0[keycode_r] = [ "r", "R", "］", "r" ]
keysym_1[keycode_r] = [ "r", "R", "]", "r" ]
keysym_0[keycode_s] = [ "s", "S", "+", "s" ]
keysym_1[keycode_s] = [ "s", "S", "+", "s" ]
keysym_0[keycode_t] = [ "t", "T", "{", "t" ]
keysym_1[keycode_t] = [ "t", "T", "{", "t" ]
keysym_0[keycode_u] = [ "u", "U", "|", "u" ]
keysym_1[keycode_u] = [ "u", "U", "|", "u" ]
keysym_0[keycode_v] = [ "v", "V", "/", "v" ]
keysym_1[keycode_v] = [ "v", "V", "/", "v" ]
keysym_0[keycode_w] = [ "w", "W", ">", "w" ]
keysym_1[keycode_w] = [ "w", "W", ">", "w" ]
keysym_0[keycode_x] = [ "x", "X", "$", "x" ]
keysym_1[keycode_x] = [ "x", "X", "$", "x" ]
keysym_0[keycode_y] = [ "y", "Y", "}", "y" ]
keysym_1[keycode_y] = [ "y", "Y", "}", "y" ]
keysym_0[keycode_z] = [ "z", "Z", "；", "z" ]
keysym_1[keycode_z] = [ "z", "Z", ";", "z" ]

keysym_0[keycode_comma] = [ "，", "？", "@", "," ]
keysym_1[keycode_comma] = [ ",", "?", "@", "," ]
keysym_0[keycode_dot] = [ "。", "！", "……", "." ]
keysym_1[keycode_dot] = [ ".", "!", "...", "." ]

keysym_0[keycode_enter] = [ "◄", "◄", "◄", "◄" ]
keysym_1[keycode_enter] = [ "◄", "◄", "◄", "◄" ]
keysym_0[keycode_space] = [ " ", "", "", " " ]
keysym_1[keycode_space] = [ " ", "", "", " " ]
keysym_0[keycode_backspace] = [ "◄", "◄", "◄", "◄" ]
keysym_1[keycode_backspace] = [ "◄", "◄", "◄", "◄" ]
keysym_0[keycode_shift_l] = [ "▲", "▲", "▲", "▲" ]
keysym_1[keycode_shift_l] = [ "▲", "▲", "▲", "▲" ]
keysym_0[keycode_shift_r] = [ "▲", "▲", "▲", "▲" ]
keysym_1[keycode_shift_r] = [ "▲", "▲", "▲", "▲" ]
keysym_0[keycode_ctrl] = [ "", "", "", "" ]
keysym_1[keycode_ctrl] = [ "", "", "", "" ]
keysym_0[keycode_alt_l] = [ "@", "@", "@", "@" ]
keysym_1[keycode_alt_l] = [ "@", "@", "@", "@" ]
keysym_0[keycode_alt_r] = [ "@", "@", "@", "@" ]
keysym_1[keycode_alt_r] = [ "@", "@", "@", "@" ]

//keysym_0[keycode_up] = [ "▲", "▲", "▲", "▲" ]
//keysym_1[keycode_up] = [ "▲", "▲", "▲", "▲" ]
//keysym_0[keycode_down] = [ "@", "@", "@", "@" ]
//keysym_1[keycode_down] = [ "@", "@", "@", "@" ]
//keysym_0[keycode_left] = [ "◄", "◄", "◄", "◄" ]
//keysym_1[keycode_left] = [ "◄", "◄", "◄", "◄" ]
//keysym_0[keycode_right] = [ "@", "@", "@", "@" ]
//keysym_1[keycode_right] = [ "@", "@", "@", "@" ]

keysym[0] = keysym_0
keysym[1] = keysym_1

var candIndex = Array( 10 )
candIndex[0] = 3
candIndex[1] = 4
candIndex[2] = 4
candIndex[3] = 1
candIndex[4] = 1
candIndex[5] = 0
candIndex[6] = 0
candIndex[7] = 2
candIndex[8] = 2
candIndex[9] = 3

var keymask_null = 0
var keymask_shift = 1
var keymask_alt = 2
var keymask_space = 3
//var keymask_ctrl = 3

var modeString = Array( 2 )
modeString[0] = "中"
modeString[1] = "EN"
var mode_CN = 0
var mode_EN = 1

var t9PuncMap = Array( 4 )
var punc_page_1 = [ " ", "\n", "，", "。", "？", "……", "～", "！", ]
var punc_page_2 = [ "、", "；", "：", "“", "”", "——", "（", "）", ]
var punc_page_3 = [ "@", "&", "_", "《", "》", "%", "‘", "’", ]
var punc_page_4 = [ "*", "#", "\\", "+", "-", "=", "*", "/", ]
t9PuncMap[0] = punc_page_1
t9PuncMap[1] = punc_page_2
t9PuncMap[2] = punc_page_3
t9PuncMap[3] = punc_page_4
