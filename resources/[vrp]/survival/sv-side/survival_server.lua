----[vRP TUNNEL/PROXY]----
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
--[SURVIVAL TUNNEL/PROXY]--
Survival = {}
Survival = Tunnel.getInterface("survival")
Tunnel.bindInterface("survival",Survival)
Proxy.addInterface("survival",Survival)
survival = module("survival","survival_config")
emP = {}
Tunnel.bindInterface("ai_samu",emP)

function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- [ COMANDO PARA REVIVER ] -------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------

--[[ RegisterCommand('god',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)

    if vRP.hasPermission(user_id,survival['permgod']) then
        if args[1] then
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			if nplayer then
				local nuser_id = vRP.getUserId(nplayer)
				local identity2 = vRP.getUserIdentity(nuser_id)

				TriggerClientEvent("resetBleeding",nplayer)
                TriggerClientEvent("resetDiagnostic",nplayer)

                vRPclient.killGod(nplayer)
				vRPclient.setHealth(nplayer,200)
				TriggerClientEvent("hud:SetShow",true,nplayer)
				TriggerClientEvent("Survival:life",nplayer)
				PerformHttpRequest(survival['loggod'], function(err, text, headers) end, 'POST', json.encode({
					embeds = {
						{ 	------------------------------------------------------------
							title = "LOGS DE GOD:⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
							thumbnail = {
							url = "https://cdn.discordapp.com/attachments/1025211196632207390/1030207922065641532/death-unscreen.gif"
							}, 
							fields = {
								{ 
									name = "**O STAFF DE :**", 
									value = "[ *PASSAPORTE :*  **"..user_id.."** ]"
								},
								{
									name = "**APLICOU :**",
									value = "*GOD NO PASSAPORTE :*  **"..nplayer.."**"
								}
							}, 
							footer = { 
								text = "survival "..os.date("%d/%m/%Y |: %H:%M:%S"), 
								icon_url = "https://cdn.discordapp.com/attachments/1025211196632207390/1030207922065641532/death-unscreen.gif" 
							},
							color = 16431885 
						}
					}
				}), { ['Content-Type'] = 'application/json' })
            end
		else


			TriggerClientEvent("resetBleeding",source)
            TriggerClientEvent("resetDiagnostic",source)
			TriggerClientEvent("hud:SetShow",true,source)
            vRPclient.killGod(source)
			vRPclient.setHealth(source,200)
			TriggerClientEvent("Survival:life",source)

			PerformHttpRequest(survival['loggod'], function(err, text, headers) end, 'POST', json.encode({
				embeds = {
					{ 	------------------------------------------------------------
						title = "LOGS DE GOD:⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
						thumbnail = {
						url = "https://cdn.discordapp.com/attachments/1025211196632207390/1030207922065641532/death-unscreen.gif"
						}, 
						fields = {
							{ 
								name = "**O STAFF :**", 
								value = "[ *PASSAPORTE :*  **"..user_id.."** ]"
							},
							{
								name = "**APLICOU :**",
								value = "**GOD EM SI MESMO**⠀"
							}
						}, 
						footer = { 
							text = "survival "..os.date("%d/%m/%Y |: %H:%M:%S"), 
							icon_url = "https://cdn.discordapp.com/attachments/1025211196632207390/1030207922065641532/death-unscreen.gif" 
						},
						color = 16431885 
					}
				}
			}), { ['Content-Type'] = 'application/json' })
        end
    end
end) ]]


-----------------------------------------------------------------------------------------------------------------------------------------
-- [ COMANDO PARA REVIVER ADMIN ] -------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------

