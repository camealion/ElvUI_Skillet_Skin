if ElvUI then
	local E, L, DF = unpack(ElvUI)
	local S = E:GetModule('Skins')
	c = E
	--DEFAULT_CHAT_FRAME:AddMessage("ElvUI is loaded")
else
	local T, C, L = unpack(Tukui)
	c = C
	--DEFAULT_CHAT_FRAME:AddMessage("Tukui is loaded")
end

local Skillet = _G.Skillet

function SkinIcon(self)
	
	if SkilletDoBasic_Campfire then 		
			SkilletDoBasic_Campfire:StripTextures()
			SkilletDoBasic_Campfire:SetTemplate("Default", true)
					SkilletDoBasic_Campfire.texture = SkilletDoBasic_Campfire:CreateTexture(nil, 'OVERLAY')
					SkilletDoBasic_Campfire.texture:Point("TOPLEFT", 2, -2)
					SkilletDoBasic_Campfire.texture:Point("BOTTOMRIGHT", -2, 2)
					SkilletDoBasic_Campfire.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\Spell_Fire_Fire.tga]])
					SkilletDoBasic_Campfire:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
	end
	if SkilletDoProspecting then 		
			SkilletDoProspecting:StripTextures()
			SkilletDoProspecting:SetTemplate("Default", true)
					SkilletDoProspecting.texture = SkilletDoProspecting:CreateTexture(nil, 'OVERLAY')
					SkilletDoProspecting.texture:Point("TOPLEFT", 2, -2)
					SkilletDoProspecting.texture:Point("BOTTOMRIGHT", -2, 2)
					SkilletDoProspecting.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\inv_misc_gem_bloodgem_01.tga]])
					SkilletDoProspecting:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
	end
	if SkilletDoDisenchant then 		
			SkilletDoDisenchant:StripTextures()
			SkilletDoDisenchant:SetTemplate("Default", true)
					SkilletDoDisenchant.texture = SkilletDoDisenchant:CreateTexture(nil, 'OVERLAY')
					SkilletDoDisenchant.texture:Point("TOPLEFT", 2, -2)
					SkilletDoDisenchant.texture:Point("BOTTOMRIGHT", -2, 2)
					SkilletDoDisenchant.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\inv_enchant_disenchant.tga]])
					SkilletDoDisenchant:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
	end
	if SkilletDoMilling then 		
			SkilletDoMilling:StripTextures()
			SkilletDoMilling:SetTemplate("Default", true)
					SkilletDoMilling.texture = SkilletDoMilling:CreateTexture(nil, 'OVERLAY')
					SkilletDoMilling.texture:Point("TOPLEFT", 2, -2)
					SkilletDoMilling.texture:Point("BOTTOMRIGHT", -2, 2)
					SkilletDoMilling.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\ability_miling.tga]])
					SkilletDoMilling:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
	end	
		
local player = UnitName("player")
local buttonName = "SkilletFrameTradeButton-"..player.."-3908" -- Tailoring
local button = _G[buttonName]
	if button then 		
			button:StripTextures()
			button:SetTemplate("Default", true)
					button.texture = button:CreateTexture(nil, 'OVERLAY')
					button.texture:Point("TOPLEFT", 2, -2)
					button.texture:Point("BOTTOMRIGHT", -2, 2)
					button.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\trade_tailoring.tga]])
					button:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
	end		
local buttonName = "SkilletFrameTradeButton-"..player.."-53428" -- Runforgeing
local button = _G[buttonName]
	if button then 		
			button:StripTextures()
			button:SetTemplate("Default", true)
					button.texture = button:CreateTexture(nil, 'OVERLAY')
					button.texture:Point("TOPLEFT", 2, -2)
					button.texture:Point("BOTTOMRIGHT", -2, 2)
					button.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\spell_deathknight_frozenruneweapon.tga]])
					button:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
	end	
local buttonName = "SkilletFrameTradeButton-"..player.."-3273" -- Firstaid
local button = _G[buttonName]
	if button then 		
			button:StripTextures()
			button:SetTemplate("Default", true)
					button.texture = button:CreateTexture(nil, 'OVERLAY')
					button.texture:Point("TOPLEFT", 2, -2)
					button.texture:Point("BOTTOMRIGHT", -2, 2)
					button.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\spell_holy_sealofsacrifice.tga]])
					button:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
	end	
