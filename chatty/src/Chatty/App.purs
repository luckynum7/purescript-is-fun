module Chatty.App (app) where

import Prelude

import Control.Monad.Eff (Eff)
import Data.Maybe (Maybe(..))

import Halogen as H
import Halogen.Aff as HA
import Halogen.HTML as HH
import Halogen.HTML.Events as HE
import Halogen.VDom.Driver (runUI)

-- import Chatty.Router as Router

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

app :: Eff (HA.HalogenEffects ()) Unit
app = HA.runHalogenAff do
  body <- HA.awaitBody
  runUI component unit body
  -- runUI Router.component unit body
