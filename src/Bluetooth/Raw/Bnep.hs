{-# LINE 1 "src/Bluetooth/Raw/Bnep.hsc" #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# LINE 2 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 3 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 4 "src/Bluetooth/Raw/Bnep.hsc" #-}
module Bluetooth.Raw.Bnep where
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

{-# LINE 7 "src/Bluetooth/Raw/Bnep.hsc" #-}

{- struct __attribute__((packed)) bnep_setup_conn_req {
    uint8_t type; uint8_t ctrl; uint8_t uuid_size; uint8_t service[0];
}; -}

{-# LINE 12 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 13 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 14 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 15 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 16 "src/Bluetooth/Raw/Bnep.hsc" #-}
data C'bnep_setup_conn_req = C'bnep_setup_conn_req{
  c'bnep_setup_conn_req'type :: CUChar,
  c'bnep_setup_conn_req'ctrl :: CUChar,
  c'bnep_setup_conn_req'uuid_size :: CUChar,
  c'bnep_setup_conn_req'service :: CUChar
} deriving (Eq,Show)
p'bnep_setup_conn_req'type p = plusPtr p 0
p'bnep_setup_conn_req'type :: Ptr (C'bnep_setup_conn_req) -> Ptr (CUChar)
p'bnep_setup_conn_req'ctrl p = plusPtr p 1
p'bnep_setup_conn_req'ctrl :: Ptr (C'bnep_setup_conn_req) -> Ptr (CUChar)
p'bnep_setup_conn_req'uuid_size p = plusPtr p 2
p'bnep_setup_conn_req'uuid_size :: Ptr (C'bnep_setup_conn_req) -> Ptr (CUChar)
p'bnep_setup_conn_req'service p = plusPtr p 3
p'bnep_setup_conn_req'service :: Ptr (C'bnep_setup_conn_req) -> Ptr (CUChar)
instance Storable C'bnep_setup_conn_req where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 2
    v3 <- peekByteOff p 3
    return $ C'bnep_setup_conn_req v0 v1 v2 v3
  poke p (C'bnep_setup_conn_req v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 2 v2
    pokeByteOff p 3 v3
    return ()

{-# LINE 17 "src/Bluetooth/Raw/Bnep.hsc" #-}
{- struct __attribute__((packed)) bnep_set_filter_req {
    uint8_t type; uint8_t ctrl; uint16_t len; uint8_t list[0];
}; -}

{-# LINE 21 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 22 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 23 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 24 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 25 "src/Bluetooth/Raw/Bnep.hsc" #-}
data C'bnep_set_filter_req = C'bnep_set_filter_req{
  c'bnep_set_filter_req'type :: CUChar,
  c'bnep_set_filter_req'ctrl :: CUChar,
  c'bnep_set_filter_req'len :: CUShort,
  c'bnep_set_filter_req'list :: CUChar
} deriving (Eq,Show)
p'bnep_set_filter_req'type p = plusPtr p 0
p'bnep_set_filter_req'type :: Ptr (C'bnep_set_filter_req) -> Ptr (CUChar)
p'bnep_set_filter_req'ctrl p = plusPtr p 1
p'bnep_set_filter_req'ctrl :: Ptr (C'bnep_set_filter_req) -> Ptr (CUChar)
p'bnep_set_filter_req'len p = plusPtr p 2
p'bnep_set_filter_req'len :: Ptr (C'bnep_set_filter_req) -> Ptr (CUShort)
p'bnep_set_filter_req'list p = plusPtr p 4
p'bnep_set_filter_req'list :: Ptr (C'bnep_set_filter_req) -> Ptr (CUChar)
instance Storable C'bnep_set_filter_req where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 2
    v3 <- peekByteOff p 4
    return $ C'bnep_set_filter_req v0 v1 v2 v3
  poke p (C'bnep_set_filter_req v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 2 v2
    pokeByteOff p 4 v3
    return ()

{-# LINE 26 "src/Bluetooth/Raw/Bnep.hsc" #-}
{- struct __attribute__((packed)) bnep_ctrl_cmd_not_understood_cmd {
    uint8_t type; uint8_t ctrl; uint8_t unkn_ctrl;
}; -}

{-# LINE 30 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 31 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 32 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 33 "src/Bluetooth/Raw/Bnep.hsc" #-}
data C'bnep_ctrl_cmd_not_understood_cmd = C'bnep_ctrl_cmd_not_understood_cmd{
  c'bnep_ctrl_cmd_not_understood_cmd'type :: CUChar,
  c'bnep_ctrl_cmd_not_understood_cmd'ctrl :: CUChar,
  c'bnep_ctrl_cmd_not_understood_cmd'unkn_ctrl :: CUChar
} deriving (Eq,Show)
p'bnep_ctrl_cmd_not_understood_cmd'type p = plusPtr p 0
p'bnep_ctrl_cmd_not_understood_cmd'type :: Ptr (C'bnep_ctrl_cmd_not_understood_cmd) -> Ptr (CUChar)
p'bnep_ctrl_cmd_not_understood_cmd'ctrl p = plusPtr p 1
p'bnep_ctrl_cmd_not_understood_cmd'ctrl :: Ptr (C'bnep_ctrl_cmd_not_understood_cmd) -> Ptr (CUChar)
p'bnep_ctrl_cmd_not_understood_cmd'unkn_ctrl p = plusPtr p 2
p'bnep_ctrl_cmd_not_understood_cmd'unkn_ctrl :: Ptr (C'bnep_ctrl_cmd_not_understood_cmd) -> Ptr (CUChar)
instance Storable C'bnep_ctrl_cmd_not_understood_cmd where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 2
    return $ C'bnep_ctrl_cmd_not_understood_cmd v0 v1 v2
  poke p (C'bnep_ctrl_cmd_not_understood_cmd v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 2 v2
    return ()

{-# LINE 34 "src/Bluetooth/Raw/Bnep.hsc" #-}
{- struct __attribute__((packed)) bnep_control_rsp {
    uint8_t type; uint8_t ctrl; uint16_t resp;
}; -}

{-# LINE 38 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 39 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 40 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 41 "src/Bluetooth/Raw/Bnep.hsc" #-}
data C'bnep_control_rsp = C'bnep_control_rsp{
  c'bnep_control_rsp'type :: CUChar,
  c'bnep_control_rsp'ctrl :: CUChar,
  c'bnep_control_rsp'resp :: CUShort
} deriving (Eq,Show)
p'bnep_control_rsp'type p = plusPtr p 0
p'bnep_control_rsp'type :: Ptr (C'bnep_control_rsp) -> Ptr (CUChar)
p'bnep_control_rsp'ctrl p = plusPtr p 1
p'bnep_control_rsp'ctrl :: Ptr (C'bnep_control_rsp) -> Ptr (CUChar)
p'bnep_control_rsp'resp p = plusPtr p 2
p'bnep_control_rsp'resp :: Ptr (C'bnep_control_rsp) -> Ptr (CUShort)
instance Storable C'bnep_control_rsp where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 2
    return $ C'bnep_control_rsp v0 v1 v2
  poke p (C'bnep_control_rsp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 2 v2
    return ()

{-# LINE 42 "src/Bluetooth/Raw/Bnep.hsc" #-}
{- struct __attribute__((packed)) bnep_ext_hdr {
    uint8_t type; uint8_t len; uint8_t data[0];
}; -}

{-# LINE 46 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 47 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 48 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 49 "src/Bluetooth/Raw/Bnep.hsc" #-}
data C'bnep_ext_hdr = C'bnep_ext_hdr{
  c'bnep_ext_hdr'type :: CUChar,
  c'bnep_ext_hdr'len :: CUChar,
  c'bnep_ext_hdr'data :: CUChar
} deriving (Eq,Show)
p'bnep_ext_hdr'type p = plusPtr p 0
p'bnep_ext_hdr'type :: Ptr (C'bnep_ext_hdr) -> Ptr (CUChar)
p'bnep_ext_hdr'len p = plusPtr p 1
p'bnep_ext_hdr'len :: Ptr (C'bnep_ext_hdr) -> Ptr (CUChar)
p'bnep_ext_hdr'data p = plusPtr p 2
p'bnep_ext_hdr'data :: Ptr (C'bnep_ext_hdr) -> Ptr (CUChar)
instance Storable C'bnep_ext_hdr where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 2
    return $ C'bnep_ext_hdr v0 v1 v2
  poke p (C'bnep_ext_hdr v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 2 v2
    return ()

{-# LINE 50 "src/Bluetooth/Raw/Bnep.hsc" #-}
{- struct bnep_connadd_req {
    int sock; uint32_t flags; uint16_t role; char device[16];
}; -}

{-# LINE 54 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 55 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 56 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 57 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 58 "src/Bluetooth/Raw/Bnep.hsc" #-}
data C'bnep_connadd_req = C'bnep_connadd_req{
  c'bnep_connadd_req'sock :: CInt,
  c'bnep_connadd_req'flags :: CUInt,
  c'bnep_connadd_req'role :: CUShort,
  c'bnep_connadd_req'device :: [CChar]
} deriving (Eq,Show)
p'bnep_connadd_req'sock p = plusPtr p 0
p'bnep_connadd_req'sock :: Ptr (C'bnep_connadd_req) -> Ptr (CInt)
p'bnep_connadd_req'flags p = plusPtr p 4
p'bnep_connadd_req'flags :: Ptr (C'bnep_connadd_req) -> Ptr (CUInt)
p'bnep_connadd_req'role p = plusPtr p 8
p'bnep_connadd_req'role :: Ptr (C'bnep_connadd_req) -> Ptr (CUShort)
p'bnep_connadd_req'device p = plusPtr p 10
p'bnep_connadd_req'device :: Ptr (C'bnep_connadd_req) -> Ptr (CChar)
instance Storable C'bnep_connadd_req where
  sizeOf _ = 28
  alignment _ = 4
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 4
    v2 <- peekByteOff p 8
    v3 <- let s = div 16 $ sizeOf $ (undefined :: CChar) in peekArray s (plusPtr p 10)
    return $ C'bnep_connadd_req v0 v1 v2 v3
  poke p (C'bnep_connadd_req v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 4 v1
    pokeByteOff p 8 v2
    let s = div 16 $ sizeOf $ (undefined :: CChar)
    pokeArray (plusPtr p 10) (take s v3)
    return ()

{-# LINE 59 "src/Bluetooth/Raw/Bnep.hsc" #-}
{- struct bnep_conndel_req {
    uint32_t flags; uint8_t dst[6];
}; -}

{-# LINE 63 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 64 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 65 "src/Bluetooth/Raw/Bnep.hsc" #-}
data C'bnep_conndel_req = C'bnep_conndel_req{
  c'bnep_conndel_req'flags :: CUInt,
  c'bnep_conndel_req'dst :: [CUChar]
} deriving (Eq,Show)
p'bnep_conndel_req'flags p = plusPtr p 0
p'bnep_conndel_req'flags :: Ptr (C'bnep_conndel_req) -> Ptr (CUInt)
p'bnep_conndel_req'dst p = plusPtr p 4
p'bnep_conndel_req'dst :: Ptr (C'bnep_conndel_req) -> Ptr (CUChar)
instance Storable C'bnep_conndel_req where
  sizeOf _ = 12
  alignment _ = 4
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 6 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 4)
    return $ C'bnep_conndel_req v0 v1
  poke p (C'bnep_conndel_req v0 v1) = do
    pokeByteOff p 0 v0
    let s = div 6 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 4) (take s v1)
    return ()

{-# LINE 66 "src/Bluetooth/Raw/Bnep.hsc" #-}
{- struct bnep_conninfo {
    uint32_t flags;
    uint16_t role;
    uint16_t state;
    uint8_t dst[6];
    char device[16];
}; -}

{-# LINE 74 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 75 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 76 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 77 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 78 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 79 "src/Bluetooth/Raw/Bnep.hsc" #-}
data C'bnep_conninfo = C'bnep_conninfo{
  c'bnep_conninfo'flags :: CUInt,
  c'bnep_conninfo'role :: CUShort,
  c'bnep_conninfo'state :: CUShort,
  c'bnep_conninfo'dst :: [CUChar],
  c'bnep_conninfo'device :: [CChar]
} deriving (Eq,Show)
p'bnep_conninfo'flags p = plusPtr p 0
p'bnep_conninfo'flags :: Ptr (C'bnep_conninfo) -> Ptr (CUInt)
p'bnep_conninfo'role p = plusPtr p 4
p'bnep_conninfo'role :: Ptr (C'bnep_conninfo) -> Ptr (CUShort)
p'bnep_conninfo'state p = plusPtr p 6
p'bnep_conninfo'state :: Ptr (C'bnep_conninfo) -> Ptr (CUShort)
p'bnep_conninfo'dst p = plusPtr p 8
p'bnep_conninfo'dst :: Ptr (C'bnep_conninfo) -> Ptr (CUChar)
p'bnep_conninfo'device p = plusPtr p 14
p'bnep_conninfo'device :: Ptr (C'bnep_conninfo) -> Ptr (CChar)
instance Storable C'bnep_conninfo where
  sizeOf _ = 32
  alignment _ = 4
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 4
    v2 <- peekByteOff p 6
    v3 <- let s = div 6 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 8)
    v4 <- let s = div 16 $ sizeOf $ (undefined :: CChar) in peekArray s (plusPtr p 14)
    return $ C'bnep_conninfo v0 v1 v2 v3 v4
  poke p (C'bnep_conninfo v0 v1 v2 v3 v4) = do
    pokeByteOff p 0 v0
    pokeByteOff p 4 v1
    pokeByteOff p 6 v2
    let s = div 6 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 8) (take s v3)
    let s = div 16 $ sizeOf $ (undefined :: CChar)
    pokeArray (plusPtr p 14) (take s v4)
    return ()

{-# LINE 80 "src/Bluetooth/Raw/Bnep.hsc" #-}
{- struct bnep_connlist_req {
    uint32_t cnum; struct bnep_conninfo * ci;
}; -}

{-# LINE 84 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 85 "src/Bluetooth/Raw/Bnep.hsc" #-}

{-# LINE 86 "src/Bluetooth/Raw/Bnep.hsc" #-}
data C'bnep_connlist_req = C'bnep_connlist_req{
  c'bnep_connlist_req'cnum :: CUInt,
  c'bnep_connlist_req'ci :: Ptr C'bnep_conninfo
} deriving (Eq,Show)
p'bnep_connlist_req'cnum p = plusPtr p 0
p'bnep_connlist_req'cnum :: Ptr (C'bnep_connlist_req) -> Ptr (CUInt)
p'bnep_connlist_req'ci p = plusPtr p 8
p'bnep_connlist_req'ci :: Ptr (C'bnep_connlist_req) -> Ptr (Ptr C'bnep_conninfo)
instance Storable C'bnep_connlist_req where
  sizeOf _ = 16
  alignment _ = 8
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 8
    return $ C'bnep_connlist_req v0 v1
  poke p (C'bnep_connlist_req v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 8 v1
    return ()

{-# LINE 87 "src/Bluetooth/Raw/Bnep.hsc" #-}
