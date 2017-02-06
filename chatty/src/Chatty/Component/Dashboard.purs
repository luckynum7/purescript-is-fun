module Chatty.Component.Dashboard where

import Prelude

import Data.Maybe (Maybe(..))

import Halogen as H
import Halogen.HTML as HH

data Query a
  = ChangeRoute a

type State = { currentPage :: String }

component :: forall m. H.Component HH.HTML Query Unit Void m
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

    render :: State -> H.ComponentHTML Query
    render state =
      HH.div_ [ HH.p_ [ HH.text "Hello world!" ] ]

    eval :: Query ~> H.ComponentDSL State Query Void m
    eval (ChangeRoute next) = do
        H.modify \st -> { currentPage: "" }
        pure next