RegisterCommand('god',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)

	if vRP.hasPermission(user_id,survival['permgodadmin']) then
        if args[1] then
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			if nplayer then
				local nuser_id = vRP.getUserId(nplayer)
				local identity2 = vRP.getUserIdentity(nuser_id)

				TriggerClientEvent("resetBleeding",nplayer)
                TriggerClientEvent("resetDiagnostic",nplayer)
				TriggerClientEvent("hud:SetShow",true,nplayer)
                vRPclient.killGod(nplayer)
				vRPclient.setHealth(nplayer,200)
				TriggerClientEvent("Survival:ForceNuiOff",nplayer)
				vRP.varyThirst(nplayer,-15)
				vRP.varyHunger(nplayer,-15)
		

				PerformHttpRequest(survival['loggodadmin'], function(err, text, headers) end, 'POST', json.encode({
					embeds = {
						{ 	------------------------------------------------------------
							title = "LOGS DE GODADMIN:⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
							thumbnail = {
							url = "https://cdn.discordapp.com/attachments/1025211196632207390/1030207922065641532/death-unscreen.gif"
							}, 
							fields = {
								{ 
									name = "**O STAFF DE :**", 
									value = "[ *PASSAPORTE :*  **"..user_id.."** ]"
								},
								{
									name = "**APLICOU :**",
									value = "*GOD NO PASSAPORTE :*  **"..nplayer.."**"
								}
							}, 
							footer = { 
								text = "survival "..os.date("%d/%m/%Y |: %H:%M:%S"), 
								icon_url = "https://cdn.discordapp.com/attachments/1025211196632207390/1030207922065641532/death-unscreen.gif" 
							},
							color = 16431885 
						}
					}
				}), { ['Content-Type'] = 'application/json' })
            end
		else


			TriggerClientEvent("resetBleeding",source)
            TriggerClientEvent("resetDiagnostic",source)
			TriggerClientEvent("hud:SetShow",true,source)
            vRPclient.killGod(source)
			vRPclient.setHealth(source,200)
			vRP.varyThirst(user_id,-100)
			vRP.varyHunger(user_id,-100)
			TriggerClientEvent("Survival:ForceNuiOff",source)

			PerformHttpRequest(survival['loggodadmin'], function(err, text, headers) end, 'POST', json.encode({
				embeds = {
					{ 	------------------------------------------------------------
						title = "LOGS DE GODADMIN:⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
						thumbnail = {
						url = "https://cdn.discordapp.com/attachments/1025211196632207390/1030207922065641532/death-unscreen.gif"
						}, 
						fields = {
							{ 
								name = "**O STAFF :**", 
								value = "[ *PASSAPORTE :*  **"..user_id.."** ]"
							},
							{
								name = "**APLICOU :**",
								value = "**GOD EM SI MESMO**⠀"
							}
						}, 
						footer = { 
							text = "survival "..os.date("%d/%m/%Y |: %H:%M:%S"), 
							icon_url = "https://cdn.discordapp.com/attachments/1025211196632207390/1030207922065641532/death-unscreen.gif" 
						},
						color = 16431885 
					}
				}
			}), { ['Content-Type'] = 'application/json' })
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- [ COMANDO PARA REVIVER TODOS ] -------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------

RegisterCommand('godall',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,survival['permgodall']) then
    	local users = vRP.getUsers()
        for k,v in pairs(users) do
            local id = vRP.getUserSource(parseInt(k))
            if id then
				TriggerClientEvent("hud:SetShow",true,id)
		--		TriggerClientEvent("Survival:life",id)
            	TriggerClientEvent("resetBleeding",id)
            	TriggerClientEvent("resetDiagnostic",id)
            	vRPclient.killGod(id)
				vRPclient.setHealth(id,200)
            end
		end
		PerformHttpRequest(survival['loggodall'], function(err, text, headers) end, 'POST', json.encode({
			embeds = {
				{ 	------------------------------------------------------------
					title = "LOGS DE GODALL:⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
					thumbnail = {
					url = "https://cdn.discordapp.com/attachments/1025211196632207390/1030207922065641532/death-unscreen.gif"
					}, 
					fields = {
						{ 
							name = "**O STAFF :**", 
							value = "[ *PASSAPORTE :*  **"..user_id.."** ]"
						},
						{
							name = "**APLICOU :**",
							value = "**COMANDO GODALL**⠀"
						}
					}, 
					footer = { 
						text = "survival "..os.date("%d/%m/%Y |: %H:%M:%S"), 
						icon_url = "https://cdn.discordapp.com/attachments/1025211196632207390/1030207922065641532/death-unscreen.gif" 
					},
					color = 16431885 
				}
			}
		}), { ['Content-Type'] = 'application/json' })
    end
end)


