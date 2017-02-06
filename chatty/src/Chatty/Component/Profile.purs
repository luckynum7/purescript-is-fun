module Chatty.Component.Profile where

import Prelude
import Data.Maybe (Maybe(..))
import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.Events as HE

type State = { on :: Boolean }

initialState :: State
initialState = { on: false }

data Query a = ToggleState a

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

    eval :: Query ~> H.ComponentDSL State Query Void m
    eval (ToggleState next) = do
      H.modify (\state -> { on: not state.on })
      pure next
