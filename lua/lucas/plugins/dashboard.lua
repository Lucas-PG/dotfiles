return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	opts = function()
		local logo = [[   
    ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          
    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       
          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     
           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    
          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   
   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  
  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   
 ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  
 ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ 
      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     
       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     
]]

		local headers = {}

		headers.neovim = {

			"                                                     ",
			"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
			"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
			"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
			"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
			"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
			"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
			"                                                     ",
		}

		headers.nuclear = {
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡖⠁⠀⠀⠀⠀⠀⠀⠈⢲⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
			"⠀⠀⠀⠀⠀⠀⠀⠀⣼⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣧⠀⠀⠀⠀⠀⠀⠀⠀ ",
			"⠀⠀⠀⠀⠀⠀⠀⣸⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣇⠀⠀⠀⠀⠀⠀⠀ ",
			"⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⢀⣀⣤⣤⣤⣤⣀⡀⠀⢸⣿⣿⠀⠀⠀⠀⠀⠀⠀ ",
			"⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣔⢿⡿⠟⠛⠛⠻⢿⡿⣢⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀ ",
			"⠀⠀⠀⠀⣀⣤⣶⣾⣿⣿⣿⣷⣤⣀⡀⢀⣀⣤⣾⣿⣿⣿⣷⣶⣤⡀⠀⠀⠀⠀ ",
			"⠀⠀⢠⣾⣿⡿⠿⠿⠿⣿⣿⣿⣿⡿⠏⠻⢿⣿⣿⣿⣿⠿⠿⠿⢿⣿⣷⡀⠀⠀ ",
			"⠀⢠⡿⠋⠁⠀⠀⢸⣿⡇⠉⠻⣿⠇⠀⠀⠸⣿⡿⠋⢰⣿⡇⠀⠀⠈⠙⢿⡄⠀ ",
			"⠀⡿⠁⠀⠀⠀⠀⠘⣿⣷⡀⠀⠰⣿⣶⣶⣿⡎⠀⢀⣾⣿⠇⠀⠀⠀⠀⠈⢿⠀ ",
			"⠀⡇⠀⠀⠀⠀⠀⠀⠹⣿⣷⣄⠀⣿⣿⣿⣿⠀⣠⣾⣿⠏⠀⠀⠀⠀⠀⠀⢸⠀ ",
			"⠀⠁⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⢇⣿⣿⣿⣿⡸⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠈⠀ ",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ",
			"⠀⠀⠀⠐⢤⣀⣀⢀⣀⣠⣴⣿⣿⠿⠋⠙⠿⣿⣿⣦⣄⣀⠀⠀⣀⡠⠂⠀⠀⠀ ",
			"⠀⠀⠀⠀⠀⠈⠉⠛⠛⠛⠛⠉⠀⠀⠀⠀⠀⠈⠉⠛⠛⠛⠛⠋⠁⠀⠀⠀⠀⠀ ",
		}

		headers.fatty = {
			"            :h-                                  Nhy`               ",
			"           -mh.                           h.    `Ndho               ",
			"           hmh+                          oNm.   oNdhh               ",
			"          `Nmhd`                        /NNmd  /NNhhd               ",
			"          -NNhhy                      `hMNmmm`+NNdhhh               ",
			"          .NNmhhs              ```....`..-:/./mNdhhh+               ",
			"           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               ",
			"           oNNNdhhdo..://++//++++++/+++//++///++/-.`                ",
			"      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       ",
			" .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        ",
			" h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         ",
			" hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        ",
			" /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       ",
			"  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      ",
			"   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     ",
			"     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    ",
			"       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    ",
			"       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   ",
			"       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   ",
			"       //+++//++++++////+++///::--                 .::::-------::   ",
			"       :/++++///////////++++//////.                -:/:----::../-   ",
			"       -/++++//++///+//////////////               .::::---:::-.+`   ",
			"       `////////////////////////////:.            --::-----...-/    ",
			"        -///://////////////////////::::-..      :-:-:-..-::.`.+`    ",
			"         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   ",
			"           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ ",
			"            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``",
			"           s-`::--:::------:////----:---.-:::...-.....`./:          ",
			"          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           ",
			"         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              ",
			"        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                ",
			"                        .-:mNdhh:.......--::::-`                    ",
			"                           yNh/..------..`                          ",
			"                                                                    ",
		}

		headers.frog = {
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠶⠛⠉⠀⠀⠀⠀⠉⠙⠶⠦⣀⡀⠀⠀⠀⣀⣠⠴⠶⠞⠛⠛⠶⠤⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡴⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠲⣞⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠈⢳⡄⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠞⠁⠀⠀⠀⠀⠀⣀⣠⡤⠤⠤⠤⣤⣄⡀⠀⠀⠹⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⣴⠃⠀⠀⠀⠀⢠⠶⠛⠉⠁⠀⠀⠀⠀⠀⠈⠙⠓⠦⢤⣿⠤⠖⠒⠒⠒⠒⠒⠚⠒⠓⠲⠾⢧⡀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⣰⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⡤⠤⠤⠤⠤⣭⣳⣤⡀⠀⠀⠀⢀⣀⣀⣠⣤⣤⣤⣬⣙⣳⣦⣄⠀⠀",
			"⠀⠀⠀⠀⢀⣀⣿⣷⣦⣤⣄⣀⡀⠀⣀⣀⣤⣤⣤⣶⣯⣭⣥⣶⣶⣯⣭⣽⣶⣶⣬⣭⣙⣴⢖⣫⣭⣿⣿⣶⣶⣶⣶⣶⣾⣿⣿⣿⣷⣤",
			"⠀⠀⠀⣤⠛⢹⡇⠈⠉⠙⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⡿⣿⣿⣿⣿",
			"⠀⢀⡞⠁⠀⠸⠇⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡣⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿",
			"⢀⡾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡁⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
			"⡞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⡿⠛⠉⠉⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠁⠀⠀⣀⠀⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⣉⣩⡭⠿⠛⠉⠁⠀⠀⠀⠀⠀⠙⠛⢿⡒⠛⠛⠛⠋⠻⡭⡉⠁⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠹⣦⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡾⠛⠉⠉⠉⠳⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡄⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⢀⣀⠀⠀⠀⠉⠙⠳⠦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣇⡀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢷⡄⠀⠈⠉⠛⠢⢤⣤⣀⠀⠀⠈⠉⠉⠑⠒⠒⠒⠢⠤⢤⣤⣤⣤⣤⣄⣠⣤⣤⡤⠔⠚⠋⠁⢀⡇⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⢦⣄⡀⠀⠀⠀⠈⠉⠙⠓⠒⠦⢦⣤⣤⣄⣀⣀⣀⣀⣀⣀⠀⠀⠈⠁⠀⢀⣀⣀⣠⣤⠖⠉⠀⠀",
			"⠛⣻⣶⣦⣤⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠲⢤⣤⣀⣀⠀⠀⠀⠀⠀⠀⠁⠀⠈⠀⠉⠀⠉⠉⠉⠉⠉⣉⣉⣤⣥⣷⠾⠓⢲⣚⡟",
			"⠈⣞⣷⣴⣌⣽⣫⣿⠷⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠛⠛⠛⠛⠛⠷⠶⠶⠶⠶⢶⢦⣤⣤⣴⢿⣯⡉⠉⣁⣞⠗⢂⠹⡝⠅",
			"⠀⣻⣿⣷⢪⣿⣋⠀⠀⢀⡈⣽⡛⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡟⣛⣍⣿⢷⡆⣈⣻⣮⠀⣻⣧⢿⣷⣶⠾",
			"⠿⣿⣿⠾⠿⣿⡿⣵⣿⡏⣿⠹⣿⣞⢷⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣴⠟⡾⣿⣹⣿⣿⢷⡽⣏⠛⠓⠒⠛⠛⠛⠛⠛",
			"⡼⢭⠥⣴⠬⣿⠿⢯⡿⢥⡿⢧⡿⢿⡿⢯⠭⢭⡿⢿⡿⢿⡿⢶⡶⢶⡾⢾⡿⢿⡭⢿⣿⠼⣧⠍⣭⠭⣥⠬⣷⢻⣆⣀⣦⣀⣴⣀⣀⠀",
			"⢱⡿⠶⠿⠶⠾⠶⠾⠶⠾⠷⠾⠶⠾⠷⠾⠶⠾⠷⠾⠷⠾⠷⠾⠷⠾⠟⠛⠻⠞⠛⠛⠛⠛⠛⠛⠛⠋⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⢹⡀",
			"⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇",
		}

		headers.anonymous = {

			"⠀⠀⠀⢀⣴⣾⣿⣿⣿⡶⢦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠴⢾⣿⣿⣿⣷⣦⡀⠀⠀⠀",
			"⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣷⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣡⣴⣾⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀",
			"⠀⠀⠉⠀⠀⠀⠀⠈⠙⠻⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⣰⣿⣿⣿⡿⠛⠉⠁⠀⠀⠀⠈⠉⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣯⠁⠀⠀⠀⠀⠀⢈⣿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⢀⡴⢖⣛⣧⣴⣶⣤⣄⠹⡆⡀⠀⠀⠀⠀⡼⢃⣤⣴⣶⣧⣽⣛⡲⣤⠀⠀⠀⠀⠀",
			"⠀⢱⣄⣴⣟⠾⣿⣿⣿⣿⣿⣿⣿⡇⠀⡇⠀⠀⠀⡇⠀⣿⣿⣿⣿⣿⣿⣿⣿⣞⣷⣄⣴⠃⠀",
			"⢠⠟⠉⠉⠉⠛⠓⠿⠏⠸⠟⠛⠉⠀⢠⡇⠀⠀⠀⣿⠀⠀⠉⠛⠻⠇⠿⠟⠛⠋⠉⠉⠙⠻⡀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡇⠀⠀⠀⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡾⢿⡇⠀⠀⠀⢿⠿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⡄⠀⠀⠀⠀⠀⠀⠀⣀⣤⢴⠏⠀⣸⠁⠀⠀⠀⢸⡆⠈⢳⡀⣤⡀⠀⠀⠀⠀⠀⠀⠀⡄⠀",
			"⠀⢹⣶⢤⣤⡤⠴⠶⠛⠉⠀⠸⠀⣄⢻⣄⠀⠀⢀⣸⢃⣀⠰⠃⠈⠙⠓⠶⠤⣤⣤⢤⣾⠃⠀",
			"⠀⠈⢿⣆⠻⣿⣄⠀⠀⠀⠀⠀⠀⠉⣱⣬⣍⣉⣯⣥⡉⠁⠀⠀⠀⠀⠀⠀⣴⣿⢃⣾⡏⠀⠀",
			"⠀⠀⠈⢿⣆⠹⣿⣧⣀⣀⣀⣀⣤⣴⣿⣿⠟⠙⢿⣿⣿⣦⣄⣀⣀⣀⣠⣾⡿⠁⣼⠟⠀⠀⠀",
			"⠀⠀⠀⠈⢿⣦⡈⠻⠿⠿⠿⠿⢿⣿⣿⣋⣀⣀⣀⣻⣿⣿⠿⠿⠿⠿⠿⠛⣠⣾⠏⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠻⣎⠓⢤⣀⠀⠀⠀⠉⠉⠉⠉⠉⠉⠉⠉⠁⠀⠀⠀⣀⠴⢊⡿⠋⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠘⢧⠀⠀⠀⠀⠀⠀⠀⢤⣄⣀⣠⡄⠀⠀⠀⠀⠀⠀⢠⠞⠁⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠱⣄⠀⠀⠀⠀⠀⠀⣿⣿⡏⠀⠀⠀⠀⠀⠀⡠⠃⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⣿⣿⣷⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		}

		headers.neovim2 = {
			"⠀⢀⣴⣦⠀⠀⠀⠀⢰⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⣰⣿⣿⣿⣷⡀⠀⠀⢸⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⣿⣿⣿⣿⣿⣿⣄⠀⢸⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⣿⣿⣿⠈⢿⣿⣿⣦⢸⣿⣿⡇⠀⣠⠴⠒⠢⣄⠀⠀⣠⠴⠲⠦⣄⠐⣶⣆⠀⠀⢀⣶⡖⢰⣶⠀⢰⣶⣴⡶⣶⣆⣴⡶⣶⣶⡄",
			"⣿⣿⣿⠀⠀⠻⣿⣿⣿⣿⣿⡇⢸⣁⣀⣀⣀⣘⡆⣼⠁⠀⠀⠀⠘⡇⠹⣿⡄⠀⣼⡿⠀⢸⣿⠀⢸⣿⠁⠀⢸⣿⡏⠀⠀⣿⣿",
			"⠹⣿⣿⠀⠀⠀⠙⣿⣿⣿⡿⠃⢸⡀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⢀⡏⠀⢻⣿⣸⣿⠁⠀⢸⣿⠀⢸⣿⠀⠀⢸⣿⡇⠀⠀⣿⣿",
			"⠀⠈⠻⠀⠀⠀⠀⠈⠿⠋⠀⠀⠈⠳⢤⣀⣠⠴⠀⠈⠧⣄⣀⡠⠞⠁⠀⠀⠿⠿⠃⠀⠀⢸⣿⠀⢸⣿⠀⠀⠸⣿⡇⠀⠀⣿⡿",
		}

		headers.ghost = {
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⢠⣿⣷⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⢠⣿⣿⣿⣿⣄⢀⣀⣀⣀⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣦⣀⣠⠴⠚⢛⣛⣭⣥⣽⣶⣶⣶⣶⣶⣶⣶⣶⣴⣮⣭⣛⣒⡢⢤⣄⣀⡀⠀⠀⣠⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⡿⠟⣃⣀⣴⢶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡭⢟⣵⣿⣿⣿⣿⣿⣿⠇⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⡿⠛⣹⣶⠿⣿⣿⣷⡿⠿⢿⣿⠿⠛⠛⠛⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⣻⣴⣿⣿⣿⣿⣿⣿⣿⡟⢸⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⢲⣶⣶⣶⣶⡾⣉⣤⣾⣿⣿⣿⠿⣿⣿⣋⣙⣿⡇⢀⠀⠰⣿⡷⠀⢹⣿⠛⠛⣿⣿⣿⣿⣿⣿⣿⣿⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠹⣿⠟⣋⣵⣿⢏⣾⣿⣿⢻⣥⣶⣿⣿⣿⣿⣷⣌⣻⠷⠖⢀⣠⣿⡛⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣙⠿⠿⣿⣿⠿⠿⣛⣤⣅⣤⣠⣤⣤⣤⣶⣶⡄⠀⠀",
			"⠀⠀⠀⠀⠀⠀⢠⡾⣒⣿⡟⣡⣦⣿⣿⣿⡇⣩⣛⠿⠿⠿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⡛⢛⣛⣛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣾⣿⡿⣫⣵⣿⣿⣿⣿⣿⣿⠟⠋⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⣾⢡⣿⠿⠙⣽⡶⠿⣿⣿⣧⣛⣵⡄⢀⡀⠀⠀⠀⠈⠙⠻⠿⡿⠿⠿⠿⠟⢊⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣙⠻⠿⠿⢿⡿⠟⠁⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⣼⠃⣿⣿⡷⢿⠟⣩⣾⣿⣿⣿⣿⣿⡇⠀⣟⡷⠀⠀⠀⠀⠀⠀⢺⡿⠃⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠛⣧⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⣿⢠⣿⣿⡶⣿⣟⣿⣿⣿⣿⣿⣿⣿⠇⠀⢁⣤⣶⠞⣡⣴⣶⣶⣶⠚⣡⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠘⡷⢸⣿⣿⣵⡿⢿⣩⣷⣿⣿⣿⣿⠟⢀⣴⣿⣿⣷⣿⣿⣿⠟⢋⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⣿⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⣷⠸⣿⣯⣠⡿⠦⠿⣿⣿⣿⣿⣿⢀⣾⣿⡿⢻⣿⠻⣫⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢡⡟⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⢻⡄⢿⣿⣗⢳⡶⢷⣿⣿⣿⣿⣿⣿⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⢸⠇⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠘⣇⡘⣿⣿⣞⣿⣶⢟⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⣰⡟⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⣽⣷⡌⢿⣿⣿⣻⡿⢛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⣴⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠰⠿⠿⠿⠿⣆⠹⣿⣿⣷⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⣡⡶⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢶⣉⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢋⣩⣍⣉⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣡⣴⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠱⢦⡍⠛⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣄⢻⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣟⣏⣴⠿⠻⢿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠶⣬⣙⡙⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣷⣝⢿⣿⡇⡿⢿⠟⣻⡿⠷⠚⠉⠁⠀⠀⠀⠀⠉⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠒⠲⣷⣭⣭⣭⣭⣭⣭⣭⡴⢍⢠⠛⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		}

		headers.mask = {
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣷⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⣰⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡄⠀⠖⠀⠈⠙⠛⠛⠛⠙⠊⠀⠤⠋⢀⠎⢠⠄⠠⠀⠀⣀⣀⡀⠀⢠⠀⣄⠘⣄⠈⠦⠀⠈⠊⠙⠛⠛⠋⠑⠀⠐⠆⠀⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣀⡤⠀⠀⠈⡄⠰⠆⢀⠜⠉⠉⠉⠑⠒⣤⣀⠀⣸⡀⢠⣄⣀⣿⣿⣇⣀⡬⠀⣼⠀⢀⣤⠖⠂⠉⠉⠉⠛⣀⠀⠆⠀⡏⠀⠀⠠⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⣠⡞⢋⣉⣀⣐⠒⠓⢀⣀⣉⣀⣀⣀⣀⣚⠛⠻⠯⣀⠈⠉⣀⣸⠉⢹⣿⠉⢹⣀⡈⠉⢀⠨⠟⠛⢓⣀⣀⣀⣀⣈⣁⣀⠚⠓⢂⣀⣈⡉⠳⣄⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣧⠈⣿⠩⡟⠭⠽⠭⠉⣉⣉⣉⣉⣉⣉⡙⠛⠶⣦⣈⠂⢌⠛⢀⣽⣿⣅⠝⢉⠔⢈⣤⡶⠞⢛⣉⣉⣉⣉⣉⣉⡉⠭⠿⠭⠹⡯⣹⠇⢠⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⠀⣿⡇⡿⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡌⠻⣷⣄⠡⠈⢿⣿⠃⠐⢁⣼⡟⢉⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⢸⡇⣿⡄⢸⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⢿⣿⣿⠀⣿⡇⢣⣿⣿⣿⣿⠋⠁⢀⠀⠉⢻⣿⣿⣿⣿⡆⠘⣿⡆⠀⢸⣿⠀⠀⣾⡟⢀⣾⣿⣿⣿⡿⠋⠁⢀⠀⠉⢻⣿⣿⣿⡇⠃⣿⡇⢸⣿⣿⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣶⣾⣿⣶⣝⢿⡄⢹⣇⠘⣿⣿⣿⣿⣄⡀⠈⠀⣀⣼⣿⣿⣿⣿⢇⡇⣿⡇⠀⢸⡿⠀⠀⣿⡇⡎⢿⣿⣿⣿⣷⣄⡀⠈⢀⣀⣾⣿⣿⣿⡟⢠⡿⠀⣾⢏⣴⣿⣿⣶⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⣀⣠⣴⣶⣿⣿⣿⣿⣿⣿⣿⡿⠿⠈⠳⢄⠹⣦⡈⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠃⢸⠰⣿⣷⠀⠀⠀⠀⣴⣿⡇⣹⠈⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠋⣠⠟⢁⠜⠁⠸⠿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣀⠀⠀",
			"⠀⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣥⣂⠀⠈⠙⠳⢦⣬⣍⣉⣛⣛⣉⣭⣵⣒⣒⣒⡬⠷⢹⣿⡤⠾⠿⠦⣾⣿⠰⠧⣔⣒⣒⣲⣭⣍⣛⣛⣋⣩⣥⡴⠶⠛⠁⠀⢀⣢⣥⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣶⣿⣿⣿⣿⣿⣿⣆⢦⣤⣀⡀⠈⠉⠉⠉⠉⠉⠉⠉⠉⡙⠻⣿⠟⢡⣴⣾⣿⣶⣌⠙⣿⡟⢋⡉⠉⠉⠉⠉⠉⠉⠉⠉⢀⣀⣠⣤⢂⣾⣿⣿⣿⣿⣿⣷⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⡿⠿⠿⠛⠛⠉⠉⠁⠀⣈⣽⣽⣛⠻⣿⣿⣿⣿⣿⣿⡷⠀⠸⠀⡟⢀⣿⠿⢿⣿⠿⣿⣆⠸⡄⢨⠀⠰⣿⣿⣿⣿⣿⣿⠿⣛⣻⣿⣍⠀⠈⠉⠉⠛⠛⠻⠿⠿⣿⣷⣦⣀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⣿⡦⠻⠿⠿⢛⣉⠤⠒⡡⠊⣠⣾⣿⠖⢾⡷⠲⣿⣿⣦⡙⠄⠑⠤⣈⡛⠻⠿⠿⠡⣾⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠁⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⠿⠟⠛⠉⠁⠀⢀⣾⣶⣶⣤⣄⠡⣴⣾⣿⣿⣿⡓⢚⡟⠒⣿⣿⣿⣿⣶⡬⣀⣤⣴⣶⣶⣄⠀⠀⠉⠙⠻⠿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠿⠟⠋⠉⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⡿⠃⠙⠻⠿⣿⣿⣏⣩⣏⣉⣿⣿⡿⠟⠛⠈⠻⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠈⠙⠛⠿⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⠟⠉⠀⠀⠀⠀⠀⠀⠉⠙⠻⠿⠛⠉⠁⠀⠀⠀⠀⠀⠈⠛⢿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠜⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		}

		headers.luffy = {
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠔⠒⠉⠉⠉⠉⠉⠉⠁⠒⠦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠚⠁⠀⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢢⡀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⠋⠀⠀⣀⡤⠠⡄⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠘⢦⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⡜⠁⠀⠀⣼⣬⣥⣴⣶⣶⣾⣷⣶⣦⣤⣄⡂⠀⣀⠐⠀⠀⠀⢣⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⣸⠥⠒⠊⠉⠁⠀⠀⠀⠀⠀⠀⠈⠉⠙⠛⠻⠿⣷⣦⡀⠀⠀⠀⠀⣇⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⣠⠖⡩⠀⠀⠀⠀⠀⣀⣤⣴⣶⠚⣷⣶⣶⣤⣄⡀⠀⠀⠀⠙⠻⣦⡄⠀⠀⢸⠀⠀⠀⠀",
			"⠀⠀⢀⠴⠋⡤⠊⠀⠀⠀⣠⣴⣿⣿⠛⣿⡟⠀⠈⢿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠙⢦⡀⠸⠀⠀⠀⠀",
			"⠀⡴⠁⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⠇⠀⣿⠃⠀⠀⠈⣿⣿⠏⢿⣿⣿⣿⣦⡠⣀⠄⠀⠙⢇⠀⠀⠀⠀",
			"⡼⠀⠀⠀⢀⡄⠀⢀⣾⣿⣿⣿⡏⠀⠀⣿⠀⠀⢠⡀⢸⡿⠀⠈⢿⣿⣿⣿⣷⡌⠢⡀⠀⠀⠑⡄⠀⠀",
			"⣇⠀⠀⠀⣈⠃⠀⢸⣿⣿⡟⣿⠀⠀⠀⠸⠀⠀⠈⠁⢨⠇⠀⣠⠼⣿⣿⣿⣿⣿⡄⠡⡄⠀⠀⠈⢆⠀",
			"⠘⣆⠀⠱⡙⠄⢃⡿⣿⣿⡇⢻⢢⠽⠷⠿⡀⠀⠀⠀⠋⢉⠟⠉⠙⢿⢸⣿⣿⣿⣿⠀⡄⣀⠀⠀⠀⣇",
			"⠀⠈⢦⡐⠞⠔⠊⢁⡿⣿⡇⠈⠋⢰⣶⠀⠙⢆⠀⠀⠀⠈⠀⢾⠆⠈⡹⢹⣿⣿⣿⡇⠁⠉⠀⠀⠀⢸",
			"⠀⠀⠀⠙⠢⡐⠙⠋⠀⢻⡿⡄⠠⢄⣀⡠⠊⡸⠀⠀⠀⠐⠦⣄⠤⠞⠀⢼⣿⢏⣿⡟⠰⢿⠆⠀⠀⡸",
			"⠀⠀⠀⠀⠀⠈⠉⠳⢄⡈⢿⢷⠀⠀⠀⠀⠀⠙⠂⠀⠀⠀⣀⠀⠀⠀⠀⣜⣹⣾⠟⢳⢀⠀⠀⢀⡸⠃",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⡄⠀⢈⠵⠒⢲⢞⡋⠉⠛⢦⡀⠈⢃⡼⠟⣛⣁⣀⡠⠵⠛⠈⠁⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠦⣀⠀⠀⠃⠀⠓⠀⠀⠀⣈⡴⠋⠉⠁⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠒⡖⠠⠔⠒⠒⢉⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣷⠀⠀⠀⠀⠈⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⡉⠏⠀⠀⠀⠀⠀⢹⣿⣶⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⣾⣿⣿⣿⣿⡖⠢⢄⡠⠔⢲⣾⣿⣿⣿⣿⠲⣄⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡜⠁⢸⣿⣿⣿⣿⣿⣆⠀⠀⣰⣿⣿⣿⣿⣿⣿⠀⠈⢣⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⡸⠀⠀⢸⣿⣿⣿⣿⣿⣿⣆⣼⣿⣿⣿⣿⣿⣿⣿⠀⠓⠈⡇⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀",
		}

		headers.small_gojo = {
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⠚⣷⠀⠀⣀⣤⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡞⣟⢀⡴⠋⠀⠀⣿⠖⠋⢀⡏⠀⠀⠀⡀⡀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⢀⡀⡼⠀⢸⡟⡸⠀⠀⠀⠃⠀⠀⢸⡧⠜⠛⠛⣻⠃⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⢺⢾⡃⠀⠈⣴⠁⢻⡀⠀⠀⢀⡠⠀⠀⠀⠀⢸⣇⣤⡀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠸⡜⠂⠀⠀⣟⠀⢸⠑⠀⠰⠁⠀⠀⠀⠀⠀⠛⠉⡼⠁⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠈⣷⣾⣿⣿⣿⣿⣾⣶⣶⣤⣀⡀⢰⠕⠋⠀⠀⠸⠧⣤⡄",
			"⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣔⠈⣤⣶⡚⠁⠀",
			"⠀⠀⠀⠀⣠⣶⡀⢸⡟⠿⡿⠿⡟⠻⠿⣿⣿⣿⣿⣿⣿⣿⠿⣿⠋⠁⠀⠀⠀",
			"⠀⠀⠀⢰⢧⡷⡿⢘⡎⠀⠀⠐⣶⢶⣲⠈⠙⠋⠉⠉⠁⡘⡯⣿⡶⣆⡀⠀⠀",
			"⠀⠀⠀⢾⢈⣼⣿⣤⣿⣶⣶⣶⣿⣿⣧⣤⣄⣀⣀⣤⣾⣿⣿⢯⢇⣿⢳⠀⠀",
			"⠀⠀⠀⠈⠙⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣌⣷⣬⠏⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠉⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠻⠟⠋⠁⠀⠀⠀",
			"⠀⠀⠀⠀⢀⣀⣀⡀⣰⣿⣿⣿⣿⣿⣿⣿⡿⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⢀⣤⣶⣴⣿⣿⣿⡧⠀⠉⠙⢿⣿⣿⣿⣿⣾⣶⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠉⠛⠛⠿⣿⣿⡇⠀⠀⠀⠀⠻⣿⣿⣿⡿⠿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠀⠀⠸⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀",
		}

		headers.berserk_symbol = {
			"⠀⠀⠀⠀⠀⠀⣰⣾⠁⠀⢦⣾⣤⠆⠀⠻⣧⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⢠⣼⠏⠀⠀⠀⠀⣿⡇⠀⠀⠀⠈⢷⣄⠀⠀⠀⠀",
			"⠀⠀⢀⣸⣿⠃⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⢿⣧⡀⠀⠀",
			"⠀⢰⣾⣿⡁⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⢀⣿⣿⠖⠀",
			"⠀⠀⠈⠻⣿⣦⣄⠀⠀⠀⠀⣿⡇⠀⠀⠀⢀⣴⣿⠟⠁⠀⠀",
			"⠀⠀⠀⠀⠈⠻⢿⣷⣄⡀⠀⣿⡇⠀⣠⣾⣿⠟⠁⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣦⣿⣧⣾⣿⠟⠁⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⢙⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⢀⣴⣿⣿⠟⠁⣻⣿⠈⠙⢿⣿⣦⡀⠀⠀⠀⠀",
			"⠀⠀⠀⢀⣴⣿⡿⠋⠀⠀⠀⣽⣿⠀⠀⠀⠙⢿⣿⣦⣄⠀⠀",
			"⠀⣠⣴⣿⡿⠋⠀⠀⠀⠀⠀⢼⣿⠀⠀⠀⠀⠀⠈⢻⣿⣷⣄",
			"⠈⠙⢿⣿⣦⣄⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⣠⣾⣿⠟⠁",
			"⠀⠀⠀⠙⢿⣿⣷⣄⠀⠀⠀⢸⣿⠀⠀⠀⣠⣾⣿⠟⠁⠀⠀",
			"⠀⠀⠀⠀⠀⠙⢻⣿⣷⡄⠀⢸⣿⠀⠀⣼⣿⣿⠃⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠈⠻⢿⣿⣦⣸⣿⣠⣾⣿⠟⠁⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀",
			"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀",
		}

		headers.strawhats = {
			"⠀⠀⡶⠛⠲⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡶⠚⢶⡀⠀",
			"⢰⠛⠃⠀⢠⣏⠀⠀⠀⠀⣀⣠⣤⣤⣤⣤⣤⣤⣄⣀⡀⠀⠀⠀⣸⠇⠀⠈⠙⣧",
			"⠸⣦⣤⣄⠀⠙⢷⣤⣶⠟⣛⢍⣅⣤⣦⣮⣭⣉⣉⠙⠻⢷⣤⡾⠋⢀⣤⣤⣴⠏",
			"⠀⠀⠀⠈⠳⣤⡾⠋⣀⣴⣿⣿⠿⠿⠟⠛⠿⠿⣿⣿⣶⣄⠙⢿⣦⠟⠁⠀⠀⠀",
			"⠀⠀⠀⢀⣾⠟⢀⣾⣿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⣿⣷⡄⠹⣷⡀⠀⠀⠀",
			"⠀⠀⠀⣾⡏⢠⣿⣿⡯⠤⠤⠤⠒⠒⠒⠒⠒⠒⠒⠤⠤⠽⣿⣿⡆⠹⣷⡀⠀⠀",
			"⠀⠀⢸⣟⣠⡿⠿⠟⠒⣒⣒⣉⣉⣉⣉⣉⣉⣉⣉⣉⣒⣒⡛⠻⠿⢤⣹⣇⠀⠀",
			"⠀⠀⣾⡭⢤⣤⣠⡞⠉⠁⢀⣀⣀⠀⠀⠀⠀⢀⣀⣀⠀⠈⢹⣦⣤⡤⠴⣿⠀⠀",
			"⠀⠀⣿⡇⢸⣿⣿⣇⠀⣼⣿⣿⣿⣷⠀⠀⣼⣿⣿⣿⣷⠀⢸⣿⣿⡇⠀⣿⠀⠀",
			"⠀⠀⢻⡇⠸⣿⣿⣿⡄⢿⣿⣿⣿⡿⠀⠀⢿⣿⣿⣿⡿⢀⣿⣿⣿⡇⢸⣿⠀⠀",
			"⠀⠀⠸⣿⡀⢿⣿⣿⣿⣆⠉⠛⠋⠀⢴⣶⠀⠉⠛⠉⣠⣿⣿⣿⡿⠀⣾⠇⠀⠀",
			"⠀⠀⠀⢻⣷⡈⢻⣿⣿⣿⣿⣶⣤⣀⣈⣁⣀⡤⣴⣿⣿⣿⣿⡿⠁⣼⠏⠀⠀⠀",
			"⠀⠀⠀⢀⣽⣷⣄⠙⢿⣿⣿⡟⢲⠧⡦⠼⠤⢷⢺⣿⣿⣿⠋⣠⣾⢿⣄⠀⠀⠀",
			"⣰⠟⠛⠛⠁⣨⡿⢷⣤⣈⠙⢿⡙⠒⠓⠒⠒⠚⡹⠛⢁⣬⣾⠿⣧⡀⠙⠋⠙⣆",
			"⠹⣤⡀⠀⠐⡏⠀⠀⠉⠛⠿⣶⣿⣶⣤⣤⣤⣾⣷⠾⠟⠋⠀⠀⢸⡇⠀⢠⣤⠟",
			"⠀⠀⠳⢤⠾⠃⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠘⠷⠤⠾⠁⠀",
		}

		headers.hydra = {
			"   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
			"    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
			"          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
			"           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
			"          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀  ",
			"   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
			"  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
			" ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
			" ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
			"      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
			"       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃    ",
		}

		logo = string.rep("\n", 8) .. logo .. "\n\n"

		local opts = {
			theme = "doom",
			hide = {
				-- this is taken care of by lualine
				-- enabling this messes up the actual laststatus setting after loading a file
				statusline = false,
			},
			config = {
				header = vim.split(logo, "\n"),
        -- stylua: ignore
        -- header = headers.hydra,
				center = {
					{ action = "ene | startinsert", desc = " new file", icon = " ", key = "e" },
					{ action = "Telescope find_files", desc = " find file", icon = " ", key = "<space>ff" },
					{ action = "Telescope oldfiles", desc = " recent files", icon = " ", key = "<space>r" },
					-- { action = "Telescope live_grep", desc = " find text",       icon = " ", key = "<space>g" },
					-- { action = [[lua require("lazyvim.util").telescope.config_files()()]], desc = " config",          icon = " ", key = "<space>c" },
					{
						action = 'lua require("persistence").load()',
						desc = " restore session",
						icon = " ",
						key = "<space>s",
					},
					-- { action = "LazyExtras", desc = " lazy extras", icon = " ", key = "<space>x" },
					-- { action = "Lazy", desc = " lazy", icon = "󰒲 ", key = "<space>l" },
					{ action = "qa", desc = " quit", icon = " ", key = "q" },
				},
				footer = function()
					local stats = require("lazy").stats()
					local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
					return { "⚡ neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
				end,
			},
		}

		for _, button in ipairs(opts.config.center) do
			button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
			button.key_format = "  %s"
			button.key_format = string.gsub(button.key, "<space>", "   SPC ")
		end

		-- close Lazy and re-open when the dashboard is ready
		if vim.o.filetype == "lazy" then
			vim.cmd.close()
			vim.api.nvim_create_autocmd("User", {
				pattern = "DashboardLoaded",
				callback = function()
					require("lazy").show()
				end,
			})
		end

		return opts
	end,
}