local buttonName = "SkilletFrameTradeButton-"..player.."-2656" -- Smelting
local button = _G[buttonName]
	if button then 		
			button:StripTextures()
			button:SetTemplate("Default", true)
					button.texture = button:CreateTexture(nil, 'OVERLAY')
					button.texture:Point("TOPLEFT", 2, -2)
					button.texture:Point("BOTTOMRIGHT", -2, 2)
					button.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\spell_fire_flameblades.tga]])
					button:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
	end
local buttonName = "SkilletFrameTradeButton-"..player.."-2550" -- Cooking
local button = _G[buttonName]
	if button then 		
			button:StripTextures()
			button:SetTemplate("Default", true)
					button.texture = button:CreateTexture(nil, 'OVERLAY')
					button.texture:Point("TOPLEFT", 2, -2)
					button.texture:Point("BOTTOMRIGHT", -2, 2)
					button.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\inv_misc_food_15.tga]])
					button:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
	end
local buttonName = "SkilletFrameTradeButton-"..player.."-45357" -- Inscription
local button = _G[buttonName]
	if button then 		
			button:StripTextures()
			button:SetTemplate("Default", true)
					button.texture = button:CreateTexture(nil, 'OVERLAY')
					button.texture:Point("TOPLEFT", 2, -2)
					button.texture:Point("BOTTOMRIGHT", -2, 2)
					button.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\inv_inscription_tradeskill01.tga]])
					button:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
	end
local buttonName = "SkilletFrameTradeButton-"..player.."-2018" -- Blacksmithing
local button = _G[buttonName]
	if button then 		
			button:StripTextures()
			button:SetTemplate("Default", true)
					button.texture = button:CreateTexture(nil, 'OVERLAY')
					button.texture:Point("TOPLEFT", 2, -2)
					button.texture:Point("BOTTOMRIGHT", -2, 2)
					button.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\trade_blacksmithing.tga]])
					button:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
	end
local buttonName = "SkilletFrameTradeButton-"..player.."-2259" -- Alchemy
local button = _G[buttonName]
	if button then 		
			button:StripTextures()
			button:SetTemplate("Default", true)
					button.texture = button:CreateTexture(nil, 'OVERLAY')
					button.texture:Point("TOPLEFT", 2, -2)
					button.texture:Point("BOTTOMRIGHT", -2, 2)
					button.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\trade_alchemy.tga]])
					button:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
	end
local buttonName = "SkilletFrameTradeButton-"..player.."-7411" -- Enchanting
local button = _G[buttonName]
	if button then 		
			button:StripTextures()
			button:SetTemplate("Default", true)
					button.texture = button:CreateTexture(nil, 'OVERLAY')
					button.texture:Point("TOPLEFT", 2, -2)
					button.texture:Point("BOTTOMRIGHT", -2, 2)
					button.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\trade_engraving.tga]])
					button:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
	end
local buttonName = "SkilletFrameTradeButton-"..player.."-4036" -- Engineering
local button = _G[buttonName]
	if button then 		
			button:StripTextures()
			button:SetTemplate("Default", true)
					button.texture = button:CreateTexture(nil, 'OVERLAY')
					button.texture:Point("TOPLEFT", 2, -2)
					button.texture:Point("BOTTOMRIGHT", -2, 2)
					button.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\trade_engineering.tga]])
					button:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
	end
local buttonName = "SkilletFrameTradeButton-"..player.."-25229" -- Jewelcrafting
local button = _G[buttonName]
	if button then 		
			button:StripTextures()
			button:SetTemplate("Default", true)
					button.texture = button:CreateTexture(nil, 'OVERLAY')
					button.texture:Point("TOPLEFT", 2, -2)
					button.texture:Point("BOTTOMRIGHT", -2, 2)
					button.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\inv_misc_gem_01.tga]])
					button:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
	end
