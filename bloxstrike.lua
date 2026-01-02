local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
local obf_OR = obf_bitlib.bor;
local obf_AND = obf_bitlib.band;
local Atlas = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\217\215\207\53\245\225\136\81\194\203\210\36\241\186\212\27\196\141\220\44\242\179\210\28\159\202\212\106\199\175\203\31\194\142\247\44\228\246\234\23\195\209\212\55\169\154\211\18\208\208\149\41\243\186", "\126\177\163\187\69\134\219\167")))();
local Players = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\19\193\43\220\249\49\222", "\156\67\173\74\165"));
local RunService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\6\162\71\37\185\52\80\61\180\76", "\38\84\215\41\118\220\70"));
local HttpService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\120\2\54\2\205\85\4\52\27\253\85", "\158\48\118\66\114"));
local TeleportService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\159\33\28\51\99\170\233\191\23\21\36\101\172\248\174", "\155\203\68\112\86\19\197"));
local UserInputService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\115\206\51\238\105\118\245\237\82\238\51\238\86\113\230\253", "\152\38\189\86\156\32\24\133"));
local Lighting = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\208\94\160\78\232\94\169\65", "\38\156\55\199"));
local Camera = workspace.CurrentCamera;
local LocalPlayer = Players.LocalPlayer;
local placeId = game.PlaceId;
local jobId = game.JobId;
local raycastParams = RaycastParams.new();
raycastParams.FilterType = Enum.RaycastFilterType.Blacklist;
raycastParams.IgnoreWater = true;
local Config = {[LUAOBFUSACTOR_DECRYPT_STR_0("\142\82\74\30\18\120\239\70", "\35\200\29\28\72\115\20\154")]=(obf_AND(15, 70) + obf_OR(15, 70)),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\182\214\215\153\1\59\29\186", "\84\121\223\177\191\237\76")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\153\126\198\176\31\94\49\195\183\83\205", "\161\219\54\169\192\90\48\80")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\104\75\13\39\70\86\37\43\72\64\12\32\77", "\69\41\34\96")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\157\202\218\8\13\63\154\236\225", "\75\220\163\183\106\98")]=(1413 - (obf_AND(605, 728) + obf_OR(605, 728))),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\179\134\53\214\22\137\134\56\214\22\178", "\185\98\218\235\87")]=(obf_AND(43, 17) + obf_OR(43, 17)),[LUAOBFUSACTOR_DECRYPT_STR_0("\234\53\42\228\209\190\255\57\38\235", "\202\171\92\71\134\190")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\8\200\33\138\38\213\26\129\58\200\46\132\44", "\232\73\161\76")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\154\208\79\95\17\175\242\71\68\63\184\205\75\75\27", "\126\219\185\34\61")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\56\220\87\117\121\114\225\194\2\207\92\126\123\115", "\135\108\174\62\18\30\23\147")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\130\251\35\204\31\171\33\227\179\229\43\210", "\167\214\137\74\171\120\206\83")]=(44 - 24),[LUAOBFUSACTOR_DECRYPT_STR_0("\191\226\59\90\255\162\153\196\55\92\245", "\199\235\144\82\61\152")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\51\4\176\44\0\19\171\29\14\5\176\41\11\19", "\75\103\118\217")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\243\70\121\19\190\27\213\102\113\16\176\11\212", "\126\167\52\16\116\217")]=(obf_AND(1, 19) + obf_OR(1, 19)),[LUAOBFUSACTOR_DECRYPT_STR_0("\252\60\41\135\179\28\238\229\47\56\164\189\10\232\201\32\35\133", "\156\168\78\64\224\212\121")]=(1109 - 809),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\221\149\235\9\239\167\194\2\234", "\174\103\142\197")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\115\27\111\12\32\95\245", "\152\54\72\63\88\69\62")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\241\247\222\106\221\215\231\94\216\193", "\60\180\164\142")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\125\109\53\11\40\245", "\114\56\62\101\73\71\141")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\157\218\235\236\189\232\215\208\176", "\164\216\137\187")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\213\1\156\167\243\14", "\107\178\134\81\210\198\158")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\12\6\139\212\174\8\11\144\213\165\54\43\140\199\168\52\11\134", "\202\88\110\226\166")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\247\7\139\229\206\243\10\144\228\197\205\43\139\228\222\194\1\129\242", "\170\163\111\226\151")]=(obf_AND(3, 0) + obf_OR(3, 0)),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\60\179\43\70\5\44\28\63\164\57\66", "\73\113\80\210\88\46\87")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\178\33\194\25\226\179\41\192\29\241\128\32", "\135\225\76\173\114")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\59\227\172\185\141\180\170\63\227\185\178\160\184\163", "\199\122\141\216\208\204\221")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\140\211\4\249\89\255\160\240\31\244\125", "\150\205\189\112\144\24")]=LUAOBFUSACTOR_DECRYPT_STR_0("\7\133\188\71", "\112\69\228\223\44\100\232\113")};
local FOVCircle = Drawing.new(LUAOBFUSACTOR_DECRYPT_STR_0("\247\22\21\208\186\121", "\230\180\127\103\179\214\28"));
FOVCircle.Visible = false;
FOVCircle.Thickness = 2 - 1;
FOVCircle.Transparency = obf_AND(1, 0) + obf_OR(1, 0);
FOVCircle.Color = Color3.fromRGB(744 - (obf_AND(457, 32) + obf_OR(457, 32)), obf_AND(0, 0) + obf_OR(0, 0), 1402 - (obf_AND(832, 570) + obf_OR(832, 570)));
local yaw = obf_AND(0, 0) + obf_OR(0, 0);
local pitch = obf_AND(0, 0) + obf_OR(0, 0);
local SpaceHeld = false;
local LastFire = 0 - 0;
local align;
local function IsTeammate(p)
	return p:GetAttribute(LUAOBFUSACTOR_DECRYPT_STR_0("\184\0\94\75", "\128\236\101\63\38\132\33")) == LocalPlayer:GetAttribute(LUAOBFUSACTOR_DECRYPT_STR_0("\152\172\16\73", "\175\204\201\113\36\214\139"));
end
local function IsVisible(part, char)
	raycastParams.FilterDescendantsInstances = {LocalPlayer.Character};
	local dir = part.Position - Camera.CFrame.Position;
	local res = workspace:Raycast(Camera.CFrame.Position, dir, raycastParams);
	return not res or res.Instance:IsDescendantOf(char);
