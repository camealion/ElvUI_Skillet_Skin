if ElvUI then
	local E, L, DF = unpack(ElvUI)
	local S = E:GetModule('Skins')
	c = E
	--DEFAULT_CHAT_FRAME:AddMessage("ElvUI is loaded")
else
	local T, C, L = unpack(Tukui)
	c = C
	t = T
	--DEFAULT_CHAT_FRAME:AddMessage("Tukui is loaded")
end

local Skillet = _G.Skillet

function SetModifiedBackdrop(self)
	if Tukui then
		local color = RAID_CLASS_COLORS[t.myclass]
		self:SetBackdropColor(color.r*.15, color.g*.15, color.b*.15)
		self:SetBackdropBorderColor(color.r, color.g, color.b)
	else
		if self.backdrop then self = self.backdrop end
		self:SetBackdropBorderColor(unpack(c["media"].rgbvaluecolor))
	end
end

function SetOriginalBackdrop(self)
	if Tukui then
		local color = RAID_CLASS_COLORS[t.myclass]
		if c["general"].classcolortheme == true then
			self:SetBackdropBorderColor(color.r, color.g, color.b)
		else
			self:SetTemplate("Default")
		end
	else
		if self.backdrop then self = self.backdrop end
		self:SetBackdropBorderColor(unpack(c["media"].bordercolor))
	end
end

local function SkinButton(ButtonOrSpellID) -- Thanks to SinaC
	if not ButtonOrSpellID then return end
	local button
		if type(ButtonOrSpellID) == "number" then
			local player = UnitName("player")
			local buttonName = "SkilletFrameTradeButton-"..player.."-"..tostring(ButtonOrSpellID)
			button = _G[buttonName]
		else
			button = ButtonOrSpellID
		end
	if button then
		local texture = button:GetNormalTexture()
			if not texture then
			texture = _G[button:GetName().."Icon"]
	end

	if texture then
		button:SetTemplate("Default", true)
		texture:SetDrawLayer('OVERLAY') -- Make sure we can see the Icons.
		texture:ClearAllPoints()
		texture:Point("TOPLEFT", 2, -2)
		texture:Point("BOTTOMRIGHT", -2, 2)
		texture:SetTexCoord(0.08, 0.92, 0.08, 0.92)
		button:SetHighlightTexture(nil)
		button:HookScript("OnEnter", SetModifiedBackdrop)
		button:HookScript("OnLeave", SetOriginalBackdrop)
		end
	end
end

local function SkinGuildRecipes(ButtonOrSpellID)
	if not ButtonOrSpellID then return end
	local button
		if type(ButtonOrSpellID) == "number" then
			local buttonName = "SkilletFrameTradeButton-Guild Recipes-"..tostring(ButtonOrSpellID)
			button = _G[buttonName]
		else
			button = ButtonOrSpellID
		end
	if button then
		local texture = button:GetNormalTexture()
			if not texture then
			texture = _G[button:GetName().."Icon"]
			
			button:ClearAllPoints()
			button:SetPoint("BOTTOMLEFT", SkilletRankFrame, "TOPLEFT", 0, 3) --Adjust position.
	end
	
	if texture then
		button:SetTemplate("Default", true)
		texture:SetDrawLayer('OVERLAY') -- Make sure we can see the Icons.
		texture:ClearAllPoints()
		texture:Point("TOPLEFT", 2, -2)
		texture:Point("BOTTOMRIGHT", -2, 2)
		texture:SetTexCoord(0.08, 0.92, 0.08, 0.92)
		button:SetHighlightTexture(nil)
		button:HookScript("OnEnter", SetModifiedBackdrop)
		button:HookScript("OnLeave", SetOriginalBackdrop)
		end
	end	
end

local function SkinReagentButton(ButtonName)
	if not ButtonName then return end
	local button = ButtonName
	if button then
		local texture = button:GetNormalTexture()
			if not texture then
			texture = _G[button:GetName().."Icon"]
	end

	if texture then
		button:SetTemplate("Default", true)
		texture:SetDrawLayer('OVERLAY') -- Make sure we can see the Icons.
		texture:ClearAllPoints()
		texture:Point("TOPLEFT", 2, -2)
		texture:Point("BOTTOMRIGHT", -2, 2)
		texture:SetTexCoord(0.08, 0.92, 0.08, 0.92)
		end
	end
end

local function SkinIcon(self)

	if SkilletDoBasic_Campfire then SkinButton(SkilletDoBasic_Campfire) end
	if SkilletDoProspecting    then SkinButton(SkilletDoProspecting)    end
	if SkilletDoDisenchant     then SkinButton(SkilletDoDisenchant)     end
	if SkilletDoMilling        then SkinButton(SkilletDoMilling)        end


	if 2259  then SkinButton(2259)  end -- Alchemy	
	if 2018  then SkinButton(2018)  end -- Blacksmithing
	if 7411  then SkinButton(7411)  end -- Enchanting
	if 4036  then SkinButton(4036)  end -- Engineering	
	if 45357 then SkinButton(45357) end -- Inscription
	if 25229 then SkinButton(25229) end -- Jewelcrafting
	if 2108  then SkinButton(2108)  end -- Leatherworking
	if 2656  then SkinButton(2656)  end -- Smelting
	if 3908  then SkinButton(3908)  end -- Tailoring
	if 2550  then SkinButton(2550)  end -- Cooking	
	if 3273  then SkinButton(3273)  end -- Firstaid
	if 53428 then SkinButton(53428) end -- Runeforging

