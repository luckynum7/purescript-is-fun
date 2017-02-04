module Chatty.App (app) where

import Prelude

import Control.Monad.Eff (Eff)

import Halogen.Aff as HA
import Halogen.VDom.Driver (runUI)

import Chatty.Router as Router

app :: Eff (HA.HalogenEffects ()) Unit
app = HA.runHalogenAff do
  body <- HA.awaitBody
  runUI Router.component unit body