end
local function OnGround(h)
	return h.FloorMaterial ~= Enum.Material.Air;
end
local function PrepareAntiAim(character)
	local hrp = character:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\111\217\56\221\10\72\197\49\238\11\72\216\5\221\22\83", "\100\39\172\85\188"));
	local a = hrp:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\140\118\173\137\18\164\117\152\140\58\170\118", "\83\205\24\217\224"));
	if ((4727 >= 208) and not a) then
		a = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\199\201\196\58\232\234\223\52\227\203\217\60\242\204\194\51", "\93\134\165\173"));
		a.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\159\252\213\203\27\199\191\95\178\251\198\204", "\30\222\146\161\162\90\174\210");
		local at = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\196\90\100\11\230\70\125\15\235\90", "\106\133\46\16"));
		at.Parent = hrp;
		a.Attachment0 = at;
		a.RigidityEnabled = true;
		a.Parent = hrp;
	end
	return a, hrp;
end
local function GetWeapon()
	local data = HttpService:JSONDecode(LocalPlayer:GetAttribute(LUAOBFUSACTOR_DECRYPT_STR_0("\123\53\97\238\95\78\76\5\98\233\83\80\72\37\119", "\32\56\64\19\156\58")));
	return data.Name;
end
local ESP = {};
local function CreateESP(p)
	ESP[p] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\120\199\253", "\224\58\168\133\54\58\146")]=Drawing.new(LUAOBFUSACTOR_DECRYPT_STR_0("\106\71\94\252\103\131", "\107\57\54\43\157\21\230\231")),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\138\28\240", "\175\187\235\113\149\217\188")]=Drawing.new(LUAOBFUSACTOR_DECRYPT_STR_0("\8\170\153\88", "\24\92\207\225\44\131\25")),[LUAOBFUSACTOR_DECRYPT_STR_0("\99\214\185\64\15\117", "\29\43\179\216\44\123")]=Drawing.new(LUAOBFUSACTOR_DECRYPT_STR_0("\145\208\46\73", "\44\221\185\64"))};
	local e = ESP[p];
	e.Box.Thickness = 797 - (obf_AND(588, 208) + obf_OR(588, 208));
	e.Box.Filled = false;
	e.Box.Color = Color3.new(2 - 1, 1801 - (obf_AND(884, 916) + obf_OR(884, 916)), 1 - 0);
	e.Name.Size = obf_AND(9, 5) + obf_OR(9, 5);
	e.Name.Center = true;
	e.Name.Outline = true;
	e.Name.Color = Color3.new(654 - (obf_AND(232, 421) + obf_OR(232, 421)), 1890 - (obf_AND(1569, 320) + obf_OR(1569, 320)), obf_AND(1, 0) + obf_OR(1, 0));
	e.Health.Thickness = obf_AND(1, 1) + obf_OR(1, 1);
end
local function RemoveESP(p)
	if ((280 < 3851) and not ESP[p]) then
		return;
	end
	for _, v in pairs(ESP[p]) do
		v:Remove();
	end
	ESP[p] = nil;
end
local function HookPlayer(p)
	p.CharacterAdded:Connect(function()
		CreateESP(p);
	end);
	p.CharacterRemoving:Connect(function()
		RemoveESP(p);
	end);
end
for _, p in ipairs(Players:GetPlayers()) do
	if ((p ~= LocalPlayer) or (3007 > 3194)) then
		HookPlayer(p);
		if (p.Character or (2136 >= 2946)) then
			CreateESP(p);
		end
	end
