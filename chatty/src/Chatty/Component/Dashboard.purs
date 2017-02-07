module Chatty.Component.Dashboard where

import Prelude

import Data.Maybe (Maybe(..))

import Halogen as H
import Halogen.HTML as HH

type State = { currentPage :: String }

initialState :: State
initialState = { currentPage: "" }

data Query a
  = NoOp a

data Slot = Slot
derive instance eqSlot :: Eq Slot
derive instance ordSlot :: Ord Slot

component :: forall m. H.Component HH.HTML Query Unit Void m
component =
  H.component
    { initialState: const initialState
    , render
    , eval
    , receiver: const Nothing
    }
  where

    render :: State -> H.ComponentHTML Query
    render state =
      HH.div_ [ HH.h2_ [ HH.text "Dashboard" ] ]

    eval :: Query ~> H.ComponentDSL State Query Void m
    eval (NoOp next) = do
        H.modify \st -> { currentPage: "" }
        pure next
