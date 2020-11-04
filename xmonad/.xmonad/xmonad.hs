import XMonad
import XMonad.Actions.CycleWS
import XMonad.Hooks.DynamicLog
import XMonad.Layout.NoBorders
import XMonad.Layout.Spacing
import XMonad.Layout.ThreeColumns
import XMonad.Util.EZConfig

mylayoutHook = mySpacing (Tall 1 (3/100) (1/2)  ||| ThreeCol 1 (3/100) (1/3))
  ||| noBorders Full
  where mySpacing = spacingRaw False (Border 15 0 15 0) True (Border 0 15 0 15) True

myKeys = [
    ("M-a", spawn "emacsclient -nc")
  , ("M-c", spawn "chromium")
  , ("M-d", kill)
  , ("M-p", moveTo Prev NonEmptyWS)
  , ("M-n", moveTo Next NonEmptyWS)
  , ("M-y", spawn kbdToggler)
  , ("M-s", spawn "kitty")
  , ("M-S-q", spawn "xsecurelock")
  , ("M-S-<Space>", spawn "rofi -combi-modi drun,ssh -font 'Fira Code 12' -show combi")
  , ("M-<Tab>", toggleWS)
  ]
  where kbdToggler = "(setxkbmap -query | grep -q \"layout:\\s\\+us\") && setxkbmap se || setxkbmap us; source ~/Dropbox/keys.sh"

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

-- Main configuration, override the defaults to your liking.
myConfig = def { terminal = "kitty"
               , layoutHook = mylayoutHook
               , modMask = mod4Mask
               , focusFollowsMouse = False
               } `additionalKeysP` myKeys
