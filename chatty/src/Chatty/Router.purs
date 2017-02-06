module Chatty.Router where

import Prelude
import Chatty.Component.Dashboard as Dashboard
import Chatty.Component.Profile as Profile
import Halogen as H
import Halogen.HTML as HH
import Data.Either (Either)
import Data.Functor.Coproduct (Coproduct)
import Data.Maybe (Maybe(..))

-- data Locations
--   = Dashboard -- "Home"
--   | Chat
--   | Profile

-- oneSlash :: Match Unit
-- oneSlash = lit "/"

-- homeSlash :: Match Unit
-- homeSlash = lit ""

-- route :: String -> Match Unit
-- route str = homeSlash *> lit str

-- dashboard :: Match Locations
-- dashboard = Dashboard <$ oneSlash

-- chat :: Match Locations
-- chat = Chat <$ route "chat"

-- profile :: Match Locations
-- profile = Profile <$ route "profile"

-- routing :: Match Locations
-- routing  =
--   chat <|>
--   profile <|>
--   dashboard


type State = { currentPage :: String }

initialState :: State
initialState = { currentPage: "" }

data RouteQuery a
  = ChangeRoute a

type ChildQuery = Coproduct Dashboard.Query Profile.Query
type ChildSlot = Either Dashboard.Slot Profile.Slot

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
    render state =
      HH.div_ [ HH.p_ [ HH.text "Hello world!" ] ]

    eval :: RouteQuery ~> H.ParentDSL State RouteQuery ChildQuery ChildSlot Void m
    eval (ChangeRoute next) = do
        H.modify \st -> { currentPage: "" }
        pure next
