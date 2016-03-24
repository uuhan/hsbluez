{-# LINE 1 "src/Bluetooth/Raw/Sco.hsc" #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# LINE 2 "src/Bluetooth/Raw/Sco.hsc" #-}

{-# LINE 3 "src/Bluetooth/Raw/Sco.hsc" #-}

{-# LINE 4 "src/Bluetooth/Raw/Sco.hsc" #-}
module Bluetooth.Raw.Sco where
import Foreign.Ptr
import Foreign.Ptr (Ptr,FunPtr,plusPtr)
import Foreign.Ptr (wordPtrToPtr,castPtrToFunPtr)
import Foreign.Storable
import Foreign.C.Types
import Foreign.C.String (CString,CStringLen,CWString,CWStringLen)
import Foreign.Marshal.Alloc (alloca)
import Foreign.Marshal.Array (peekArray,pokeArray)
import Data.Int
import Data.Word

{-# LINE 7 "src/Bluetooth/Raw/Sco.hsc" #-}

import Bluetooth.Raw.Bluetooth
{- struct sockaddr_sco {
    sa_family_t sco_family; bdaddr_t sco_bdaddr;
}; -}

{-# LINE 13 "src/Bluetooth/Raw/Sco.hsc" #-}

{-# LINE 14 "src/Bluetooth/Raw/Sco.hsc" #-}

{-# LINE 15 "src/Bluetooth/Raw/Sco.hsc" #-}
data C'sockaddr_sco = C'sockaddr_sco{
  c'sockaddr_sco'sco_family :: CUShort,
  c'sockaddr_sco'sco_bdaddr :: C'bdaddr_t
} deriving (Eq,Show)
p'sockaddr_sco'sco_family p = plusPtr p 0
p'sockaddr_sco'sco_family :: Ptr (C'sockaddr_sco) -> Ptr (CUShort)
p'sockaddr_sco'sco_bdaddr p = plusPtr p 2
p'sockaddr_sco'sco_bdaddr :: Ptr (C'sockaddr_sco) -> Ptr (C'bdaddr_t)
instance Storable C'sockaddr_sco where
  sizeOf _ = 8
  alignment _ = 2
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'sockaddr_sco v0 v1
  poke p (C'sockaddr_sco v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 16 "src/Bluetooth/Raw/Sco.hsc" #-}
{- struct sco_options {
    uint16_t mtu;
}; -}

{-# LINE 20 "src/Bluetooth/Raw/Sco.hsc" #-}

{-# LINE 21 "src/Bluetooth/Raw/Sco.hsc" #-}
data C'sco_options = C'sco_options{
  c'sco_options'mtu :: CUShort
} deriving (Eq,Show)
p'sco_options'mtu p = plusPtr p 0
p'sco_options'mtu :: Ptr (C'sco_options) -> Ptr (CUShort)
instance Storable C'sco_options where
  sizeOf _ = 2
  alignment _ = 2
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'sco_options v0
  poke p (C'sco_options v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 22 "src/Bluetooth/Raw/Sco.hsc" #-}
{- struct sco_conninfo {
    uint16_t hci_handle; uint8_t dev_class[3];
}; -}

{-# LINE 26 "src/Bluetooth/Raw/Sco.hsc" #-}

{-# LINE 27 "src/Bluetooth/Raw/Sco.hsc" #-}

{-# LINE 28 "src/Bluetooth/Raw/Sco.hsc" #-}
data C'sco_conninfo = C'sco_conninfo{
  c'sco_conninfo'hci_handle :: CUShort,
  c'sco_conninfo'dev_class :: [CUChar]
} deriving (Eq,Show)
p'sco_conninfo'hci_handle p = plusPtr p 0
p'sco_conninfo'hci_handle :: Ptr (C'sco_conninfo) -> Ptr (CUShort)
p'sco_conninfo'dev_class p = plusPtr p 2
p'sco_conninfo'dev_class :: Ptr (C'sco_conninfo) -> Ptr (CUChar)
instance Storable C'sco_conninfo where
  sizeOf _ = 6
  alignment _ = 2
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 3 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 2)
    return $ C'sco_conninfo v0 v1
  poke p (C'sco_conninfo v0 v1) = do
    pokeByteOff p 0 v0
    let s = div 3 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 2) (take s v1)
    return ()

{-# LINE 29 "src/Bluetooth/Raw/Sco.hsc" #-}
