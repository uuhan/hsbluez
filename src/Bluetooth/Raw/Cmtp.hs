{-# LINE 1 "src/Bluetooth/Raw/Cmtp.hsc" #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# LINE 2 "src/Bluetooth/Raw/Cmtp.hsc" #-}

{-# LINE 3 "src/Bluetooth/Raw/Cmtp.hsc" #-}

{-# LINE 4 "src/Bluetooth/Raw/Cmtp.hsc" #-}
module Bluetooth.Raw.Cmtp where
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

{-# LINE 7 "src/Bluetooth/Raw/Cmtp.hsc" #-}

import Bluetooth.Raw.Bluetooth
{- struct cmtp_connadd_req {
    int sock; uint32_t flags;
}; -}

{-# LINE 13 "src/Bluetooth/Raw/Cmtp.hsc" #-}

{-# LINE 14 "src/Bluetooth/Raw/Cmtp.hsc" #-}

{-# LINE 15 "src/Bluetooth/Raw/Cmtp.hsc" #-}
data C'cmtp_connadd_req = C'cmtp_connadd_req{
  c'cmtp_connadd_req'sock :: CInt,
  c'cmtp_connadd_req'flags :: CUInt
} deriving (Eq,Show)
p'cmtp_connadd_req'sock p = plusPtr p 0
p'cmtp_connadd_req'sock :: Ptr (C'cmtp_connadd_req) -> Ptr (CInt)
p'cmtp_connadd_req'flags p = plusPtr p 4
p'cmtp_connadd_req'flags :: Ptr (C'cmtp_connadd_req) -> Ptr (CUInt)
instance Storable C'cmtp_connadd_req where
  sizeOf _ = 8
  alignment _ = 4
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 4
    return $ C'cmtp_connadd_req v0 v1
  poke p (C'cmtp_connadd_req v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 4 v1
    return ()

{-# LINE 16 "src/Bluetooth/Raw/Cmtp.hsc" #-}
{- struct cmtp_conndel_req {
    bdaddr_t bdaddr; uint32_t flags;
}; -}

{-# LINE 20 "src/Bluetooth/Raw/Cmtp.hsc" #-}

{-# LINE 21 "src/Bluetooth/Raw/Cmtp.hsc" #-}

{-# LINE 22 "src/Bluetooth/Raw/Cmtp.hsc" #-}
data C'cmtp_conndel_req = C'cmtp_conndel_req{
  c'cmtp_conndel_req'bdaddr :: C'bdaddr_t,
  c'cmtp_conndel_req'flags :: CUInt
} deriving (Eq,Show)
p'cmtp_conndel_req'bdaddr p = plusPtr p 0
p'cmtp_conndel_req'bdaddr :: Ptr (C'cmtp_conndel_req) -> Ptr (C'bdaddr_t)
p'cmtp_conndel_req'flags p = plusPtr p 8
p'cmtp_conndel_req'flags :: Ptr (C'cmtp_conndel_req) -> Ptr (CUInt)
instance Storable C'cmtp_conndel_req where
  sizeOf _ = 12
  alignment _ = 4
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 8
    return $ C'cmtp_conndel_req v0 v1
  poke p (C'cmtp_conndel_req v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 8 v1
    return ()

{-# LINE 23 "src/Bluetooth/Raw/Cmtp.hsc" #-}
{- struct cmtp_conninfo {
    bdaddr_t bdaddr; uint32_t flags; uint16_t state; int num;
}; -}

{-# LINE 27 "src/Bluetooth/Raw/Cmtp.hsc" #-}

{-# LINE 28 "src/Bluetooth/Raw/Cmtp.hsc" #-}

{-# LINE 29 "src/Bluetooth/Raw/Cmtp.hsc" #-}

{-# LINE 30 "src/Bluetooth/Raw/Cmtp.hsc" #-}

{-# LINE 31 "src/Bluetooth/Raw/Cmtp.hsc" #-}
data C'cmtp_conninfo = C'cmtp_conninfo{
  c'cmtp_conninfo'bdaddr :: C'bdaddr_t,
  c'cmtp_conninfo'flags :: CUInt,
  c'cmtp_conninfo'state :: CUShort,
  c'cmtp_conninfo'num :: CInt
} deriving (Eq,Show)
p'cmtp_conninfo'bdaddr p = plusPtr p 0
p'cmtp_conninfo'bdaddr :: Ptr (C'cmtp_conninfo) -> Ptr (C'bdaddr_t)
p'cmtp_conninfo'flags p = plusPtr p 8
p'cmtp_conninfo'flags :: Ptr (C'cmtp_conninfo) -> Ptr (CUInt)
p'cmtp_conninfo'state p = plusPtr p 12
p'cmtp_conninfo'state :: Ptr (C'cmtp_conninfo) -> Ptr (CUShort)
p'cmtp_conninfo'num p = plusPtr p 16
p'cmtp_conninfo'num :: Ptr (C'cmtp_conninfo) -> Ptr (CInt)
instance Storable C'cmtp_conninfo where
  sizeOf _ = 20
  alignment _ = 4
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 8
    v2 <- peekByteOff p 12
    v3 <- peekByteOff p 16
    return $ C'cmtp_conninfo v0 v1 v2 v3
  poke p (C'cmtp_conninfo v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 8 v1
    pokeByteOff p 12 v2
    pokeByteOff p 16 v3
    return ()

{-# LINE 32 "src/Bluetooth/Raw/Cmtp.hsc" #-}
{- struct cmtp_connlist_req {
    uint32_t cnum; struct cmtp_conninfo * ci;
}; -}

{-# LINE 36 "src/Bluetooth/Raw/Cmtp.hsc" #-}

{-# LINE 37 "src/Bluetooth/Raw/Cmtp.hsc" #-}

{-# LINE 38 "src/Bluetooth/Raw/Cmtp.hsc" #-}
data C'cmtp_connlist_req = C'cmtp_connlist_req{
  c'cmtp_connlist_req'cnum :: CUInt,
  c'cmtp_connlist_req'ci :: Ptr C'cmtp_conninfo
} deriving (Eq,Show)
p'cmtp_connlist_req'cnum p = plusPtr p 0
p'cmtp_connlist_req'cnum :: Ptr (C'cmtp_connlist_req) -> Ptr (CUInt)
p'cmtp_connlist_req'ci p = plusPtr p 8
p'cmtp_connlist_req'ci :: Ptr (C'cmtp_connlist_req) -> Ptr (Ptr C'cmtp_conninfo)
instance Storable C'cmtp_connlist_req where
  sizeOf _ = 16
  alignment _ = 8
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 8
    return $ C'cmtp_connlist_req v0 v1
  poke p (C'cmtp_connlist_req v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 8 v1
    return ()

{-# LINE 39 "src/Bluetooth/Raw/Cmtp.hsc" #-}
