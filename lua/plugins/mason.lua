return {
	{
		"williamboman/mason.nvim",
		config = function(opts)
			require("mason").setup({
				registries = {
					"github:mason-org/mason-registry",
					"github:Crashdummyy/mason-registry",
				},
			})
		end,
	},
}