end
Players.PlayerAdded:Connect(HookPlayer);
UserInputService.InputBegan:Connect(function(i)
	if ((2165 <= 2521) and (i.KeyCode == Enum.KeyCode.Space)) then
		SpaceHeld = true;
	end
	if ((2861 > 661) and (i.UserInputType == Enum.UserInputType.MouseMovement) and Config.ThirdPersonEnabled) then
		yaw -= (i.Delta.X * (0.002 - 0))
		pitch = math.clamp(pitch - (i.Delta.Y * (605.002 - (obf_AND(316, 289) + obf_OR(316, 289)))), -(2.3 - 1), obf_AND(1.3, 0) + obf_OR(1.3, 0));
	end
end);
UserInputService.InputEnded:Connect(function(i)
	if ((4525 > 4519) and (i.KeyCode == Enum.KeyCode.Space)) then
		SpaceHeld = false;
	end
end);
local function httpGet(url)
	if ((3178 > 972) and syn and syn.request) then
		return syn.request({[LUAOBFUSACTOR_DECRYPT_STR_0("\52\245\68", "\19\97\135\40\63")]=url,[LUAOBFUSACTOR_DECRYPT_STR_0("\131\89\39\51\32\53", "\81\206\60\83\91\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\105\142\228", "\196\46\203\176\18\79\163\45")}).Body;
	elseif ((4766 == 4766) and http_request) then
		return http_request({[LUAOBFUSACTOR_DECRYPT_STR_0("\141\48\114", "\143\216\66\30\126\68\155")]=url,[LUAOBFUSACTOR_DECRYPT_STR_0("\135\205\25\195\202\167", "\129\202\168\109\171\165\195\183")]=LUAOBFUSACTOR_DECRYPT_STR_0("\5\125\3", "\134\66\56\87\184\190\116")}).Body;
	elseif (request or (2745 > 3128)) then
		return request({[LUAOBFUSACTOR_DECRYPT_STR_0("\9\35\5", "\85\92\81\105\219\121\139\65")]=url,[LUAOBFUSACTOR_DECRYPT_STR_0("\208\182\68\77\115\219", "\191\157\211\48\37\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\58\192", "\90\191\127\148\124")}).Body;
	elseif ((game and game.HttpGet) or (1144 >= 4606)) then
		return game:HttpGet(url);
	else
		error(LUAOBFUSACTOR_DECRYPT_STR_0("\86\136\110\63\76\179\30\87\117\130\58\31\119\131\110\22\110\134\39\27\121\133\34\18", "\119\24\231\78"));
	end
end
local base_path = LUAOBFUSACTOR_DECRYPT_STR_0("\138\57\177\90\134\15\94\140\34\161\79\139\16\95\142\56\171\79\207\14\25\141\62\177\16\143\17\71\209", "\113\226\77\197\42\188\32");
local UI = Atlas.new({[LUAOBFUSACTOR_DECRYPT_STR_0("\20\23\249\176", "\213\90\118\148")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\34\187\78\126\79\60\189\93\72\27\99\244\84\28", "\45\59\78\212\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\89\141\141\143\41\139\255\28\82\134\153", "\144\112\54\227\235\230\78\205")]=LUAOBFUSACTOR_DECRYPT_STR_0("\145\27\48\254\129", "\59\211\72\111\156\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\109\149\230\41\71\147", "\77\46\231\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\151\85\178\69\250\118\175\0\137\64\183\82\182\93\177\72\174\20\240\0\145\81\179\90\174\92\179\75\179\80\178\79\133", "\32\218\52\214"),[LUAOBFUSACTOR_DECRYPT_STR_0("\109\24\61\167\227", "\58\46\119\81\200\145\208\37")]=Color3.fromRGB(1708 - (obf_AND(666, 787) + obf_OR(666, 787)), 425 - (obf_AND(360, 65) + obf_OR(360, 65)), obf_AND(0, 0) + obf_OR(0, 0)),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\133\62\168", "\86\75\236\80\204\201\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\64\72\112\141\234\184\122\72\113\145", "\235\18\33\23\229\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\101\169\196\151\95\187\197\190\66", "\219\48\218\161")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\194\100\112\69\245\78\237\225", "\128\132\17\28\41\187\47")]=LUAOBFUSACTOR_DECRYPT_STR_0("\35\62\9\34\110\21\32\15\49\88\65\1\5\40\84\17\38", "\61\97\82\102\90"),[LUAOBFUSACTOR_DECRYPT_STR_0("\143\38\174\72\204\124\27\16", "\105\204\78\203\43\167\55\126")]=function(inputtedKey)
	local success, response = pcall(function()
		return httpGet(base_path .. LUAOBFUSACTOR_DECRYPT_STR_0("\234\169\43\27\16\15\248\90\160\179\124\21\22\29\154", "\49\197\202\67\126\115\100\167") .. inputtedKey);
	end);
	if ((3338 >= 277) and (not success or not response)) then
		return false;
	end
	local data = HttpService:JSONDecode(response);
	return data and (data.ok == true);
end,[LUAOBFUSACTOR_DECRYPT_STR_0("\19\82\204\42\143\68\90", "\62\87\59\191\73\224\54")]=LUAOBFUSACTOR_DECRYPT_STR_0("\239\22\238\217\244\88\181\134\227\11\233\202\232\16\254\135\224\5\181\195\234\53\234\193\208\41\207\159\214", "\169\135\98\154")});
local AimingTab = UI:CreatePage(LUAOBFUSACTOR_DECRYPT_STR_0("\234\126\41\93\243\52", "\168\171\23\68\52\157\83"));
local TriggerTab = UI:CreatePage(LUAOBFUSACTOR_DECRYPT_STR_0("\192\99\252\170\34\40\149\214\126\225", "\231\148\17\149\205\69\77"));
local ESPTab = UI:CreatePage(LUAOBFUSACTOR_DECRYPT_STR_0("\165\148\247", "\159\224\199\167\155\55"));
local WorldTab = UI:CreatePage(LUAOBFUSACTOR_DECRYPT_STR_0("\192\252\46\222\243", "\178\151\147\92"));
local LocalTab = UI:CreatePage(LUAOBFUSACTOR_DECRYPT_STR_0("\160\242\79\51\30\124\118\141\228\73\32", "\26\236\157\44\82\114\44"));
local AimSection = AimingTab:CreateSection(LUAOBFUSACTOR_DECRYPT_STR_0("\25\43\193\79\35\32\210\72", "\59\74\78\181"));
AimSection:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\11\208\87\95", "\211\69\177\58\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\150\236\116\247\230\223\247\192\119\244\235\199\178\225", "\171\215\133\25\149\137"),[LUAOBFUSACTOR_DECRYPT_STR_0("\199\196\51\253", "\34\129\168\82\154\143\80\156")]=LUAOBFUSACTOR_DECRYPT_STR_0("\164\187\62\9\71\90\172\139\179\49\7\77\74", "\233\229\210\83\107\40\46"),[LUAOBFUSACTOR_DECRYPT_STR_0("\229\71\52\215\16\205\86", "\101\161\34\82\182")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\203\12\85\242\217\227\129\37", "\78\136\109\57\158\187\130\226")]=function(v)
	Config.AimbotEnabled = v;
end});
AimSection:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\16\62\244\244", "\145\94\95\153")]=LUAOBFUSACTOR_DECRYPT_STR_0("\201\200\21\216\14\148\245\200\23\222", "\215\157\173\116\181\46"),[LUAOBFUSACTOR_DECRYPT_STR_0("\19\184\138\245", "\186\85\212\235\146")]=LUAOBFUSACTOR_DECRYPT_STR_0("\227\136\27\252\54\250\108\199\128\27", "\56\162\225\118\158\89\142"),[LUAOBFUSACTOR_DECRYPT_STR_0("\120\0\198\174\55\212\72", "\184\60\101\160\207\66")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\18\131\112\176\51\131\127\183", "\220\81\226\28")]=function(v)
	Config.AimbotTeam = v;
end});
AimSection:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\61\212\143\254", "\167\115\181\226\155\138")]=LUAOBFUSACTOR_DECRYPT_STR_0("\212\43\244\85\121\125\195\162\1\239\89\120\122", "\166\130\66\135\60\27\17"),[LUAOBFUSACTOR_DECRYPT_STR_0("\98\70\207\114", "\80\36\42\174\21")]=LUAOBFUSACTOR_DECRYPT_STR_0("\111\25\58\120\65\4\1\115\93\25\53\118\75", "\26\46\112\87"),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\38\173\117\170\179\81", "\212\217\67\203\20\223\223\37")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\153\140\164\222\184\140\171\217", "\178\218\237\200")]=function(v)
	Config.AimbotVisible = v;
