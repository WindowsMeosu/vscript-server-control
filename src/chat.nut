__CollectGameEventCallbacks(this)
function OnGameEvent_player_say(data)
{
    local player = GetPlayerFromUserID(data.userid)
	local playername = NetProps.GetPropString(player,"m_szNetname").tostring()
 
    if (data.text.tolower() == "!help")
    {
        ClientPrint(player, 3, "!ping")
        return
    }      

    if (data.text.tolower() == "!ping")
    {
		ClientPrint(null, 3, "Pong!")
        return
    }
}
