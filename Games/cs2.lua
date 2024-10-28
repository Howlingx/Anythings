---- Detailed instructions on our website --- www.FLUMBIX.RU

---- Mouse key combination activation (default 4)

local mKey4 = 5

---- Click shot settings (does not work when paused)

local Clicker = "lalt" --- Hold key, can be changed "lshift" "lalt" "lctrl"
local ClickTime = 180 --- Pause in milliseconds

---- Other script settings

local PauseScript = "capslock" --- Pause button
local SensReduce = true --- false - sensitivity 2.0 / true - 1.0

---- Any changes below are prohibited - may break the script

---- Detailed instructions on our website --- www.FLUMBIX.RU

function IsLKeyNotPressed()
    return not IsMouseButtonPressed(1)
end
function IsRKeyNotPressed()
    return not IsMouseButtonPressed(click_key)
end
local switching = true
local pattern = falseB
local AK47 = 1
local M4A4 = 2
local M4A1 = 3

local multiplier_x = 1  
local multiplier_y = 1  
local accumulated_x = 0.0
local accumulated_y = 0.0
function MoveMouseSmooth(dx, dy)
    accumulated_x = accumulated_x + dx
    accumulated_y = accumulated_y + dy

    local move_x = math.floor(accumulated_x)
    local move_y = math.floor(accumulated_y)

    if move_x ~= 0 or move_y ~= 0 then
        MoveMouseRelative(move_x, move_y)
        accumulated_x = accumulated_x - move_x
        accumulated_y = accumulated_y - move_y
    end
end