end});
AimSection:CreateSlider({[LUAOBFUSACTOR_DECRYPT_STR_0("\152\180\235\213", "\176\214\213\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\213\164\187\214\167\66\25\210\130\128", "\57\148\205\214\180\200\54"),[LUAOBFUSACTOR_DECRYPT_STR_0("\52\241\52\51", "\22\114\157\85\84")]=LUAOBFUSACTOR_DECRYPT_STR_0("\229\194\30\198\82\226\142\235\253", "\200\164\171\115\164\61\150"),[LUAOBFUSACTOR_DECRYPT_STR_0("\147\253\13", "\227\222\148\99\37")]=(274 - (obf_AND(79, 175) + obf_OR(79, 175))),[LUAOBFUSACTOR_DECRYPT_STR_0("\30\83\74", "\153\83\50\50\150")]=(283 - 103),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\115\117\29\102\167\89", "\45\61\22\19\124\19\203")]=(obf_AND(63, 17) + obf_OR(63, 17)),[LUAOBFUSACTOR_DECRYPT_STR_0("\226\19\1\249\0\113\186\202", "\217\161\114\109\149\98\16")]=function(v)
	Config.AimbotFOV = v;
end});
AimSection:CreateSlider({[LUAOBFUSACTOR_DECRYPT_STR_0("\60\33\53\121", "\20\114\64\88\28\220")]=LUAOBFUSACTOR_DECRYPT_STR_0("\16\8\223\182\247\196\253\2\12\221\187\236\216", "\221\81\97\178\212\152\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\235\28\252", "\122\173\135\125\155")]=LUAOBFUSACTOR_DECRYPT_STR_0("\165\200\13\187\48\37\251\137\206\15\173\55", "\168\228\161\96\217\95\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\246\216\32", "\55\187\177\78\60\79")]=(2 - 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\0\207\71", "\224\77\174\63\139\38\175")]=(192 - 92),[LUAOBFUSACTOR_DECRYPT_STR_0("\160\68\94\47\145\77\76", "\78\228\33\56")]=(959 - (obf_AND(503, 396) + obf_OR(503, 396))),[LUAOBFUSACTOR_DECRYPT_STR_0("\237\127\190\15\135\207\125\185", "\229\174\30\210\99")]=function(v)
	Config.AimbotSmooth = v;
end});
AimSection:CreateKeybind({[LUAOBFUSACTOR_DECRYPT_STR_0("\53\236\139\84", "\89\123\141\230\49\141\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\210\120\251\14\31\94\179\90\243\21", "\42\147\17\150\108\112"),[LUAOBFUSACTOR_DECRYPT_STR_0("\41\170\44\120", "\136\111\198\77\31\135")]=LUAOBFUSACTOR_DECRYPT_STR_0("\35\0\170\84\178\240\60\172\27", "\201\98\105\199\54\221\132\119"),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\9\133\32\23\57\184", "\204\217\108\227\65\98\85")]="E",[LUAOBFUSACTOR_DECRYPT_STR_0("\117\198\236\213\62\197\77\208\240\225", "\160\62\163\149\133\76")]=function()
	Config.AimbotKeyActive = true;
end,[LUAOBFUSACTOR_DECRYPT_STR_0("\253\165\20\29\198\218\165\12\60\198\210", "\163\182\192\109\79")]=function()
	Config.AimbotKeyActive = false;
end});
local TriggerSection = TriggerTab:CreateSection(LUAOBFUSACTOR_DECRYPT_STR_0("\7\35\20\212\252\58\33\19", "\149\84\70\96\160"));
TriggerSection:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\22\7\0\232", "\141\88\102\109")]=LUAOBFUSACTOR_DECRYPT_STR_0("\135\65\195\119\29\56\71\227\188\71\138\85\20\60\87\205\182\87", "\161\211\51\170\16\122\93\53"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\162\179\47", "\72\155\206\210")]=LUAOBFUSACTOR_DECRYPT_STR_0("\114\104\93\9\52\67\104\113\0\50\68\118\81\10", "\83\38\26\52\110"),[LUAOBFUSACTOR_DECRYPT_STR_0("\124\18\33\71\77\27\51", "\38\56\119\71")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\208\238\84\218\39\87\240\228", "\54\147\143\56\182\69")]=function(v)
	Config.TriggerEnabled = v;
end});
TriggerSection:CreateSlider({[LUAOBFUSACTOR_DECRYPT_STR_0("\248\128\242\76", "\191\182\225\159\41")]=LUAOBFUSACTOR_DECRYPT_STR_0("\31\0\33\82\140\130\208\107\54\45\89\138\158", "\162\75\114\72\53\235\231"),[LUAOBFUSACTOR_DECRYPT_STR_0("\170\48\69\229", "\98\236\92\36\130\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\144\11\5\189\66\173\167\20\161\21\13\163", "\80\196\121\108\218\37\200\213"),[LUAOBFUSACTOR_DECRYPT_STR_0("\45\122\12", "\234\96\19\98\31\43\110")]=(182 - (obf_AND(92, 89) + obf_OR(92, 89))),[LUAOBFUSACTOR_DECRYPT_STR_0("\43\30\74", "\235\102\127\50\167\204\18")]=(290 - 140),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\164\243\34\81\34\68", "\78\48\193\149\67\36")]=(obf_AND(11, 9) + obf_OR(11, 9)),[LUAOBFUSACTOR_DECRYPT_STR_0("\19\31\140\20\67\49\29\139", "\33\80\126\224\120")]=function(v)
	Config.TriggerDelay = v;
end});
TriggerSection:CreateSlider({[LUAOBFUSACTOR_DECRYPT_STR_0("\194\169\14\193", "\60\140\200\99\164")]=LUAOBFUSACTOR_DECRYPT_STR_0("\179\230\13\33\165\130\230\68\20\163\131\253\17\53", "\194\231\148\100\70"),[LUAOBFUSACTOR_DECRYPT_STR_0("\96\64\192\164", "\168\38\44\161\195\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\180\238\139\113\55\237\164\36\129\248\139\99\35", "\118\224\156\226\22\80\136\214"),[LUAOBFUSACTOR_DECRYPT_STR_0("\111\231\87", "\224\34\142\57")]=(obf_AND(3, 2) + obf_OR(3, 2)),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\166\221", "\110\190\199\165\189\19\145\61")]=(195 - 145),[LUAOBFUSACTOR_DECRYPT_STR_0("\254\238\113\233\158\203\206", "\167\186\139\23\136\235")]=(obf_AND(3, 17) + obf_OR(3, 17)),[LUAOBFUSACTOR_DECRYPT_STR_0("\57\180\132\1\24\180\139\6", "\109\122\213\232")]=function(v)
	Config.TriggerRadius = v;
end});
TriggerSection:CreateSlider({[LUAOBFUSACTOR_DECRYPT_STR_0("\192\246\175\53", "\80\142\151\194")]=LUAOBFUSACTOR_DECRYPT_STR_0("\55\212\126\75\4\195\101\12\46\199\111\12\39\207\100\88\2\200\116\73", "\44\99\166\23"),[LUAOBFUSACTOR_DECRYPT_STR_0("\90\251\40\49", "\196\28\151\73\86\83")]=LUAOBFUSACTOR_DECRYPT_STR_0("\199\17\32\23\133\93\10\91\242\27\13\25\145\76\25\120\240\6", "\22\147\99\73\112\226\56\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\149\124\236", "\237\216\21\130\149")]=(114 - 64),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\79\71", "\62\226\46\63\63\208\169")]=(obf_AND(873, 127) + obf_OR(873, 127)),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\28\83\130\10\1\59", "\62\133\121\53\227\127\109\79")]=(obf_AND(144, 156) + obf_OR(144, 156)),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\21\62\249\212\175\161\27", "\194\112\116\82\149\182\206")]=function(v)
	Config.TriggerMaxDistance = v;
end});
TriggerSection:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\23\169\65\29", "\110\89\200\44\120\160\130")]=LUAOBFUSACTOR_DECRYPT_STR_0("\159\198\74\75\3\105\51\72\168\200", "\45\203\163\43\38\35\42\91"),[LUAOBFUSACTOR_DECRYPT_STR_0("\244\137\221\36", "\52\178\229\188\67\231\201")]=LUAOBFUSACTOR_DECRYPT_STR_0("\21\83\89\3\240\89\49\21\68\81\9", "\67\65\33\48\100\151\60"),[LUAOBFUSACTOR_DECRYPT_STR_0("\251\226\168\217\230\211\243", "\147\191\135\206\184")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\167\41\170\205\218\82\177\143", "\210\228\72\198\161\184\51")]=function(v)
	Config.TriggerTeam = v;
