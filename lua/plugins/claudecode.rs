struct Key {
    lhs: &'static str,
    rhs: Option<&'static str>,
    desc: &'static str,
    mode: Option<&'static str>,
    ft: Option<&'static [&'static str]>,
}

struct Plugin {
    name: &'static str,
    dependencies: &'static [&'static str],
    config: bool,
    keys: &'static [Key],
}

const CLAUDE_CODE: Plugin = Plugin {
    name: "coder/claudecode.nvim",
    dependencies: &["folke/snacks.nvim"],
    config: true,
    keys: &[
        Key { lhs: "<leader>a",  rhs: None,                                    desc: "AI/Claude Code",      mode: None,      ft: None },
        Key { lhs: "<leader>ac", rhs: Some("<cmd>ClaudeCode<cr>"),              desc: "Toggle Claude",       mode: None,      ft: None },
        Key { lhs: "<leader>af", rhs: Some("<cmd>ClaudeCodeFocus<cr>"),         desc: "Focus Claude",        mode: None,      ft: None },
        Key { lhs: "<leader>ar", rhs: Some("<cmd>ClaudeCode --resume<cr>"),     desc: "Resume Claude",       mode: None,      ft: None },
        Key { lhs: "<leader>aC", rhs: Some("<cmd>ClaudeCode --continue<cr>"),   desc: "Continue Claude",     mode: None,      ft: None },
        Key { lhs: "<leader>am", rhs: Some("<cmd>ClaudeCodeSelectModel<cr>"),   desc: "Select Claude model", mode: None,      ft: None },
        Key { lhs: "<leader>ab", rhs: Some("<cmd>ClaudeCodeAdd %<cr>"),         desc: "Add current buffer",  mode: None,      ft: None },
        Key { lhs: "<leader>as", rhs: Some("<cmd>ClaudeCodeSend<cr>"),          desc: "Send to Claude",      mode: Some("v"), ft: None },
        Key { lhs: "<leader>as", rhs: Some("<cmd>ClaudeCodeTreeAdd<cr>"),       desc: "Add file",            mode: None,      ft: Some(&["NvimTree", "neo-tree", "oil", "minifiles", "netrw"]) },
        // Diff management
        Key { lhs: "<leader>aa", rhs: Some("<cmd>ClaudeCodeDiffAccept<cr>"),    desc: "Accept diff",         mode: None,      ft: None },
        Key { lhs: "<leader>ad", rhs: Some("<cmd>ClaudeCodeDiffDeny<cr>"),      desc: "Deny diff",           mode: None,      ft: None },
    ],
};