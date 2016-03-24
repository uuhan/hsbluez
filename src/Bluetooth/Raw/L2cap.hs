{-# LINE 1 "src/Bluetooth/Raw/L2cap.hsc" #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# LINE 2 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 3 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 4 "src/Bluetooth/Raw/L2cap.hsc" #-}
module Bluetooth.Raw.L2cap where
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

{-# LINE 7 "src/Bluetooth/Raw/L2cap.hsc" #-}

import Bluetooth.Raw.Bluetooth
{- struct sockaddr_l2 {
    sa_family_t l2_family;
    unsigned short l2_psm;
    bdaddr_t l2_bdaddr;
    unsigned short l2_cid;
    uint8_t l2_bdaddr_type;
}; -}

{-# LINE 17 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 18 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 19 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 20 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 21 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 22 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'sockaddr_l2 = C'sockaddr_l2{
  c'sockaddr_l2'l2_family :: CUShort,
  c'sockaddr_l2'l2_psm :: CUShort,
  c'sockaddr_l2'l2_bdaddr :: C'bdaddr_t,
  c'sockaddr_l2'l2_cid :: CUShort,
  c'sockaddr_l2'l2_bdaddr_type :: CUChar
} deriving (Eq,Show)
p'sockaddr_l2'l2_family p = plusPtr p 0
p'sockaddr_l2'l2_family :: Ptr (C'sockaddr_l2) -> Ptr (CUShort)
p'sockaddr_l2'l2_psm p = plusPtr p 2
p'sockaddr_l2'l2_psm :: Ptr (C'sockaddr_l2) -> Ptr (CUShort)
p'sockaddr_l2'l2_bdaddr p = plusPtr p 4
p'sockaddr_l2'l2_bdaddr :: Ptr (C'sockaddr_l2) -> Ptr (C'bdaddr_t)
p'sockaddr_l2'l2_cid p = plusPtr p 10
p'sockaddr_l2'l2_cid :: Ptr (C'sockaddr_l2) -> Ptr (CUShort)
p'sockaddr_l2'l2_bdaddr_type p = plusPtr p 12
p'sockaddr_l2'l2_bdaddr_type :: Ptr (C'sockaddr_l2) -> Ptr (CUChar)
instance Storable C'sockaddr_l2 where
  sizeOf _ = 14
  alignment _ = 2
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    v3 <- peekByteOff p 10
    v4 <- peekByteOff p 12
    return $ C'sockaddr_l2 v0 v1 v2 v3 v4
  poke p (C'sockaddr_l2 v0 v1 v2 v3 v4) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    pokeByteOff p 10 v3
    pokeByteOff p 12 v4
    return ()

{-# LINE 23 "src/Bluetooth/Raw/L2cap.hsc" #-}
{- struct l2cap_options {
    uint16_t omtu;
    uint16_t imtu;
    uint16_t flush_to;
    uint8_t mode;
    uint8_t fcs;
    uint8_t max_tx;
    uint16_t txwin_size;
}; -}

{-# LINE 33 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 34 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 35 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 36 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 37 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 38 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 39 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 40 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'l2cap_options = C'l2cap_options{
  c'l2cap_options'omtu :: CUShort,
  c'l2cap_options'imtu :: CUShort,
  c'l2cap_options'flush_to :: CUShort,
  c'l2cap_options'mode :: CUChar,
  c'l2cap_options'fcs :: CUChar,
  c'l2cap_options'max_tx :: CUChar,
  c'l2cap_options'txwin_size :: CUShort
} deriving (Eq,Show)
p'l2cap_options'omtu p = plusPtr p 0
p'l2cap_options'omtu :: Ptr (C'l2cap_options) -> Ptr (CUShort)
p'l2cap_options'imtu p = plusPtr p 2
p'l2cap_options'imtu :: Ptr (C'l2cap_options) -> Ptr (CUShort)
p'l2cap_options'flush_to p = plusPtr p 4
p'l2cap_options'flush_to :: Ptr (C'l2cap_options) -> Ptr (CUShort)
p'l2cap_options'mode p = plusPtr p 6
p'l2cap_options'mode :: Ptr (C'l2cap_options) -> Ptr (CUChar)
p'l2cap_options'fcs p = plusPtr p 7
p'l2cap_options'fcs :: Ptr (C'l2cap_options) -> Ptr (CUChar)
p'l2cap_options'max_tx p = plusPtr p 8
p'l2cap_options'max_tx :: Ptr (C'l2cap_options) -> Ptr (CUChar)
p'l2cap_options'txwin_size p = plusPtr p 10
p'l2cap_options'txwin_size :: Ptr (C'l2cap_options) -> Ptr (CUShort)
instance Storable C'l2cap_options where
  sizeOf _ = 12
  alignment _ = 2
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    v3 <- peekByteOff p 6
    v4 <- peekByteOff p 7
    v5 <- peekByteOff p 8
    v6 <- peekByteOff p 10
    return $ C'l2cap_options v0 v1 v2 v3 v4 v5 v6
  poke p (C'l2cap_options v0 v1 v2 v3 v4 v5 v6) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    pokeByteOff p 6 v3
    pokeByteOff p 7 v4
    pokeByteOff p 8 v5
    pokeByteOff p 10 v6
    return ()

{-# LINE 41 "src/Bluetooth/Raw/L2cap.hsc" #-}
{- struct l2cap_conninfo {
    uint16_t hci_handle; uint8_t dev_class[3];
}; -}

{-# LINE 45 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 46 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 47 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'l2cap_conninfo = C'l2cap_conninfo{
  c'l2cap_conninfo'hci_handle :: CUShort,
  c'l2cap_conninfo'dev_class :: [CUChar]
} deriving (Eq,Show)
p'l2cap_conninfo'hci_handle p = plusPtr p 0
p'l2cap_conninfo'hci_handle :: Ptr (C'l2cap_conninfo) -> Ptr (CUShort)
p'l2cap_conninfo'dev_class p = plusPtr p 2
p'l2cap_conninfo'dev_class :: Ptr (C'l2cap_conninfo) -> Ptr (CUChar)
instance Storable C'l2cap_conninfo where
  sizeOf _ = 6
  alignment _ = 2
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 3 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 2)
    return $ C'l2cap_conninfo v0 v1
  poke p (C'l2cap_conninfo v0 v1) = do
    pokeByteOff p 0 v0
    let s = div 3 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 2) (take s v1)
    return ()

{-# LINE 48 "src/Bluetooth/Raw/L2cap.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t len; uint16_t cid;
        } l2cap_hdr; -}

{-# LINE 52 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 53 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 54 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'l2cap_hdr = C'l2cap_hdr{
  c'l2cap_hdr'len :: CUShort,
  c'l2cap_hdr'cid :: CUShort
} deriving (Eq,Show)
p'l2cap_hdr'len p = plusPtr p 0
p'l2cap_hdr'len :: Ptr (C'l2cap_hdr) -> Ptr (CUShort)
p'l2cap_hdr'cid p = plusPtr p 2
p'l2cap_hdr'cid :: Ptr (C'l2cap_hdr) -> Ptr (CUShort)
instance Storable C'l2cap_hdr where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'l2cap_hdr v0 v1
  poke p (C'l2cap_hdr v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 55 "src/Bluetooth/Raw/L2cap.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t code; uint8_t ident; uint16_t len;
        } l2cap_cmd_hdr; -}

{-# LINE 59 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 60 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 61 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 62 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'l2cap_cmd_hdr = C'l2cap_cmd_hdr{
  c'l2cap_cmd_hdr'code :: CUChar,
  c'l2cap_cmd_hdr'ident :: CUChar,
  c'l2cap_cmd_hdr'len :: CUShort
} deriving (Eq,Show)
p'l2cap_cmd_hdr'code p = plusPtr p 0
p'l2cap_cmd_hdr'code :: Ptr (C'l2cap_cmd_hdr) -> Ptr (CUChar)
p'l2cap_cmd_hdr'ident p = plusPtr p 1
p'l2cap_cmd_hdr'ident :: Ptr (C'l2cap_cmd_hdr) -> Ptr (CUChar)
p'l2cap_cmd_hdr'len p = plusPtr p 2
p'l2cap_cmd_hdr'len :: Ptr (C'l2cap_cmd_hdr) -> Ptr (CUShort)
instance Storable C'l2cap_cmd_hdr where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 2
    return $ C'l2cap_cmd_hdr v0 v1 v2
  poke p (C'l2cap_cmd_hdr v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 2 v2
    return ()

{-# LINE 63 "src/Bluetooth/Raw/L2cap.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t reason;
        } l2cap_cmd_rej; -}

{-# LINE 67 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 68 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'l2cap_cmd_rej = C'l2cap_cmd_rej{
  c'l2cap_cmd_rej'reason :: CUShort
} deriving (Eq,Show)
p'l2cap_cmd_rej'reason p = plusPtr p 0
p'l2cap_cmd_rej'reason :: Ptr (C'l2cap_cmd_rej) -> Ptr (CUShort)
instance Storable C'l2cap_cmd_rej where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'l2cap_cmd_rej v0
  poke p (C'l2cap_cmd_rej v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 69 "src/Bluetooth/Raw/L2cap.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t psm; uint16_t scid;
        } l2cap_conn_req; -}

{-# LINE 73 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 74 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 75 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'l2cap_conn_req = C'l2cap_conn_req{
  c'l2cap_conn_req'psm :: CUShort,
  c'l2cap_conn_req'scid :: CUShort
} deriving (Eq,Show)
p'l2cap_conn_req'psm p = plusPtr p 0
p'l2cap_conn_req'psm :: Ptr (C'l2cap_conn_req) -> Ptr (CUShort)
p'l2cap_conn_req'scid p = plusPtr p 2
p'l2cap_conn_req'scid :: Ptr (C'l2cap_conn_req) -> Ptr (CUShort)
instance Storable C'l2cap_conn_req where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'l2cap_conn_req v0 v1
  poke p (C'l2cap_conn_req v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 76 "src/Bluetooth/Raw/L2cap.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t dcid; uint16_t scid; uint16_t result; uint16_t status;
        } l2cap_conn_rsp; -}

{-# LINE 80 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 81 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 82 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 83 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 84 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'l2cap_conn_rsp = C'l2cap_conn_rsp{
  c'l2cap_conn_rsp'dcid :: CUShort,
  c'l2cap_conn_rsp'scid :: CUShort,
  c'l2cap_conn_rsp'result :: CUShort,
  c'l2cap_conn_rsp'status :: CUShort
} deriving (Eq,Show)
p'l2cap_conn_rsp'dcid p = plusPtr p 0
p'l2cap_conn_rsp'dcid :: Ptr (C'l2cap_conn_rsp) -> Ptr (CUShort)
p'l2cap_conn_rsp'scid p = plusPtr p 2
p'l2cap_conn_rsp'scid :: Ptr (C'l2cap_conn_rsp) -> Ptr (CUShort)
p'l2cap_conn_rsp'result p = plusPtr p 4
p'l2cap_conn_rsp'result :: Ptr (C'l2cap_conn_rsp) -> Ptr (CUShort)
p'l2cap_conn_rsp'status p = plusPtr p 6
p'l2cap_conn_rsp'status :: Ptr (C'l2cap_conn_rsp) -> Ptr (CUShort)
instance Storable C'l2cap_conn_rsp where
  sizeOf _ = 8
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    v3 <- peekByteOff p 6
    return $ C'l2cap_conn_rsp v0 v1 v2 v3
  poke p (C'l2cap_conn_rsp v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    pokeByteOff p 6 v3
    return ()

{-# LINE 85 "src/Bluetooth/Raw/L2cap.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t dcid; uint16_t flags; uint8_t data[0];
        } l2cap_conf_req; -}

{-# LINE 89 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 90 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 91 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 92 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'l2cap_conf_req = C'l2cap_conf_req{
  c'l2cap_conf_req'dcid :: CUShort,
  c'l2cap_conf_req'flags :: CUShort,
  c'l2cap_conf_req'data :: CUChar
} deriving (Eq,Show)
p'l2cap_conf_req'dcid p = plusPtr p 0
p'l2cap_conf_req'dcid :: Ptr (C'l2cap_conf_req) -> Ptr (CUShort)
p'l2cap_conf_req'flags p = plusPtr p 2
p'l2cap_conf_req'flags :: Ptr (C'l2cap_conf_req) -> Ptr (CUShort)
p'l2cap_conf_req'data p = plusPtr p 4
p'l2cap_conf_req'data :: Ptr (C'l2cap_conf_req) -> Ptr (CUChar)
instance Storable C'l2cap_conf_req where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    return $ C'l2cap_conf_req v0 v1 v2
  poke p (C'l2cap_conf_req v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    return ()

{-# LINE 93 "src/Bluetooth/Raw/L2cap.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t scid; uint16_t flags; uint16_t result; uint8_t data[0];
        } l2cap_conf_rsp; -}

{-# LINE 97 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 98 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 99 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 100 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 101 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'l2cap_conf_rsp = C'l2cap_conf_rsp{
  c'l2cap_conf_rsp'scid :: CUShort,
  c'l2cap_conf_rsp'flags :: CUShort,
  c'l2cap_conf_rsp'result :: CUShort,
  c'l2cap_conf_rsp'data :: CUChar
} deriving (Eq,Show)
p'l2cap_conf_rsp'scid p = plusPtr p 0
p'l2cap_conf_rsp'scid :: Ptr (C'l2cap_conf_rsp) -> Ptr (CUShort)
p'l2cap_conf_rsp'flags p = plusPtr p 2
p'l2cap_conf_rsp'flags :: Ptr (C'l2cap_conf_rsp) -> Ptr (CUShort)
p'l2cap_conf_rsp'result p = plusPtr p 4
p'l2cap_conf_rsp'result :: Ptr (C'l2cap_conf_rsp) -> Ptr (CUShort)
p'l2cap_conf_rsp'data p = plusPtr p 6
p'l2cap_conf_rsp'data :: Ptr (C'l2cap_conf_rsp) -> Ptr (CUChar)
instance Storable C'l2cap_conf_rsp where
  sizeOf _ = 6
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    v3 <- peekByteOff p 6
    return $ C'l2cap_conf_rsp v0 v1 v2 v3
  poke p (C'l2cap_conf_rsp v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    pokeByteOff p 6 v3
    return ()

{-# LINE 102 "src/Bluetooth/Raw/L2cap.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t type; uint8_t len; uint8_t val[0];
        } l2cap_conf_opt; -}

{-# LINE 106 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 107 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 108 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 109 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'l2cap_conf_opt = C'l2cap_conf_opt{
  c'l2cap_conf_opt'type :: CUChar,
  c'l2cap_conf_opt'len :: CUChar,
  c'l2cap_conf_opt'val :: CUChar
} deriving (Eq,Show)
p'l2cap_conf_opt'type p = plusPtr p 0
p'l2cap_conf_opt'type :: Ptr (C'l2cap_conf_opt) -> Ptr (CUChar)
p'l2cap_conf_opt'len p = plusPtr p 1
p'l2cap_conf_opt'len :: Ptr (C'l2cap_conf_opt) -> Ptr (CUChar)
p'l2cap_conf_opt'val p = plusPtr p 2
p'l2cap_conf_opt'val :: Ptr (C'l2cap_conf_opt) -> Ptr (CUChar)
instance Storable C'l2cap_conf_opt where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 2
    return $ C'l2cap_conf_opt v0 v1 v2
  poke p (C'l2cap_conf_opt v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 2 v2
    return ()

{-# LINE 110 "src/Bluetooth/Raw/L2cap.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t dcid; uint16_t scid;
        } l2cap_disconn_req; -}

{-# LINE 114 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 115 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 116 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'l2cap_disconn_req = C'l2cap_disconn_req{
  c'l2cap_disconn_req'dcid :: CUShort,
  c'l2cap_disconn_req'scid :: CUShort
} deriving (Eq,Show)
p'l2cap_disconn_req'dcid p = plusPtr p 0
p'l2cap_disconn_req'dcid :: Ptr (C'l2cap_disconn_req) -> Ptr (CUShort)
p'l2cap_disconn_req'scid p = plusPtr p 2
p'l2cap_disconn_req'scid :: Ptr (C'l2cap_disconn_req) -> Ptr (CUShort)
instance Storable C'l2cap_disconn_req where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'l2cap_disconn_req v0 v1
  poke p (C'l2cap_disconn_req v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 117 "src/Bluetooth/Raw/L2cap.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t dcid; uint16_t scid;
        } l2cap_disconn_rsp; -}

{-# LINE 121 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 122 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 123 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'l2cap_disconn_rsp = C'l2cap_disconn_rsp{
  c'l2cap_disconn_rsp'dcid :: CUShort,
  c'l2cap_disconn_rsp'scid :: CUShort
} deriving (Eq,Show)
p'l2cap_disconn_rsp'dcid p = plusPtr p 0
p'l2cap_disconn_rsp'dcid :: Ptr (C'l2cap_disconn_rsp) -> Ptr (CUShort)
p'l2cap_disconn_rsp'scid p = plusPtr p 2
p'l2cap_disconn_rsp'scid :: Ptr (C'l2cap_disconn_rsp) -> Ptr (CUShort)
instance Storable C'l2cap_disconn_rsp where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'l2cap_disconn_rsp v0 v1
  poke p (C'l2cap_disconn_rsp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 124 "src/Bluetooth/Raw/L2cap.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t type;
        } l2cap_info_req; -}

{-# LINE 128 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 129 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'l2cap_info_req = C'l2cap_info_req{
  c'l2cap_info_req'type :: CUShort
} deriving (Eq,Show)
p'l2cap_info_req'type p = plusPtr p 0
p'l2cap_info_req'type :: Ptr (C'l2cap_info_req) -> Ptr (CUShort)
instance Storable C'l2cap_info_req where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'l2cap_info_req v0
  poke p (C'l2cap_info_req v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 130 "src/Bluetooth/Raw/L2cap.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t type; uint16_t result; uint8_t data[0];
        } l2cap_info_rsp; -}

{-# LINE 134 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 135 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 136 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 137 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'l2cap_info_rsp = C'l2cap_info_rsp{
  c'l2cap_info_rsp'type :: CUShort,
  c'l2cap_info_rsp'result :: CUShort,
  c'l2cap_info_rsp'data :: CUChar
} deriving (Eq,Show)
p'l2cap_info_rsp'type p = plusPtr p 0
p'l2cap_info_rsp'type :: Ptr (C'l2cap_info_rsp) -> Ptr (CUShort)
p'l2cap_info_rsp'result p = plusPtr p 2
p'l2cap_info_rsp'result :: Ptr (C'l2cap_info_rsp) -> Ptr (CUShort)
p'l2cap_info_rsp'data p = plusPtr p 4
p'l2cap_info_rsp'data :: Ptr (C'l2cap_info_rsp) -> Ptr (CUChar)
instance Storable C'l2cap_info_rsp where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    return $ C'l2cap_info_rsp v0 v1 v2
  poke p (C'l2cap_info_rsp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    return ()

{-# LINE 138 "src/Bluetooth/Raw/L2cap.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t psm; uint16_t scid; uint8_t id;
        } l2cap_create_req; -}

{-# LINE 142 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 143 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 144 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 145 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'l2cap_create_req = C'l2cap_create_req{
  c'l2cap_create_req'psm :: CUShort,
  c'l2cap_create_req'scid :: CUShort,
  c'l2cap_create_req'id :: CUChar
} deriving (Eq,Show)
p'l2cap_create_req'psm p = plusPtr p 0
p'l2cap_create_req'psm :: Ptr (C'l2cap_create_req) -> Ptr (CUShort)
p'l2cap_create_req'scid p = plusPtr p 2
p'l2cap_create_req'scid :: Ptr (C'l2cap_create_req) -> Ptr (CUShort)
p'l2cap_create_req'id p = plusPtr p 4
p'l2cap_create_req'id :: Ptr (C'l2cap_create_req) -> Ptr (CUChar)
instance Storable C'l2cap_create_req where
  sizeOf _ = 5
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    return $ C'l2cap_create_req v0 v1 v2
  poke p (C'l2cap_create_req v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    return ()

{-# LINE 146 "src/Bluetooth/Raw/L2cap.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t dcid; uint16_t scid; uint16_t result; uint16_t status;
        } l2cap_create_rsp; -}

{-# LINE 150 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 151 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 152 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 153 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 154 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'l2cap_create_rsp = C'l2cap_create_rsp{
  c'l2cap_create_rsp'dcid :: CUShort,
  c'l2cap_create_rsp'scid :: CUShort,
  c'l2cap_create_rsp'result :: CUShort,
  c'l2cap_create_rsp'status :: CUShort
} deriving (Eq,Show)
p'l2cap_create_rsp'dcid p = plusPtr p 0
p'l2cap_create_rsp'dcid :: Ptr (C'l2cap_create_rsp) -> Ptr (CUShort)
p'l2cap_create_rsp'scid p = plusPtr p 2
p'l2cap_create_rsp'scid :: Ptr (C'l2cap_create_rsp) -> Ptr (CUShort)
p'l2cap_create_rsp'result p = plusPtr p 4
p'l2cap_create_rsp'result :: Ptr (C'l2cap_create_rsp) -> Ptr (CUShort)
p'l2cap_create_rsp'status p = plusPtr p 6
p'l2cap_create_rsp'status :: Ptr (C'l2cap_create_rsp) -> Ptr (CUShort)
instance Storable C'l2cap_create_rsp where
  sizeOf _ = 8
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    v3 <- peekByteOff p 6
    return $ C'l2cap_create_rsp v0 v1 v2 v3
  poke p (C'l2cap_create_rsp v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    pokeByteOff p 6 v3
    return ()

{-# LINE 155 "src/Bluetooth/Raw/L2cap.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t icid; uint8_t id;
        } l2cap_move_req; -}

{-# LINE 159 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 160 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 161 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'l2cap_move_req = C'l2cap_move_req{
  c'l2cap_move_req'icid :: CUShort,
  c'l2cap_move_req'id :: CUChar
} deriving (Eq,Show)
p'l2cap_move_req'icid p = plusPtr p 0
p'l2cap_move_req'icid :: Ptr (C'l2cap_move_req) -> Ptr (CUShort)
p'l2cap_move_req'id p = plusPtr p 2
p'l2cap_move_req'id :: Ptr (C'l2cap_move_req) -> Ptr (CUChar)
instance Storable C'l2cap_move_req where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'l2cap_move_req v0 v1
  poke p (C'l2cap_move_req v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 162 "src/Bluetooth/Raw/L2cap.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t icid; uint16_t result;
        } l2cap_move_rsp; -}

{-# LINE 166 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 167 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 168 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'l2cap_move_rsp = C'l2cap_move_rsp{
  c'l2cap_move_rsp'icid :: CUShort,
  c'l2cap_move_rsp'result :: CUShort
} deriving (Eq,Show)
p'l2cap_move_rsp'icid p = plusPtr p 0
p'l2cap_move_rsp'icid :: Ptr (C'l2cap_move_rsp) -> Ptr (CUShort)
p'l2cap_move_rsp'result p = plusPtr p 2
p'l2cap_move_rsp'result :: Ptr (C'l2cap_move_rsp) -> Ptr (CUShort)
instance Storable C'l2cap_move_rsp where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'l2cap_move_rsp v0 v1
  poke p (C'l2cap_move_rsp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 169 "src/Bluetooth/Raw/L2cap.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t icid; uint16_t result;
        } l2cap_move_cfm; -}

{-# LINE 173 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 174 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 175 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'l2cap_move_cfm = C'l2cap_move_cfm{
  c'l2cap_move_cfm'icid :: CUShort,
  c'l2cap_move_cfm'result :: CUShort
} deriving (Eq,Show)
p'l2cap_move_cfm'icid p = plusPtr p 0
p'l2cap_move_cfm'icid :: Ptr (C'l2cap_move_cfm) -> Ptr (CUShort)
p'l2cap_move_cfm'result p = plusPtr p 2
p'l2cap_move_cfm'result :: Ptr (C'l2cap_move_cfm) -> Ptr (CUShort)
instance Storable C'l2cap_move_cfm where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'l2cap_move_cfm v0 v1
  poke p (C'l2cap_move_cfm v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 176 "src/Bluetooth/Raw/L2cap.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t icid;
        } l2cap_move_cfm_rsp; -}

{-# LINE 180 "src/Bluetooth/Raw/L2cap.hsc" #-}

{-# LINE 181 "src/Bluetooth/Raw/L2cap.hsc" #-}
data C'l2cap_move_cfm_rsp = C'l2cap_move_cfm_rsp{
  c'l2cap_move_cfm_rsp'icid :: CUShort
} deriving (Eq,Show)
p'l2cap_move_cfm_rsp'icid p = plusPtr p 0
p'l2cap_move_cfm_rsp'icid :: Ptr (C'l2cap_move_cfm_rsp) -> Ptr (CUShort)
instance Storable C'l2cap_move_cfm_rsp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'l2cap_move_cfm_rsp v0
  poke p (C'l2cap_move_cfm_rsp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 182 "src/Bluetooth/Raw/L2cap.hsc" #-}