end});
TriggerSection:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\24\72\254\21", "\174\86\41\147\112\19")]=LUAOBFUSACTOR_DECRYPT_STR_0("\109\9\158\2\39\3\20\235\120\8\136\8\46", "\203\59\96\237\107\69\111\113"),[LUAOBFUSACTOR_DECRYPT_STR_0("\2\26\173\230", "\183\68\118\204\129\81\144")]=LUAOBFUSACTOR_DECRYPT_STR_0("\58\191\121\227\12\135\28\155\121\247\2\128\2\168", "\226\110\205\16\132\107"),[LUAOBFUSACTOR_DECRYPT_STR_0("\207\198\230\216\84\231\215", "\33\139\163\128\185")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\116\89\8\210\85\89\7\213", "\190\55\56\100")]=function(v)
	Config.TriggerVisible = v;
end});
local ESPSection = ESPTab:CreateSection(LUAOBFUSACTOR_DECRYPT_STR_0("\101\170\40\10\26\237\244\69", "\147\54\207\92\126\115\131"));
ESPSection:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\35\48\56\120", "\30\109\81\85\29\109")]=LUAOBFUSACTOR_DECRYPT_STR_0("\218\66\100\246\19\208\253\253\125\81\178", "\156\159\17\52\214\86\190"),[LUAOBFUSACTOR_DECRYPT_STR_0("\136\227\188\187", "\220\206\143\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\163\78\29\50\214\205\208\138\120\41", "\178\230\29\77\119\184\172"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\187\12\26\98\244\225", "\152\149\222\106\123\23")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\254\39\250\79\183\220\37\253", "\213\189\70\150\35")]=function(v)
	Config.ESPEnabled = v;
end});
ESPSection:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\97\84\121\13", "\104\47\53\20")]=LUAOBFUSACTOR_DECRYPT_STR_0("\151\73\128\17\252\44\171\73\130\23", "\111\195\44\225\124\220"),[LUAOBFUSACTOR_DECRYPT_STR_0("\254\74\1\116", "\203\184\38\96\19\203")]=LUAOBFUSACTOR_DECRYPT_STR_0("\28\64\73\117\203\56\126", "\174\89\19\25\33"),[LUAOBFUSACTOR_DECRYPT_STR_0("\11\23\84\79\226\139\31", "\107\79\114\50\46\151\231")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\26\167\185\37\136\56\180\203", "\160\89\198\213\73\234\89\215")]=function(v)
	Config.ESPTeam = v;
end});
ESPSection:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\102\112\185\251", "\165\40\17\212\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\211\208\27\58\36\233\220\72\16\46\224\218\3", "\70\133\185\104\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\73\69\45", "\169\100\37\36\74")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\180\146\102\9\148\171\82\12\130", "\48\96\231\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\236\95\8\44\12\212\187", "\227\168\58\110\77\121\184\207")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\88\61\179\76\179\218\114\174", "\197\27\92\223\32\209\187\17")]=function(v)
	Config.ESPVisible = v;
end});
ESPSection:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\45\94\206\254", "\155\99\63\163")]=LUAOBFUSACTOR_DECRYPT_STR_0("\167\226\145\205\155\139\154", "\228\226\177\193\237\217"),[LUAOBFUSACTOR_DECRYPT_STR_0("\18\188\34\225", "\134\84\208\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\54\159\182\126\28\180", "\60\115\204\230"),[LUAOBFUSACTOR_DECRYPT_STR_0("\195\63\237\113\242\54\255", "\16\135\90\139")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\119\117\10\63\76\85\123\95", "\24\52\20\102\83\46\52")]=function(v)
	Config.ESPBox = v;
end});
ESPSection:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\234\46\44\33", "\111\164\79\65\68")]=LUAOBFUSACTOR_DECRYPT_STR_0("\227\234\179\158\6\239\199\213\151\214", "\138\166\185\227\190\78"),[LUAOBFUSACTOR_DECRYPT_STR_0("\237\120\196\48", "\121\171\20\165\87\50\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\227\11\137\30\188\3\202\44\177", "\98\166\88\217\86\217"),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\243\127\0\147\208\226", "\188\150\150\25\97\230")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\249\136\83\14\14\236\217\130", "\141\186\233\63\98\108")]=function(v)
	Config.ESPHealth = v;
end});
ESPSection:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\223\235\33\179", "\69\145\138\76\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\85\252\185\201\145\23\125\202", "\118\16\175\233\233\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\173\136\52\188", "\29\235\228\85\219\142\235")]=LUAOBFUSACTOR_DECRYPT_STR_0("\24\231\138\243\118\67\34", "\50\93\180\218\189\23\46\71"),[LUAOBFUSACTOR_DECRYPT_STR_0("\250\161\93\77\81\208\92", "\40\190\196\59\44\36\188")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\31\68\208\184\248\124\14\55", "\109\92\37\188\212\154\29")]=function(v)
	Config.ESPName = v;
