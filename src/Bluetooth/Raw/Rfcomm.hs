{-# LINE 1 "src/Bluetooth/Raw/Rfcomm.hsc" #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# LINE 2 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

{-# LINE 3 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

{-# LINE 4 "src/Bluetooth/Raw/Rfcomm.hsc" #-}
module Bluetooth.Raw.Rfcomm where
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

{-# LINE 7 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

import Bluetooth.Raw.Bluetooth
{- struct sockaddr_rc {
    sa_family_t rc_family; bdaddr_t rc_bdaddr; uint8_t rc_channel;
}; -}

{-# LINE 13 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

{-# LINE 14 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

{-# LINE 15 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

{-# LINE 16 "src/Bluetooth/Raw/Rfcomm.hsc" #-}
data C'sockaddr_rc = C'sockaddr_rc{
  c'sockaddr_rc'rc_family :: CUShort,
  c'sockaddr_rc'rc_bdaddr :: C'bdaddr_t,
  c'sockaddr_rc'rc_channel :: CUChar
} deriving (Eq,Show)
p'sockaddr_rc'rc_family p = plusPtr p 0
p'sockaddr_rc'rc_family :: Ptr (C'sockaddr_rc) -> Ptr (CUShort)
p'sockaddr_rc'rc_bdaddr p = plusPtr p 2
p'sockaddr_rc'rc_bdaddr :: Ptr (C'sockaddr_rc) -> Ptr (C'bdaddr_t)
p'sockaddr_rc'rc_channel p = plusPtr p 8
p'sockaddr_rc'rc_channel :: Ptr (C'sockaddr_rc) -> Ptr (CUChar)
instance Storable C'sockaddr_rc where
  sizeOf _ = 10
  alignment _ = 2
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 8
    return $ C'sockaddr_rc v0 v1 v2
  poke p (C'sockaddr_rc v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 8 v2
    return ()

{-# LINE 17 "src/Bluetooth/Raw/Rfcomm.hsc" #-}
{- struct rfcomm_conninfo {
    uint16_t hci_handle; uint8_t dev_class[3];
}; -}

{-# LINE 21 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

{-# LINE 22 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

{-# LINE 23 "src/Bluetooth/Raw/Rfcomm.hsc" #-}
data C'rfcomm_conninfo = C'rfcomm_conninfo{
  c'rfcomm_conninfo'hci_handle :: CUShort,
  c'rfcomm_conninfo'dev_class :: [CUChar]
} deriving (Eq,Show)
p'rfcomm_conninfo'hci_handle p = plusPtr p 0
p'rfcomm_conninfo'hci_handle :: Ptr (C'rfcomm_conninfo) -> Ptr (CUShort)
p'rfcomm_conninfo'dev_class p = plusPtr p 2
p'rfcomm_conninfo'dev_class :: Ptr (C'rfcomm_conninfo) -> Ptr (CUChar)
instance Storable C'rfcomm_conninfo where
  sizeOf _ = 6
  alignment _ = 2
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 3 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 2)
    return $ C'rfcomm_conninfo v0 v1
  poke p (C'rfcomm_conninfo v0 v1) = do
    pokeByteOff p 0 v0
    let s = div 3 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 2) (take s v1)
    return ()

{-# LINE 24 "src/Bluetooth/Raw/Rfcomm.hsc" #-}
{- struct rfcomm_dev_req {
    int16_t dev_id;
    uint32_t flags;
    bdaddr_t src;
    bdaddr_t dst;
    uint8_t channel;
}; -}

{-# LINE 32 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

{-# LINE 33 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

{-# LINE 34 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

{-# LINE 35 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

{-# LINE 36 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

{-# LINE 37 "src/Bluetooth/Raw/Rfcomm.hsc" #-}
data C'rfcomm_dev_req = C'rfcomm_dev_req{
  c'rfcomm_dev_req'dev_id :: CShort,
  c'rfcomm_dev_req'flags :: CUInt,
  c'rfcomm_dev_req'src :: C'bdaddr_t,
  c'rfcomm_dev_req'dst :: C'bdaddr_t,
  c'rfcomm_dev_req'channel :: CUChar
} deriving (Eq,Show)
p'rfcomm_dev_req'dev_id p = plusPtr p 0
p'rfcomm_dev_req'dev_id :: Ptr (C'rfcomm_dev_req) -> Ptr (CShort)
p'rfcomm_dev_req'flags p = plusPtr p 4
p'rfcomm_dev_req'flags :: Ptr (C'rfcomm_dev_req) -> Ptr (CUInt)
p'rfcomm_dev_req'src p = plusPtr p 8
p'rfcomm_dev_req'src :: Ptr (C'rfcomm_dev_req) -> Ptr (C'bdaddr_t)
p'rfcomm_dev_req'dst p = plusPtr p 14
p'rfcomm_dev_req'dst :: Ptr (C'rfcomm_dev_req) -> Ptr (C'bdaddr_t)
p'rfcomm_dev_req'channel p = plusPtr p 20
p'rfcomm_dev_req'channel :: Ptr (C'rfcomm_dev_req) -> Ptr (CUChar)
instance Storable C'rfcomm_dev_req where
  sizeOf _ = 24
  alignment _ = 4
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 4
    v2 <- peekByteOff p 8
    v3 <- peekByteOff p 14
    v4 <- peekByteOff p 20
    return $ C'rfcomm_dev_req v0 v1 v2 v3 v4
  poke p (C'rfcomm_dev_req v0 v1 v2 v3 v4) = do
    pokeByteOff p 0 v0
    pokeByteOff p 4 v1
    pokeByteOff p 8 v2
    pokeByteOff p 14 v3
    pokeByteOff p 20 v4
    return ()

{-# LINE 38 "src/Bluetooth/Raw/Rfcomm.hsc" #-}
{- struct rfcomm_dev_info {
    int16_t id;
    uint32_t flags;
    uint16_t state;
    bdaddr_t src;
    bdaddr_t dst;
    uint8_t channel;
}; -}

{-# LINE 47 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

{-# LINE 48 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

{-# LINE 49 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

{-# LINE 50 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

{-# LINE 51 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

{-# LINE 52 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

{-# LINE 53 "src/Bluetooth/Raw/Rfcomm.hsc" #-}
data C'rfcomm_dev_info = C'rfcomm_dev_info{
  c'rfcomm_dev_info'id :: CShort,
  c'rfcomm_dev_info'flags :: CUInt,
  c'rfcomm_dev_info'state :: CUShort,
  c'rfcomm_dev_info'src :: C'bdaddr_t,
  c'rfcomm_dev_info'dst :: C'bdaddr_t,
  c'rfcomm_dev_info'channel :: CUChar
} deriving (Eq,Show)
p'rfcomm_dev_info'id p = plusPtr p 0
p'rfcomm_dev_info'id :: Ptr (C'rfcomm_dev_info) -> Ptr (CShort)
p'rfcomm_dev_info'flags p = plusPtr p 4
p'rfcomm_dev_info'flags :: Ptr (C'rfcomm_dev_info) -> Ptr (CUInt)
p'rfcomm_dev_info'state p = plusPtr p 8
p'rfcomm_dev_info'state :: Ptr (C'rfcomm_dev_info) -> Ptr (CUShort)
p'rfcomm_dev_info'src p = plusPtr p 10
p'rfcomm_dev_info'src :: Ptr (C'rfcomm_dev_info) -> Ptr (C'bdaddr_t)
p'rfcomm_dev_info'dst p = plusPtr p 16
p'rfcomm_dev_info'dst :: Ptr (C'rfcomm_dev_info) -> Ptr (C'bdaddr_t)
p'rfcomm_dev_info'channel p = plusPtr p 22
p'rfcomm_dev_info'channel :: Ptr (C'rfcomm_dev_info) -> Ptr (CUChar)
instance Storable C'rfcomm_dev_info where
  sizeOf _ = 24
  alignment _ = 4
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 4
    v2 <- peekByteOff p 8
    v3 <- peekByteOff p 10
    v4 <- peekByteOff p 16
    v5 <- peekByteOff p 22
    return $ C'rfcomm_dev_info v0 v1 v2 v3 v4 v5
  poke p (C'rfcomm_dev_info v0 v1 v2 v3 v4 v5) = do
    pokeByteOff p 0 v0
    pokeByteOff p 4 v1
    pokeByteOff p 8 v2
    pokeByteOff p 10 v3
    pokeByteOff p 16 v4
    pokeByteOff p 22 v5
    return ()

{-# LINE 54 "src/Bluetooth/Raw/Rfcomm.hsc" #-}
{- struct rfcomm_dev_list_req {
    uint16_t dev_num; struct rfcomm_dev_info dev_info[0];
}; -}

{-# LINE 58 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

{-# LINE 59 "src/Bluetooth/Raw/Rfcomm.hsc" #-}

{-# LINE 60 "src/Bluetooth/Raw/Rfcomm.hsc" #-}
data C'rfcomm_dev_list_req = C'rfcomm_dev_list_req{
  c'rfcomm_dev_list_req'dev_num :: CUShort,
  c'rfcomm_dev_list_req'dev_info :: C'rfcomm_dev_info
} deriving (Eq,Show)
p'rfcomm_dev_list_req'dev_num p = plusPtr p 0
p'rfcomm_dev_list_req'dev_num :: Ptr (C'rfcomm_dev_list_req) -> Ptr (CUShort)
p'rfcomm_dev_list_req'dev_info p = plusPtr p 4
p'rfcomm_dev_list_req'dev_info :: Ptr (C'rfcomm_dev_list_req) -> Ptr (C'rfcomm_dev_info)
instance Storable C'rfcomm_dev_list_req where
  sizeOf _ = 4
  alignment _ = 4
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 4
    return $ C'rfcomm_dev_list_req v0 v1
  poke p (C'rfcomm_dev_list_req v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 4 v1
    return ()

{-# LINE 61 "src/Bluetooth/Raw/Rfcomm.hsc" #-}