-- Stop this FPS Killer
	local icon = _G["SkilletHideUncraftableRecipes"]
	icon:SetScript("OnUpdate", nil)

	SkinButton(SkilletHideUncraftableRecipes)
	SkinButton(SkilletRecipeDifficultyButton)
	SkinButton(SkilletExpandAllButton)
	SkinButton(SkilletCollapseAllButton)
	cSkinButton(SkilletShowOptionsButton)
	SkilletShowOptionsButton:SetHeight(16)
	SkilletShowOptionsButton:SetWidth(12)
	SkilletShowOptionsButton:SetPoint("RIGHT", SkilletFrameCloseButton, "LEFT", 3, 0)
	
	if not SkilletShowOptionsButton.text then
		SkilletShowOptionsButton.text = SkilletShowOptionsButton:CreateFontString(nil, 'OVERLAY')
		if ElvUI then
			SkilletShowOptionsButton.text:SetFont([[Interface\AddOns\ElvUI\media\fonts\PT_Sans_Narrow.ttf]], 12, 'OUTLINE')
			else
			SkilletShowOptionsButton.text:SetFont([[Interface\AddOns\Tukui\medias\fonts\normal_font.ttf]], 12, 'OUTLINE')
		end
		SkilletShowOptionsButton.text:SetText(" ?")
		SkilletShowOptionsButton.text:SetTextColor(1, 0, 0)	
		SkilletShowOptionsButton.text:SetJustifyH('CENTER')
		SkilletShowOptionsButton.text:SetPoint('CENTER', SkilletShowOptionsButton, 'CENTER')
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
				"SkilletViewCraftersParent",
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
				"SkilletViewCraftersParent",
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
		SkilletTradeSkillLinkButton:SetPoint("RIGHT", SkilletShowOptionsButton, "LEFT", 0, 0)
		SkilletViewCraftersButton:SetPoint("RIGHT", SkilletQueueManagementButton, "LEFT", -5, 0)
		
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

local function SkinReagentIcon(self, event, ...)
	
	local ReagentIcons = {
		"SkilletSkillIcon",
		"SkilletReagent1Icon",
		"SkilletReagent2Icon",
		"SkilletReagent3Icon",
		"SkilletReagent4Icon",
		"SkilletReagent5Icon",
		"SkilletReagent6Icon",
		"SkilletReagent7Icon",
		"SkilletReagent8Icon",
		"SkilletReagent9Icon",
		"SkilletReagent10Icon", -- Is there only 10?
		}

		for _, button in pairs(ReagentIcons) do
						SkinReagentButton(_G[button])
		end	
	
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
	
	SkinGuildRecipes(2259) -- Alchemy
	SkinGuildRecipes(2018) -- Blacksmithing
	SkinGuildRecipes(7411) -- Enchanting
	SkinGuildRecipes(4036) -- Engineering
	SkinGuildRecipes(45357)-- Inscription
	SkinGuildRecipes(25229)-- Jewelcrafting
	SkinGuildRecipes(2108) -- Leatherworking
	SkinGuildRecipes(2656) -- Smelting
	SkinGuildRecipes(3908) -- Tailoring
	SkinGuildRecipes(53428)-- Runeforging
	SkinGuildRecipes(3273) -- Firstaid
	SkinGuildRecipes(2550) -- Cooking

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
				"SkilletViewCraftersButton",
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
			if ElvUI then
				SkilletSortAscButton.texture:SetTexture([[Interface\AddOns\ElvUI\media\textures\arrowup.tga]])
			else
				SkilletSortAscButton.texture:SetTexture([[Interface\AddOns\Tukui\medias\textures\arrowup.tga]])
			end
			SkilletSortAscButton.texture:SetVertexColor(unpack(c["media"].bordercolor))
		end
-- Sort down Button
		SkilletSortDescButton:StripTextures()
		SkilletSortDescButton:SetTemplate("Default", true)
		if not SkilletSortDescButton.texture then
			SkilletSortDescButton.texture = SkilletSortDescButton:CreateTexture(nil, 'OVERLAY')
			SkilletSortDescButton.texture:Point("TOPLEFT", 2, -2)
			SkilletSortDescButton.texture:Point("BOTTOMRIGHT", -2, 2)
			if ElvUI then
				SkilletSortDescButton.texture:SetTexture([[Interface\AddOns\ElvUI\media\textures\arrowdown.tga]])
			else
				SkilletSortDescButton.texture:SetTexture([[Interface\AddOns\Tukui\medias\textures\arrowdown.tga]])
			end
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
		local reagent = _G["SkilletReagentParent"]
		reagent:SetScript("OnUpdate", SkinReagentIcon)
		
	-- Plugin Buttons	
		local plugin = _G["SkilletPluginButton"]
		plugin:SetScript("PostClick", SkinPluginButtons)
end)