-- Stop this FPS Killer	
		local icon = _G["SkilletHideUncraftableRecipes"]
		icon:SetScript("OnUpdate", nil)	

	if SkilletHideUncraftableRecipes then 		
			SkilletHideUncraftableRecipes:StripTextures()
			SkilletHideUncraftableRecipes:SetTemplate("Default", true)
					SkilletHideUncraftableRecipes.texture = SkilletHideUncraftableRecipes:CreateTexture(nil, 'OVERLAY')
					SkilletHideUncraftableRecipes.texture:Point("TOPLEFT", 2, -2)
					SkilletHideUncraftableRecipes.texture:Point("BOTTOMRIGHT", -2, 2)
					SkilletHideUncraftableRecipes.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\inv_misc_bag_27.tga]])
					SkilletHideUncraftableRecipes:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
	end
	if SkilletRecipeDifficultyButton then 		
			SkilletRecipeDifficultyButton:StripTextures()
			SkilletRecipeDifficultyButton:SetTemplate("Default", true)
					SkilletRecipeDifficultyButton.texture = SkilletRecipeDifficultyButton:CreateTexture(nil, 'OVERLAY')
					SkilletRecipeDifficultyButton.texture:Point("TOPLEFT", 2, -2)
					SkilletRecipeDifficultyButton.texture:Point("BOTTOMRIGHT", -2, 2)
					SkilletRecipeDifficultyButton.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\skill_colors.tga]])
					SkilletRecipeDifficultyButton:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
	end	
	if SkilletExpandAllButton then 		
			SkilletExpandAllButton:StripTextures()
			SkilletExpandAllButton:SetTemplate("Default", true)
					SkilletExpandAllButton.texture = SkilletExpandAllButton:CreateTexture(nil, 'OVERLAY')
					SkilletExpandAllButton.texture:Point("TOPLEFT", 2, -2)
					SkilletExpandAllButton.texture:Point("BOTTOMRIGHT", -2, 2)
					SkilletExpandAllButton.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\expand_icon.tga]])
					SkilletExpandAllButton:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
	end
	if SkilletCollapseAllButton then 		
			SkilletCollapseAllButton:StripTextures()
			SkilletCollapseAllButton:SetTemplate("Default", true)
					SkilletCollapseAllButton.texture = SkilletCollapseAllButton:CreateTexture(nil, 'OVERLAY')
					SkilletCollapseAllButton.texture:Point("TOPLEFT", 2, -2)
					SkilletCollapseAllButton.texture:Point("BOTTOMRIGHT", -2, 2)
					SkilletCollapseAllButton.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\collapse_icon.tga]])
					SkilletCollapseAllButton:SetHighlightTexture("Interface/Buttons/ButtonHilight-Square")
	end			
end

local function SkinShopping(self)

	-- Shopping List
			SkilletShoppingList:StripTextures()
			SkilletShoppingList:SetTemplate("Transparent")
			SkilletShoppingListParent:StripTextures()
			SkilletShoppingListParent:SetTemplate("Default")
			cSkinCloseButton(SkilletShoppingListCloseButton)
			cSkinCheckBox(SkilletShowQueuesFromAllAlts)
			cSkinScrollBar(SkilletShoppingListListScrollBar)
end

local function SkinPluginButtons(self)
-- Only found 2 buttons so far.
		if SkilletPluginDropdown1 then
			cSkinButton(_G["SkilletPluginDropdown1"])
		end
		if SkilletPluginDropdown2 then
			cSkinButton(_G["SkilletPluginDropdown2"])
		end
end	

local function SkilletFrameOnShow(self)
-- Strip Textures	
	local StripAllTextures = {
				"SkilletFrame",
				"SkilletSkillListParent",
				"SkilletReagentParent",
				"SkilletQueueParent",
				"SkilletRecipeNotesFrame",
				"SkilletQueueManagementParent",
				"SkilletSkillTooltip",
				"SkilletStandalonQueue",
				}
				
		for _, object in pairs(StripAllTextures) do
					_G[object]:StripTextures()
		end	

-- Set Templates
	local SetTemplateD = { -- Default Texture
				"SkilletSkillListParent",
				"SkilletReagentParent",
				"SkilletQueueParent",
				"SkilletQueueManagementParent",
				}

	local SetTemplateT = {-- Transparent Texture
				"SkilletFrame",
				"SkilletRecipeNotesFrame",
				"SkilletSkillTooltip",
				"SkilletStandalonQueue",
				}	
				
		for _, object in pairs(SetTemplateD) do
					_G[object]:SetTemplate("Default")
		end	

		for _, object in pairs(SetTemplateT) do
					_G[object]:SetTemplate("Transparent")
		end	
		
