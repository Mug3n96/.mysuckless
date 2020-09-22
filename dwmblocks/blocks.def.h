//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/		/*Command*/         /*Update Interval*/	  /*Update Signal*/
	{ "", 		  "_brightness.sh",		0,			              5 },
	// { "", 			"_mem.sh",			    30,			              4 },
	{ "", 			"_audio.sh",		    0,			              3 },
	{ "", 			"_battery.sh",			30,			              2 },
	{ "", 			"_date.sh",					60,			              1 }
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " ";
static unsigned int delimLen = 1;
