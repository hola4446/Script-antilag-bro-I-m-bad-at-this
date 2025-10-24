-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Remote
local ActivateClientCommand = ReplicatedStorage.HDAdminHDClient.Signals.ActivateClientCommand -- RemoteEvent 

-- This data was received from the server
firesignal(ActivateClientCommand.OnClientEvent, 
    {
        "fly",
        {
            {}
        }
    }
)
