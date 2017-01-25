module Chatty.Router where

import Prelude

import Control.Alt ((<|>))

import Routing.Match (Match)
import Routing.Match.Class (lit)

data Locations
  = Dashboard -- "Home"
  | Chat
  | Profile

oneSlash :: Match Unit
oneSlash = lit "/"

homeSlash :: Match Unit
homeSlash = lit ""

route :: String -> Match Unit
route str = homeSlash *> lit str

dashboard :: Match Locations
dashboard = Dashboard <$ oneSlash

chat :: Match Locations
chat = Chat <$ route "chat"

profile :: Match Locations
profile = Profile <$ route "profile"

routing :: Match Locations
routing  =
  chat <|>
  profile <|>
  dashboard