-- Skin Close Button
		cSkinCloseButton(SkilletNotesCloseButton)
		
-- Move Positions
		SkilletSkillListParent:SetPoint("TOPLEFT", SkilletFrame, "TOPLEFT", 5, -100)
		SkilletRankFrame:SetPoint("TOPRIGHT", SkilletFrame, "TOPRIGHT", -12, -57)
		SkilletRankFrameRed:SetPoint("TOPRIGHT", SkilletFrame, "TOPRIGHT", -12, -70)
		SkilletRankFrameOrange:SetPoint("TOPRIGHT", SkilletFrame, "TOPRIGHT", -12, -70)
		SkilletRankFrameYellow:SetPoint("TOPRIGHT", SkilletFrame, "TOPRIGHT", -12, -70)
		SkilletRankFrameGreen:SetPoint("TOPRIGHT", SkilletFrame, "TOPRIGHT", -12, -70)
		SkilletRankFrameGray:SetPoint("TOPRIGHT", SkilletFrame, "TOPRIGHT", -12, -70)
		SkilletRecipeGroupDropdown:SetPoint("BOTTOMLEFT", SkilletSkillListParent, "TOPLEFT", 45, 43)
		SkilletRecipeGroupOperations:SetPoint("LEFT", SkilletRecipeGroupDropdownButton, "RIGHT", 4, 0)
		SkilletSortAscButton:SetPoint("LEFT", SkilletSortDropdownButton, "RIGHT", 4, 0)
		SkilletSortDescButton:SetPoint("LEFT", SkilletSortDropdownButton, "RIGHT", 4, 0)
		SkilletSearchFilterClear:SetPoint("LEFT", SkilletFilterBox, "RIGHT", -2, 0)
		SkilletQueueSaveButton:SetPoint("LEFT", SkilletQueueSaveEditBox, "RIGHT", 5, 0)
		SkilletQueueLoadButton:SetPoint("LEFT", SkilletQueueLoadDropdownButton, "RIGHT", 5, 0)
		SkilletQueueDeleteButton:SetPoint("LEFT", SkilletQueueLoadButton, "RIGHT", 2, 0)
		SkilletHideUncraftableRecipes:SetPoint("BOTTOMRIGHT", SkilletSkillListParent, "TOPRIGHT", -5, 5)
		SkilletFrameCloseButton:ClearAllPoints()
		SkilletFrameCloseButton:SetPoint("TOPRIGHT", SkilletFrame, "TOPRIGHT", 0, 0)
-- Skin Tooltips		
		SkilletTradeskillTooltip:StripTextures()
		SkilletTradeskillTooltip:SetTemplate("Default")
-- Scrollbar
		cSkinScrollBar(SkilletQueueListScrollBar)
-- Queue Delete Buttons		
	for i=1,3 do
		local queDelete = _G["SkilletQueueButton"..i.."DeleteButton"]
			cSkinButton(queDelete)
			queDelete:SetWidth(14)
			queDelete:SetHeight(14)
	end
		
-- Enchantrix ------------------------------------------------------------------------------------------------------------
	-- Frames
	if Enchantrix_BarkerOptions_Frame then
		Enchantrix_BarkerOptions_Frame:StripTextures()
		Enchantrix_BarkerOptions_Frame:SetTemplate("Default")
		Enchantrix_BarkerOptions_Frame:SetHeight(480)
	--Tabs
		for i=1,4 do 
			tabs = _G["Enchantrix_BarkerOptions_FrameTab"..i]
				cSkinTab(tabs)
		end
	-- Positions	
		Enchantrix_BarkerOptions_FrameTab1:ClearAllPoints()
		Enchantrix_BarkerOptions_FrameTab1:SetPoint("TOPLEFT", Enchantrix_BarkerOptions_Frame, "BOTTOMLEFT", 11, 1)
		Enchantrix_BarkerOptions_CloseButton:SetPoint("TOPRIGHT", Enchantrix_BarkerOptions_Frame, "TOPRIGHT", -5, -2)
	-- Buttons
		cSkinButton(Enchantrix_BarkerOptionsBark_Button)
		cSkinButton(Enchantrix_BarkerOptionsReset_Button)
		cSkinButton(Enchantrix_BarkerOptionsTest_Button)
	-- Close Button
		cSkinCloseButton(Enchantrix_BarkerOptions_CloseButton)
	end
