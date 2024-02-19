--There are two functions that will install mods, ServerModSetup and ServerModCollectionSetup. Put the calls to the functions in this file and they will be executed on boot.

--ServerModSetup takes a string of a specific mod's Workshop id. It will download and install the mod to your mod directory on boot.
	--The Workshop id can be found at the end of the url to the mod's Workshop page.
	--Example: http://steamcommunity.com/sharedfiles/filedetails/?id=350811795
	--ServerModSetup("350811795")

--ServerModCollectionSetup takes a string of a specific mod's Workshop id. It will download all the mods in the collection and install them to the mod directory on boot.
	--The Workshop id can be found at the end of the url to the collection's Workshop page.
	--Example: http://steamcommunity.com/sharedfiles/filedetails/?id=379114180
	--ServerModCollectionSetup("379114180")

--#Health Info
ServerModSetup("375859599")

--#Global Position
ServerModSetup("378160973")

--#Restart
ServerModSetup("462434129")

--#Show Me
ServerModSetup("2287303119")

--#Never Perish
ServerModSetup("541537428")

--#Achievements and Level System
ServerModSetup("1840284484")

--#Automatic sorter
--#ServerModSetup("1932983865")

--#Tools Are Fuels
ServerModSetup("599498678")

--#SmartBoardforBOX
ServerModSetup("1595631294")

--#Fang KA 2 Zhao
ServerModSetup("1216718131")

--#Drop Guest
ServerModSetup("2564938022")