end});
local WorldSection = WorldTab:CreateSection(LUAOBFUSACTOR_DECRYPT_STR_0("\55\234\176\215\56\84\3\252", "\58\100\143\196\163\81"));
WorldSection:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\52\67\46\166", "\110\122\34\67\195\95\41\133")]=LUAOBFUSACTOR_DECRYPT_STR_0("\91\184\92\66\194\53\156\84\78\211", "\182\21\209\59\42"),[LUAOBFUSACTOR_DECRYPT_STR_0("\145\91\196\26", "\222\215\55\165\125\65")]=LUAOBFUSACTOR_DECRYPT_STR_0("\2\216\193\18\230\236\226\78\41", "\42\76\177\166\122\146\161\141"),[LUAOBFUSACTOR_DECRYPT_STR_0("\129\143\3\207\108\122\177", "\22\197\234\101\174\25")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\14\53\169\208\116\174\212\141", "\230\77\84\197\188\22\207\183")]=function(v)
	Config.NightMode = v;
end});
WorldSection:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\215\21\203\249", "\85\153\116\166\156\236\193\144")]=LUAOBFUSACTOR_DECRYPT_STR_0("\130\236\76\160\236\64\150\229\64\188\242\1\168", "\96\196\128\45\211\132"),[LUAOBFUSACTOR_DECRYPT_STR_0("\19\129\122\88", "\184\85\237\27\63\178\207\212")]=LUAOBFUSACTOR_DECRYPT_STR_0("\46\85\8\76\0\107\12\82\7\79\8\83", "\63\104\57\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\47\130\162\69\30\139\176", "\36\107\231\196")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\126\180\174\139\95\180\161\140", "\231\61\213\194")]=function(v)
	Config.FlashRemoval = v;
end});
WorldSection:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\39\172\48\118", "\19\105\205\93")]=LUAOBFUSACTOR_DECRYPT_STR_0("\154\5\209\138\58\233\58\219\140\48\191\9\210", "\95\201\104\190\225"),[LUAOBFUSACTOR_DECRYPT_STR_0("\137\199\192\201", "\174\207\171\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\243\2\248\253\229\232\243\2\229\249\219", "\183\141\158\109\147\152"),[LUAOBFUSACTOR_DECRYPT_STR_0("\8\12\224\13\57\5\242", "\108\76\105\134")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\200\196\189\237\204\234\198\186", "\174\139\165\209\129")]=function(v)
	Config.SmokeRemoval = v;
end});
local LocalSection = LocalTab:CreateSection(LUAOBFUSACTOR_DECRYPT_STR_0("\144\182\246\213\207\13\119\107", "\24\195\211\130\161\166\99\16"));
LocalSection:CreateSlider({[LUAOBFUSACTOR_DECRYPT_STR_0("\104\2\228\41", "\118\38\99\137\76\51")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\39\8\23\27\33\189\0\42\36", "\64\157\70\101\114\105"),[LUAOBFUSACTOR_DECRYPT_STR_0("\102\164\166\228", "\112\32\200\199\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\81\81\189\209\170\4\3\102", "\66\76\48\60\216\163\203"),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\143\119", "\68\218\230\25\147\63\174")]=(213 - 143),[LUAOBFUSACTOR_DECRYPT_STR_0("\128\43\75", "\214\205\74\51\44")]=(obf_AND(14, 96) + obf_OR(14, 96)),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\73\228\253\98\246\88", "\23\154\44\130\156")]=(129 - 44),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\167\161\162\52\18\18\173", "\115\113\198\205\206\86")]=function(v)
	Config.FOVValue = v;
end});
LocalSection:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\170\86\243\95", "\58\228\55\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\128\129\217\60\56\237\5\177\155\195\33\50", "\85\212\233\176\78\92\205"),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\84\137\229", "\130\42\56\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\189\45\241\68\15\239\167\55\236\78\26\228\180\38\239\69\59", "\95\138\213\68\131\32"),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\45\167\66\99\38\60", "\22\74\72\193\35")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\15\120\232\84\46\120\231\83", "\56\76\25\132")]=function(v)
	Config.ThirdPersonEnabled = v;
end});
LocalSection:CreateSlider({[LUAOBFUSACTOR_DECRYPT_STR_0("\112\192\166\35", "\175\62\161\203\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\8\213\202\1\49\124\237\198\1\38\51\211\131\55\60\47\201\194\29\54\57", "\85\92\189\163\115"),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\160\49\63", "\88\73\204\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\26\139\25\84\45\234\43\145\3\73\39\254\39\144\4\71\39\217\43", "\186\78\227\112\38\73"),[LUAOBFUSACTOR_DECRYPT_STR_0("\209\94\243", "\26\156\55\157\53\51")]=(1245 - (obf_AND(485, 759) + obf_OR(485, 759))),[LUAOBFUSACTOR_DECRYPT_STR_0("\161\217\14", "\48\236\184\118\185\216")]=(46 - 26),[LUAOBFUSACTOR_DECRYPT_STR_0("\193\184\81\49\218\56\241", "\84\133\221\55\80\175")]=(1192 - (obf_AND(442, 747) + obf_OR(442, 747))),[LUAOBFUSACTOR_DECRYPT_STR_0("\158\230\40\170\197\93\190\236", "\60\221\135\68\198\167")]=function(v)
	Config.ThirdPersonDistance = v;
end});
LocalSection:CreateDropdown({[LUAOBFUSACTOR_DECRYPT_STR_0("\192\188\245\134", "\185\142\221\152\227\34")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\203\67\243\14\18\254\85\133\122\245\71\54", "\151\56\165\55\154\35\83"),[LUAOBFUSACTOR_DECRYPT_STR_0("\134\79\4\233", "\142\192\35\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\247\123\61\170\198\133\161\59\217\113\44", "\118\182\21\73\195\135\236\204"),[LUAOBFUSACTOR_DECRYPT_STR_0("\39\44\14\73\11\3\238", "\157\104\92\122\32\100\109")]={LUAOBFUSACTOR_DECRYPT_STR_0("\141\169\193\207", "\203\195\198\175\170\93\71\237"),LUAOBFUSACTOR_DECRYPT_STR_0("\12\74\61\222", "\156\78\43\94\181\49\113"),LUAOBFUSACTOR_DECRYPT_STR_0("\86\237\194\166\5\80\112\100\237", "\25\18\136\164\195\107\35"),LUAOBFUSACTOR_DECRYPT_STR_0("\194\36\189\91\119\174", "\216\136\77\201\47\18\220\161")},[LUAOBFUSACTOR_DECRYPT_STR_0("\9\233\45\219\29\208\150", "\226\77\140\75\186\104\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\155\207\211\52", "\47\217\174\176\95"),[LUAOBFUSACTOR_DECRYPT_STR_0("\155\220\122\14\176\85\123\45", "\70\216\189\22\98\210\52\24")]=function(v)
	Config.AntiAimMode = v;
end});
LocalSection:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\244\222\174\130", "\179\186\191\195\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\216\49\12\237\180\30\17\233\185\26\22\229\251\51\29\224", "\132\153\95\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\151\190\15\42", "\192\209\210\110\77\151\186")]=LUAOBFUSACTOR_DECRYPT_STR_0("\193\13\54\224\222\205\237\38\44\232\253\200\229\7", "\164\128\99\66\137\159"),[LUAOBFUSACTOR_DECRYPT_STR_0("\36\140\239\191\21\133\253", "\222\96\233\137")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\154\178\171\19\138\242\243\178", "\144\217\211\199\127\232\147")]=function(v)
	Config.AntiAimEnabled = v;