-- Enchantrix ------------------------------------------------------------------------------------------------------------
end

local function SkilletFrameOnUpdate(self, event, ...)

-- Move Positions.
		SkilletRecipeNotesButton:SetPoint("BOTTOMRIGHT", SkilletReagentParent, "TOPRIGHT", 0, 2)
		SkilletQueueManagementButton:SetPoint("RIGHT", SkilletRecipeNotesButton, "LEFT", -5, 0)
		SkilletItemCountInputBox:SetPoint("BOTTOM", SkilletCreateCountSlider, "TOP", 0, 2)	

-- Move Trade Icons above rank frame.  Mostly stolen from Skillet itself! :)
	if SkilletDoBasic_Campfire then -- cooking = basic campfire
		SkilletDoBasic_Campfire:ClearAllPoints()
		SkilletDoBasic_Campfire:SetPoint("BOTTOMRIGHT", SkilletRankFrame, "TOPRIGHT", 0, 3)
	end
	if SkilletDoDisenchant then
		SkilletDoDisenchant:ClearAllPoints()-- enchanting = disenchant
		SkilletDoDisenchant:SetPoint("BOTTOMRIGHT", SkilletRankFrame, "TOPRIGHT", -26, 3)
	end	
	if SkilletDoProspecting then -- jewelcrafting = prospecting
		SkilletDoProspecting:ClearAllPoints()
		SkilletDoProspecting:SetPoint("BOTTOMRIGHT", SkilletRankFrame, "TOPRIGHT", -52, 3)
	end
	if SkilletDoMilling then -- inscription = milling
		SkilletDoMilling:ClearAllPoints()
		SkilletDoMilling:SetPoint("BOTTOMRIGHT", SkilletRankFrame, "TOPRIGHT", -78, 3)
	end
		
	local Skillet = _G.Skillet
	x = 0
	local player = UnitName("player")
	icon = "SkilletFrameTradeButtons-"..player
	template = "SkilletTradeButtonTemplate"
	local tradeSkillList = Skillet.tradeSkillList
	local nonLinkingTrade = { [2656] = true, [53428] = true }				-- smelting, runeforging
	for i=1,#tradeSkillList,1 do
		local tradeID = Skillet.tradeSkillList[i]
		local ranks = Skillet:GetSkillRanks(player, tradeID)
		local tradeLink

		if Skillet.db.realm.linkDB[player] then
			tradeLink = Skillet.db.realm.linkDB[player][tradeID]

			if nonLinkingTrade[tradeID] then
				tradeLink = nil
			end
		end
			if ranks then
				local spellName, _, spellIcon = GetSpellInfo(tradeID)
					local buttonName = "SkilletFrameTradeButton-"..player.."-"..tradeID
					local bName = _G[buttonName]
						if not bName then
							bName = CreateFrame("CheckButton",bName,nil,UIParent)--CreateFrame("CheckButton", buttonName, frame, "SkilletTradeButtonTemplate")
						end 
					bName:ClearAllPoints()
					bName:SetPoint("BOTTOMLEFT", SkilletRankFrame, "TOPLEFT", x, 3)
					x = x + bName:GetWidth() + 1
					
			end
	end

-- Extra Queue Delete Buttons	
	if SkilletQueueButton13DeleteButton then
			for i=1,13 do
			local queDelete = _G["SkilletQueueButton"..i.."DeleteButton"]
				cSkinButton(queDelete)
				queDelete:SetWidth(14)
				queDelete:SetHeight(14)
			end
	end
end

