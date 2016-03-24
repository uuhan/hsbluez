{-# LANGUAGE TupleSections #-}
module Network.Bluetooth where

import           Bluetooth.Raw.Hci
import           Bluetooth.Raw.HciLib

import           Foreign
import           Foreign.C.Types
import           Foreign.C.String

import           Control.Monad

hciInquiry :: CInt -> CLong -> IO (CInt, [Ptr C'inquiry_info])
hciInquiry dev_id cache = go cache
    where 
      go cache = do
          allocaArray 255 $ \res -> do
              r <- c'hci_inquiry dev_id 8 255 nullPtr res cache
              if r < 0 
                  then go cache
                  else (r ,) <$> (peekArray (fromIntegral r) res)
