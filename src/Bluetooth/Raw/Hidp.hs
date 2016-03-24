{-# LINE 1 "src/Bluetooth/Raw/Hidp.hsc" #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# LINE 2 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 3 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 4 "src/Bluetooth/Raw/Hidp.hsc" #-}
module Bluetooth.Raw.Hidp where
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

{-# LINE 7 "src/Bluetooth/Raw/Hidp.hsc" #-}

import Bluetooth.Raw.Bluetooth
{- struct hidp_connadd_req {
    int ctrl_sock;
    int intr_sock;
    uint16_t parser;
    uint16_t rd_size;
    uint8_t * rd_data;
    uint8_t country;
    uint8_t subclass;
    uint16_t vendor;
    uint16_t product;
    uint16_t version;
    uint32_t flags;
    uint32_t idle_to;
    char name[128];
}; -}

{-# LINE 25 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 26 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 27 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 28 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 29 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 30 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 31 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 32 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 33 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 34 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 35 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 36 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 37 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 38 "src/Bluetooth/Raw/Hidp.hsc" #-}
data C'hidp_connadd_req = C'hidp_connadd_req{
  c'hidp_connadd_req'ctrl_sock :: CInt,
  c'hidp_connadd_req'intr_sock :: CInt,
  c'hidp_connadd_req'parser :: CUShort,
  c'hidp_connadd_req'rd_size :: CUShort,
  c'hidp_connadd_req'rd_data :: Ptr CUChar,
  c'hidp_connadd_req'country :: CUChar,
  c'hidp_connadd_req'subclass :: CUChar,
  c'hidp_connadd_req'vendor :: CUShort,
  c'hidp_connadd_req'product :: CUShort,
  c'hidp_connadd_req'version :: CUShort,
  c'hidp_connadd_req'flags :: CUInt,
  c'hidp_connadd_req'idle_to :: CUInt,
  c'hidp_connadd_req'name :: [CChar]
} deriving (Eq,Show)
p'hidp_connadd_req'ctrl_sock p = plusPtr p 0
p'hidp_connadd_req'ctrl_sock :: Ptr (C'hidp_connadd_req) -> Ptr (CInt)
p'hidp_connadd_req'intr_sock p = plusPtr p 4
p'hidp_connadd_req'intr_sock :: Ptr (C'hidp_connadd_req) -> Ptr (CInt)
p'hidp_connadd_req'parser p = plusPtr p 8
p'hidp_connadd_req'parser :: Ptr (C'hidp_connadd_req) -> Ptr (CUShort)
p'hidp_connadd_req'rd_size p = plusPtr p 10
p'hidp_connadd_req'rd_size :: Ptr (C'hidp_connadd_req) -> Ptr (CUShort)
p'hidp_connadd_req'rd_data p = plusPtr p 16
p'hidp_connadd_req'rd_data :: Ptr (C'hidp_connadd_req) -> Ptr (Ptr CUChar)
p'hidp_connadd_req'country p = plusPtr p 24
p'hidp_connadd_req'country :: Ptr (C'hidp_connadd_req) -> Ptr (CUChar)
p'hidp_connadd_req'subclass p = plusPtr p 25
p'hidp_connadd_req'subclass :: Ptr (C'hidp_connadd_req) -> Ptr (CUChar)
p'hidp_connadd_req'vendor p = plusPtr p 26
p'hidp_connadd_req'vendor :: Ptr (C'hidp_connadd_req) -> Ptr (CUShort)
p'hidp_connadd_req'product p = plusPtr p 28
p'hidp_connadd_req'product :: Ptr (C'hidp_connadd_req) -> Ptr (CUShort)
p'hidp_connadd_req'version p = plusPtr p 30
p'hidp_connadd_req'version :: Ptr (C'hidp_connadd_req) -> Ptr (CUShort)
p'hidp_connadd_req'flags p = plusPtr p 32
p'hidp_connadd_req'flags :: Ptr (C'hidp_connadd_req) -> Ptr (CUInt)
p'hidp_connadd_req'idle_to p = plusPtr p 36
p'hidp_connadd_req'idle_to :: Ptr (C'hidp_connadd_req) -> Ptr (CUInt)
p'hidp_connadd_req'name p = plusPtr p 40
p'hidp_connadd_req'name :: Ptr (C'hidp_connadd_req) -> Ptr (CChar)
instance Storable C'hidp_connadd_req where
  sizeOf _ = 168
  alignment _ = 8
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 4
    v2 <- peekByteOff p 8
    v3 <- peekByteOff p 10
    v4 <- peekByteOff p 16
    v5 <- peekByteOff p 24
    v6 <- peekByteOff p 25
    v7 <- peekByteOff p 26
    v8 <- peekByteOff p 28
    v9 <- peekByteOff p 30
    v10 <- peekByteOff p 32
    v11 <- peekByteOff p 36
    v12 <- let s = div 128 $ sizeOf $ (undefined :: CChar) in peekArray s (plusPtr p 40)
    return $ C'hidp_connadd_req v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  poke p (C'hidp_connadd_req v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12) = do
    pokeByteOff p 0 v0
    pokeByteOff p 4 v1
    pokeByteOff p 8 v2
    pokeByteOff p 10 v3
    pokeByteOff p 16 v4
    pokeByteOff p 24 v5
    pokeByteOff p 25 v6
    pokeByteOff p 26 v7
    pokeByteOff p 28 v8
    pokeByteOff p 30 v9
    pokeByteOff p 32 v10
    pokeByteOff p 36 v11
    let s = div 128 $ sizeOf $ (undefined :: CChar)
    pokeArray (plusPtr p 40) (take s v12)
    return ()

{-# LINE 39 "src/Bluetooth/Raw/Hidp.hsc" #-}
{- struct hidp_conndel_req {
    bdaddr_t bdaddr; uint32_t flags;
}; -}

{-# LINE 43 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 44 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 45 "src/Bluetooth/Raw/Hidp.hsc" #-}
data C'hidp_conndel_req = C'hidp_conndel_req{
  c'hidp_conndel_req'bdaddr :: C'bdaddr_t,
  c'hidp_conndel_req'flags :: CUInt
} deriving (Eq,Show)
p'hidp_conndel_req'bdaddr p = plusPtr p 0
p'hidp_conndel_req'bdaddr :: Ptr (C'hidp_conndel_req) -> Ptr (C'bdaddr_t)
p'hidp_conndel_req'flags p = plusPtr p 8
p'hidp_conndel_req'flags :: Ptr (C'hidp_conndel_req) -> Ptr (CUInt)
instance Storable C'hidp_conndel_req where
  sizeOf _ = 12
  alignment _ = 4
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 8
    return $ C'hidp_conndel_req v0 v1
  poke p (C'hidp_conndel_req v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 8 v1
    return ()

{-# LINE 46 "src/Bluetooth/Raw/Hidp.hsc" #-}
{- struct hidp_conninfo {
    bdaddr_t bdaddr;
    uint32_t flags;
    uint16_t state;
    uint16_t vendor;
    uint16_t product;
    uint16_t version;
    char name[128];
}; -}

{-# LINE 56 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 57 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 58 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 59 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 60 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 61 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 62 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 63 "src/Bluetooth/Raw/Hidp.hsc" #-}
data C'hidp_conninfo = C'hidp_conninfo{
  c'hidp_conninfo'bdaddr :: C'bdaddr_t,
  c'hidp_conninfo'flags :: CUInt,
  c'hidp_conninfo'state :: CUShort,
  c'hidp_conninfo'vendor :: CUShort,
  c'hidp_conninfo'product :: CUShort,
  c'hidp_conninfo'version :: CUShort,
  c'hidp_conninfo'name :: [CChar]
} deriving (Eq,Show)
p'hidp_conninfo'bdaddr p = plusPtr p 0
p'hidp_conninfo'bdaddr :: Ptr (C'hidp_conninfo) -> Ptr (C'bdaddr_t)
p'hidp_conninfo'flags p = plusPtr p 8
p'hidp_conninfo'flags :: Ptr (C'hidp_conninfo) -> Ptr (CUInt)
p'hidp_conninfo'state p = plusPtr p 12
p'hidp_conninfo'state :: Ptr (C'hidp_conninfo) -> Ptr (CUShort)
p'hidp_conninfo'vendor p = plusPtr p 14
p'hidp_conninfo'vendor :: Ptr (C'hidp_conninfo) -> Ptr (CUShort)
p'hidp_conninfo'product p = plusPtr p 16
p'hidp_conninfo'product :: Ptr (C'hidp_conninfo) -> Ptr (CUShort)
p'hidp_conninfo'version p = plusPtr p 18
p'hidp_conninfo'version :: Ptr (C'hidp_conninfo) -> Ptr (CUShort)
p'hidp_conninfo'name p = plusPtr p 20
p'hidp_conninfo'name :: Ptr (C'hidp_conninfo) -> Ptr (CChar)
instance Storable C'hidp_conninfo where
  sizeOf _ = 148
  alignment _ = 4
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 8
    v2 <- peekByteOff p 12
    v3 <- peekByteOff p 14
    v4 <- peekByteOff p 16
    v5 <- peekByteOff p 18
    v6 <- let s = div 128 $ sizeOf $ (undefined :: CChar) in peekArray s (plusPtr p 20)
    return $ C'hidp_conninfo v0 v1 v2 v3 v4 v5 v6
  poke p (C'hidp_conninfo v0 v1 v2 v3 v4 v5 v6) = do
    pokeByteOff p 0 v0
    pokeByteOff p 8 v1
    pokeByteOff p 12 v2
    pokeByteOff p 14 v3
    pokeByteOff p 16 v4
    pokeByteOff p 18 v5
    let s = div 128 $ sizeOf $ (undefined :: CChar)
    pokeArray (plusPtr p 20) (take s v6)
    return ()

{-# LINE 64 "src/Bluetooth/Raw/Hidp.hsc" #-}
{- struct hidp_connlist_req {
    uint32_t cnum; struct hidp_conninfo * ci;
}; -}

{-# LINE 68 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 69 "src/Bluetooth/Raw/Hidp.hsc" #-}

{-# LINE 70 "src/Bluetooth/Raw/Hidp.hsc" #-}
data C'hidp_connlist_req = C'hidp_connlist_req{
  c'hidp_connlist_req'cnum :: CUInt,
  c'hidp_connlist_req'ci :: Ptr C'hidp_conninfo
} deriving (Eq,Show)
p'hidp_connlist_req'cnum p = plusPtr p 0
p'hidp_connlist_req'cnum :: Ptr (C'hidp_connlist_req) -> Ptr (CUInt)
p'hidp_connlist_req'ci p = plusPtr p 8
p'hidp_connlist_req'ci :: Ptr (C'hidp_connlist_req) -> Ptr (Ptr C'hidp_conninfo)
instance Storable C'hidp_connlist_req where
  sizeOf _ = 16
  alignment _ = 8
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 8
    return $ C'hidp_connlist_req v0 v1
  poke p (C'hidp_connlist_req v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 8 v1
    return ()

{-# LINE 71 "src/Bluetooth/Raw/Hidp.hsc" #-}
