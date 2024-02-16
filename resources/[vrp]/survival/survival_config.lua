survival = {}

---- ABAIXO ESTA AS CONFIGURAÇÕES DO SISTEMA DE MORTE

survival.permgod = "god.permissao"  --PERMISSÃO PARA PODER USAR O COMANDO /GOD
survival.permgodadmin = "god.permissao"  --PERMISSÃO PARA PODER USAR O COMANDO /GODADMIN
survival.permgodall = "god.permissao"  --PERMISSÃO PARA PODER USAR O COMANDO /GODALL

survival.permre = "paramedico.permissao"  --PERMISSÃO PARA PODER USAR O COMANDO /RE
survival.permpolicia = "policia.permissao"  --PERMISSÃO PARA O POLICIA PODER USAR /RE SE NÃO HOUVER MEDICO

survival.prim_vis = false

survival.cutscene_pos_morte = true
survival.cutscene_pos_desistir = false

survival.respawn_pos_morte = vector3(-435.87, -359.0, 34.95) 
survival.heading_do_ped_p_m = 0.01

survival.respawn_pos_desistir = vector3(-1763.02,-262.65,48.22) 
survival.heading_do_ped_p_d = 144.20

survival.tempo_morte = 600
survival.timepdeath = 555
-----------------------------------------------------------------------------------------------------------------------------------------
-- [ LOGS DOS COMANDOS ] ----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------

survival.loggod = ""  --LOG COMANDO GOD
survival.loggodadmin = ""  --LOG COMANDO GODADMIN
survival.loggodall = ""  --LOG COMANDO GODALL
survival.logre = ""  --LOG COMANDO RE
survival.killlog = "" --LOG DAS KILLs

return survival