--[[ 
-----------------------------------------------------------------------------------------------------------------------------------------
-- [ COMANDO /RE DO PARAMEDICO ] --------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------

RegisterCommand('re',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,survival['permre']) then
		local nplayer = vRPclient.getNearestPlayer(source,2)
		
		if nplayer then
			if vRPclient.isInComa(nplayer) then
				local identity_user = vRP.getUserIdentity(user_id)
				local nuser_id = vRP.getUserId(nplayer)
				local identity_coma = vRP.getUserIdentity(nuser_id)
				
				local set_user = "Departamento Médico"

				TriggerClientEvent('cancelando',source,true)
				vRPclient._playAnim(source,false,{{"amb@medic@standing@tendtodead@base","base"},{"mini@cpr@char_a@cpr_str","cpr_pumpchest"}},true)
				TriggerClientEvent("Progrees:survivalmorte",source,30000,"reanimando")

				SetTimeout(30000,function()	
					vRPclient.killGod(nplayer)
					vRPclient._stopAnim(source,false)
					TriggerClientEvent("hud:SetShow",true,nplayer)
					TriggerClientEvent("resetBleeding",nplayer)
					TriggerClientEvent("Survival:NuiOff",nplayer)
					TriggerClientEvent('cancelando',source,false)
				end)

				PerformHttpRequest(survival['logre'], function(err, text, headers) end, 'POST', json.encode({
					embeds = {
						{ 	------------------------------------------------------------
							title = "LOGS DE REANIMAR:⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
							thumbnail = {
							url = "https://cdn.discordapp.com/attachments/1025211196632207390/1030207922065641532/death-unscreen.gif"
							}, 
							fields = {
								{ 
									name = "**O PARAMEDICO OU POLICIAL DE :**", 
									value = "[ *PASSAPORTE :*  **"..user_id.."** ]"
								},
								{
									name = "**APLICOU :**",
									value = "*/RE NO PASSAPORTE :*  **"..nplayer.."**"
								}
							}, 
							footer = { 
								text = "survival "..os.date("%d/%m/%Y |: %H:%M:%S"), 
								icon_url = "https://cdn.discordapp.com/attachments/1025211196632207390/1030207922065641532/death-unscreen.gif" 
							},
							color = 16431885 
						}
					}
				}), { ['Content-Type'] = 'application/json' })
				

			else
				TriggerClientEvent("Notify",source,"importante","A pessoa precisa estar em coma para prosseguir.")
			end
		else
			TriggerClientEvent("Notify",source,"importante","Chegue mais perto do paciente.")
		end
	elseif vRP.hasPermission(user_id,survival['permpolicia']) then
		if Survival.checkServices() then
			if nplayer then
				if vRPclient.isInComa(nplayer) then
					local identity_user = vRP.getUserIdentity(user_id)
					local nuser_id = vRP.getUserId(nplayer)
					local identity_coma = vRP.getUserIdentity(nuser_id)
					
					local set_user = "Departmanto de Polícia"
	
					TriggerClientEvent('cancelando',source,true)
					vRPclient._playAnim(source,false,{{"amb@medic@standing@tendtodead@base","base"},{"mini@cpr@char_a@cpr_str","cpr_pumpchest"}},true)
					TriggerClientEvent("Progrees:survivalmorte",source,30000,"reanimando")
					
					SetTimeout(30000,function()
						vRPclient.killGod(nplayer)
						vRPclient._stopAnim(source,false)
						TriggerClientEvent("hud:SetShow",true,nplayer)
						TriggerClientEvent("resetBleeding",nplayer)
						TriggerClientEvent("Survival:NuiOff",nplayer)
						TriggerClientEvent('cancelando',source,false)
					end)
					PerformHttpRequest(survival['logre'], function(err, text, headers) end, 'POST', json.encode({
						embeds = {
							{ 	------------------------------------------------------------
								title = "LOGS DE REANIMAR:⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\n⠀",
								thumbnail = {
								url = "https://cdn.discordapp.com/attachments/1025211196632207390/1030207922065641532/death-unscreen.gif"
								}, 
								fields = {
									{ 
										name = "**O PARAMEDICO OU POLICIAL DE :**", 
										value = "[ *PASSAPORTE :*  **"..user_id.."** ]"
									},
									{
										name = "**APLICOU :**",
										value = "*/RE NO PASSAPORTE :*  **"..nplayer.."**"
									}
								}, 
								footer = { 
									text = "survival "..os.date("%d/%m/%Y |: %H:%M:%S"), 
									icon_url = "https://cdn.discordapp.com/attachments/1025211196632207390/1030207922065641532/death-unscreen.gif" 
								},
								color = 16431885 
							}
						}
					}), { ['Content-Type'] = 'application/json' })
				else
					TriggerClientEvent("Notify",source,"importante","A pessoa precisa estar em coma para prosseguir.")
				end
			end
		else
			TriggerClientEvent("Notify",source,"negado","Existem membros do Departamento Médico em serviço!")
		end 
	end
end) ]]

