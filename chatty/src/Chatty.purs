module Chatty (chatty) where

import Prelude

-- import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Unsafe (unsafePerformEff)

import Chatty.App (app)

chatty :: Unit
chatty = unsafePerformEff $ do
  app
--   hot

-- foreign import hot :: forall eff. Eff eff Unit
