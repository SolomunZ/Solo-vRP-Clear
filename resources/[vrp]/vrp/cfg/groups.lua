local cfg = {}

cfg.groups = {
	["admin"] = {
		"admin.permissao",
		"fix.permissao",
		"dv.permissao",
		"god.permissao",
		"wl.permissao",
		"kick.permissao",
		"ban.permissao",
		"unban.permissao",
		"spotify.permissao",
		"money.permissao",
		"noclip.permissao",
		"containers.permissao",
		"ticket.permissao",
		"tp.permissao",
		"spawncar.permissao",
		"msg.permissao"
	},
	---------------------------------------------------
	---------------------------------------------------
	["Police"] = {
		_config = {
			title = "Police",
			gtype = "job"
		},
		"police.permissao"
	},

}

cfg.users = {
	[1] = { "admin" },
	[2] = { "admin" },
}

cfg.selectors = {}

return cfg