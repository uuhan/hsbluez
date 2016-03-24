module Main (
    main
) where

import           Foreign
import           Foreign.Ptr
import           Foreign.C.Types
import           Foreign.C.String
import           Foreign.C.Error

import           Bluetooth.Raw.HciLib
import           Bluetooth.Raw.Hci
import           Bluetooth.Raw.Bluetooth

import           Control.Concurrent
import           Control.Monad

import           Bluetooth

catchIt io = do
    throwErrnoIfMinus1 "异常" io

main :: IO ()
main = do
    dev <- catchIt $ c'hci_get_route nullPtr
    (num, dongle) <- hciInquiry dev 1
    go dev dongle
  where
    go did [] = putStrLn "Finished"
    go did (x:xs) = do
        alloca $ \addr -> do
            c'ba2str (p'inquiry_info'bdaddr x) addr
            peekCAString addr >>= putStrLn
            
            sock <- c'hci_open_dev did
            allocaArray0 255 $ \name -> do
                catchIt $ c'hci_read_remote_name sock (p'inquiry_info'bdaddr x) 255 name 0 
                peekCAString name >>= putStrLn
        go did xs

foreign import ccall "get_addr" 
    getAddr :: Ptr C'inquiry_info -> IO CString