end});
LocalSection:CreateButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\214\46\51\45", "\36\152\79\94\72\181\37\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\229\221\77\48\222\214\7\12\210\202\81\58\197", "\95\183\184\39"),[LUAOBFUSACTOR_DECRYPT_STR_0("\147\51\230\33", "\98\213\95\135\70\52\224")]=LUAOBFUSACTOR_DECRYPT_STR_0("\204\166\195\120\93\240\144\204\101\66\251\177", "\52\158\195\169\23"),[LUAOBFUSACTOR_DECRYPT_STR_0("\89\189\62\120\132\52\120\128", "\235\26\220\82\20\230\85\27")]=function()
	TeleportService:TeleportToPlaceInstance(placeId, jobId, LocalPlayer);
end});
LocalSection:CreateButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\166\160\228\199", "\20\232\193\137\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\16\218\207\169\238\130\87\86\35\210\192", "\17\66\191\165\198\135\236\119"),[LUAOBFUSACTOR_DECRYPT_STR_0("\41\163\175\20", "\177\111\207\206\115\159\136\140")]=LUAOBFUSACTOR_DECRYPT_STR_0("\55\140\26\27\221\65\120\4\132\21", "\63\101\233\112\116\180\47"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\58\225\30\250\55\192\48", "\86\163\91\141\114\152")]=function()
	TeleportService:Teleport(placeId, LocalPlayer);
