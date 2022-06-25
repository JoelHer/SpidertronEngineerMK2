data:extend({
    {
        type = "string-setting",
        name = "spidertron-engineer-allowed-out-of-spidertron",
        setting_type = "runtime-global",
        default_value = "never",
        allowed_values = {"never", "limited-time", "unlimited-time"}
    },
    {
        type = "string-setting",
        name = "spidertron-engineer-allowed-into-entities",
        setting_type = "runtime-global",
        default_value = "limited",
        allowed_values = {"none", "limited", "all"}
    },
    {
        type = "bool-setting",
        name = "spidertron-engineer-spawn-with-remote",
        setting_type = "runtime-global",
        default_value = "false",
    },
})

data:extend({
    {
        type = "bool-setting",
        name = "spidertron-engineer-enable-compatibility-mode",
        setting_type = "startup",
        default_value = "false",
        order = "a"
    },
    {
        type = "bool-setting",
        name = "spidertron-engineer-enable-spidertron-space-science",
        setting_type = "startup",
        default_value = "true",
        order = "ba"
    },
    {
        type = "bool-setting",
        name = "spidertron-engineer-space-science-to-fish",
        setting_type = "startup",
        default_value = "true",
        order = "bb"
    },
    {
        type = "bool-setting",
        name = "spidertron-engineer-rocket-returns-fish",
        setting_type = "startup",
        default_value = "false",
        order = "bc"
    },
    {
        type = "bool-setting",
        name = "spidertron-engineer-enable-upgrade-size",
        setting_type = "startup",
        default_value = "true",
        order = "ca"
    },
    {
        type = "bool-setting",
        name = "spidertron-engineer-enable-upgrade-size-with-scale",
        setting_type = "startup",
        default_value = "true",
        order = "cb"
    },
    {
        type = "double-setting",
        name = "spidertron-engineer-constant-size-scale",
        setting_type = "startup",
        default_value = 1,
        minimum_value = 0.2,
        maximum_value = 99,
        order = "cd"
    },
    {
        type = "bool-setting",
        name = "custom-grid-size",
        setting_type = "startup",
        default_value = "true",
        order = "ca"
    },
    {
        type = "int-setting",
        name = "spidertron-grid-6",
        setting_type = "startup",
        default_value = 20,
        minimum_value = 20,
        maximum_value = 100,
        order = "dc"
    },
    {
        type = "int-setting",
        name = "spidertron-grid-5",
        setting_type = "startup",
        default_value = 14,
        minimum_value = 14,
        maximum_value = 100,
        order = "dd"
    },
	    {
        type = "int-setting",
        name = "spidertron-grid-4",
        setting_type = "startup",
        default_value = 12,
        minimum_value = 12,
        maximum_value = 100,
        order = "de"
    },
	    {
        type = "int-setting",
        name = "spidertron-grid-3",
        setting_type = "startup",
        default_value = 10,
        minimum_value = 10,
        maximum_value = 100,
        order = "df"
    },
	    {
        type = "int-setting",
        name = "spidertron-grid-2",
        setting_type = "startup",
        default_value = 7,
        minimum_value = 7,
        maximum_value = 100,
        order = "dg"
    }
})