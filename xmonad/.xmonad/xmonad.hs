import XMonad
import XMonad.Actions.CycleWS
import XMonad.Hooks.DynamicLog
import XMonad.Layout.IndependentScreens
import XMonad.Layout.NoBorders
import XMonad.Layout.Spacing
import XMonad.Layout.ThreeColumns
import XMonad.Layout.Reflect
import XMonad.Util.EZConfig
import qualified Data.Map as M
import qualified XMonad.StackSet as W
import Data.Maybe (isJust)

mylayoutHook = mySpacing (Tall 1 (3/100) (1/2)  ||| ThreeCol 1 (3/100) (1/3) ||| reflectVert (Mirror (Tall 1 (3/100) (1/5)))) ||| noBorders Full
  where mySpacing = spacingRaw False (Border 15 0 15 0) True (Border 0 15 0 15) True

myKeys = [
    ("M-a", spawn "emacsclient -nc")
  , ("M-c", spawn "firefox -new-window google.com")
  , ("M-S-c", spawn "firefox -new-window about:logins")
  , ("M-d", kill)
  , ("M-p", moveTo Prev spacesOnCurrentScreen)
  , ("M-n", moveTo Next spacesOnCurrentScreen)
  , ("M-y", spawn kbdToggler)
  , ("M-s", spawn "gnome-terminal")
  , ("M-S-q", spawn "dm-tool switch-to-greeter")
  , ("M-S-<Space>", spawn "rofi -combi-modi drun,ssh -font 'Fira Code 12' -show combi")
  , ("M-<Tab>", toggleWS)
  ]
  where kbdToggler = "(setxkbmap -query | grep -q \"layout:\\s\\+us\") && setxkbmap se || setxkbmap us; xmodmap ~/.Xmodmap"


isOnScreen :: ScreenId -> WindowSpace -> Bool
isOnScreen s ws = (s == unmarshallS (W.tag ws))
currentScreen :: X ScreenId
currentScreen = gets (W.screen . W.current . windowset)

spacesOnCurrentScreen :: WSType
spacesOnCurrentScreen = WSIs $ isOnScreen <$> currentScreen

myWorkspaceKeys =   [
    -- workspaces are distinct by screen
    ((m .|. mod4Mask, k), windows $ onCurrentScreen f i)
         | (i, k) <- zip (workspaces' myConfig) [xK_1 .. xK_9]
         , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]
  ]

-- The main function.
main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig

-- Command to launch the bar.
myBar = "xmobar"

-- Custom PP, configure it as you like. It determines what is being written to the bar.
myPP :: PP
myPP = def { ppCurrent = xmobarColor "#50fa7b" "" . wrap "[" "]",
             ppSep = " / ",
             ppTitle = xmobarColor "#50fa7b" "" . shorten 40,
             ppVisible = xmobarColor  "#ff79c6" "" . wrap "" "" }

-- Key binding to toggle the gap for the bar.
toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

nScreens = 2
myWorkspaces = withScreens nScreens ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

-- Main configuration, override the defaults to your liking.
myConfig = def { workspaces = myWorkspaces
               , terminal = "gnome-terminal"
               , layoutHook = mylayoutHook
               , modMask = mod4Mask
               , focusFollowsMouse = False
               } `additionalKeysP` myKeys
               `additionalKeys` myWorkspaceKeys
