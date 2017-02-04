module Chatty (chatty) where

import Prelude

import Control.Monad.Eff.Unsafe (unsafePerformEff)

import Chatty.App (app)

chatty :: Unit
chatty = unsafePerformEff $ do
  app