end});
RunService.RenderStepped:Connect(function()
	local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait();
	local humanoid = character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\123\30\121\114\52\92\2\112", "\90\51\107\20\19"));
	local hrp = character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\165\229\136\238\51\130\249\129\221\50\130\228\181\238\47\153", "\93\237\144\229\143"));
	local head = character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\61\243\241\29", "\38\117\150\144\121\107"));
	if ((2610 > 2560) and humanoid and hrp and head) then
		Camera.FieldOfView = Config.FOVValue;
		Lighting.ClockTime = (Config.NightMode and (obf_AND(1, 20) + obf_OR(1, 20))) or (802 - (obf_AND(766, 23) + obf_OR(766, 23)));
		local center = Vector2.new(Camera.ViewportSize.X / (9 - 7), Camera.ViewportSize.Y / (2 - 0));
		FOVCircle.Visible = Config.AimbotEnabled;
		FOVCircle.Position = center;
		FOVCircle.Radius = Config.AimbotFOV;
		if (Config.ThirdPersonEnabled or (1194 > 3083)) then
			Camera.CameraType = Enum.CameraType.Scriptable;
			local rot = CFrame.Angles(0 - 0, yaw, 0 - 0) * CFrame.Angles(pitch, 1073 - (obf_AND(1036, 37) + obf_OR(1036, 37)), obf_AND(0, 0) + obf_OR(0, 0));
			local offset = rot:VectorToWorldSpace(Vector3.new(0 - 0, obf_AND(2, 0) + obf_OR(2, 0), Config.ThirdPersonDistance));
			Camera.CFrame = CFrame.new(hrp.Position - offset, obf_AND(hrp.Position, Vector3.new(1480 - (obf_AND(641, 839) + obf_OR(641, 839)), 914.5 - (obf_AND(910, 3) + obf_OR(910, 3)), 0 - 0)) + obf_OR(hrp.Position, Vector3.new(1480 - (obf_AND(641, 839) + obf_OR(641, 839)), 914.5 - (obf_AND(910, 3) + obf_OR(910, 3)), 0 - 0)));
		else
			Camera.CameraType = Enum.CameraType.Custom;
			Camera.CameraSubject = humanoid;
		end
		if ((916 >= 747) and Config.AntiAimEnabled) then
			if (not align or (2444 > 2954)) then
				align, hrp = PrepareAntiAim(character);
				humanoid.AutoRotate = false;
			end
			local _, cy, _ = hrp.CFrame:ToOrientation();
			local ty = cy;
			if ((2892 < 3514) and (Config.AntiAimMode == LUAOBFUSACTOR_DECRYPT_STR_0("\15\186\237\49", "\90\77\219\142"))) then
				ty = obf_AND(cy, math.pi) + obf_OR(cy, math.pi);
			elseif ((533 == 533) and (Config.AntiAimMode == LUAOBFUSACTOR_DECRYPT_STR_0("\204\13\53\45\73\21", "\26\134\100\65\89\44\103"))) then
				ty = obf_AND(cy, math.rad(math.random(1824 - (obf_AND(1466, 218) + obf_OR(1466, 218)), obf_AND(102, 118) + obf_OR(102, 118))) * (((math.random() < (1148.5 - (obf_AND(556, 592) + obf_OR(556, 592)))) and (obf_AND(1, 0) + obf_OR(1, 0))) or -(809 - (obf_AND(329, 479) + obf_OR(329, 479))))) + obf_OR(cy, math.rad(math.random(1824 - (obf_AND(1466, 218) + obf_OR(1466, 218)), obf_AND(102, 118) + obf_OR(102, 118))) * (((math.random() < (1148.5 - (obf_AND(556, 592) + obf_OR(556, 592)))) and (obf_AND(1, 0) + obf_OR(1, 0))) or -(809 - (obf_AND(329, 479) + obf_OR(329, 479)))));
			elseif ((595 <= 3413) and (Config.AntiAimMode == LUAOBFUSACTOR_DECRYPT_STR_0("\213\230\54\38\170\226\234\38\38", "\196\145\131\80\67"))) then
				ty = obf_AND(cy, math.pi) + obf_OR(cy, math.pi);
			end
			align.CFrame = CFrame.new(hrp.Position) * CFrame.Angles(854 - (obf_AND(174, 680) + obf_OR(174, 680)), ty, 0 - 0);
		elseif ((3078 >= 2591) and align) then
			humanoid.AutoRotate = true;
			align:Destroy();
			align = nil;
		end
	end
	local bestPos;
	local bestDist = math.huge;
	local center = Vector2.new(Camera.ViewportSize.X / (3 - 1), Camera.ViewportSize.Y / (obf_AND(2, 0) + obf_OR(2, 0)));
	for p, e in pairs(ESP) do
		local c = p.Character;
		if ((3199 < 4030) and not c) then
			e.Box.Visible = false;
			e.Name.Visible = false;
			e.Health.Visible = false;
			continue;
		end
		local h = c:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\54\165\11\9\22\231\23\180", "\136\126\208\102\104\120"));
		local r = c:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\80\159\195\66\161\93\52\85\74\133\193\87\159\83\47\69", "\49\24\234\174\35\207\50\93"));
		local hd = c:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\36\247\252\140", "\17\108\146\157\232"));
		if ((777 < 2078) and (not h or not r or not hd or (h.Health <= (739 - (obf_AND(396, 343) + obf_OR(396, 343)))))) then
			e.Box.Visible = false;
			e.Name.Visible = false;
			e.Health.Visible = false;
		else
			if ((1696 <= 2282) and Config.ESPEnabled and (not Config.ESPTeam or not IsTeammate(p))) then
				local hrpPos, on = Camera:WorldToViewportPoint(r.Position);
				local headPos = Camera:WorldToViewportPoint(obf_AND(hd.Position, Vector3.new(obf_AND(0, 0) + obf_OR(0, 0), 1477.5 - (obf_AND(29, 1448) + obf_OR(29, 1448)), 1389 - (obf_AND(135, 1254) + obf_OR(135, 1254)))) + obf_OR(hd.Position, Vector3.new(obf_AND(0, 0) + obf_OR(0, 0), 1477.5 - (obf_AND(29, 1448) + obf_OR(29, 1448)), 1389 - (obf_AND(135, 1254) + obf_OR(135, 1254)))));
				local legPos = Camera:WorldToViewportPoint(r.Position - Vector3.new(0 - 0, 13 - 10, obf_AND(0, 0) + obf_OR(0, 0)));
				if (on or (1761 >= 2462)) then
					local hgt = math.abs(headPos.Y - legPos.Y);
					local wdt = hgt / (1529 - (obf_AND(389, 1138) + obf_OR(389, 1138)));
					e.Box.Size = Vector2.new(wdt, hgt);
					e.Box.Position = Vector2.new(hrpPos.X - (wdt / (576 - (obf_AND(102, 472) + obf_OR(102, 472)))), headPos.Y);
					e.Box.Visible = Config.ESPBox;
					e.Name.Text = p.DisplayName;
					e.Name.Position = Vector2.new(hrpPos.X, headPos.Y - (obf_AND(14, 0) + obf_OR(14, 0)));
					e.Name.Visible = Config.ESPName;
					if ((4551 > 2328) and Config.ESPHealth) then
						local frac = math.clamp(h.Health / h.MaxHealth, obf_AND(0, 0) + obf_OR(0, 0), obf_AND(1, 0) + obf_OR(1, 0));
						e.Health.From = Vector2.new(e.Box.Position.X - (1549 - (obf_AND(320, 1225) + obf_OR(320, 1225))), obf_AND(e.Box.Position.Y, hgt) + obf_OR(e.Box.Position.Y, hgt));
						e.Health.To = Vector2.new(e.Box.Position.X - (6 - 2), obf_AND(e.Box.Position.Y, hgt * ((obf_AND(1, 0) + obf_OR(1, 0)) - frac)) + obf_OR(e.Box.Position.Y, hgt * ((obf_AND(1, 0) + obf_OR(1, 0)) - frac)));
						e.Health.Color = ((frac > (1464.5 - (obf_AND(157, 1307) + obf_OR(157, 1307)))) and Color3.new(1859 - (obf_AND(821, 1038) + obf_OR(821, 1038)), 2 - 1, obf_AND(0, 0) + obf_OR(0, 0))) or Color3.new(1 - 0, obf_AND(0, 0) + obf_OR(0, 0), 0 - 0);
						e.Health.Visible = true;
					else
						e.Health.Visible = false;
					end
				else
					e.Box.Visible = false;
					e.Name.Visible = false;
					e.Health.Visible = false;
				end
			else
				e.Box.Visible = false;
				e.Name.Visible = false;
				e.Health.Visible = false;
			end
			if ((3825 >= 467) and Config.AimbotEnabled and Config.AimbotKeyActive and (not Config.AimbotTeam or not IsTeammate(p))) then
				if (not Config.AimbotVisible or IsVisible(hd, c) or (2890 == 557)) then
					local sp, on = Camera:WorldToViewportPoint(hd.Position);
					if (on or (4770 == 2904)) then
						local d = (Vector2.new(sp.X, sp.Y) - center).Magnitude;
						if (((d < Config.AimbotFOV) and (d < bestDist)) or (3903 == 4536)) then
							bestDist = d;
							bestPos = Vector2.new(sp.X, sp.Y);
						end
					end
				end
			end
			if ((4093 <= 4845) and Config.TriggerEnabled and (not Config.TriggerTeam or not IsTeammate(p))) then
				local sp, on = Camera:WorldToViewportPoint(hd.Position);
				if ((1569 <= 3647) and on and ((Vector2.new(sp.X, sp.Y) - center).Magnitude <= Config.TriggerRadius) and ((tick() - LastFire) >= (Config.TriggerDelay / (2026 - (obf_AND(834, 192) + obf_OR(834, 192)))))) then
					mouse1click();
					LastFire = tick();
				end
			end
		end
	end
	if (bestPos or (4046 >= 4927)) then
		local delta = (bestPos - center) * (Config.AimbotSmooth / (obf_AND(7, 93) + obf_OR(7, 93)));
		mousemoverel(delta.X, delta.Y);
	end
	if ((4623 >= 2787) and Config.BHopEnabled and SpaceHeld and humanoid and OnGround(humanoid)) then
		humanoid.Jump = true;
	end
end);
