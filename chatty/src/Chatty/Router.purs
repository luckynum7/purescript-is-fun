module Chatty.Router where

import Prelude
import Control.Alt ((<|>))
import Data.Const (Const)
import Data.Maybe (Maybe(..))
import Halogen as H
import Halogen.Component.ChildPath (type (\/), type (<\/>))
import Halogen.Component.ChildPath  as CP
import Halogen.HTML as HH
import Routing.Match (Match)
import Routing.Match.Class (lit)
import Chatty.Component.Dashboard as Dashboard
import Chatty.Component.Profile as Profile

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


type State = { currentPage :: String }

initialState :: State
initialState = { currentPage: "" }

data RouteQuery a
  = ChangeRoute a

type ChildQuery = Dashboard.Query <\/> Profile.Query <\/> Const Void
type ChildSlot = Dashboard.Slot \/ Profile.Slot \/ Void

ui :: forall m. Applicative m => H.Component HH.HTML RouteQuery Unit Void m
ui =
  H.parentComponent
    { initialState: const initialState
    , render
    , eval
    , receiver: const Nothing
    }
  where

    render :: State -> H.ParentHTML RouteQuery ChildQuery ChildSlot m
    render state = HH.div_
      [ HH.h1_ [ HH.text "Hello World!" ]
      , HH.div_ [ HH.slot' CP.cp1 Dashboard.Slot Dashboard.component unit absurd ]
      , HH.div_ [ HH.slot' CP.cp2 Profile.Slot Profile.component unit absurd ]
      ]

    eval :: RouteQuery ~> H.ParentDSL State RouteQuery ChildQuery ChildSlot Void m
    eval (ChangeRoute next) = do
        H.modify \st -> { currentPage: "" }
        pure next
