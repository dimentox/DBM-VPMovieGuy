
-- registrations for media from the client itself belongs in LibSharedMedia-3.0
local DBM = DBM
local C_TimerNewTicker, C_TimerAfter = C_Timer.NewTicker, C_Timer.After
if not SharedMediaAdditionalSounds then return end

SharedMediaAdditionalSounds:Register("sound", "DBM VPMovieGuy: Beware", [[Interface\AddOns\DBM-VPMovieGuy\Beware.ogg]])
SharedMediaAdditionalSounds:Register("sound", "DBM VPMovieGuy: Destruction!", [[Interface\AddOns\DBM-VPMovieGuy\Destruction.ogg]])
SharedMediaAdditionalSounds:Register("sound", "DBM VPMovieGuy: RunAwayLittleGirl", [[Interface\AddOns\DBM-VPMovieGuy\RunAwayLittleGirl.ogg]])
SharedMediaAdditionalSounds:Register("sound", "DBM VPMovieGuy: ISeeYou", [[Interface\AddOns\DBM-VPMovieGuy\iseeyou.ogg]])

DBM:RegisterOnLoadCallback(function()
      C_TimerAfter(5, function()
         DBM:AddMsg("|cffffd200DBM-VPMovieGuy|r loaded into SharedMedia. You can use /dbm to bring up config and under |cffff7d0aOptions->Special Warnings |ryou can change the special warnings sound.")
   end)
end)