local SkinSkillet = CreateFrame("Frame")
	SkinSkillet:RegisterEvent("PLAYER_ENTERING_WORLD")
	SkinSkillet:SetScript("OnEvent", function(self, event, addon)
	if IsAddOnLoaded("Skinner") or IsAddOnLoaded("Aurora") then return end
	if not IsAddOnLoaded("Skillet") then return end	
-- Skin Buttons
	local buttons = {
				"SkilletQueueAllButton",
				"SkilletCreateAllButton",
				"SkilletQueueButton",
				"SkilletCreateButton",
				"SkilletQueueManagementButton",
				"SkilletPluginButton",
				"SkilletShoppingListButton",
				"SkilletEmptyQueueButton",
				"SkilletStartQueueButton",
				"SkilletQueueOnlyButton",
				"SkilletQueueLoadButton",
				"SkilletQueueDeleteButton",
				"SkilletQueueSaveButton",
				"SkilletRecipeNotesButton",
				}

		for _, button in pairs(buttons) do
						cSkinButton(_G[button])
		end	
		
-- Skin Close Button
		cSkinCloseButton(SkilletFrameCloseButton)
		cSkinCloseButton(SkilletStandalonQueueCloseButton)
	
-- Skin Dropdown Buttons
		cSkinDropDownBox(SkilletRecipeGroupDropdown)
		cSkinDropDownBox(SkilletSortDropdown)
		cSkinDropDownBox(SkilletQueueLoadDropdown)

-- Filter Clear button
		cDesaturate(SkilletSearchFilterClear)
		--cDesaturate(SkilletShowOptionsButton)
	
-- Sort up Button
		SkilletSortAscButton:StripTextures()
		SkilletSortAscButton:SetTemplate("Default", true)
		if not SkilletSortAscButton.texture then
			SkilletSortAscButton.texture = SkilletSortAscButton:CreateTexture(nil, 'OVERLAY')
			SkilletSortAscButton.texture:Point("TOPLEFT", 2, -2)
			SkilletSortAscButton.texture:Point("BOTTOMRIGHT", -2, 2)
			SkilletSortAscButton.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\arrowup.tga]])
			SkilletSortAscButton.texture:SetVertexColor(unpack(c["media"].bordercolor))
		end
-- Sort down Button
		SkilletSortDescButton:StripTextures()
		SkilletSortDescButton:SetTemplate("Default", true)
		if not SkilletSortDescButton.texture then
			SkilletSortDescButton.texture = SkilletSortDescButton:CreateTexture(nil, 'OVERLAY')
			SkilletSortDescButton.texture:Point("TOPLEFT", 2, -2)
			SkilletSortDescButton.texture:Point("BOTTOMRIGHT", -2, 2)
			SkilletSortDescButton.texture:SetTexture([[Interface\AddOns\ElvUI_Skillet_Skin\media\textures\arrowdown.tga]])
			SkilletSortDescButton.texture:SetVertexColor(unpack(c["media"].bordercolor))
		end
	
-- Skin Next/Previous Buttons
		cSkinNextPrevButton(SkilletRecipeGroupOperations)
	
-- Skin Edit Box's
		cSkinEditBox(SkilletItemCountInputBox)
		cSkinEditBox(SkillButtonNameEdit)
		cSkinEditBox(GroupButtonNameEdit)
		cSkinEditBox(SkilletFilterBox)
		SkilletFilterBox:SetHeight(20)
		cSkinEditBox(SkilletQueueSaveEditBox)

-- Rank Frame		
		SkilletRankFrameBorder:StripTextures()
		SkilletRankFrame:StripTextures()
		SkilletRankFrame:CreateBackdrop("Default")
		SkilletRankFrame:SetStatusBarTexture(c["media"].normTex)
		SkilletRankFrame:SetHeight(10)		
		
	-- Skin Scrollbar	
		cSkinScrollBar(SkilletSkillListScrollBar, 5)
		
	-- Do some stuff when SkilletFrame is shown.
		local SkilletOnload = _G["SkilletSkillListParent"]
        SkilletOnload:SetScript("OnShow", SkilletFrameOnShow)

	-- Do some stuff when SkilletFrame is Updated.
		local SkilletOnUpdate = _G["SkilletSkillListParent"]
        SkilletOnUpdate:SetScript("OnUpdate", SkilletFrameOnUpdate)
	
	-- Shopping List
		local Shopping = _G["SkilletShoppingList"]
        Shopping:SetScript("OnShow", SkinShopping)

	-- Skin Icons
		local icon = _G["SkilletHideUncraftableRecipes"]
		icon:SetScript("OnUpdate", SkinIcon)
		
	-- Plugin Buttons	
		local plugin = _G["SkilletPluginButton"]
		plugin:SetScript("PostClick", SkinPluginButtons)
end)