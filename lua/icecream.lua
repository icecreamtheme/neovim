---@alias Color { fg: string, bg: string, sp: string, bold: boolean, italic: boolean, undercurl: boolean, underline: boolean, underdouble: boolean, underdotted: boolean, underdashed: boolean, strikethrough: boolean }

local M = {}


---@type table<string, Color>
local p = require('palette')

local groups = {
	boolean = p.apple,
	string = p.greenapple,
	background = p.chocolate,
	background_nc = p.chocolate,
	panel = p.blackberry,
	panel_nc = p.chocolate,
	border = p.bluemoon,
	comment = p.blackberry,
	link = p.bluemoon,
	punctuation = p.currant,
	error = p.rose,
	warn = p.kesar,
	hint = p.currant,
	info = p.pistachio,
	git_add = p.greenapple,
	git_change = p.apple,
	git_delete = p.rose,
	git_dirty = p.rose,
	git_ignore = p.lichi,
	git_merge = p.vanilla,
	git_rename = p.rose,
	git_stage = p.greenapple,
	git_text = p.fig,
	headings = {
		h1 = p.vanilla,
		h2 = p.greenapple,
		h3 = p.rose,
		h4 = p.mango,
		h5 = p.bluemoon,
		h6 = p.apple,
	},
}

function M.setup()
	-- terminal colors
	vim.g.terminal_color_0 = p.chocolate
	vim.g.terminal_color_8 = p.vanilla
	vim.g.terminal_color_1 = p.rose
	vim.g.terminal_color_9 = p.rose
	vim.g.terminal_color_2 = p.greenapple
	vim.g.terminal_color_10 = p.greenapple
	vim.g.terminal_color_3 = p.mango
	vim.g.terminal_color_11 = p.mango
	vim.g.terminal_color_4 = p.bluemoon
	vim.g.terminal_color_12 = p.bluemoon
	vim.g.terminal_color_5 = p.lichi
	vim.g.terminal_color_13 = p.lichi
	vim.g.terminal_color_6 = p.apple
	vim.g.terminal_color_14 = p.apple
	vim.g.terminal_color_7 = p.blackberry
	vim.g.terminal_color_15 = p.fig

	-- vim color options
	vim.opt.termguicolors = true
	if vim.g.colors_name then
		vim.cmd('hi clear')
		vim.cmd('syntax reset')
	end
	vim.g.colors_name = 'icecream'

	M.defaults = {
		['ColorColumn'] = { bg = p.bluemoon },
		['Conceal'] = { bg = p.none },
		['CurSearch'] = { link = 'DiffAdd' },
		['Cursor'] = { fg = p.vanilla, bg = p.vanilla },
		['CursorColumn'] = { bg = p.rose },
		-- ['CursorIM'] = {},
		['CursorLine'] = { bg = p.greenapple, fg = p.chocolate },
		['CursorLineNr'] = { fg = p.fig },
		['DarkenedPanel'] = { bg = p.blackberry },
		['DarkenedStatusline'] = { bg = p.blackberry },
		['DiffAdd'] = { bg = groups.git_add, blend = 20 },

		['DiffChange'] = { bg = p.bluemoon },
		['DiffDelete'] = { bg = groups.git_delete, blend = 20 },
		['DiffText'] = { bg = groups.git_text, blend = 20 },
		['diffAdded'] = { link = 'DiffAdd' },
		['diffChanged'] = { link = 'DiffChange' },
		['diffRemoved'] = { link = 'DiffDelete' },
		['Directory'] = { fg = p.greenapple, bg = p.none },
		['EndOfBuffer'] = { bg = p.none },
		['ErrorMsg'] = { fg = p.rose, bold = true },
		['FloatBorder'] = { fg = groups.border, bg = p.chocolate },
		['FloatTitle'] = { fg = p.blackberry },
		['FoldColumn'] = { fg = p.blackberry },
		['Folded'] = { fg = p.vanilla, bg = p.blackberry },
		['IncSearch'] = { fg = groups.background, bg = p.rose },
		['LineNr'] = { fg = p.fig },
		['MatchParen'] = { fg = p.vanilla, bg = p.highlight_med },
		['ModeMsg'] = { fg = p.subtle },
		['MoreMsg'] = { fg = p.vanilla },
		['NonText'] = { fg = p.vanilla },
		['Normal'] = { fg = p.vanilla, bg = p.chocolate },
		['NormalFloat'] = { fg = p.vanilla, bg = p.none },
		['NormalNC'] = { fg = p.vanilla, bg = p.none },
		['NvimInternalError'] = { fg = '#ffffff', bg = p.rose },
		['Pmenu'] = { fg = p.apple, bg = '#000000' },
		['PmenuSbar'] = { bg = p.highlight_low },
		['PmenuSel'] = { fg = p.vanilla, bg = p.bluemoon },
		['PmenuThumb'] = { bg = p.highlight_med },
		['Question'] = { fg = p.mango },
		['RedrawDebugClear'] = { fg = '#ffffff', bg = p.mango },
		['RedrawDebugComposed'] = { fg = '#ffffff', bg = p.bluemoon },
		['RedrawDebugRecompose'] = { fg = '#ffffff', bg = p.rose },
		['Search'] = { bg = p.highlight_med },
		['SpecialKey'] = { fg = p.greenapple },
		['SpellBad'] = { sp = p.subtle, undercurl = true },
		['SpellCap'] = { sp = p.subtle, undercurl = true },
		['SpellLocal'] = { sp = p.subtle, undercurl = true },
		['SpellRare'] = { sp = p.subtle, undercurl = true },
		['SignColumn'] = { fg = p.rose, bg = p.none, bold = true },
		['Substitute'] = { fg = p.chocolate, bg = p.rose },
		['StatusLine'] = { fg = p.subtle, bg = groups.panel },
		['StatusLineNC'] = { fg = p.lichi, bg = groups.panel_nc },
		['StatusLineTerm'] = { link = 'StatusLine' },
		['StatusLineTermNC'] = { link = 'StatusLineNC' },
		['TabLine'] = { fg = p.subtle, bg = groups.panel },
		['TabLineFill'] = { bg = groups.panel },
		['TabLineSel'] = { fg = p.vanilla, bg = p.bluemoon },
		['Title'] = { fg = p.vanilla },
		['VertSplit'] = { fg = groups.border, bg = groups.bold_vert_split },
		['Visual'] = { bg = p.blackberry, fg = p.fig },
		-- VisualNOS = {},
		['WarningMsg'] = { fg = p.mango },
		-- Whitespace = {},
		['WildMenu'] = { link = 'IncSearch' },

		['Boolean'] = { fg = p.apple, bold = true },
		['Character'] = { fg = p.mango },
		['Comment'] = { fg = groups.comment, italic = true },
		['Conditional'] = { fg = p.bluemoon },
		['Constant'] = { fg = p.mango },
		['Debug'] = { fg = p.rose },
		['Define'] = { fg = p.vanilla },
		['Delimiter'] = { fg = p.subtle },
		['Error'] = { fg = p.rose },
		['Exception'] = { fg = p.bluemoon },
		['Float'] = { fg = p.mango },
		-- ['Function'] = { fg = p.lichi },
		['Function'] = { fg = p.mango, bold = true },
		['Identifier'] = { fg = p.rose },
		-- Ignore = {},
		['Include'] = { fg = p.bluemoon },
		['Keyword'] = { fg = p.pistachio },
		['Label'] = { fg = p.greenapple },
		['Macro'] = { fg = p.rose },
		['Number'] = { fg = p.mango },
		['Operator'] = { fg = p.subtle },
		['PreCondit'] = { fg = p.vanilla },
		['PreProc'] = { fg = p.vanilla },
		['Repeat'] = { fg = p.bluemoon },
		['Special'] = { fg = p.rose },
		['SpecialChar'] = { fg = p.rose },
		['SpecialComment'] = { fg = p.vanilla },
		['Statement'] = { fg = p.bluemoon },
		['StorageClass'] = { fg = p.greenapple },
		['String'] = { fg = p.bluemoon },
		['Structure'] = { fg = p.greenapple },
		['Tag'] = { fg = p.greenapple },
		['Todo'] = { fg = p.vanilla },
		['Type'] = { fg = p.apple },
		['Typedef'] = { link = 'Type' },
		['Underlined'] = { underline = true },

		['htmlArg'] = { fg = p.vanilla },
		['htmlBold'] = { bold = true },
		['htmlEndTag'] = { fg = p.subtle },
		['htmlH1'] = { fg = groups.headings.h1, bold = true },
		['htmlH2'] = { fg = groups.headings.h2, bold = true },
		['htmlH3'] = { fg = groups.headings.h3, bold = true },
		['htmlH4'] = { fg = groups.headings.h4, bold = true },
		['htmlH5'] = { fg = groups.headings.h5, bold = true },
		['htmlItalic'] = { italic = groups.italic },
		['htmlLink'] = { fg = groups.link },
		['htmlTag'] = { fg = p.subtle },
		['htmlTagN'] = { fg = p.vanilla },
		['htmlTagName'] = { fg = p.greenapple },

		['markdownDelimiter'] = { fg = p.subtle },
		['markdownH1'] = { fg = groups.headings.h1, bold = true },
		['markdownH1Delimiter'] = { link = 'markdownH1' },
		['markdownH2'] = { fg = groups.headings.h2, bold = true },
		['markdownH2Delimiter'] = { link = 'markdownH2' },
		['markdownH3'] = { fg = groups.headings.h3, bold = true },
		['markdownH3Delimiter'] = { link = 'markdownH3' },
		['markdownH4'] = { fg = groups.headings.h4, bold = true },
		['markdownH4Delimiter'] = { link = 'markdownH4' },
		['markdownH5'] = { fg = groups.headings.h5, bold = true },
		['markdownH5Delimiter'] = { link = 'markdownH5' },
		['markdownH6'] = { fg = groups.headings.h6, bold = true },
		['markdownH6Delimiter'] = { link = 'markdownH6' },
		['markdownLinkText'] = { fg = groups.link, sp = groups.link, underline = true },
		['markdownUrl'] = { link = 'markdownLinkText' },

		['mkdCode'] = { fg = p.greenapple, italic = groups.italic },
		['mkdCodeDelimiter'] = { fg = p.rose },
		['mkdCodeEnd'] = { fg = p.greenapple },
		['mkdCodeStart'] = { fg = p.greenapple },
		['mkdFootnotes'] = { fg = p.greenapple },
		['mkdID'] = { fg = p.greenapple, underline = true },
		['mkdInlineURL'] = { fg = groups.link, underline = true },
		['mkdLink'] = { link = 'mkdInlineURL' },
		['mkdLinkDef'] = { link = 'mkdInlineURL' },
		['mkdListItemLine'] = { fg = p.vanilla },
		['mkdRule'] = { fg = p.subtle },
		['mkdURL'] = { link = 'mkdInlineURL' },

		-- Diagnostics
		['DiagnosticError'] = { fg = groups.error },
		['DiagnosticHint'] = { fg = groups.hint },
		['DiagnosticInfo'] = { fg = groups.info },
		['DiagnosticWarn'] = { fg = groups.warn },
		['DiagnosticDefaultError'] = { fg = groups.error },
		['DiagnosticDefaultHint'] = { fg = groups.hint },
		['DiagnosticDefaultInfo'] = { fg = groups.info },
		['DiagnosticDefaultWarn'] = { fg = groups.warn },
		['DiagnosticFloatingError'] = { fg = groups.error },
		['DiagnosticFloatingHint'] = { fg = groups.hint },
		['DiagnosticFloatingInfo'] = { fg = groups.info },
		['DiagnosticFloatingWarn'] = { fg = groups.warn },
		['DiagnosticSignError'] = { fg = groups.error },
		['DiagnosticSignHint'] = { fg = groups.hint },
		['DiagnosticSignInfo'] = { fg = groups.info },
		['DiagnosticSignWarn'] = { fg = groups.warn },
		['DiagnosticStatusLineError'] = { fg = groups.error, bg = groups.panel },
		['DiagnosticStatusLineHint'] = { fg = groups.hint, bg = groups.panel },
		['DiagnosticStatusLineInfo'] = { fg = groups.info, bg = groups.panel },
		['DiagnosticStatusLineWarn'] = { fg = groups.warn, bg = groups.panel },
		['DiagnosticUnderlineError'] = { sp = groups.error, underdotted = true },
		['DiagnosticUnderlineHint'] = { sp = groups.hint, underdotted = true },
		['DiagnosticUnderlineInfo'] = { sp = groups.info, underdotted = true },
		['DiagnosticUnderlineWarn'] = { sp = groups.warn, underdotted = true },
		['DiagnosticVirtualTextError'] = { fg = groups.error },
		['DiagnosticVirtualTextHint'] = { fg = groups.hint },
		['DiagnosticVirtualTextInfo'] = { fg = groups.info },
		['DiagnosticVirtualTextWarn'] = { fg = groups.warn },

		-- Healthcheck
		['healthError'] = { fg = groups.error },
		['healthSuccess'] = { fg = groups.info },
		['healthWarning'] = { fg = groups.warn },

		-- Treesitter
		['@boolean'] = { link = 'Boolean' },
		['@character'] = { link = 'Character' },
		['@character.special'] = { link = '@character' },
		['@class'] = { fg = p.greenapple },
		['@comment'] = { link = 'Comment' },
		['@conditional'] = { link = 'Conditional' },
		['@constant'] = { link = 'Constant' },
		['@constant.builtin'] = { fg = p.rose },
		['@constant.macro'] = { link = '@constant' },
		['@constructor'] = { fg = p.greenapple },
		['@field'] = { fg = p.lichi },
		['@function'] = { link = 'Function' },
		['@function.builtin'] = { fg = p.bluemoon },
		['@function.macro'] = { link = '@function' },
		['@include'] = { link = 'Include' },
		['@interface'] = { fg = p.greenapple },
		['@keyword'] = { link = 'Keyword' },
		['@keyword.operator'] = { fg = p.subtle },
		['@label'] = { link = 'Label' },
		['@macro'] = { link = 'Macro' },
		['@method'] = { fg = p.rose },
		['@number'] = { link = 'Number' },
		['@operator'] = { link = 'Operator' },
		['@parameter'] = { fg = p.vanilla, italic = groups.italic },
		['@preproc'] = { link = 'PreProc' },
		['@property'] = { fg = p.mango, italic = groups.italic },
		['@punctuation'] = { fg = groups.punctuation },
		['@punctuation.bracket'] = { link = '@punctuation' },
		['@punctuation.delimiter'] = { link = '@punctuation' },
		['@punctuation.special'] = { link = '@punctuation' },
		['@regexp'] = { link = 'String' },
		['@repeat'] = { link = 'Repeat' },
		['@storageclass'] = { link = 'StorageClass' },
		['@string'] = { link = 'String' },
		['@string.escape'] = { fg = p.bluemoon },
		['@string.special'] = { link = '@string' },
		['@symbol'] = { link = 'Identifier' },
		['@tag'] = { link = 'Tag' },
		['@tag.attribute'] = { fg = p.vanilla },
		['@tag.delimiter'] = { fg = p.subtle },
		['@text'] = { fg = p.vanilla },
		['@text.strong'] = { bold = true },
		['@text.emphasis'] = { italic = true },
		['@text.underline'] = { underline = true },
		['@text.strike'] = { strikethrough = true },
		['@text.math'] = { link = 'Special' },
		['@text.environment'] = { link = 'Macro' },
		['@text.environment.name'] = { link = 'Type' },
		['@text.title'] = { link = 'Title' },
		['@text.uri'] = { fg = groups.link },
		['@text.note'] = { link = 'SpecialComment' },
		['@text.warning'] = { fg = groups.warn },
		['@text.danger'] = { fg = groups.error },
		['@todo'] = { link = 'Todo' },
		['@type'] = { link = 'Type' },
		['@variable'] = { fg = p.vanilla, italic = groups.italic },
		['@variable.builtin'] = { fg = p.rose },
		['@namespace'] = { link = '@include' },

		-- LSP Semantic Token Groups
		['@lsp.type.comment'] = {},
		['@lsp.type.enum'] = { link = '@type' },
		['@lsp.type.keyword'] = { link = '@keyword' },
		['@lsp.type.interface'] = { link = '@interface' },
		['@lsp.type.namespace'] = { link = '@namespace' },
		['@lsp.type.parameter'] = { link = '@parameter' },
		['@lsp.type.property'] = { link = '@property' },
		['@lsp.type.variable'] = {}, -- use treesitter styles for regular variables
		['@lsp.typemod.function.defaultLibrary'] = { link = 'Special' },
		['@lsp.typemod.variable.defaultLibrary'] = { link = '@variable.builtin' },

		-- LSP Injected Groups
		['@lsp.typemod.operator.injected'] = { link = '@operator' },
		['@lsp.typemod.string.injected'] = { link = '@string' },
		['@lsp.typemod.variable.injected'] = { link = '@variable' },

		-- nvim-treesitter Markdown Headings
		['@text.title.1.markdown'] = { link = 'markdownH1' },
		['@text.title.1.marker.markdown'] = { link = 'markdownH1Delimiter' },
		['@text.title.2.markdown'] = { link = 'markdownH2' },
		['@text.title.2.marker.markdown'] = { link = 'markdownH2Delimiter' },
		['@text.title.3.markdown'] = { link = 'markdownH3' },
		['@text.title.3.marker.markdown'] = { link = 'markdownH3Delimiter' },
		['@text.title.4.markdown'] = { link = 'markdownH4' },
		['@text.title.4.marker.markdown'] = { link = 'markdownH4Delimiter' },
		['@text.title.5.markdown'] = { link = 'markdownH5' },
		['@text.title.5.marker.markdown'] = { link = 'markdownH5Delimiter' },
		['@text.title.6.markdown'] = { link = 'markdownH6' },
		['@text.title.6.marker.markdown'] = { link = 'markdownH6Delimiter' },

		-- vim.lsp.buf.document_highlight()
		['LspReferenceText'] = { bg = p.highlight_med },
		['LspReferenceRead'] = { bg = p.highlight_med },
		['LspReferenceWrite'] = { bg = p.highlight_med },

		-- lsp-highlight-codelens
		['LspCodeLens'] = { fg = p.subtle },            -- virtual text of code len
		['LspCodeLensSeparator'] = { fg = p.highlight_high }, -- separator between two or more code len

		-- folke/which-key.nvim
		['WhichKey'] = { fg = p.vanilla },
		['WhichKeyGroup'] = { fg = p.greenapple },
		['WhichKeySeparator'] = { fg = p.subtle },
		['WhichKeyDesc'] = { fg = p.mango },
		['WhichKeyFloat'] = { bg = p.blackberry },
		['WhichKeyValue'] = { fg = p.rose },

		-- luka-reineke/indent-blankline.nvim
		['IndentBlanklineChar'] = { fg = p.lichi, nocombine = true },
		['IndentBlanklineSpaceChar'] = { fg = p.lichi, nocombine = true },
		['IndentBlanklineSpaceCharBlankline'] = { fg = p.lichi, nocombine = true },

		-- hrsh7th/nvim-cmp
		['CmpItemAbbr'] = { fg = p.fig },
		['CmpItemAbbrDeprecated'] = { fg = p.rose, strikethrough = true },
		['CmpItemAbbrMatch'] = { fg = p.vanilla, bold = true },
		['CmpItemAbbrMatchFuzzy'] = { fg = p.vanilla, bold = true },
		['CmpItemKind'] = { fg = p.greenapple },
		['CmpItemKindClass'] = { fg = p.bluemoon },
		['CmpItemKindFunction'] = { fg = p.rose },
		['CmpItemKindInterface'] = { fg = p.bluemoon },
		['CmpItemKindMethod'] = { fg = p.lichi },
		['CmpItemKindSnippet'] = { fg = p.mango },
		['CmpItemKindVariable'] = { fg = p.vanilla },

		-- nvim-telescope/telescope.nvim
		['TelescopeBorder'] = { fg = p.vanilla, bg = groups.background },
		['TelescopeMatching'] = { fg = p.rose },
		['TelescopeNormal'] = { fg = p.subtle, bg = groups.background },
		['TelescopePromptNormal'] = { fg = p.text, bg = groups.background },
		['TelescopePromptPrefix'] = { fg = p.subtle },
		['TelescopeSelection'] = { fg = p.vanilla, bg = p.bluemoon },
		['TelescopeSelectionCaret'] = { fg = p.rose, bg = p.bluemoon },
		['TelescopeTitle'] = { fg = p.subtle },

		-- rcarriga/nvim-notify
		['NotifyINFOBorder'] = { fg = p.greenapple },
		['NotifyINFOTitle'] = { link = 'NotifyINFOBorder' },
		['NotifyINFOIcon'] = { link = 'NotifyINFOBorder' },
		['NotifyWARNBorder'] = { fg = p.mango },
		['NotifyWARNTitle'] = { link = 'NotifyWARNBorder' },
		['NotifyWARNIcon'] = { link = 'NotifyWARNBorder' },
		['NotifyDEBUGBorder'] = { fg = p.blackberry },
		['NotifyDEBUGTitle'] = { link = 'NotifyDEBUGBorder' },
		['NotifyDEBUGIcon'] = { link = 'NotifyDEBUGBorder' },
		['NotifyTRACEBorder'] = { fg = p.vanilla },
		['NotifyTRACETitle'] = { link = 'NotifyTRACEBorder' },
		['NotifyTRACEIcon'] = { link = 'NotifyTRACEBorder' },
		['NotifyERRORBorder'] = { fg = p.rose },
		['NotifyERRORTitle'] = { link = 'NotifyERRORBorder' },
		['NotifyERRORIcon'] = { link = 'NotifyERRORBorder' },

		-- nvim-tree/nvim-tree
		['NvimTreeCursorLine'] = { bg = p.fig, fg = p.chocolate },
	}

	-- Set highlights.
	for group, color in pairs(M.defaults) do
		vim.api.nvim_set_hl(0, group, color)
	end
end

return M