-----------------------------------------------------------------------------------------------------------------------------------------
-- [ CHECAGEM DO TEMPO DE DESISTENCIA ] -------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------

function Survival.checkTimeDesistir()
	local user_id = vRP.getUserId(source)
	local nuser_id = vRP.getUserId(nplayer)	
	if user_id then
		local identity = vRP.getUserIdentity(user_id)
		local value = vRP.getUData(parseInt(user_id),"vRP:survival")
		local tempo = json.decode(value) or 0
		if tempo > 0 then
	--		print("O player "..user_id.." não pôde desistir agora "..tempo.." Restante")
		else
	--		print("O player "..user_id.." desistiu")
			return tempo
		end
	end
end

function Survival.removeAttachs()
	local user_id = vRP.getUserId(source)

	if user_id then

		Citizen.CreateThread(function()
			vRP.execute("attachs/DELETE", {
				user_id = user_id,
			})
		end)
		
	end
	
end

function Survival.timedesistencia()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local value = vRP.getUData(parseInt(user_id),"vRP:survival")
		local timer = json.decode(value) or 0
		if user_id then
			return timer
		end
	end
end

-- [ SETAGEM DO TEMPO DE DESISTENCIA ] --------------------------------------------------------------------------------------------------

function Survival.SetTimeDesistir()
	local source = source
	local user_id = vRP.getUserId(source)
	vRP.setUData(parseInt(user_id),"vRP:survival",json.encode(parseInt(survival['timepdeath'])))
end


-- [ DIMINUIÇÃO DO TEMPO DE DESISTENCIA ] -----------------------------------------------------------------------------------------------

function Survival.diminuirtimedesistencia()
	local source = source
	local user_id = vRP.getUserId(source)
	local value = vRP.getUData(parseInt(user_id),"vRP:survival")
	local tempo = json.decode(value) or 0
	if tempo >= 1 then
		vRP.setUData(parseInt(user_id),"vRP:survival",json.encode(parseInt(tempo)-1))
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- [ CHECAGEM DO ID DA PESSOA ] ---------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------

function Survival.checkuserid()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		return true
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- [ FORCE GOD ] ------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------

function Survival.forcegod()
	local user_id = vRP.getUserId(source)
	if user_id then
		TriggerClientEvent("resetBleeding",user_id)
        TriggerClientEvent("resetDiagnostic",user_id)
        vRPclient.killGod(user_id)
		vRPclient.setHealth(user_id,200)
	end
end


function createWeebHook(webhook,message)
	if webhook ~= "" then
		PerformHttpRequest(webhook,function(err,text,headers) end,"POST",json.encode({ content = message }),{ ['Content-Type'] = "application/json" })
	end
end

--[ KILLLOG ]-----------------------------------------------------------------------

function Survival.sendKillLog(death_source, weapon)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if tonumber(death_source) then
			local nuser_id = vRP.getUserId(tonumber(death_source))
			if nuser_id then
				local identity = vRP.getUserIdentity(user_id)
				local uidentity = vRP.getUserIdentity(nuser_id)
				local x,y,z = vRPclient.getPosition(source)
				local x2,y2,z2 = vRPclient.getPosition(death_source)

                SendWebhookMessage(survival['killlog'], "```\n[Nome de quem morreu]: "..identity.firstname.." ("..user_id..") \n[Nome do assassino]: "..uidentity.firstname.." ("..nuser_id..") \n[Arma usada]: "..weapon.."\n[Localização do assassino]: "..tD(x)..","..tD(y)..","..tD(z).."\n[Localização da vítima]: "..tD(x2)..","..tD(y2)..","..tD(z2).." ```")
			end
		end
	end
	return true
end

function tD(n)
    n = math.ceil(n * 100) / 100
    return n
end



function emP.checkPayment()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.tryFullPayment(user_id, 2000) then
			TriggerClientEvent("Survival:ForceNuiOff",nplayer)
			return true
		end
	end
end