local M = {}
local cnf = require("afreidz.theme.config")

function M.get(cp)
	local delimeters = cp.gray1
	local operators = cp.sky
	local cl = cp.mauve
	local keywords = cp.red

	local math_logic = cp.peach
	return {
		TSField = { fg = cp.rosewater },
		TSProperty = { fg = cp.yellow, style = "italic" },
		TSInclude = { fg = cp.teal, style = "italic" },
		TSOperator = { fg = operators, style = "bold" },
		TSKeywordOperator = { fg = operators, style = "bold" },
		TSPunctSpecial = { fg = cp.maroon, style = "bold" },
		TSFloat = { fg = math_logic, style = "bold,italic" },
		TSNumber = { fg = math_logic, style = "bold,italic" },
		TSBoolean = { fg = math_logic, style = "bold,italic" },
		TSConstructor = { fg = cp.lavender },
		TSConstant = { fg = cp.peach },
		TSConditional = { fg = cl, style = "bold" },
		TSRepeat = { fg = cl, style = "bold" },
		TSException = { fg = cp.peach, style = cnf.styles.keywords },
		TSConstBuiltin = { fg = cp.lavender, style = cnf.styles.keywords },
		TSFuncBuiltin = { fg = cp.peach, style = "italic" },
		TSTypeBuiltin = { fg = cp.yellow, style = "italic" },
		TSVariableBuiltin = { fg = cp.teal, style = "italic" },
		TSFunction = { fg = cp.blue, style = cnf.styles.functions },
		TSFuncMacro = { fg = cp.red },
		TSParameter = { fg = cp.rosewater, style = "italic" },
		TSKeywordFunction = { fg = cp.maroon, style = cnf.styles.keywords },
		TSKeyword = { fg = keywords, style = cnf.styles.keywords },
		TSKeywordReturn = { fg = cp.pink },
		TSNote = { fg = cp.black2, bg = cp.blue },
		TSWarning = { fg = cp.black2, bg = cp.yellow },
		TSDanger = { fg = cp.black2, bg = cp.red },
		TSLabel = { fg = cp.blue },
		TSMethod = { fg = cp.blue, style = "italic" },
		TSNamespace = { fg = cp.rosewater, style = "italic" },
		tomlTSProperty = { fg = cp.blue },
		TSPunctDelimiter = { fg = cp.teal },
		TSPunctBracket = { fg = delimeters },
		TSString = { fg = cp.green },
		TSStringRegex = { fg = cp.peach, style = cnf.styles.strings },
		TSType = { fg = cp.yellow },
		TSVariable = { fg = cp.white, style = cnf.styles.variables },
		TSTagAttribute = { fg = cp.mauve, style = "italic" },
		TSTag = { fg = cp.peach },
		TSTagDelimiter = { fg = cp.maroon },
		TSText = { fg = cp.white },
		TSURI = { fg = cp.rosewater, style = "italic,underline" },
		TSLiteral = { fg = cp.teal, style = "italic" },
		TSTextReference = { fg = cp.lavender, style = "bold" },
		TSTitle = { fg = cp.blue, style = "bold" },
		TSEmphasis = { fg = cp.maroon, style = "italic" },
		TSStrong = { fg = cp.maroon, style = "bold" },
		TSStringEscape = { fg = cp.pink, style = cnf.styles.strings },
		bashTSFuncBuiltin = { fg = cp.red, style = "italic" },
		bashTSParameter = { fg = cp.yellow, style = "italic" },
		luaTSField = { fg = cp.lavender },
		luaTSConstructor = { fg = cp.flamingo },
		javaTSConstant = { fg = cp.teal },
		typescriptTSProperty = { fg = cp.lavender, style = "italic" },
		cssTSType = { fg = cp.lavender },
		cssTSProperty = { fg = cp.yellow, style = "italic" },
	}
end

return M