function OnEvent(event, arg)
    if (event == "PROFILE_ACTIVATED") then
        OutputLogMessage("Script start: %d ms\n\n", GetRunningTime())
        Sleep(2000)
        ClearLog()
        OutputLogMessage("  --- Detailed instructions on the website --- www.FLUMBIX.RU\n\n")
        OutputLogMessage(" mKey3, mKey4, mKey5 - mouse buttons 3, 4, 5 (buttons can be changed)\n\n")
        OutputLogMessage(" Activation:\n")
        OutputLogMessage(" AK47 -> L SHIFT  + mKey4 | or G1 (keyboard Logi)\n")
        OutputLogMessage(" M4A4 -> L CTRL + mKey4 | or G2 (keyboard Logi)\n")
        OutputLogMessage(" M4A1 -> L ALT   + mKey4 | or G3 (keyboard Logi)\n")
        OutputLogMessage(" Deactivation: any key combination\n\n")
        OutputLogMessage(" Click shot -> L ALT hold + mouse LKM (L ALT can be changed)\n\n")
        OutputLogMessage(" Macro ON -> CapsLock ON\n")
        OutputLogMessage(" Pause it -> CapsLock OFF\n\n")
        OutputLogMessage("  --- Detailed instructions on the website --- www.FLUMBIX.RU\n\n")
        EnablePrimaryMouseButtonEvents(true)
    end
    if SensReduce == true then
        MultiS = 2
    else
        MultiS = 1
    end
    if ProtectClick == true then
        click_key = 3
    else
        click_key = 1
    end
    if
        (event == "MOUSE_BUTTON_PRESSED" and arg == mKey4 and IsModifierPressed("lshift")) or
            (event == "G_PRESSED" and arg == AK47)
     then
        pattern = not pattern
        switching = AK47
        if (pattern == false) then
            OutputLogMessage("OFF-Macro\n\n")
        else
            OutputLogMessage("FLUMBIX-AK47 ")
            EnablePrimaryMouseButtonEvents(true)
        end
    elseif
        (event == "MOUSE_BUTTON_PRESSED" and arg == mKey4 and IsModifierPressed("lctrl")) or
            (event == "G_PRESSED" and arg == M4A4)
     then
        pattern = not pattern
        switching = M4A4
        if (pattern == false) then
            OutputLogMessage("OFF-Macro\n\n")
        else
            OutputLogMessage("FLUMBIX-M4A4 ")
            EnablePrimaryMouseButtonEvents(true)
        end
    elseif
        (event == "MOUSE_BUTTON_PRESSED" and arg == mKey4 and IsModifierPressed("lalt")) or
            (event == "G_PRESSED" and arg == M4A1)
     then
        pattern = not pattern
        switching = M4A1
        if (pattern == false) then
            OutputLogMessage("OFF-Macro\n\n")
        else
            OutputLogMessage("FLUMBIX-M4A1 ")
            EnablePrimaryMouseButtonEvents(true)
        end
    end
    while IsModifierPressed(Clicker) and IsKeyLockOn(PauseScript) and arg == 1 do
        PressAndReleaseMouseButton(1)
        Sleep(ClickTime)
    end
    if switching == AK47 and IsKeyLockOn(PauseScript) then
        if pattern then
            Sleep(5)
            MoveMouseSmooth(0, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            if (IsModifierPressed(Clicker)) then
                return
            end
            PressMouseButton(1)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  3)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  4)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(8)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  4)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(-5 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-5 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-5 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-5 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-5 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-5 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-5 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-5 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-5 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-5 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(8)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-4 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-4 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  -2)
            Sleep(9)
            MoveMouseSmooth(-4 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-4 * MultiS * multiplier_x, MultiS * multiplier_y *  -2)
            Sleep(9)
            MoveMouseSmooth(-4 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-4 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(7 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(7 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(5 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(4 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(5 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(4 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(5 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(4 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(5 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(4 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(5 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(8)
            MoveMouseSmooth(3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(4 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(4 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(4 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(4 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(4 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(5 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(4 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(5 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(4 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(4 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(4 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(4 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(4 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(4 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(8)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(8)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(-4 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-4 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-4 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-4 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-4 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-4 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-5 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-4 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-5 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-4 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(-6 * MultiS * multiplier_x, MultiS * multiplier_y *  -2)
            Sleep(9)
            MoveMouseSmooth(-6 * MultiS * multiplier_x, MultiS * multiplier_y *  -2)
            Sleep(9)
            MoveMouseSmooth(-6 * MultiS * multiplier_x, MultiS * multiplier_y *  -3)
            Sleep(9)
            MoveMouseSmooth(-6 * MultiS * multiplier_x, MultiS * multiplier_y *  -2)
            Sleep(9)
            MoveMouseSmooth(-6 * MultiS * multiplier_x, MultiS * multiplier_y *  -3)
            Sleep(9)
            MoveMouseSmooth(-6 * MultiS * multiplier_x, MultiS * multiplier_y *  -2)
            Sleep(9)
            MoveMouseSmooth(-6 * MultiS * multiplier_x, MultiS * multiplier_y *  -3)
            Sleep(9)
            MoveMouseSmooth(-6 * MultiS * multiplier_x, MultiS * multiplier_y *  -2)
            Sleep(9)
            MoveMouseSmooth(-6 * MultiS * multiplier_x, MultiS * multiplier_y *  -3)
            Sleep(9)
            MoveMouseSmooth(-5 * MultiS * multiplier_x, MultiS * multiplier_y *  -2)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(90)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(90)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            ReleaseMouseButton(1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(90)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
        end
    elseif switching == M4A4 and IsKeyLockOn(PauseScript) then
        if pattern then
            Sleep(5)
            MoveMouseSmooth(0, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            if (IsModifierPressed(Clicker)) then
                return
            end
            PressMouseButton(1)
            Sleep(2)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(21)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(0, MultiS * multiplier_y *  3)
            Sleep(22)
            MoveMouseSmooth(0, MultiS * multiplier_y *  3)
            Sleep(21)
            MoveMouseSmooth(0, MultiS * multiplier_y *  3)
            Sleep(22)
            MoveMouseSmooth(0, MultiS * multiplier_y *  3)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  5)
            Sleep(22)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  6)
            Sleep(21)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  5)
            Sleep(22)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  6)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  6)
            Sleep(22)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  7)
            Sleep(21)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  6)
            Sleep(22)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  7)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  7)
            Sleep(22)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  7)
            Sleep(21)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  8)
            Sleep(22)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  8)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  7)
            Sleep(22)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  7)
            Sleep(21)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  7)
            Sleep(22)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  7)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(4 * MultiS * multiplier_x, MultiS * multiplier_y *  6)
            Sleep(22)
            MoveMouseSmooth(5 * MultiS * multiplier_x, MultiS * multiplier_y *  5)
            Sleep(21)
            MoveMouseSmooth(5 * MultiS * multiplier_x, MultiS * multiplier_y *  6)
            Sleep(22)
            MoveMouseSmooth(4 * MultiS * multiplier_x, MultiS * multiplier_y *  5)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(4 * MultiS * multiplier_x, MultiS * multiplier_y *  5)
            Sleep(22)
            MoveMouseSmooth(5 * MultiS * multiplier_x, MultiS * multiplier_y *  4)
            Sleep(21)
            MoveMouseSmooth(5 * MultiS * multiplier_x, MultiS * multiplier_y *  5)
            Sleep(22)
            MoveMouseSmooth(5 * MultiS * multiplier_x, MultiS * multiplier_y *  4)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(6 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(22)
            MoveMouseSmooth(7 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(21)
            MoveMouseSmooth(7 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(22)
            MoveMouseSmooth(7 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(22)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(21)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(22)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(-7 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(22)
            MoveMouseSmooth(-8 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(21)
            MoveMouseSmooth(-8 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(-8 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(-7 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(22)
            MoveMouseSmooth(-8 * MultiS * multiplier_x, MultiS * multiplier_y *  -2)
            Sleep(21)
            MoveMouseSmooth(-8 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(22)
            MoveMouseSmooth(-8 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(-7 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(22)
            MoveMouseSmooth(-8 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(21)
            MoveMouseSmooth(-8 * MultiS * multiplier_x, 0)
            Sleep(22)
            MoveMouseSmooth(-8 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(-7 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(22)
            MoveMouseSmooth(-8 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(21)
            MoveMouseSmooth(-8 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(22)
            MoveMouseSmooth(-7 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(22)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(21)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(3 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(21)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(22)
            MoveMouseSmooth(3 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(21)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(22)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(-4 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(22)
            MoveMouseSmooth(-4 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(21)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  -2)
            Sleep(22)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            Sleep(22)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(21)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(9 * MultiS * multiplier_x, 0)
            Sleep(22)
            MoveMouseSmooth(9 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(21)
            MoveMouseSmooth(9 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(9 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(4 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(5 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(21)
            MoveMouseSmooth(5 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(4 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(7 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(7 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(21)
            MoveMouseSmooth(7 * MultiS * multiplier_x, 0)
            Sleep(22)
            MoveMouseSmooth(7 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(21)
            MoveMouseSmooth(3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(3 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(4 * MultiS * multiplier_x, 0)
            Sleep(21)
            MoveMouseSmooth(4 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(4 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(21)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(21)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(21)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(21)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(21)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(21)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(22)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(90)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(90)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            ReleaseMouseButton(1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(90)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
        end
    elseif switching == M4A1 and IsKeyLockOn(PauseScript) then
        if pattern then
            Sleep(5)
            MoveMouseSmooth(0, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            if (IsModifierPressed(Clicker)) then
                return
            end
            PressMouseButton(1)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(10)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            Sleep(10)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(10)
            MoveMouseSmooth(0, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(10)
            MoveMouseSmooth(0, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(10)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  2)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  3)
            Sleep(10)
            MoveMouseSmooth(0, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  3)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  2)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(10)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(10)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  2)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(10)
            MoveMouseSmooth(3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(10)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(10)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(10)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(10)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(10)
            MoveMouseSmooth(-3 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(10)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(10)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(10)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(10)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, MultiS * multiplier_y *  -1)
            Sleep(9)
            MoveMouseSmooth(-1 * MultiS * multiplier_x, 0)
            Sleep(9)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(10)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(4 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, 0)
            Sleep(10)
            MoveMouseSmooth(4 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(4 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(10)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            Sleep(10)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(3 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(2 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(10)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(0, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(10)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, MultiS * multiplier_y *  1)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            Sleep(9)
            Sleep(9)
            MoveMouseSmooth(1 * MultiS * multiplier_x, 0)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(90)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(90)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            ReleaseMouseButton(1)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
            Sleep(90)
            if (IsRKeyNotPressed()) then
                return
            end
            if (IsLKeyNotPressed()) then
                return
            end
        end
    end
end
function Sleep(time)
    local start_time = GetRunningTime()
    while GetRunningTime() - start_time <= time do
    end
end
