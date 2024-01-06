local orig_init = init

function init()
    xpcall(function()
        orig_init()

        local species = player.species()
        if species ~= "plasmoid" then return end
        player.makeTechAvaliable("plasmoid_amorphous")
    end, sb.logError)
end