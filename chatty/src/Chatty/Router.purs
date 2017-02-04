module Chatty.Router where

import Prelude

import Control.Alt ((<|>))
import Control.Monad.State (State)

import Data.Maybe (Maybe(..))

import Halogen as H
import Halogen.HTML as HH

import Routing.Match (Match)
import Routing.Match.Class (lit)

data Locations
  = Dashboard -- "Home"
  | Chat
  | Profile

data RouteQuery a
  = ChangeRoute a

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

component :: forall m. H.Component HH.HTML RouteQuery Unit Void m
component =
  H.component
    { initialState: const initialState
    , render
    , eval
    , receiver: const Nothing
    }
  where

    initialState :: State
    initialState = { currentPage: "" }

    render :: State -> H.ComponentHTML RouteQuery
    render state =
      HH.div_ [ HH.p_ [ HH.text "Hello world!" ] ]

    eval :: RouteQuery ~> H.ComponentDSL State RouteQuery Void m
    eval (ChangeRoute next) = do
        H.modify \st -> { currentPage: "" }
        pure next
