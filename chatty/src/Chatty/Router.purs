module Chatty.Router where

import Prelude

import Control.Alt ((<|>))

import Routing.Match (Match)
import Routing.Match.Class (lit)

data Routes = Welcome
            | Chat
            | Profile

routing :: Match Routes
routing  = welcome
           <|> chat
           <|> profile
  where
    welcome = Welcome <$ lit ""
    chat = Chat <$ route "chat"
    profile = Profile <$ route "profile"
    route str = lit "" *> lit str

