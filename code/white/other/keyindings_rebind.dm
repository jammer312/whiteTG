//QWERTY - ������
GLOBAL_LIST_INIT(russian_keyrebind, list(
	"�" = "q",
	"�" = "w",
	"�" = "e",
	"�" = "r",
	"�" = "t",
	"�" = "y",
	"�" = "u",
	"�" = "i",
	"�" = "o",
	"�" = "p",
	"�" = "\[",
	"�" = "\]",
	"�" = "a",
	"�" = "s",
	"�" = "d",
	"�" = "f",
	"�" = "g",
	"�" = "h",
	"�" = "j",
	"�" = "k",
	"�" = "l",
	"�" = ";",
	"�" = "'",
	"�" = "z",
	"�" = "x",
	"�" = "c",
	"�" = "v",
	"�" = "b",
	"�" = "n",
	"�" = "m",
	"�" = ",",
	"�" = ".",
	"�" = "Q",
	"�" = "W",
	"�" = "E",
	"�" = "R",
	"�" = "T",
	"�" = "Y",
	"�" = "U",
	"�" = "I",
	"�" = "O",
	"�" = "P",
	"�" = "{",
	"�" = "}",
	"�" = "A",
	"�" = "S",
	"�" = "D",
	"�" = "F",
	"�" = "G",
	"�" = "H",
	"�" = "J",
	"�" = "K",
	"�" = "L",
	"�" = ":",
	"�" = "\"",
	"�" = "Z",
	"�" = "X",
	"�" = "C",
	"�" = "V",
	"�" = "B",
	"�" = "N",
	"�" = "M",
	"�" = "<",
	"�" = ">"
	))

/proc/rkeyconvert(var/key)
	. = key
	if(!key)
		return
	if(GLOB.russian_keyrebind[key])
		return GLOB.russian_keyrebind[key]