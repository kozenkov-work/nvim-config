return {
	{
		"huggingface/llm.nvim",
		enabled = false,
		opts = {
			api_token = nil,
			tokens_to_clear = { "<EOT>" },
			fim = {
				enabled = true,
				prefix = "<PRE> ",
				middle = " <MID>",
				suffix = " <SUF>",
			},
			model = "codellama:7b",
			context_window = 4096,
			tokenizer = {
				repository = "codellama/CodeLlama-13b-hf",
			},
			url = "http://localhost:11434",
			backend = "ollama",
			accept_keymap = "<c-g>",
			request_body = {
				parameters = {
					max_new_tokens = 30,
					temperature = 0.2,
					top_p = 0.95,
				},
			},
			lsp = {
				bin_path = vim.api.nvim_call_function("stdpath", { "data" }) .. "/mason/bin/llm-ls",
			},
			enable_suggestions_on_startup = true,
		},
	},
	{
		"milanglacier/minuet-ai.nvim",
		config = function()
			require("minuet").setup({
				virtualtext = {
					auto_trigger_ft = {},
					keymap = {
						-- accept whole completion
						accept = "<A-A>",
						-- accept one line
						accept_line = "<A-a>",
						-- accept n lines (prompts for number)
						-- e.g. "A-z 2 CR" will accept 2 lines
						accept_n_lines = "<A-z>",
						-- Cycle to prev completion item, or manually invoke completion
						prev = "<A-[>",
						-- Cycle to next completion item, or manually invoke completion
						next = "<A-]>",
						dismiss = "<A-e>",
					},
				},
				provider = "openai_fim_compatible",
				n_completions = 1, -- recommend for local model for resource saving
				-- I recommend beginning with a small context window size and incrementally
				-- expanding it, depending on your local computing power. A context window
				-- of 512, serves as an good starting point to estimate your computing
				-- power. Once you have a reliable estimate of your local computing power,
				-- you should adjust the context window to a larger value.
				context_window = 8192,
        request_timeout = 10,
				provider_options = {
					openai_fim_compatible = {
            api_key = 'TERM',
						end_point = "http://localhost:11434/v1/completions",
						model = "qwen2.5-coder:14b",
						optional = {
							max_tokens = 20,
							top_p = 0.5,
						},
					},
				},
			})
		end,
	},
	{ "nvim-lua/plenary.nvim" },
}
