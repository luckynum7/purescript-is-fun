module Chatty.Router where

import Prelude

import Control.Alt ((<|>))

import Data.Maybe (Maybe(..))

import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.Events as HE

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

-- component :: forall m. H.Component HH.HTML RouteQuery Unit Void m
-- component =
--   H.component
--     { initialState: const initialState
--     , render
--     , eval
--     , receiver: const Nothing
--     }
--   where

--     initialState :: State
--     initialState = { currentPage: "" }

--     render :: State -> H.ComponentHTML RouteQuery
--     render state =
--       HH.div_ [ HH.p_ [ HH.text "Hello world!" ] ]

--     eval :: RouteQuery ~> H.ComponentDSL State RouteQuery Void m
--     eval (ChangeRoute next) = do
--         H.modify \st -> { currentPage: "" }
--         pure next

data Query a = ToggleState a

type State = { on :: Boolean }

component :: forall g. H.Component HH.HTML Query Unit Void g
component =
  H.component
    { initialState: const initialState
    , render
    , eval
    , receiver: const Nothing
    }
  where

    initialState :: State
    initialState = { on: false }

    render :: State -> H.ComponentHTML Query
    render state =
      HH.div_
      [ HH.h1_
        [ HH.text "Hello world!" ]
      , HH.p_
        [ HH.text "Why not toggle this button:" ]
      , HH.button
        [ HE.onClick (HE.input_ ToggleState) ]
        [ HH.text
          if not state.on
          then "Don't push me"
          else "I said don't push me!"
        ]
      ]

    eval :: Query ~> H.ComponentDSL State Query Void g
    eval (ToggleState next) = do
      H.modify (\state -> { on: not state.on })
      pure next
