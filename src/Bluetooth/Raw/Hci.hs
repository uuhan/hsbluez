{-# LINE 1 "src/Bluetooth/Raw/Hci.hsc" #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# LINE 2 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 3 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 4 "src/Bluetooth/Raw/Hci.hsc" #-}
module Bluetooth.Raw.Hci where
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

{-# LINE 7 "src/Bluetooth/Raw/Hci.hsc" #-}

import Bluetooth.Raw.Bluetooth
{- enum {
    HCI_UP,
    HCI_INIT,
    HCI_RUNNING,
    HCI_PSCAN,
    HCI_ISCAN,
    HCI_AUTH,
    HCI_ENCRYPT,
    HCI_INQUIRY,
    HCI_RAW
}; -}
c'HCI_UP = 0
c'HCI_UP :: (Num a) => a

{-# LINE 21 "src/Bluetooth/Raw/Hci.hsc" #-}
c'HCI_INIT = 1
c'HCI_INIT :: (Num a) => a

{-# LINE 22 "src/Bluetooth/Raw/Hci.hsc" #-}
c'HCI_RUNNING = 2
c'HCI_RUNNING :: (Num a) => a

{-# LINE 23 "src/Bluetooth/Raw/Hci.hsc" #-}
c'HCI_PSCAN = 3
c'HCI_PSCAN :: (Num a) => a

{-# LINE 24 "src/Bluetooth/Raw/Hci.hsc" #-}
c'HCI_ISCAN = 4
c'HCI_ISCAN :: (Num a) => a

{-# LINE 25 "src/Bluetooth/Raw/Hci.hsc" #-}
c'HCI_AUTH = 5
c'HCI_AUTH :: (Num a) => a

{-# LINE 26 "src/Bluetooth/Raw/Hci.hsc" #-}
c'HCI_ENCRYPT = 6
c'HCI_ENCRYPT :: (Num a) => a

{-# LINE 27 "src/Bluetooth/Raw/Hci.hsc" #-}
c'HCI_INQUIRY = 7
c'HCI_INQUIRY :: (Num a) => a

{-# LINE 28 "src/Bluetooth/Raw/Hci.hsc" #-}
c'HCI_RAW = 8
c'HCI_RAW :: (Num a) => a

{-# LINE 29 "src/Bluetooth/Raw/Hci.hsc" #-}
{- enum {
    LE_PUBLIC_ADDRESS = 0x0, LE_RANDOM_ADDRESS = 0x1
}; -}
c'LE_PUBLIC_ADDRESS = 0
c'LE_PUBLIC_ADDRESS :: (Num a) => a

{-# LINE 33 "src/Bluetooth/Raw/Hci.hsc" #-}
c'LE_RANDOM_ADDRESS = 1
c'LE_RANDOM_ADDRESS :: (Num a) => a

{-# LINE 34 "src/Bluetooth/Raw/Hci.hsc" #-}
c'IREQ_CACHE_FLUSH = 1
c'IREQ_CACHE_FLUSH :: (Num a) => a

{-# LINE 35 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t lap[3]; uint8_t length; uint8_t num_rsp;
        } inquiry_cp; -}

{-# LINE 39 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 40 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 41 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 42 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'inquiry_cp = C'inquiry_cp{
  c'inquiry_cp'lap :: [CUChar],
  c'inquiry_cp'length :: CUChar,
  c'inquiry_cp'num_rsp :: CUChar
} deriving (Eq,Show)
p'inquiry_cp'lap p = plusPtr p 0
p'inquiry_cp'lap :: Ptr (C'inquiry_cp) -> Ptr (CUChar)
p'inquiry_cp'length p = plusPtr p 3
p'inquiry_cp'length :: Ptr (C'inquiry_cp) -> Ptr (CUChar)
p'inquiry_cp'num_rsp p = plusPtr p 4
p'inquiry_cp'num_rsp :: Ptr (C'inquiry_cp) -> Ptr (CUChar)
instance Storable C'inquiry_cp where
  sizeOf _ = 5
  alignment _ = 1
  peek p = do
    v0 <- let s = div 3 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 0)
    v1 <- peekByteOff p 3
    v2 <- peekByteOff p 4
    return $ C'inquiry_cp v0 v1 v2
  poke p (C'inquiry_cp v0 v1 v2) = do
    let s = div 3 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 0) (take s v0)
    pokeByteOff p 3 v1
    pokeByteOff p 4 v2
    return ()

{-# LINE 43 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; bdaddr_t bdaddr;
        } status_bdaddr_rp; -}

{-# LINE 47 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 48 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 49 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'status_bdaddr_rp = C'status_bdaddr_rp{
  c'status_bdaddr_rp'status :: CUChar,
  c'status_bdaddr_rp'bdaddr :: C'bdaddr_t
} deriving (Eq,Show)
p'status_bdaddr_rp'status p = plusPtr p 0
p'status_bdaddr_rp'status :: Ptr (C'status_bdaddr_rp) -> Ptr (CUChar)
p'status_bdaddr_rp'bdaddr p = plusPtr p 1
p'status_bdaddr_rp'bdaddr :: Ptr (C'status_bdaddr_rp) -> Ptr (C'bdaddr_t)
instance Storable C'status_bdaddr_rp where
  sizeOf _ = 7
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'status_bdaddr_rp v0 v1
  poke p (C'status_bdaddr_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 50 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t max_period;
            uint16_t min_period;
            uint8_t lap[3];
            uint8_t length;
            uint8_t num_rsp;
        } periodic_inquiry_cp; -}

{-# LINE 58 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 59 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 60 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 61 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 62 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 63 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'periodic_inquiry_cp = C'periodic_inquiry_cp{
  c'periodic_inquiry_cp'max_period :: CUShort,
  c'periodic_inquiry_cp'min_period :: CUShort,
  c'periodic_inquiry_cp'lap :: [CUChar],
  c'periodic_inquiry_cp'length :: CUChar,
  c'periodic_inquiry_cp'num_rsp :: CUChar
} deriving (Eq,Show)
p'periodic_inquiry_cp'max_period p = plusPtr p 0
p'periodic_inquiry_cp'max_period :: Ptr (C'periodic_inquiry_cp) -> Ptr (CUShort)
p'periodic_inquiry_cp'min_period p = plusPtr p 2
p'periodic_inquiry_cp'min_period :: Ptr (C'periodic_inquiry_cp) -> Ptr (CUShort)
p'periodic_inquiry_cp'lap p = plusPtr p 4
p'periodic_inquiry_cp'lap :: Ptr (C'periodic_inquiry_cp) -> Ptr (CUChar)
p'periodic_inquiry_cp'length p = plusPtr p 7
p'periodic_inquiry_cp'length :: Ptr (C'periodic_inquiry_cp) -> Ptr (CUChar)
p'periodic_inquiry_cp'num_rsp p = plusPtr p 8
p'periodic_inquiry_cp'num_rsp :: Ptr (C'periodic_inquiry_cp) -> Ptr (CUChar)
instance Storable C'periodic_inquiry_cp where
  sizeOf _ = 9
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- let s = div 3 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 4)
    v3 <- peekByteOff p 7
    v4 <- peekByteOff p 8
    return $ C'periodic_inquiry_cp v0 v1 v2 v3 v4
  poke p (C'periodic_inquiry_cp v0 v1 v2 v3 v4) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    let s = div 3 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 4) (take s v2)
    pokeByteOff p 7 v3
    pokeByteOff p 8 v4
    return ()

{-# LINE 64 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
            uint16_t pkt_type;
            uint8_t pscan_rep_mode;
            uint8_t pscan_mode;
            uint16_t clock_offset;
            uint8_t role_switch;
        } create_conn_cp; -}

{-# LINE 73 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 74 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 75 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 76 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 77 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 78 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 79 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'create_conn_cp = C'create_conn_cp{
  c'create_conn_cp'bdaddr :: C'bdaddr_t,
  c'create_conn_cp'pkt_type :: CUShort,
  c'create_conn_cp'pscan_rep_mode :: CUChar,
  c'create_conn_cp'pscan_mode :: CUChar,
  c'create_conn_cp'clock_offset :: CUShort,
  c'create_conn_cp'role_switch :: CUChar
} deriving (Eq,Show)
p'create_conn_cp'bdaddr p = plusPtr p 0
p'create_conn_cp'bdaddr :: Ptr (C'create_conn_cp) -> Ptr (C'bdaddr_t)
p'create_conn_cp'pkt_type p = plusPtr p 6
p'create_conn_cp'pkt_type :: Ptr (C'create_conn_cp) -> Ptr (CUShort)
p'create_conn_cp'pscan_rep_mode p = plusPtr p 8
p'create_conn_cp'pscan_rep_mode :: Ptr (C'create_conn_cp) -> Ptr (CUChar)
p'create_conn_cp'pscan_mode p = plusPtr p 9
p'create_conn_cp'pscan_mode :: Ptr (C'create_conn_cp) -> Ptr (CUChar)
p'create_conn_cp'clock_offset p = plusPtr p 10
p'create_conn_cp'clock_offset :: Ptr (C'create_conn_cp) -> Ptr (CUShort)
p'create_conn_cp'role_switch p = plusPtr p 12
p'create_conn_cp'role_switch :: Ptr (C'create_conn_cp) -> Ptr (CUChar)
instance Storable C'create_conn_cp where
  sizeOf _ = 13
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    v2 <- peekByteOff p 8
    v3 <- peekByteOff p 9
    v4 <- peekByteOff p 10
    v5 <- peekByteOff p 12
    return $ C'create_conn_cp v0 v1 v2 v3 v4 v5
  poke p (C'create_conn_cp v0 v1 v2 v3 v4 v5) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    pokeByteOff p 8 v2
    pokeByteOff p 9 v3
    pokeByteOff p 10 v4
    pokeByteOff p 12 v5
    return ()

{-# LINE 80 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint8_t reason;
        } disconnect_cp; -}

{-# LINE 84 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 85 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 86 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'disconnect_cp = C'disconnect_cp{
  c'disconnect_cp'handle :: CUShort,
  c'disconnect_cp'reason :: CUChar
} deriving (Eq,Show)
p'disconnect_cp'handle p = plusPtr p 0
p'disconnect_cp'handle :: Ptr (C'disconnect_cp) -> Ptr (CUShort)
p'disconnect_cp'reason p = plusPtr p 2
p'disconnect_cp'reason :: Ptr (C'disconnect_cp) -> Ptr (CUChar)
instance Storable C'disconnect_cp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'disconnect_cp v0 v1
  poke p (C'disconnect_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 87 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint16_t pkt_type;
        } add_sco_cp; -}

{-# LINE 91 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 92 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 93 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'add_sco_cp = C'add_sco_cp{
  c'add_sco_cp'handle :: CUShort,
  c'add_sco_cp'pkt_type :: CUShort
} deriving (Eq,Show)
p'add_sco_cp'handle p = plusPtr p 0
p'add_sco_cp'handle :: Ptr (C'add_sco_cp) -> Ptr (CUShort)
p'add_sco_cp'pkt_type p = plusPtr p 2
p'add_sco_cp'pkt_type :: Ptr (C'add_sco_cp) -> Ptr (CUShort)
instance Storable C'add_sco_cp where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'add_sco_cp v0 v1
  poke p (C'add_sco_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 94 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
        } create_conn_cancel_cp; -}

{-# LINE 98 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 99 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'create_conn_cancel_cp = C'create_conn_cancel_cp{
  c'create_conn_cancel_cp'bdaddr :: C'bdaddr_t
} deriving (Eq,Show)
p'create_conn_cancel_cp'bdaddr p = plusPtr p 0
p'create_conn_cancel_cp'bdaddr :: Ptr (C'create_conn_cancel_cp) -> Ptr (C'bdaddr_t)
instance Storable C'create_conn_cancel_cp where
  sizeOf _ = 6
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'create_conn_cancel_cp v0
  poke p (C'create_conn_cancel_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 100 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t role;
        } accept_conn_req_cp; -}

{-# LINE 104 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 105 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 106 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'accept_conn_req_cp = C'accept_conn_req_cp{
  c'accept_conn_req_cp'bdaddr :: C'bdaddr_t,
  c'accept_conn_req_cp'role :: CUChar
} deriving (Eq,Show)
p'accept_conn_req_cp'bdaddr p = plusPtr p 0
p'accept_conn_req_cp'bdaddr :: Ptr (C'accept_conn_req_cp) -> Ptr (C'bdaddr_t)
p'accept_conn_req_cp'role p = plusPtr p 6
p'accept_conn_req_cp'role :: Ptr (C'accept_conn_req_cp) -> Ptr (CUChar)
instance Storable C'accept_conn_req_cp where
  sizeOf _ = 7
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    return $ C'accept_conn_req_cp v0 v1
  poke p (C'accept_conn_req_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    return ()

{-# LINE 107 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t reason;
        } reject_conn_req_cp; -}

{-# LINE 111 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 112 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 113 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'reject_conn_req_cp = C'reject_conn_req_cp{
  c'reject_conn_req_cp'bdaddr :: C'bdaddr_t,
  c'reject_conn_req_cp'reason :: CUChar
} deriving (Eq,Show)
p'reject_conn_req_cp'bdaddr p = plusPtr p 0
p'reject_conn_req_cp'bdaddr :: Ptr (C'reject_conn_req_cp) -> Ptr (C'bdaddr_t)
p'reject_conn_req_cp'reason p = plusPtr p 6
p'reject_conn_req_cp'reason :: Ptr (C'reject_conn_req_cp) -> Ptr (CUChar)
instance Storable C'reject_conn_req_cp where
  sizeOf _ = 7
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    return $ C'reject_conn_req_cp v0 v1
  poke p (C'reject_conn_req_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    return ()

{-# LINE 114 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t link_key[16];
        } link_key_reply_cp; -}

{-# LINE 118 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 119 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 120 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'link_key_reply_cp = C'link_key_reply_cp{
  c'link_key_reply_cp'bdaddr :: C'bdaddr_t,
  c'link_key_reply_cp'link_key :: [CUChar]
} deriving (Eq,Show)
p'link_key_reply_cp'bdaddr p = plusPtr p 0
p'link_key_reply_cp'bdaddr :: Ptr (C'link_key_reply_cp) -> Ptr (C'bdaddr_t)
p'link_key_reply_cp'link_key p = plusPtr p 6
p'link_key_reply_cp'link_key :: Ptr (C'link_key_reply_cp) -> Ptr (CUChar)
instance Storable C'link_key_reply_cp where
  sizeOf _ = 22
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 16 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 6)
    return $ C'link_key_reply_cp v0 v1
  poke p (C'link_key_reply_cp v0 v1) = do
    pokeByteOff p 0 v0
    let s = div 16 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 6) (take s v1)
    return ()

{-# LINE 121 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t pin_len; uint8_t pin_code[16];
        } pin_code_reply_cp; -}

{-# LINE 125 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 126 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 127 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 128 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'pin_code_reply_cp = C'pin_code_reply_cp{
  c'pin_code_reply_cp'bdaddr :: C'bdaddr_t,
  c'pin_code_reply_cp'pin_len :: CUChar,
  c'pin_code_reply_cp'pin_code :: [CUChar]
} deriving (Eq,Show)
p'pin_code_reply_cp'bdaddr p = plusPtr p 0
p'pin_code_reply_cp'bdaddr :: Ptr (C'pin_code_reply_cp) -> Ptr (C'bdaddr_t)
p'pin_code_reply_cp'pin_len p = plusPtr p 6
p'pin_code_reply_cp'pin_len :: Ptr (C'pin_code_reply_cp) -> Ptr (CUChar)
p'pin_code_reply_cp'pin_code p = plusPtr p 7
p'pin_code_reply_cp'pin_code :: Ptr (C'pin_code_reply_cp) -> Ptr (CUChar)
instance Storable C'pin_code_reply_cp where
  sizeOf _ = 23
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    v2 <- let s = div 16 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 7)
    return $ C'pin_code_reply_cp v0 v1 v2
  poke p (C'pin_code_reply_cp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    let s = div 16 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 7) (take s v2)
    return ()

{-# LINE 129 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint16_t pkt_type;
        } set_conn_ptype_cp; -}

{-# LINE 133 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 134 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 135 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'set_conn_ptype_cp = C'set_conn_ptype_cp{
  c'set_conn_ptype_cp'handle :: CUShort,
  c'set_conn_ptype_cp'pkt_type :: CUShort
} deriving (Eq,Show)
p'set_conn_ptype_cp'handle p = plusPtr p 0
p'set_conn_ptype_cp'handle :: Ptr (C'set_conn_ptype_cp) -> Ptr (CUShort)
p'set_conn_ptype_cp'pkt_type p = plusPtr p 2
p'set_conn_ptype_cp'pkt_type :: Ptr (C'set_conn_ptype_cp) -> Ptr (CUShort)
instance Storable C'set_conn_ptype_cp where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'set_conn_ptype_cp v0 v1
  poke p (C'set_conn_ptype_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 136 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } auth_requested_cp; -}

{-# LINE 140 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 141 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'auth_requested_cp = C'auth_requested_cp{
  c'auth_requested_cp'handle :: CUShort
} deriving (Eq,Show)
p'auth_requested_cp'handle p = plusPtr p 0
p'auth_requested_cp'handle :: Ptr (C'auth_requested_cp) -> Ptr (CUShort)
instance Storable C'auth_requested_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'auth_requested_cp v0
  poke p (C'auth_requested_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 142 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint8_t encrypt;
        } set_conn_encrypt_cp; -}

{-# LINE 146 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 147 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 148 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'set_conn_encrypt_cp = C'set_conn_encrypt_cp{
  c'set_conn_encrypt_cp'handle :: CUShort,
  c'set_conn_encrypt_cp'encrypt :: CUChar
} deriving (Eq,Show)
p'set_conn_encrypt_cp'handle p = plusPtr p 0
p'set_conn_encrypt_cp'handle :: Ptr (C'set_conn_encrypt_cp) -> Ptr (CUShort)
p'set_conn_encrypt_cp'encrypt p = plusPtr p 2
p'set_conn_encrypt_cp'encrypt :: Ptr (C'set_conn_encrypt_cp) -> Ptr (CUChar)
instance Storable C'set_conn_encrypt_cp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'set_conn_encrypt_cp v0 v1
  poke p (C'set_conn_encrypt_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 149 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } change_conn_link_key_cp; -}

{-# LINE 153 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 154 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'change_conn_link_key_cp = C'change_conn_link_key_cp{
  c'change_conn_link_key_cp'handle :: CUShort
} deriving (Eq,Show)
p'change_conn_link_key_cp'handle p = plusPtr p 0
p'change_conn_link_key_cp'handle :: Ptr (C'change_conn_link_key_cp) -> Ptr (CUShort)
instance Storable C'change_conn_link_key_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'change_conn_link_key_cp v0
  poke p (C'change_conn_link_key_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 155 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t key_flag;
        } master_link_key_cp; -}

{-# LINE 159 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 160 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'master_link_key_cp = C'master_link_key_cp{
  c'master_link_key_cp'key_flag :: CUChar
} deriving (Eq,Show)
p'master_link_key_cp'key_flag p = plusPtr p 0
p'master_link_key_cp'key_flag :: Ptr (C'master_link_key_cp) -> Ptr (CUChar)
instance Storable C'master_link_key_cp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'master_link_key_cp v0
  poke p (C'master_link_key_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 161 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
            uint8_t pscan_rep_mode;
            uint8_t pscan_mode;
            uint16_t clock_offset;
        } remote_name_req_cp; -}

{-# LINE 168 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 169 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 170 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 171 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 172 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'remote_name_req_cp = C'remote_name_req_cp{
  c'remote_name_req_cp'bdaddr :: C'bdaddr_t,
  c'remote_name_req_cp'pscan_rep_mode :: CUChar,
  c'remote_name_req_cp'pscan_mode :: CUChar,
  c'remote_name_req_cp'clock_offset :: CUShort
} deriving (Eq,Show)
p'remote_name_req_cp'bdaddr p = plusPtr p 0
p'remote_name_req_cp'bdaddr :: Ptr (C'remote_name_req_cp) -> Ptr (C'bdaddr_t)
p'remote_name_req_cp'pscan_rep_mode p = plusPtr p 6
p'remote_name_req_cp'pscan_rep_mode :: Ptr (C'remote_name_req_cp) -> Ptr (CUChar)
p'remote_name_req_cp'pscan_mode p = plusPtr p 7
p'remote_name_req_cp'pscan_mode :: Ptr (C'remote_name_req_cp) -> Ptr (CUChar)
p'remote_name_req_cp'clock_offset p = plusPtr p 8
p'remote_name_req_cp'clock_offset :: Ptr (C'remote_name_req_cp) -> Ptr (CUShort)
instance Storable C'remote_name_req_cp where
  sizeOf _ = 10
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    v2 <- peekByteOff p 7
    v3 <- peekByteOff p 8
    return $ C'remote_name_req_cp v0 v1 v2 v3
  poke p (C'remote_name_req_cp v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    pokeByteOff p 7 v2
    pokeByteOff p 8 v3
    return ()

{-# LINE 173 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
        } remote_name_req_cancel_cp; -}

{-# LINE 177 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 178 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'remote_name_req_cancel_cp = C'remote_name_req_cancel_cp{
  c'remote_name_req_cancel_cp'bdaddr :: C'bdaddr_t
} deriving (Eq,Show)
p'remote_name_req_cancel_cp'bdaddr p = plusPtr p 0
p'remote_name_req_cancel_cp'bdaddr :: Ptr (C'remote_name_req_cancel_cp) -> Ptr (C'bdaddr_t)
instance Storable C'remote_name_req_cancel_cp where
  sizeOf _ = 6
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'remote_name_req_cancel_cp v0
  poke p (C'remote_name_req_cancel_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 179 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } read_remote_features_cp; -}

{-# LINE 183 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 184 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_remote_features_cp = C'read_remote_features_cp{
  c'read_remote_features_cp'handle :: CUShort
} deriving (Eq,Show)
p'read_remote_features_cp'handle p = plusPtr p 0
p'read_remote_features_cp'handle :: Ptr (C'read_remote_features_cp) -> Ptr (CUShort)
instance Storable C'read_remote_features_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'read_remote_features_cp v0
  poke p (C'read_remote_features_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 185 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint8_t page_num;
        } read_remote_ext_features_cp; -}

{-# LINE 189 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 190 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 191 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_remote_ext_features_cp = C'read_remote_ext_features_cp{
  c'read_remote_ext_features_cp'handle :: CUShort,
  c'read_remote_ext_features_cp'page_num :: CUChar
} deriving (Eq,Show)
p'read_remote_ext_features_cp'handle p = plusPtr p 0
p'read_remote_ext_features_cp'handle :: Ptr (C'read_remote_ext_features_cp) -> Ptr (CUShort)
p'read_remote_ext_features_cp'page_num p = plusPtr p 2
p'read_remote_ext_features_cp'page_num :: Ptr (C'read_remote_ext_features_cp) -> Ptr (CUChar)
instance Storable C'read_remote_ext_features_cp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'read_remote_ext_features_cp v0 v1
  poke p (C'read_remote_ext_features_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 192 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } read_remote_version_cp; -}

{-# LINE 196 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 197 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_remote_version_cp = C'read_remote_version_cp{
  c'read_remote_version_cp'handle :: CUShort
} deriving (Eq,Show)
p'read_remote_version_cp'handle p = plusPtr p 0
p'read_remote_version_cp'handle :: Ptr (C'read_remote_version_cp) -> Ptr (CUShort)
instance Storable C'read_remote_version_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'read_remote_version_cp v0
  poke p (C'read_remote_version_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 198 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } read_clock_offset_cp; -}

{-# LINE 202 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 203 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_clock_offset_cp = C'read_clock_offset_cp{
  c'read_clock_offset_cp'handle :: CUShort
} deriving (Eq,Show)
p'read_clock_offset_cp'handle p = plusPtr p 0
p'read_clock_offset_cp'handle :: Ptr (C'read_clock_offset_cp) -> Ptr (CUShort)
instance Storable C'read_clock_offset_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'read_clock_offset_cp v0
  poke p (C'read_clock_offset_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 204 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
            uint32_t tx_bandwith;
            uint32_t rx_bandwith;
            uint16_t max_latency;
            uint16_t voice_setting;
            uint8_t retrans_effort;
            uint16_t pkt_type;
        } setup_sync_conn_cp; -}

{-# LINE 214 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 215 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 216 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 217 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 218 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 219 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 220 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 221 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'setup_sync_conn_cp = C'setup_sync_conn_cp{
  c'setup_sync_conn_cp'handle :: CUShort,
  c'setup_sync_conn_cp'tx_bandwith :: CUInt,
  c'setup_sync_conn_cp'rx_bandwith :: CUInt,
  c'setup_sync_conn_cp'max_latency :: CUShort,
  c'setup_sync_conn_cp'voice_setting :: CUShort,
  c'setup_sync_conn_cp'retrans_effort :: CUChar,
  c'setup_sync_conn_cp'pkt_type :: CUShort
} deriving (Eq,Show)
p'setup_sync_conn_cp'handle p = plusPtr p 0
p'setup_sync_conn_cp'handle :: Ptr (C'setup_sync_conn_cp) -> Ptr (CUShort)
p'setup_sync_conn_cp'tx_bandwith p = plusPtr p 2
p'setup_sync_conn_cp'tx_bandwith :: Ptr (C'setup_sync_conn_cp) -> Ptr (CUInt)
p'setup_sync_conn_cp'rx_bandwith p = plusPtr p 6
p'setup_sync_conn_cp'rx_bandwith :: Ptr (C'setup_sync_conn_cp) -> Ptr (CUInt)
p'setup_sync_conn_cp'max_latency p = plusPtr p 10
p'setup_sync_conn_cp'max_latency :: Ptr (C'setup_sync_conn_cp) -> Ptr (CUShort)
p'setup_sync_conn_cp'voice_setting p = plusPtr p 12
p'setup_sync_conn_cp'voice_setting :: Ptr (C'setup_sync_conn_cp) -> Ptr (CUShort)
p'setup_sync_conn_cp'retrans_effort p = plusPtr p 14
p'setup_sync_conn_cp'retrans_effort :: Ptr (C'setup_sync_conn_cp) -> Ptr (CUChar)
p'setup_sync_conn_cp'pkt_type p = plusPtr p 15
p'setup_sync_conn_cp'pkt_type :: Ptr (C'setup_sync_conn_cp) -> Ptr (CUShort)
instance Storable C'setup_sync_conn_cp where
  sizeOf _ = 17
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 6
    v3 <- peekByteOff p 10
    v4 <- peekByteOff p 12
    v5 <- peekByteOff p 14
    v6 <- peekByteOff p 15
    return $ C'setup_sync_conn_cp v0 v1 v2 v3 v4 v5 v6
  poke p (C'setup_sync_conn_cp v0 v1 v2 v3 v4 v5 v6) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 6 v2
    pokeByteOff p 10 v3
    pokeByteOff p 12 v4
    pokeByteOff p 14 v5
    pokeByteOff p 15 v6
    return ()

{-# LINE 222 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
            uint32_t tx_bandwith;
            uint32_t rx_bandwith;
            uint16_t max_latency;
            uint16_t voice_setting;
            uint8_t retrans_effort;
            uint16_t pkt_type;
        } accept_sync_conn_req_cp; -}

{-# LINE 232 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 233 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 234 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 235 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 236 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 237 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 238 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 239 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'accept_sync_conn_req_cp = C'accept_sync_conn_req_cp{
  c'accept_sync_conn_req_cp'bdaddr :: C'bdaddr_t,
  c'accept_sync_conn_req_cp'tx_bandwith :: CUInt,
  c'accept_sync_conn_req_cp'rx_bandwith :: CUInt,
  c'accept_sync_conn_req_cp'max_latency :: CUShort,
  c'accept_sync_conn_req_cp'voice_setting :: CUShort,
  c'accept_sync_conn_req_cp'retrans_effort :: CUChar,
  c'accept_sync_conn_req_cp'pkt_type :: CUShort
} deriving (Eq,Show)
p'accept_sync_conn_req_cp'bdaddr p = plusPtr p 0
p'accept_sync_conn_req_cp'bdaddr :: Ptr (C'accept_sync_conn_req_cp) -> Ptr (C'bdaddr_t)
p'accept_sync_conn_req_cp'tx_bandwith p = plusPtr p 6
p'accept_sync_conn_req_cp'tx_bandwith :: Ptr (C'accept_sync_conn_req_cp) -> Ptr (CUInt)
p'accept_sync_conn_req_cp'rx_bandwith p = plusPtr p 10
p'accept_sync_conn_req_cp'rx_bandwith :: Ptr (C'accept_sync_conn_req_cp) -> Ptr (CUInt)
p'accept_sync_conn_req_cp'max_latency p = plusPtr p 14
p'accept_sync_conn_req_cp'max_latency :: Ptr (C'accept_sync_conn_req_cp) -> Ptr (CUShort)
p'accept_sync_conn_req_cp'voice_setting p = plusPtr p 16
p'accept_sync_conn_req_cp'voice_setting :: Ptr (C'accept_sync_conn_req_cp) -> Ptr (CUShort)
p'accept_sync_conn_req_cp'retrans_effort p = plusPtr p 18
p'accept_sync_conn_req_cp'retrans_effort :: Ptr (C'accept_sync_conn_req_cp) -> Ptr (CUChar)
p'accept_sync_conn_req_cp'pkt_type p = plusPtr p 19
p'accept_sync_conn_req_cp'pkt_type :: Ptr (C'accept_sync_conn_req_cp) -> Ptr (CUShort)
instance Storable C'accept_sync_conn_req_cp where
  sizeOf _ = 21
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    v2 <- peekByteOff p 10
    v3 <- peekByteOff p 14
    v4 <- peekByteOff p 16
    v5 <- peekByteOff p 18
    v6 <- peekByteOff p 19
    return $ C'accept_sync_conn_req_cp v0 v1 v2 v3 v4 v5 v6
  poke p (C'accept_sync_conn_req_cp v0 v1 v2 v3 v4 v5 v6) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    pokeByteOff p 10 v2
    pokeByteOff p 14 v3
    pokeByteOff p 16 v4
    pokeByteOff p 18 v5
    pokeByteOff p 19 v6
    return ()

{-# LINE 240 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t reason;
        } reject_sync_conn_req_cp; -}

{-# LINE 244 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 245 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 246 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'reject_sync_conn_req_cp = C'reject_sync_conn_req_cp{
  c'reject_sync_conn_req_cp'bdaddr :: C'bdaddr_t,
  c'reject_sync_conn_req_cp'reason :: CUChar
} deriving (Eq,Show)
p'reject_sync_conn_req_cp'bdaddr p = plusPtr p 0
p'reject_sync_conn_req_cp'bdaddr :: Ptr (C'reject_sync_conn_req_cp) -> Ptr (C'bdaddr_t)
p'reject_sync_conn_req_cp'reason p = plusPtr p 6
p'reject_sync_conn_req_cp'reason :: Ptr (C'reject_sync_conn_req_cp) -> Ptr (CUChar)
instance Storable C'reject_sync_conn_req_cp where
  sizeOf _ = 7
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    return $ C'reject_sync_conn_req_cp v0 v1
  poke p (C'reject_sync_conn_req_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    return ()

{-# LINE 247 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
            uint8_t capability;
            uint8_t oob_data;
            uint8_t authentication;
        } io_capability_reply_cp; -}

{-# LINE 254 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 255 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 256 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 257 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 258 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'io_capability_reply_cp = C'io_capability_reply_cp{
  c'io_capability_reply_cp'bdaddr :: C'bdaddr_t,
  c'io_capability_reply_cp'capability :: CUChar,
  c'io_capability_reply_cp'oob_data :: CUChar,
  c'io_capability_reply_cp'authentication :: CUChar
} deriving (Eq,Show)
p'io_capability_reply_cp'bdaddr p = plusPtr p 0
p'io_capability_reply_cp'bdaddr :: Ptr (C'io_capability_reply_cp) -> Ptr (C'bdaddr_t)
p'io_capability_reply_cp'capability p = plusPtr p 6
p'io_capability_reply_cp'capability :: Ptr (C'io_capability_reply_cp) -> Ptr (CUChar)
p'io_capability_reply_cp'oob_data p = plusPtr p 7
p'io_capability_reply_cp'oob_data :: Ptr (C'io_capability_reply_cp) -> Ptr (CUChar)
p'io_capability_reply_cp'authentication p = plusPtr p 8
p'io_capability_reply_cp'authentication :: Ptr (C'io_capability_reply_cp) -> Ptr (CUChar)
instance Storable C'io_capability_reply_cp where
  sizeOf _ = 9
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    v2 <- peekByteOff p 7
    v3 <- peekByteOff p 8
    return $ C'io_capability_reply_cp v0 v1 v2 v3
  poke p (C'io_capability_reply_cp v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    pokeByteOff p 7 v2
    pokeByteOff p 8 v3
    return ()

{-# LINE 259 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
        } user_confirm_reply_cp; -}

{-# LINE 263 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 264 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'user_confirm_reply_cp = C'user_confirm_reply_cp{
  c'user_confirm_reply_cp'bdaddr :: C'bdaddr_t
} deriving (Eq,Show)
p'user_confirm_reply_cp'bdaddr p = plusPtr p 0
p'user_confirm_reply_cp'bdaddr :: Ptr (C'user_confirm_reply_cp) -> Ptr (C'bdaddr_t)
instance Storable C'user_confirm_reply_cp where
  sizeOf _ = 6
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'user_confirm_reply_cp v0
  poke p (C'user_confirm_reply_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 265 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint32_t passkey;
        } user_passkey_reply_cp; -}

{-# LINE 269 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 270 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 271 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'user_passkey_reply_cp = C'user_passkey_reply_cp{
  c'user_passkey_reply_cp'bdaddr :: C'bdaddr_t,
  c'user_passkey_reply_cp'passkey :: CUInt
} deriving (Eq,Show)
p'user_passkey_reply_cp'bdaddr p = plusPtr p 0
p'user_passkey_reply_cp'bdaddr :: Ptr (C'user_passkey_reply_cp) -> Ptr (C'bdaddr_t)
p'user_passkey_reply_cp'passkey p = plusPtr p 6
p'user_passkey_reply_cp'passkey :: Ptr (C'user_passkey_reply_cp) -> Ptr (CUInt)
instance Storable C'user_passkey_reply_cp where
  sizeOf _ = 10
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    return $ C'user_passkey_reply_cp v0 v1
  poke p (C'user_passkey_reply_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    return ()

{-# LINE 272 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t hash[16]; uint8_t randomizer[16];
        } remote_oob_data_reply_cp; -}

{-# LINE 276 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 277 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 278 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 279 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'remote_oob_data_reply_cp = C'remote_oob_data_reply_cp{
  c'remote_oob_data_reply_cp'bdaddr :: C'bdaddr_t,
  c'remote_oob_data_reply_cp'hash :: [CUChar],
  c'remote_oob_data_reply_cp'randomizer :: [CUChar]
} deriving (Eq,Show)
p'remote_oob_data_reply_cp'bdaddr p = plusPtr p 0
p'remote_oob_data_reply_cp'bdaddr :: Ptr (C'remote_oob_data_reply_cp) -> Ptr (C'bdaddr_t)
p'remote_oob_data_reply_cp'hash p = plusPtr p 6
p'remote_oob_data_reply_cp'hash :: Ptr (C'remote_oob_data_reply_cp) -> Ptr (CUChar)
p'remote_oob_data_reply_cp'randomizer p = plusPtr p 22
p'remote_oob_data_reply_cp'randomizer :: Ptr (C'remote_oob_data_reply_cp) -> Ptr (CUChar)
instance Storable C'remote_oob_data_reply_cp where
  sizeOf _ = 38
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 16 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 6)
    v2 <- let s = div 16 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 22)
    return $ C'remote_oob_data_reply_cp v0 v1 v2
  poke p (C'remote_oob_data_reply_cp v0 v1 v2) = do
    pokeByteOff p 0 v0
    let s = div 16 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 6) (take s v1)
    let s = div 16 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 22) (take s v2)
    return ()

{-# LINE 280 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t reason;
        } io_capability_neg_reply_cp; -}

{-# LINE 284 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 285 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 286 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'io_capability_neg_reply_cp = C'io_capability_neg_reply_cp{
  c'io_capability_neg_reply_cp'bdaddr :: C'bdaddr_t,
  c'io_capability_neg_reply_cp'reason :: CUChar
} deriving (Eq,Show)
p'io_capability_neg_reply_cp'bdaddr p = plusPtr p 0
p'io_capability_neg_reply_cp'bdaddr :: Ptr (C'io_capability_neg_reply_cp) -> Ptr (C'bdaddr_t)
p'io_capability_neg_reply_cp'reason p = plusPtr p 6
p'io_capability_neg_reply_cp'reason :: Ptr (C'io_capability_neg_reply_cp) -> Ptr (CUChar)
instance Storable C'io_capability_neg_reply_cp where
  sizeOf _ = 7
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    return $ C'io_capability_neg_reply_cp v0 v1
  poke p (C'io_capability_neg_reply_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    return ()

{-# LINE 287 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t handle;
            uint8_t key_length;
            uint8_t key_type;
            uint8_t key[32];
        } create_physical_link_cp; -}

{-# LINE 294 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 295 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 296 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 297 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 298 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'create_physical_link_cp = C'create_physical_link_cp{
  c'create_physical_link_cp'handle :: CUChar,
  c'create_physical_link_cp'key_length :: CUChar,
  c'create_physical_link_cp'key_type :: CUChar,
  c'create_physical_link_cp'key :: [CUChar]
} deriving (Eq,Show)
p'create_physical_link_cp'handle p = plusPtr p 0
p'create_physical_link_cp'handle :: Ptr (C'create_physical_link_cp) -> Ptr (CUChar)
p'create_physical_link_cp'key_length p = plusPtr p 1
p'create_physical_link_cp'key_length :: Ptr (C'create_physical_link_cp) -> Ptr (CUChar)
p'create_physical_link_cp'key_type p = plusPtr p 2
p'create_physical_link_cp'key_type :: Ptr (C'create_physical_link_cp) -> Ptr (CUChar)
p'create_physical_link_cp'key p = plusPtr p 3
p'create_physical_link_cp'key :: Ptr (C'create_physical_link_cp) -> Ptr (CUChar)
instance Storable C'create_physical_link_cp where
  sizeOf _ = 35
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 2
    v3 <- let s = div 32 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 3)
    return $ C'create_physical_link_cp v0 v1 v2 v3
  poke p (C'create_physical_link_cp v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 2 v2
    let s = div 32 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 3) (take s v3)
    return ()

{-# LINE 299 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t handle;
            uint8_t key_length;
            uint8_t key_type;
            uint8_t key[32];
        } accept_physical_link_cp; -}

{-# LINE 306 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 307 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 308 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 309 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 310 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'accept_physical_link_cp = C'accept_physical_link_cp{
  c'accept_physical_link_cp'handle :: CUChar,
  c'accept_physical_link_cp'key_length :: CUChar,
  c'accept_physical_link_cp'key_type :: CUChar,
  c'accept_physical_link_cp'key :: [CUChar]
} deriving (Eq,Show)
p'accept_physical_link_cp'handle p = plusPtr p 0
p'accept_physical_link_cp'handle :: Ptr (C'accept_physical_link_cp) -> Ptr (CUChar)
p'accept_physical_link_cp'key_length p = plusPtr p 1
p'accept_physical_link_cp'key_length :: Ptr (C'accept_physical_link_cp) -> Ptr (CUChar)
p'accept_physical_link_cp'key_type p = plusPtr p 2
p'accept_physical_link_cp'key_type :: Ptr (C'accept_physical_link_cp) -> Ptr (CUChar)
p'accept_physical_link_cp'key p = plusPtr p 3
p'accept_physical_link_cp'key :: Ptr (C'accept_physical_link_cp) -> Ptr (CUChar)
instance Storable C'accept_physical_link_cp where
  sizeOf _ = 35
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 2
    v3 <- let s = div 32 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 3)
    return $ C'accept_physical_link_cp v0 v1 v2 v3
  poke p (C'accept_physical_link_cp v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 2 v2
    let s = div 32 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 3) (take s v3)
    return ()

{-# LINE 311 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t handle; uint8_t reason;
        } disconnect_physical_link_cp; -}

{-# LINE 315 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 316 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 317 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'disconnect_physical_link_cp = C'disconnect_physical_link_cp{
  c'disconnect_physical_link_cp'handle :: CUChar,
  c'disconnect_physical_link_cp'reason :: CUChar
} deriving (Eq,Show)
p'disconnect_physical_link_cp'handle p = plusPtr p 0
p'disconnect_physical_link_cp'handle :: Ptr (C'disconnect_physical_link_cp) -> Ptr (CUChar)
p'disconnect_physical_link_cp'reason p = plusPtr p 1
p'disconnect_physical_link_cp'reason :: Ptr (C'disconnect_physical_link_cp) -> Ptr (CUChar)
instance Storable C'disconnect_physical_link_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'disconnect_physical_link_cp v0 v1
  poke p (C'disconnect_physical_link_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 318 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t handle; uint8_t tx_flow[16]; uint8_t rx_flow[16];
        } create_logical_link_cp; -}

{-# LINE 322 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 323 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 324 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 325 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'create_logical_link_cp = C'create_logical_link_cp{
  c'create_logical_link_cp'handle :: CUChar,
  c'create_logical_link_cp'tx_flow :: [CUChar],
  c'create_logical_link_cp'rx_flow :: [CUChar]
} deriving (Eq,Show)
p'create_logical_link_cp'handle p = plusPtr p 0
p'create_logical_link_cp'handle :: Ptr (C'create_logical_link_cp) -> Ptr (CUChar)
p'create_logical_link_cp'tx_flow p = plusPtr p 1
p'create_logical_link_cp'tx_flow :: Ptr (C'create_logical_link_cp) -> Ptr (CUChar)
p'create_logical_link_cp'rx_flow p = plusPtr p 17
p'create_logical_link_cp'rx_flow :: Ptr (C'create_logical_link_cp) -> Ptr (CUChar)
instance Storable C'create_logical_link_cp where
  sizeOf _ = 33
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 16 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 1)
    v2 <- let s = div 16 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 17)
    return $ C'create_logical_link_cp v0 v1 v2
  poke p (C'create_logical_link_cp v0 v1 v2) = do
    pokeByteOff p 0 v0
    let s = div 16 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 1) (take s v1)
    let s = div 16 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 17) (take s v2)
    return ()

{-# LINE 326 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } disconnect_logical_link_cp; -}

{-# LINE 330 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 331 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'disconnect_logical_link_cp = C'disconnect_logical_link_cp{
  c'disconnect_logical_link_cp'handle :: CUShort
} deriving (Eq,Show)
p'disconnect_logical_link_cp'handle p = plusPtr p 0
p'disconnect_logical_link_cp'handle :: Ptr (C'disconnect_logical_link_cp) -> Ptr (CUShort)
instance Storable C'disconnect_logical_link_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'disconnect_logical_link_cp v0
  poke p (C'disconnect_logical_link_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 332 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t handle; uint8_t tx_flow_id;
        } cancel_logical_link_cp; -}

{-# LINE 336 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 337 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 338 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'cancel_logical_link_cp = C'cancel_logical_link_cp{
  c'cancel_logical_link_cp'handle :: CUChar,
  c'cancel_logical_link_cp'tx_flow_id :: CUChar
} deriving (Eq,Show)
p'cancel_logical_link_cp'handle p = plusPtr p 0
p'cancel_logical_link_cp'handle :: Ptr (C'cancel_logical_link_cp) -> Ptr (CUChar)
p'cancel_logical_link_cp'tx_flow_id p = plusPtr p 1
p'cancel_logical_link_cp'tx_flow_id :: Ptr (C'cancel_logical_link_cp) -> Ptr (CUChar)
instance Storable C'cancel_logical_link_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'cancel_logical_link_cp v0 v1
  poke p (C'cancel_logical_link_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 339 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t handle; uint8_t tx_flow_id;
        } cancel_logical_link_rp; -}

{-# LINE 343 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 344 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 345 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 346 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'cancel_logical_link_rp = C'cancel_logical_link_rp{
  c'cancel_logical_link_rp'status :: CUChar,
  c'cancel_logical_link_rp'handle :: CUChar,
  c'cancel_logical_link_rp'tx_flow_id :: CUChar
} deriving (Eq,Show)
p'cancel_logical_link_rp'status p = plusPtr p 0
p'cancel_logical_link_rp'status :: Ptr (C'cancel_logical_link_rp) -> Ptr (CUChar)
p'cancel_logical_link_rp'handle p = plusPtr p 1
p'cancel_logical_link_rp'handle :: Ptr (C'cancel_logical_link_rp) -> Ptr (CUChar)
p'cancel_logical_link_rp'tx_flow_id p = plusPtr p 2
p'cancel_logical_link_rp'tx_flow_id :: Ptr (C'cancel_logical_link_rp) -> Ptr (CUChar)
instance Storable C'cancel_logical_link_rp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 2
    return $ C'cancel_logical_link_rp v0 v1 v2
  poke p (C'cancel_logical_link_rp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 2 v2
    return ()

{-# LINE 347 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint16_t max_interval; uint16_t min_interval;
        } hold_mode_cp; -}

{-# LINE 351 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 352 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 353 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 354 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'hold_mode_cp = C'hold_mode_cp{
  c'hold_mode_cp'handle :: CUShort,
  c'hold_mode_cp'max_interval :: CUShort,
  c'hold_mode_cp'min_interval :: CUShort
} deriving (Eq,Show)
p'hold_mode_cp'handle p = plusPtr p 0
p'hold_mode_cp'handle :: Ptr (C'hold_mode_cp) -> Ptr (CUShort)
p'hold_mode_cp'max_interval p = plusPtr p 2
p'hold_mode_cp'max_interval :: Ptr (C'hold_mode_cp) -> Ptr (CUShort)
p'hold_mode_cp'min_interval p = plusPtr p 4
p'hold_mode_cp'min_interval :: Ptr (C'hold_mode_cp) -> Ptr (CUShort)
instance Storable C'hold_mode_cp where
  sizeOf _ = 6
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    return $ C'hold_mode_cp v0 v1 v2
  poke p (C'hold_mode_cp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    return ()

{-# LINE 355 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
            uint16_t max_interval;
            uint16_t min_interval;
            uint16_t attempt;
            uint16_t timeout;
        } sniff_mode_cp; -}

{-# LINE 363 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 364 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 365 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 366 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 367 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 368 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'sniff_mode_cp = C'sniff_mode_cp{
  c'sniff_mode_cp'handle :: CUShort,
  c'sniff_mode_cp'max_interval :: CUShort,
  c'sniff_mode_cp'min_interval :: CUShort,
  c'sniff_mode_cp'attempt :: CUShort,
  c'sniff_mode_cp'timeout :: CUShort
} deriving (Eq,Show)
p'sniff_mode_cp'handle p = plusPtr p 0
p'sniff_mode_cp'handle :: Ptr (C'sniff_mode_cp) -> Ptr (CUShort)
p'sniff_mode_cp'max_interval p = plusPtr p 2
p'sniff_mode_cp'max_interval :: Ptr (C'sniff_mode_cp) -> Ptr (CUShort)
p'sniff_mode_cp'min_interval p = plusPtr p 4
p'sniff_mode_cp'min_interval :: Ptr (C'sniff_mode_cp) -> Ptr (CUShort)
p'sniff_mode_cp'attempt p = plusPtr p 6
p'sniff_mode_cp'attempt :: Ptr (C'sniff_mode_cp) -> Ptr (CUShort)
p'sniff_mode_cp'timeout p = plusPtr p 8
p'sniff_mode_cp'timeout :: Ptr (C'sniff_mode_cp) -> Ptr (CUShort)
instance Storable C'sniff_mode_cp where
  sizeOf _ = 10
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    v3 <- peekByteOff p 6
    v4 <- peekByteOff p 8
    return $ C'sniff_mode_cp v0 v1 v2 v3 v4
  poke p (C'sniff_mode_cp v0 v1 v2 v3 v4) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    pokeByteOff p 6 v3
    pokeByteOff p 8 v4
    return ()

{-# LINE 369 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } exit_sniff_mode_cp; -}

{-# LINE 373 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 374 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'exit_sniff_mode_cp = C'exit_sniff_mode_cp{
  c'exit_sniff_mode_cp'handle :: CUShort
} deriving (Eq,Show)
p'exit_sniff_mode_cp'handle p = plusPtr p 0
p'exit_sniff_mode_cp'handle :: Ptr (C'exit_sniff_mode_cp) -> Ptr (CUShort)
instance Storable C'exit_sniff_mode_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'exit_sniff_mode_cp v0
  poke p (C'exit_sniff_mode_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 375 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint16_t max_interval; uint16_t min_interval;
        } park_mode_cp; -}

{-# LINE 379 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 380 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 381 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 382 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'park_mode_cp = C'park_mode_cp{
  c'park_mode_cp'handle :: CUShort,
  c'park_mode_cp'max_interval :: CUShort,
  c'park_mode_cp'min_interval :: CUShort
} deriving (Eq,Show)
p'park_mode_cp'handle p = plusPtr p 0
p'park_mode_cp'handle :: Ptr (C'park_mode_cp) -> Ptr (CUShort)
p'park_mode_cp'max_interval p = plusPtr p 2
p'park_mode_cp'max_interval :: Ptr (C'park_mode_cp) -> Ptr (CUShort)
p'park_mode_cp'min_interval p = plusPtr p 4
p'park_mode_cp'min_interval :: Ptr (C'park_mode_cp) -> Ptr (CUShort)
instance Storable C'park_mode_cp where
  sizeOf _ = 6
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    return $ C'park_mode_cp v0 v1 v2
  poke p (C'park_mode_cp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    return ()

{-# LINE 383 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } exit_park_mode_cp; -}

{-# LINE 387 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 388 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'exit_park_mode_cp = C'exit_park_mode_cp{
  c'exit_park_mode_cp'handle :: CUShort
} deriving (Eq,Show)
p'exit_park_mode_cp'handle p = plusPtr p 0
p'exit_park_mode_cp'handle :: Ptr (C'exit_park_mode_cp) -> Ptr (CUShort)
instance Storable C'exit_park_mode_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'exit_park_mode_cp v0
  poke p (C'exit_park_mode_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 389 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t service_type;
            uint32_t token_rate;
            uint32_t peak_bandwidth;
            uint32_t latency;
            uint32_t delay_variation;
        } hci_qos; -}

{-# LINE 397 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 398 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 399 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 400 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 401 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 402 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'hci_qos = C'hci_qos{
  c'hci_qos'service_type :: CUChar,
  c'hci_qos'token_rate :: CUInt,
  c'hci_qos'peak_bandwidth :: CUInt,
  c'hci_qos'latency :: CUInt,
  c'hci_qos'delay_variation :: CUInt
} deriving (Eq,Show)
p'hci_qos'service_type p = plusPtr p 0
p'hci_qos'service_type :: Ptr (C'hci_qos) -> Ptr (CUChar)
p'hci_qos'token_rate p = plusPtr p 1
p'hci_qos'token_rate :: Ptr (C'hci_qos) -> Ptr (CUInt)
p'hci_qos'peak_bandwidth p = plusPtr p 5
p'hci_qos'peak_bandwidth :: Ptr (C'hci_qos) -> Ptr (CUInt)
p'hci_qos'latency p = plusPtr p 9
p'hci_qos'latency :: Ptr (C'hci_qos) -> Ptr (CUInt)
p'hci_qos'delay_variation p = plusPtr p 13
p'hci_qos'delay_variation :: Ptr (C'hci_qos) -> Ptr (CUInt)
instance Storable C'hci_qos where
  sizeOf _ = 17
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 5
    v3 <- peekByteOff p 9
    v4 <- peekByteOff p 13
    return $ C'hci_qos v0 v1 v2 v3 v4
  poke p (C'hci_qos v0 v1 v2 v3 v4) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 5 v2
    pokeByteOff p 9 v3
    pokeByteOff p 13 v4
    return ()

{-# LINE 403 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint8_t flags; hci_qos qos;
        } qos_setup_cp; -}

{-# LINE 407 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 408 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 409 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 410 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'qos_setup_cp = C'qos_setup_cp{
  c'qos_setup_cp'handle :: CUShort,
  c'qos_setup_cp'flags :: CUChar,
  c'qos_setup_cp'qos :: C'hci_qos
} deriving (Eq,Show)
p'qos_setup_cp'handle p = plusPtr p 0
p'qos_setup_cp'handle :: Ptr (C'qos_setup_cp) -> Ptr (CUShort)
p'qos_setup_cp'flags p = plusPtr p 2
p'qos_setup_cp'flags :: Ptr (C'qos_setup_cp) -> Ptr (CUChar)
p'qos_setup_cp'qos p = plusPtr p 3
p'qos_setup_cp'qos :: Ptr (C'qos_setup_cp) -> Ptr (C'hci_qos)
instance Storable C'qos_setup_cp where
  sizeOf _ = 20
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 3
    return $ C'qos_setup_cp v0 v1 v2
  poke p (C'qos_setup_cp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 3 v2
    return ()

{-# LINE 411 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } role_discovery_cp; -}

{-# LINE 415 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 416 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'role_discovery_cp = C'role_discovery_cp{
  c'role_discovery_cp'handle :: CUShort
} deriving (Eq,Show)
p'role_discovery_cp'handle p = plusPtr p 0
p'role_discovery_cp'handle :: Ptr (C'role_discovery_cp) -> Ptr (CUShort)
instance Storable C'role_discovery_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'role_discovery_cp v0
  poke p (C'role_discovery_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 417 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t role;
        } role_discovery_rp; -}

{-# LINE 421 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 422 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 423 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 424 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'role_discovery_rp = C'role_discovery_rp{
  c'role_discovery_rp'status :: CUChar,
  c'role_discovery_rp'handle :: CUShort,
  c'role_discovery_rp'role :: CUChar
} deriving (Eq,Show)
p'role_discovery_rp'status p = plusPtr p 0
p'role_discovery_rp'status :: Ptr (C'role_discovery_rp) -> Ptr (CUChar)
p'role_discovery_rp'handle p = plusPtr p 1
p'role_discovery_rp'handle :: Ptr (C'role_discovery_rp) -> Ptr (CUShort)
p'role_discovery_rp'role p = plusPtr p 3
p'role_discovery_rp'role :: Ptr (C'role_discovery_rp) -> Ptr (CUChar)
instance Storable C'role_discovery_rp where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    return $ C'role_discovery_rp v0 v1 v2
  poke p (C'role_discovery_rp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    return ()

{-# LINE 425 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t role;
        } switch_role_cp; -}

{-# LINE 429 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 430 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 431 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'switch_role_cp = C'switch_role_cp{
  c'switch_role_cp'bdaddr :: C'bdaddr_t,
  c'switch_role_cp'role :: CUChar
} deriving (Eq,Show)
p'switch_role_cp'bdaddr p = plusPtr p 0
p'switch_role_cp'bdaddr :: Ptr (C'switch_role_cp) -> Ptr (C'bdaddr_t)
p'switch_role_cp'role p = plusPtr p 6
p'switch_role_cp'role :: Ptr (C'switch_role_cp) -> Ptr (CUChar)
instance Storable C'switch_role_cp where
  sizeOf _ = 7
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    return $ C'switch_role_cp v0 v1
  poke p (C'switch_role_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    return ()

{-# LINE 432 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } read_link_policy_cp; -}

{-# LINE 436 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 437 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_link_policy_cp = C'read_link_policy_cp{
  c'read_link_policy_cp'handle :: CUShort
} deriving (Eq,Show)
p'read_link_policy_cp'handle p = plusPtr p 0
p'read_link_policy_cp'handle :: Ptr (C'read_link_policy_cp) -> Ptr (CUShort)
instance Storable C'read_link_policy_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'read_link_policy_cp v0
  poke p (C'read_link_policy_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 438 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint16_t policy;
        } read_link_policy_rp; -}

{-# LINE 442 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 443 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 444 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 445 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_link_policy_rp = C'read_link_policy_rp{
  c'read_link_policy_rp'status :: CUChar,
  c'read_link_policy_rp'handle :: CUShort,
  c'read_link_policy_rp'policy :: CUShort
} deriving (Eq,Show)
p'read_link_policy_rp'status p = plusPtr p 0
p'read_link_policy_rp'status :: Ptr (C'read_link_policy_rp) -> Ptr (CUChar)
p'read_link_policy_rp'handle p = plusPtr p 1
p'read_link_policy_rp'handle :: Ptr (C'read_link_policy_rp) -> Ptr (CUShort)
p'read_link_policy_rp'policy p = plusPtr p 3
p'read_link_policy_rp'policy :: Ptr (C'read_link_policy_rp) -> Ptr (CUShort)
instance Storable C'read_link_policy_rp where
  sizeOf _ = 5
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    return $ C'read_link_policy_rp v0 v1 v2
  poke p (C'read_link_policy_rp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    return ()

{-# LINE 446 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint16_t policy;
        } write_link_policy_cp; -}

{-# LINE 450 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 451 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 452 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_link_policy_cp = C'write_link_policy_cp{
  c'write_link_policy_cp'handle :: CUShort,
  c'write_link_policy_cp'policy :: CUShort
} deriving (Eq,Show)
p'write_link_policy_cp'handle p = plusPtr p 0
p'write_link_policy_cp'handle :: Ptr (C'write_link_policy_cp) -> Ptr (CUShort)
p'write_link_policy_cp'policy p = plusPtr p 2
p'write_link_policy_cp'policy :: Ptr (C'write_link_policy_cp) -> Ptr (CUShort)
instance Storable C'write_link_policy_cp where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'write_link_policy_cp v0 v1
  poke p (C'write_link_policy_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 453 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle;
        } write_link_policy_rp; -}

{-# LINE 457 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 458 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 459 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_link_policy_rp = C'write_link_policy_rp{
  c'write_link_policy_rp'status :: CUChar,
  c'write_link_policy_rp'handle :: CUShort
} deriving (Eq,Show)
p'write_link_policy_rp'status p = plusPtr p 0
p'write_link_policy_rp'status :: Ptr (C'write_link_policy_rp) -> Ptr (CUChar)
p'write_link_policy_rp'handle p = plusPtr p 1
p'write_link_policy_rp'handle :: Ptr (C'write_link_policy_rp) -> Ptr (CUShort)
instance Storable C'write_link_policy_rp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'write_link_policy_rp v0 v1
  poke p (C'write_link_policy_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 460 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
            uint16_t max_latency;
            uint16_t min_remote_timeout;
            uint16_t min_local_timeout;
        } sniff_subrating_cp; -}

{-# LINE 467 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 468 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 469 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 470 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 471 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'sniff_subrating_cp = C'sniff_subrating_cp{
  c'sniff_subrating_cp'handle :: CUShort,
  c'sniff_subrating_cp'max_latency :: CUShort,
  c'sniff_subrating_cp'min_remote_timeout :: CUShort,
  c'sniff_subrating_cp'min_local_timeout :: CUShort
} deriving (Eq,Show)
p'sniff_subrating_cp'handle p = plusPtr p 0
p'sniff_subrating_cp'handle :: Ptr (C'sniff_subrating_cp) -> Ptr (CUShort)
p'sniff_subrating_cp'max_latency p = plusPtr p 2
p'sniff_subrating_cp'max_latency :: Ptr (C'sniff_subrating_cp) -> Ptr (CUShort)
p'sniff_subrating_cp'min_remote_timeout p = plusPtr p 4
p'sniff_subrating_cp'min_remote_timeout :: Ptr (C'sniff_subrating_cp) -> Ptr (CUShort)
p'sniff_subrating_cp'min_local_timeout p = plusPtr p 6
p'sniff_subrating_cp'min_local_timeout :: Ptr (C'sniff_subrating_cp) -> Ptr (CUShort)
instance Storable C'sniff_subrating_cp where
  sizeOf _ = 8
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    v3 <- peekByteOff p 6
    return $ C'sniff_subrating_cp v0 v1 v2 v3
  poke p (C'sniff_subrating_cp v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    pokeByteOff p 6 v3
    return ()

{-# LINE 472 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t mask[8];
        } set_event_mask_cp; -}

{-# LINE 476 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 477 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'set_event_mask_cp = C'set_event_mask_cp{
  c'set_event_mask_cp'mask :: [CUChar]
} deriving (Eq,Show)
p'set_event_mask_cp'mask p = plusPtr p 0
p'set_event_mask_cp'mask :: Ptr (C'set_event_mask_cp) -> Ptr (CUChar)
instance Storable C'set_event_mask_cp where
  sizeOf _ = 8
  alignment _ = 1
  peek p = do
    v0 <- let s = div 8 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 0)
    return $ C'set_event_mask_cp v0
  poke p (C'set_event_mask_cp v0) = do
    let s = div 8 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 0) (take s v0)
    return ()

{-# LINE 478 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t flt_type; uint8_t cond_type; uint8_t condition[0];
        } set_event_flt_cp; -}

{-# LINE 482 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 483 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 484 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 485 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'set_event_flt_cp = C'set_event_flt_cp{
  c'set_event_flt_cp'flt_type :: CUChar,
  c'set_event_flt_cp'cond_type :: CUChar,
  c'set_event_flt_cp'condition :: CUChar
} deriving (Eq,Show)
p'set_event_flt_cp'flt_type p = plusPtr p 0
p'set_event_flt_cp'flt_type :: Ptr (C'set_event_flt_cp) -> Ptr (CUChar)
p'set_event_flt_cp'cond_type p = plusPtr p 1
p'set_event_flt_cp'cond_type :: Ptr (C'set_event_flt_cp) -> Ptr (CUChar)
p'set_event_flt_cp'condition p = plusPtr p 2
p'set_event_flt_cp'condition :: Ptr (C'set_event_flt_cp) -> Ptr (CUChar)
instance Storable C'set_event_flt_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 2
    return $ C'set_event_flt_cp v0 v1 v2
  poke p (C'set_event_flt_cp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 2 v2
    return ()

{-# LINE 486 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t pin_type;
        } read_pin_type_rp; -}

{-# LINE 490 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 491 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 492 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_pin_type_rp = C'read_pin_type_rp{
  c'read_pin_type_rp'status :: CUChar,
  c'read_pin_type_rp'pin_type :: CUChar
} deriving (Eq,Show)
p'read_pin_type_rp'status p = plusPtr p 0
p'read_pin_type_rp'status :: Ptr (C'read_pin_type_rp) -> Ptr (CUChar)
p'read_pin_type_rp'pin_type p = plusPtr p 1
p'read_pin_type_rp'pin_type :: Ptr (C'read_pin_type_rp) -> Ptr (CUChar)
instance Storable C'read_pin_type_rp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'read_pin_type_rp v0 v1
  poke p (C'read_pin_type_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 493 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t pin_type;
        } write_pin_type_cp; -}

{-# LINE 497 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 498 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_pin_type_cp = C'write_pin_type_cp{
  c'write_pin_type_cp'pin_type :: CUChar
} deriving (Eq,Show)
p'write_pin_type_cp'pin_type p = plusPtr p 0
p'write_pin_type_cp'pin_type :: Ptr (C'write_pin_type_cp) -> Ptr (CUChar)
instance Storable C'write_pin_type_cp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_pin_type_cp v0
  poke p (C'write_pin_type_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 499 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t read_all;
        } read_stored_link_key_cp; -}

{-# LINE 503 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 504 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 505 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_stored_link_key_cp = C'read_stored_link_key_cp{
  c'read_stored_link_key_cp'bdaddr :: C'bdaddr_t,
  c'read_stored_link_key_cp'read_all :: CUChar
} deriving (Eq,Show)
p'read_stored_link_key_cp'bdaddr p = plusPtr p 0
p'read_stored_link_key_cp'bdaddr :: Ptr (C'read_stored_link_key_cp) -> Ptr (C'bdaddr_t)
p'read_stored_link_key_cp'read_all p = plusPtr p 6
p'read_stored_link_key_cp'read_all :: Ptr (C'read_stored_link_key_cp) -> Ptr (CUChar)
instance Storable C'read_stored_link_key_cp where
  sizeOf _ = 7
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    return $ C'read_stored_link_key_cp v0 v1
  poke p (C'read_stored_link_key_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    return ()

{-# LINE 506 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t max_keys; uint16_t num_keys;
        } read_stored_link_key_rp; -}

{-# LINE 510 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 511 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 512 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 513 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_stored_link_key_rp = C'read_stored_link_key_rp{
  c'read_stored_link_key_rp'status :: CUChar,
  c'read_stored_link_key_rp'max_keys :: CUShort,
  c'read_stored_link_key_rp'num_keys :: CUShort
} deriving (Eq,Show)
p'read_stored_link_key_rp'status p = plusPtr p 0
p'read_stored_link_key_rp'status :: Ptr (C'read_stored_link_key_rp) -> Ptr (CUChar)
p'read_stored_link_key_rp'max_keys p = plusPtr p 1
p'read_stored_link_key_rp'max_keys :: Ptr (C'read_stored_link_key_rp) -> Ptr (CUShort)
p'read_stored_link_key_rp'num_keys p = plusPtr p 3
p'read_stored_link_key_rp'num_keys :: Ptr (C'read_stored_link_key_rp) -> Ptr (CUShort)
instance Storable C'read_stored_link_key_rp where
  sizeOf _ = 5
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    return $ C'read_stored_link_key_rp v0 v1 v2
  poke p (C'read_stored_link_key_rp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    return ()

{-# LINE 514 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t num_keys;
        } write_stored_link_key_cp; -}

{-# LINE 518 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 519 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_stored_link_key_cp = C'write_stored_link_key_cp{
  c'write_stored_link_key_cp'num_keys :: CUChar
} deriving (Eq,Show)
p'write_stored_link_key_cp'num_keys p = plusPtr p 0
p'write_stored_link_key_cp'num_keys :: Ptr (C'write_stored_link_key_cp) -> Ptr (CUChar)
instance Storable C'write_stored_link_key_cp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_stored_link_key_cp v0
  poke p (C'write_stored_link_key_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 520 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t num_keys;
        } write_stored_link_key_rp; -}

{-# LINE 524 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 525 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 526 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_stored_link_key_rp = C'write_stored_link_key_rp{
  c'write_stored_link_key_rp'status :: CUChar,
  c'write_stored_link_key_rp'num_keys :: CUChar
} deriving (Eq,Show)
p'write_stored_link_key_rp'status p = plusPtr p 0
p'write_stored_link_key_rp'status :: Ptr (C'write_stored_link_key_rp) -> Ptr (CUChar)
p'write_stored_link_key_rp'num_keys p = plusPtr p 1
p'write_stored_link_key_rp'num_keys :: Ptr (C'write_stored_link_key_rp) -> Ptr (CUChar)
instance Storable C'write_stored_link_key_rp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'write_stored_link_key_rp v0 v1
  poke p (C'write_stored_link_key_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 527 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t delete_all;
        } delete_stored_link_key_cp; -}

{-# LINE 531 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 532 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 533 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'delete_stored_link_key_cp = C'delete_stored_link_key_cp{
  c'delete_stored_link_key_cp'bdaddr :: C'bdaddr_t,
  c'delete_stored_link_key_cp'delete_all :: CUChar
} deriving (Eq,Show)
p'delete_stored_link_key_cp'bdaddr p = plusPtr p 0
p'delete_stored_link_key_cp'bdaddr :: Ptr (C'delete_stored_link_key_cp) -> Ptr (C'bdaddr_t)
p'delete_stored_link_key_cp'delete_all p = plusPtr p 6
p'delete_stored_link_key_cp'delete_all :: Ptr (C'delete_stored_link_key_cp) -> Ptr (CUChar)
instance Storable C'delete_stored_link_key_cp where
  sizeOf _ = 7
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    return $ C'delete_stored_link_key_cp v0 v1
  poke p (C'delete_stored_link_key_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    return ()

{-# LINE 534 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t num_keys;
        } delete_stored_link_key_rp; -}

{-# LINE 538 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 539 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 540 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'delete_stored_link_key_rp = C'delete_stored_link_key_rp{
  c'delete_stored_link_key_rp'status :: CUChar,
  c'delete_stored_link_key_rp'num_keys :: CUShort
} deriving (Eq,Show)
p'delete_stored_link_key_rp'status p = plusPtr p 0
p'delete_stored_link_key_rp'status :: Ptr (C'delete_stored_link_key_rp) -> Ptr (CUChar)
p'delete_stored_link_key_rp'num_keys p = plusPtr p 1
p'delete_stored_link_key_rp'num_keys :: Ptr (C'delete_stored_link_key_rp) -> Ptr (CUShort)
instance Storable C'delete_stored_link_key_rp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'delete_stored_link_key_rp v0 v1
  poke p (C'delete_stored_link_key_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 541 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t name[248];
        } change_local_name_cp; -}

{-# LINE 545 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 546 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'change_local_name_cp = C'change_local_name_cp{
  c'change_local_name_cp'name :: [CUChar]
} deriving (Eq,Show)
p'change_local_name_cp'name p = plusPtr p 0
p'change_local_name_cp'name :: Ptr (C'change_local_name_cp) -> Ptr (CUChar)
instance Storable C'change_local_name_cp where
  sizeOf _ = 248
  alignment _ = 1
  peek p = do
    v0 <- let s = div 248 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 0)
    return $ C'change_local_name_cp v0
  poke p (C'change_local_name_cp v0) = do
    let s = div 248 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 0) (take s v0)
    return ()

{-# LINE 547 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t name[248];
        } read_local_name_rp; -}

{-# LINE 551 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 552 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 553 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_local_name_rp = C'read_local_name_rp{
  c'read_local_name_rp'status :: CUChar,
  c'read_local_name_rp'name :: [CUChar]
} deriving (Eq,Show)
p'read_local_name_rp'status p = plusPtr p 0
p'read_local_name_rp'status :: Ptr (C'read_local_name_rp) -> Ptr (CUChar)
p'read_local_name_rp'name p = plusPtr p 1
p'read_local_name_rp'name :: Ptr (C'read_local_name_rp) -> Ptr (CUChar)
instance Storable C'read_local_name_rp where
  sizeOf _ = 249
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 248 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 1)
    return $ C'read_local_name_rp v0 v1
  poke p (C'read_local_name_rp v0 v1) = do
    pokeByteOff p 0 v0
    let s = div 248 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 1) (take s v1)
    return ()

{-# LINE 554 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t timeout;
        } read_conn_accept_timeout_rp; -}

{-# LINE 558 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 559 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 560 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_conn_accept_timeout_rp = C'read_conn_accept_timeout_rp{
  c'read_conn_accept_timeout_rp'status :: CUChar,
  c'read_conn_accept_timeout_rp'timeout :: CUShort
} deriving (Eq,Show)
p'read_conn_accept_timeout_rp'status p = plusPtr p 0
p'read_conn_accept_timeout_rp'status :: Ptr (C'read_conn_accept_timeout_rp) -> Ptr (CUChar)
p'read_conn_accept_timeout_rp'timeout p = plusPtr p 1
p'read_conn_accept_timeout_rp'timeout :: Ptr (C'read_conn_accept_timeout_rp) -> Ptr (CUShort)
instance Storable C'read_conn_accept_timeout_rp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'read_conn_accept_timeout_rp v0 v1
  poke p (C'read_conn_accept_timeout_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 561 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t timeout;
        } write_conn_accept_timeout_cp; -}

{-# LINE 565 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 566 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_conn_accept_timeout_cp = C'write_conn_accept_timeout_cp{
  c'write_conn_accept_timeout_cp'timeout :: CUShort
} deriving (Eq,Show)
p'write_conn_accept_timeout_cp'timeout p = plusPtr p 0
p'write_conn_accept_timeout_cp'timeout :: Ptr (C'write_conn_accept_timeout_cp) -> Ptr (CUShort)
instance Storable C'write_conn_accept_timeout_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_conn_accept_timeout_cp v0
  poke p (C'write_conn_accept_timeout_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 567 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t timeout;
        } read_page_timeout_rp; -}

{-# LINE 571 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 572 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 573 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_page_timeout_rp = C'read_page_timeout_rp{
  c'read_page_timeout_rp'status :: CUChar,
  c'read_page_timeout_rp'timeout :: CUShort
} deriving (Eq,Show)
p'read_page_timeout_rp'status p = plusPtr p 0
p'read_page_timeout_rp'status :: Ptr (C'read_page_timeout_rp) -> Ptr (CUChar)
p'read_page_timeout_rp'timeout p = plusPtr p 1
p'read_page_timeout_rp'timeout :: Ptr (C'read_page_timeout_rp) -> Ptr (CUShort)
instance Storable C'read_page_timeout_rp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'read_page_timeout_rp v0 v1
  poke p (C'read_page_timeout_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 574 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t timeout;
        } write_page_timeout_cp; -}

{-# LINE 578 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 579 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_page_timeout_cp = C'write_page_timeout_cp{
  c'write_page_timeout_cp'timeout :: CUShort
} deriving (Eq,Show)
p'write_page_timeout_cp'timeout p = plusPtr p 0
p'write_page_timeout_cp'timeout :: Ptr (C'write_page_timeout_cp) -> Ptr (CUShort)
instance Storable C'write_page_timeout_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_page_timeout_cp v0
  poke p (C'write_page_timeout_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 580 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t enable;
        } read_scan_enable_rp; -}

{-# LINE 584 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 585 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 586 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_scan_enable_rp = C'read_scan_enable_rp{
  c'read_scan_enable_rp'status :: CUChar,
  c'read_scan_enable_rp'enable :: CUChar
} deriving (Eq,Show)
p'read_scan_enable_rp'status p = plusPtr p 0
p'read_scan_enable_rp'status :: Ptr (C'read_scan_enable_rp) -> Ptr (CUChar)
p'read_scan_enable_rp'enable p = plusPtr p 1
p'read_scan_enable_rp'enable :: Ptr (C'read_scan_enable_rp) -> Ptr (CUChar)
instance Storable C'read_scan_enable_rp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'read_scan_enable_rp v0 v1
  poke p (C'read_scan_enable_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 587 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t interval; uint16_t window;
        } read_page_activity_rp; -}

{-# LINE 591 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 592 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 593 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 594 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_page_activity_rp = C'read_page_activity_rp{
  c'read_page_activity_rp'status :: CUChar,
  c'read_page_activity_rp'interval :: CUShort,
  c'read_page_activity_rp'window :: CUShort
} deriving (Eq,Show)
p'read_page_activity_rp'status p = plusPtr p 0
p'read_page_activity_rp'status :: Ptr (C'read_page_activity_rp) -> Ptr (CUChar)
p'read_page_activity_rp'interval p = plusPtr p 1
p'read_page_activity_rp'interval :: Ptr (C'read_page_activity_rp) -> Ptr (CUShort)
p'read_page_activity_rp'window p = plusPtr p 3
p'read_page_activity_rp'window :: Ptr (C'read_page_activity_rp) -> Ptr (CUShort)
instance Storable C'read_page_activity_rp where
  sizeOf _ = 5
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    return $ C'read_page_activity_rp v0 v1 v2
  poke p (C'read_page_activity_rp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    return ()

{-# LINE 595 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t interval; uint16_t window;
        } write_page_activity_cp; -}

{-# LINE 599 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 600 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 601 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_page_activity_cp = C'write_page_activity_cp{
  c'write_page_activity_cp'interval :: CUShort,
  c'write_page_activity_cp'window :: CUShort
} deriving (Eq,Show)
p'write_page_activity_cp'interval p = plusPtr p 0
p'write_page_activity_cp'interval :: Ptr (C'write_page_activity_cp) -> Ptr (CUShort)
p'write_page_activity_cp'window p = plusPtr p 2
p'write_page_activity_cp'window :: Ptr (C'write_page_activity_cp) -> Ptr (CUShort)
instance Storable C'write_page_activity_cp where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'write_page_activity_cp v0 v1
  poke p (C'write_page_activity_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 602 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t interval; uint16_t window;
        } read_inq_activity_rp; -}

{-# LINE 606 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 607 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 608 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 609 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_inq_activity_rp = C'read_inq_activity_rp{
  c'read_inq_activity_rp'status :: CUChar,
  c'read_inq_activity_rp'interval :: CUShort,
  c'read_inq_activity_rp'window :: CUShort
} deriving (Eq,Show)
p'read_inq_activity_rp'status p = plusPtr p 0
p'read_inq_activity_rp'status :: Ptr (C'read_inq_activity_rp) -> Ptr (CUChar)
p'read_inq_activity_rp'interval p = plusPtr p 1
p'read_inq_activity_rp'interval :: Ptr (C'read_inq_activity_rp) -> Ptr (CUShort)
p'read_inq_activity_rp'window p = plusPtr p 3
p'read_inq_activity_rp'window :: Ptr (C'read_inq_activity_rp) -> Ptr (CUShort)
instance Storable C'read_inq_activity_rp where
  sizeOf _ = 5
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    return $ C'read_inq_activity_rp v0 v1 v2
  poke p (C'read_inq_activity_rp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    return ()

{-# LINE 610 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t interval; uint16_t window;
        } write_inq_activity_cp; -}

{-# LINE 614 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 615 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 616 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_inq_activity_cp = C'write_inq_activity_cp{
  c'write_inq_activity_cp'interval :: CUShort,
  c'write_inq_activity_cp'window :: CUShort
} deriving (Eq,Show)
p'write_inq_activity_cp'interval p = plusPtr p 0
p'write_inq_activity_cp'interval :: Ptr (C'write_inq_activity_cp) -> Ptr (CUShort)
p'write_inq_activity_cp'window p = plusPtr p 2
p'write_inq_activity_cp'window :: Ptr (C'write_inq_activity_cp) -> Ptr (CUShort)
instance Storable C'write_inq_activity_cp where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'write_inq_activity_cp v0 v1
  poke p (C'write_inq_activity_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 617 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t dev_class[3];
        } read_class_of_dev_rp; -}

{-# LINE 621 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 622 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 623 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_class_of_dev_rp = C'read_class_of_dev_rp{
  c'read_class_of_dev_rp'status :: CUChar,
  c'read_class_of_dev_rp'dev_class :: [CUChar]
} deriving (Eq,Show)
p'read_class_of_dev_rp'status p = plusPtr p 0
p'read_class_of_dev_rp'status :: Ptr (C'read_class_of_dev_rp) -> Ptr (CUChar)
p'read_class_of_dev_rp'dev_class p = plusPtr p 1
p'read_class_of_dev_rp'dev_class :: Ptr (C'read_class_of_dev_rp) -> Ptr (CUChar)
instance Storable C'read_class_of_dev_rp where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 3 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 1)
    return $ C'read_class_of_dev_rp v0 v1
  poke p (C'read_class_of_dev_rp v0 v1) = do
    pokeByteOff p 0 v0
    let s = div 3 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 1) (take s v1)
    return ()

{-# LINE 624 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t dev_class[3];
        } write_class_of_dev_cp; -}

{-# LINE 628 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 629 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_class_of_dev_cp = C'write_class_of_dev_cp{
  c'write_class_of_dev_cp'dev_class :: [CUChar]
} deriving (Eq,Show)
p'write_class_of_dev_cp'dev_class p = plusPtr p 0
p'write_class_of_dev_cp'dev_class :: Ptr (C'write_class_of_dev_cp) -> Ptr (CUChar)
instance Storable C'write_class_of_dev_cp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- let s = div 3 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 0)
    return $ C'write_class_of_dev_cp v0
  poke p (C'write_class_of_dev_cp v0) = do
    let s = div 3 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 0) (take s v0)
    return ()

{-# LINE 630 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t voice_setting;
        } read_voice_setting_rp; -}

{-# LINE 634 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 635 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 636 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_voice_setting_rp = C'read_voice_setting_rp{
  c'read_voice_setting_rp'status :: CUChar,
  c'read_voice_setting_rp'voice_setting :: CUShort
} deriving (Eq,Show)
p'read_voice_setting_rp'status p = plusPtr p 0
p'read_voice_setting_rp'status :: Ptr (C'read_voice_setting_rp) -> Ptr (CUChar)
p'read_voice_setting_rp'voice_setting p = plusPtr p 1
p'read_voice_setting_rp'voice_setting :: Ptr (C'read_voice_setting_rp) -> Ptr (CUShort)
instance Storable C'read_voice_setting_rp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'read_voice_setting_rp v0 v1
  poke p (C'read_voice_setting_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 637 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t voice_setting;
        } write_voice_setting_cp; -}

{-# LINE 641 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 642 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_voice_setting_cp = C'write_voice_setting_cp{
  c'write_voice_setting_cp'voice_setting :: CUShort
} deriving (Eq,Show)
p'write_voice_setting_cp'voice_setting p = plusPtr p 0
p'write_voice_setting_cp'voice_setting :: Ptr (C'write_voice_setting_cp) -> Ptr (CUShort)
instance Storable C'write_voice_setting_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_voice_setting_cp v0
  poke p (C'write_voice_setting_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 643 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint8_t type;
        } read_transmit_power_level_cp; -}

{-# LINE 647 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 648 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 649 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_transmit_power_level_cp = C'read_transmit_power_level_cp{
  c'read_transmit_power_level_cp'handle :: CUShort,
  c'read_transmit_power_level_cp'type :: CUChar
} deriving (Eq,Show)
p'read_transmit_power_level_cp'handle p = plusPtr p 0
p'read_transmit_power_level_cp'handle :: Ptr (C'read_transmit_power_level_cp) -> Ptr (CUShort)
p'read_transmit_power_level_cp'type p = plusPtr p 2
p'read_transmit_power_level_cp'type :: Ptr (C'read_transmit_power_level_cp) -> Ptr (CUChar)
instance Storable C'read_transmit_power_level_cp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'read_transmit_power_level_cp v0 v1
  poke p (C'read_transmit_power_level_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 650 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; int8_t level;
        } read_transmit_power_level_rp; -}

{-# LINE 654 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 655 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 656 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 657 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_transmit_power_level_rp = C'read_transmit_power_level_rp{
  c'read_transmit_power_level_rp'status :: CUChar,
  c'read_transmit_power_level_rp'handle :: CUShort,
  c'read_transmit_power_level_rp'level :: CSChar
} deriving (Eq,Show)
p'read_transmit_power_level_rp'status p = plusPtr p 0
p'read_transmit_power_level_rp'status :: Ptr (C'read_transmit_power_level_rp) -> Ptr (CUChar)
p'read_transmit_power_level_rp'handle p = plusPtr p 1
p'read_transmit_power_level_rp'handle :: Ptr (C'read_transmit_power_level_rp) -> Ptr (CUShort)
p'read_transmit_power_level_rp'level p = plusPtr p 3
p'read_transmit_power_level_rp'level :: Ptr (C'read_transmit_power_level_rp) -> Ptr (CSChar)
instance Storable C'read_transmit_power_level_rp where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    return $ C'read_transmit_power_level_rp v0 v1 v2
  poke p (C'read_transmit_power_level_rp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    return ()

{-# LINE 658 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t acl_mtu;
            uint8_t sco_mtu;
            uint16_t acl_max_pkt;
            uint16_t sco_max_pkt;
        } host_buffer_size_cp; -}

{-# LINE 665 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 666 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 667 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 668 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 669 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'host_buffer_size_cp = C'host_buffer_size_cp{
  c'host_buffer_size_cp'acl_mtu :: CUShort,
  c'host_buffer_size_cp'sco_mtu :: CUChar,
  c'host_buffer_size_cp'acl_max_pkt :: CUShort,
  c'host_buffer_size_cp'sco_max_pkt :: CUShort
} deriving (Eq,Show)
p'host_buffer_size_cp'acl_mtu p = plusPtr p 0
p'host_buffer_size_cp'acl_mtu :: Ptr (C'host_buffer_size_cp) -> Ptr (CUShort)
p'host_buffer_size_cp'sco_mtu p = plusPtr p 2
p'host_buffer_size_cp'sco_mtu :: Ptr (C'host_buffer_size_cp) -> Ptr (CUChar)
p'host_buffer_size_cp'acl_max_pkt p = plusPtr p 3
p'host_buffer_size_cp'acl_max_pkt :: Ptr (C'host_buffer_size_cp) -> Ptr (CUShort)
p'host_buffer_size_cp'sco_max_pkt p = plusPtr p 5
p'host_buffer_size_cp'sco_max_pkt :: Ptr (C'host_buffer_size_cp) -> Ptr (CUShort)
instance Storable C'host_buffer_size_cp where
  sizeOf _ = 7
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 3
    v3 <- peekByteOff p 5
    return $ C'host_buffer_size_cp v0 v1 v2 v3
  poke p (C'host_buffer_size_cp v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 3 v2
    pokeByteOff p 5 v3
    return ()

{-# LINE 670 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t num_hndl;
        } host_num_comp_pkts_cp; -}

{-# LINE 674 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 675 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'host_num_comp_pkts_cp = C'host_num_comp_pkts_cp{
  c'host_num_comp_pkts_cp'num_hndl :: CUChar
} deriving (Eq,Show)
p'host_num_comp_pkts_cp'num_hndl p = plusPtr p 0
p'host_num_comp_pkts_cp'num_hndl :: Ptr (C'host_num_comp_pkts_cp) -> Ptr (CUChar)
instance Storable C'host_num_comp_pkts_cp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'host_num_comp_pkts_cp v0
  poke p (C'host_num_comp_pkts_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 676 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint16_t timeout;
        } read_link_supervision_timeout_rp; -}

{-# LINE 680 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 681 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 682 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 683 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_link_supervision_timeout_rp = C'read_link_supervision_timeout_rp{
  c'read_link_supervision_timeout_rp'status :: CUChar,
  c'read_link_supervision_timeout_rp'handle :: CUShort,
  c'read_link_supervision_timeout_rp'timeout :: CUShort
} deriving (Eq,Show)
p'read_link_supervision_timeout_rp'status p = plusPtr p 0
p'read_link_supervision_timeout_rp'status :: Ptr (C'read_link_supervision_timeout_rp) -> Ptr (CUChar)
p'read_link_supervision_timeout_rp'handle p = plusPtr p 1
p'read_link_supervision_timeout_rp'handle :: Ptr (C'read_link_supervision_timeout_rp) -> Ptr (CUShort)
p'read_link_supervision_timeout_rp'timeout p = plusPtr p 3
p'read_link_supervision_timeout_rp'timeout :: Ptr (C'read_link_supervision_timeout_rp) -> Ptr (CUShort)
instance Storable C'read_link_supervision_timeout_rp where
  sizeOf _ = 5
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    return $ C'read_link_supervision_timeout_rp v0 v1 v2
  poke p (C'read_link_supervision_timeout_rp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    return ()

{-# LINE 684 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint16_t timeout;
        } write_link_supervision_timeout_cp; -}

{-# LINE 688 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 689 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 690 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_link_supervision_timeout_cp = C'write_link_supervision_timeout_cp{
  c'write_link_supervision_timeout_cp'handle :: CUShort,
  c'write_link_supervision_timeout_cp'timeout :: CUShort
} deriving (Eq,Show)
p'write_link_supervision_timeout_cp'handle p = plusPtr p 0
p'write_link_supervision_timeout_cp'handle :: Ptr (C'write_link_supervision_timeout_cp) -> Ptr (CUShort)
p'write_link_supervision_timeout_cp'timeout p = plusPtr p 2
p'write_link_supervision_timeout_cp'timeout :: Ptr (C'write_link_supervision_timeout_cp) -> Ptr (CUShort)
instance Storable C'write_link_supervision_timeout_cp where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'write_link_supervision_timeout_cp v0 v1
  poke p (C'write_link_supervision_timeout_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 691 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle;
        } write_link_supervision_timeout_rp; -}

{-# LINE 695 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 696 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 697 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_link_supervision_timeout_rp = C'write_link_supervision_timeout_rp{
  c'write_link_supervision_timeout_rp'status :: CUChar,
  c'write_link_supervision_timeout_rp'handle :: CUShort
} deriving (Eq,Show)
p'write_link_supervision_timeout_rp'status p = plusPtr p 0
p'write_link_supervision_timeout_rp'status :: Ptr (C'write_link_supervision_timeout_rp) -> Ptr (CUChar)
p'write_link_supervision_timeout_rp'handle p = plusPtr p 1
p'write_link_supervision_timeout_rp'handle :: Ptr (C'write_link_supervision_timeout_rp) -> Ptr (CUShort)
instance Storable C'write_link_supervision_timeout_rp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'write_link_supervision_timeout_rp v0 v1
  poke p (C'write_link_supervision_timeout_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 698 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t num_current_iac; uint8_t lap[0x40][3];
        } read_current_iac_lap_rp; -}

{-# LINE 702 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 703 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 704 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 705 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_current_iac_lap_rp = C'read_current_iac_lap_rp{
  c'read_current_iac_lap_rp'status :: CUChar,
  c'read_current_iac_lap_rp'num_current_iac :: CUChar,
  c'read_current_iac_lap_rp'lap :: [Ptr CUChar]
} deriving (Eq,Show)
p'read_current_iac_lap_rp'status p = plusPtr p 0
p'read_current_iac_lap_rp'status :: Ptr (C'read_current_iac_lap_rp) -> Ptr (CUChar)
p'read_current_iac_lap_rp'num_current_iac p = plusPtr p 1
p'read_current_iac_lap_rp'num_current_iac :: Ptr (C'read_current_iac_lap_rp) -> Ptr (CUChar)
p'read_current_iac_lap_rp'lap p = plusPtr p 2
p'read_current_iac_lap_rp'lap :: Ptr (C'read_current_iac_lap_rp) -> Ptr (Ptr CUChar)
instance Storable C'read_current_iac_lap_rp where
  sizeOf _ = 194
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- let s = div 192 $ sizeOf $ (undefined :: Ptr CUChar) in peekArray s (plusPtr p 2)
    return $ C'read_current_iac_lap_rp v0 v1 v2
  poke p (C'read_current_iac_lap_rp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    let s = div 192 $ sizeOf $ (undefined :: Ptr CUChar)
    pokeArray (plusPtr p 2) (take s v2)
    return ()

{-# LINE 706 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t num_current_iac; uint8_t lap[0x40][3];
        } write_current_iac_lap_cp; -}

{-# LINE 710 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 711 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 712 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_current_iac_lap_cp = C'write_current_iac_lap_cp{
  c'write_current_iac_lap_cp'num_current_iac :: CUChar,
  c'write_current_iac_lap_cp'lap :: [Ptr CUChar]
} deriving (Eq,Show)
p'write_current_iac_lap_cp'num_current_iac p = plusPtr p 0
p'write_current_iac_lap_cp'num_current_iac :: Ptr (C'write_current_iac_lap_cp) -> Ptr (CUChar)
p'write_current_iac_lap_cp'lap p = plusPtr p 1
p'write_current_iac_lap_cp'lap :: Ptr (C'write_current_iac_lap_cp) -> Ptr (Ptr CUChar)
instance Storable C'write_current_iac_lap_cp where
  sizeOf _ = 193
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 192 $ sizeOf $ (undefined :: Ptr CUChar) in peekArray s (plusPtr p 1)
    return $ C'write_current_iac_lap_cp v0 v1
  poke p (C'write_current_iac_lap_cp v0 v1) = do
    pokeByteOff p 0 v0
    let s = div 192 $ sizeOf $ (undefined :: Ptr CUChar)
    pokeArray (plusPtr p 1) (take s v1)
    return ()

{-# LINE 713 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t map[10];
        } set_afh_classification_cp; -}

{-# LINE 717 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 718 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'set_afh_classification_cp = C'set_afh_classification_cp{
  c'set_afh_classification_cp'map :: [CUChar]
} deriving (Eq,Show)
p'set_afh_classification_cp'map p = plusPtr p 0
p'set_afh_classification_cp'map :: Ptr (C'set_afh_classification_cp) -> Ptr (CUChar)
instance Storable C'set_afh_classification_cp where
  sizeOf _ = 10
  alignment _ = 1
  peek p = do
    v0 <- let s = div 10 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 0)
    return $ C'set_afh_classification_cp v0
  poke p (C'set_afh_classification_cp v0) = do
    let s = div 10 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 0) (take s v0)
    return ()

{-# LINE 719 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } set_afh_classification_rp; -}

{-# LINE 723 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 724 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'set_afh_classification_rp = C'set_afh_classification_rp{
  c'set_afh_classification_rp'status :: CUChar
} deriving (Eq,Show)
p'set_afh_classification_rp'status p = plusPtr p 0
p'set_afh_classification_rp'status :: Ptr (C'set_afh_classification_rp) -> Ptr (CUChar)
instance Storable C'set_afh_classification_rp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'set_afh_classification_rp v0
  poke p (C'set_afh_classification_rp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 725 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t type;
        } read_inquiry_scan_type_rp; -}

{-# LINE 729 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 730 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 731 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_inquiry_scan_type_rp = C'read_inquiry_scan_type_rp{
  c'read_inquiry_scan_type_rp'status :: CUChar,
  c'read_inquiry_scan_type_rp'type :: CUChar
} deriving (Eq,Show)
p'read_inquiry_scan_type_rp'status p = plusPtr p 0
p'read_inquiry_scan_type_rp'status :: Ptr (C'read_inquiry_scan_type_rp) -> Ptr (CUChar)
p'read_inquiry_scan_type_rp'type p = plusPtr p 1
p'read_inquiry_scan_type_rp'type :: Ptr (C'read_inquiry_scan_type_rp) -> Ptr (CUChar)
instance Storable C'read_inquiry_scan_type_rp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'read_inquiry_scan_type_rp v0 v1
  poke p (C'read_inquiry_scan_type_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 732 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t type;
        } write_inquiry_scan_type_cp; -}

{-# LINE 736 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 737 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_inquiry_scan_type_cp = C'write_inquiry_scan_type_cp{
  c'write_inquiry_scan_type_cp'type :: CUChar
} deriving (Eq,Show)
p'write_inquiry_scan_type_cp'type p = plusPtr p 0
p'write_inquiry_scan_type_cp'type :: Ptr (C'write_inquiry_scan_type_cp) -> Ptr (CUChar)
instance Storable C'write_inquiry_scan_type_cp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_inquiry_scan_type_cp v0
  poke p (C'write_inquiry_scan_type_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 738 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } write_inquiry_scan_type_rp; -}

{-# LINE 742 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 743 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_inquiry_scan_type_rp = C'write_inquiry_scan_type_rp{
  c'write_inquiry_scan_type_rp'status :: CUChar
} deriving (Eq,Show)
p'write_inquiry_scan_type_rp'status p = plusPtr p 0
p'write_inquiry_scan_type_rp'status :: Ptr (C'write_inquiry_scan_type_rp) -> Ptr (CUChar)
instance Storable C'write_inquiry_scan_type_rp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_inquiry_scan_type_rp v0
  poke p (C'write_inquiry_scan_type_rp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 744 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t mode;
        } read_inquiry_mode_rp; -}

{-# LINE 748 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 749 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 750 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_inquiry_mode_rp = C'read_inquiry_mode_rp{
  c'read_inquiry_mode_rp'status :: CUChar,
  c'read_inquiry_mode_rp'mode :: CUChar
} deriving (Eq,Show)
p'read_inquiry_mode_rp'status p = plusPtr p 0
p'read_inquiry_mode_rp'status :: Ptr (C'read_inquiry_mode_rp) -> Ptr (CUChar)
p'read_inquiry_mode_rp'mode p = plusPtr p 1
p'read_inquiry_mode_rp'mode :: Ptr (C'read_inquiry_mode_rp) -> Ptr (CUChar)
instance Storable C'read_inquiry_mode_rp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'read_inquiry_mode_rp v0 v1
  poke p (C'read_inquiry_mode_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 751 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t mode;
        } write_inquiry_mode_cp; -}

{-# LINE 755 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 756 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_inquiry_mode_cp = C'write_inquiry_mode_cp{
  c'write_inquiry_mode_cp'mode :: CUChar
} deriving (Eq,Show)
p'write_inquiry_mode_cp'mode p = plusPtr p 0
p'write_inquiry_mode_cp'mode :: Ptr (C'write_inquiry_mode_cp) -> Ptr (CUChar)
instance Storable C'write_inquiry_mode_cp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_inquiry_mode_cp v0
  poke p (C'write_inquiry_mode_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 757 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } write_inquiry_mode_rp; -}

{-# LINE 761 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 762 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_inquiry_mode_rp = C'write_inquiry_mode_rp{
  c'write_inquiry_mode_rp'status :: CUChar
} deriving (Eq,Show)
p'write_inquiry_mode_rp'status p = plusPtr p 0
p'write_inquiry_mode_rp'status :: Ptr (C'write_inquiry_mode_rp) -> Ptr (CUChar)
instance Storable C'write_inquiry_mode_rp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_inquiry_mode_rp v0
  poke p (C'write_inquiry_mode_rp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 763 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t mode;
        } read_afh_mode_rp; -}

{-# LINE 767 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 768 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 769 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_afh_mode_rp = C'read_afh_mode_rp{
  c'read_afh_mode_rp'status :: CUChar,
  c'read_afh_mode_rp'mode :: CUChar
} deriving (Eq,Show)
p'read_afh_mode_rp'status p = plusPtr p 0
p'read_afh_mode_rp'status :: Ptr (C'read_afh_mode_rp) -> Ptr (CUChar)
p'read_afh_mode_rp'mode p = plusPtr p 1
p'read_afh_mode_rp'mode :: Ptr (C'read_afh_mode_rp) -> Ptr (CUChar)
instance Storable C'read_afh_mode_rp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'read_afh_mode_rp v0 v1
  poke p (C'read_afh_mode_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 770 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t mode;
        } write_afh_mode_cp; -}

{-# LINE 774 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 775 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_afh_mode_cp = C'write_afh_mode_cp{
  c'write_afh_mode_cp'mode :: CUChar
} deriving (Eq,Show)
p'write_afh_mode_cp'mode p = plusPtr p 0
p'write_afh_mode_cp'mode :: Ptr (C'write_afh_mode_cp) -> Ptr (CUChar)
instance Storable C'write_afh_mode_cp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_afh_mode_cp v0
  poke p (C'write_afh_mode_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 776 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } write_afh_mode_rp; -}

{-# LINE 780 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 781 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_afh_mode_rp = C'write_afh_mode_rp{
  c'write_afh_mode_rp'status :: CUChar
} deriving (Eq,Show)
p'write_afh_mode_rp'status p = plusPtr p 0
p'write_afh_mode_rp'status :: Ptr (C'write_afh_mode_rp) -> Ptr (CUChar)
instance Storable C'write_afh_mode_rp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_afh_mode_rp v0
  poke p (C'write_afh_mode_rp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 782 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t fec; uint8_t data[240];
        } read_ext_inquiry_response_rp; -}

{-# LINE 786 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 787 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 788 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 789 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_ext_inquiry_response_rp = C'read_ext_inquiry_response_rp{
  c'read_ext_inquiry_response_rp'status :: CUChar,
  c'read_ext_inquiry_response_rp'fec :: CUChar,
  c'read_ext_inquiry_response_rp'data :: [CUChar]
} deriving (Eq,Show)
p'read_ext_inquiry_response_rp'status p = plusPtr p 0
p'read_ext_inquiry_response_rp'status :: Ptr (C'read_ext_inquiry_response_rp) -> Ptr (CUChar)
p'read_ext_inquiry_response_rp'fec p = plusPtr p 1
p'read_ext_inquiry_response_rp'fec :: Ptr (C'read_ext_inquiry_response_rp) -> Ptr (CUChar)
p'read_ext_inquiry_response_rp'data p = plusPtr p 2
p'read_ext_inquiry_response_rp'data :: Ptr (C'read_ext_inquiry_response_rp) -> Ptr (CUChar)
instance Storable C'read_ext_inquiry_response_rp where
  sizeOf _ = 242
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- let s = div 240 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 2)
    return $ C'read_ext_inquiry_response_rp v0 v1 v2
  poke p (C'read_ext_inquiry_response_rp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    let s = div 240 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 2) (take s v2)
    return ()

{-# LINE 790 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t fec; uint8_t data[240];
        } write_ext_inquiry_response_cp; -}

{-# LINE 794 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 795 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 796 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_ext_inquiry_response_cp = C'write_ext_inquiry_response_cp{
  c'write_ext_inquiry_response_cp'fec :: CUChar,
  c'write_ext_inquiry_response_cp'data :: [CUChar]
} deriving (Eq,Show)
p'write_ext_inquiry_response_cp'fec p = plusPtr p 0
p'write_ext_inquiry_response_cp'fec :: Ptr (C'write_ext_inquiry_response_cp) -> Ptr (CUChar)
p'write_ext_inquiry_response_cp'data p = plusPtr p 1
p'write_ext_inquiry_response_cp'data :: Ptr (C'write_ext_inquiry_response_cp) -> Ptr (CUChar)
instance Storable C'write_ext_inquiry_response_cp where
  sizeOf _ = 241
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 240 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 1)
    return $ C'write_ext_inquiry_response_cp v0 v1
  poke p (C'write_ext_inquiry_response_cp v0 v1) = do
    pokeByteOff p 0 v0
    let s = div 240 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 1) (take s v1)
    return ()

{-# LINE 797 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } write_ext_inquiry_response_rp; -}

{-# LINE 801 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 802 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_ext_inquiry_response_rp = C'write_ext_inquiry_response_rp{
  c'write_ext_inquiry_response_rp'status :: CUChar
} deriving (Eq,Show)
p'write_ext_inquiry_response_rp'status p = plusPtr p 0
p'write_ext_inquiry_response_rp'status :: Ptr (C'write_ext_inquiry_response_rp) -> Ptr (CUChar)
instance Storable C'write_ext_inquiry_response_rp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_ext_inquiry_response_rp v0
  poke p (C'write_ext_inquiry_response_rp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 803 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } refresh_encryption_key_cp; -}

{-# LINE 807 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 808 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'refresh_encryption_key_cp = C'refresh_encryption_key_cp{
  c'refresh_encryption_key_cp'handle :: CUShort
} deriving (Eq,Show)
p'refresh_encryption_key_cp'handle p = plusPtr p 0
p'refresh_encryption_key_cp'handle :: Ptr (C'refresh_encryption_key_cp) -> Ptr (CUShort)
instance Storable C'refresh_encryption_key_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'refresh_encryption_key_cp v0
  poke p (C'refresh_encryption_key_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 809 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } refresh_encryption_key_rp; -}

{-# LINE 813 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 814 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'refresh_encryption_key_rp = C'refresh_encryption_key_rp{
  c'refresh_encryption_key_rp'status :: CUChar
} deriving (Eq,Show)
p'refresh_encryption_key_rp'status p = plusPtr p 0
p'refresh_encryption_key_rp'status :: Ptr (C'refresh_encryption_key_rp) -> Ptr (CUChar)
instance Storable C'refresh_encryption_key_rp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'refresh_encryption_key_rp v0
  poke p (C'refresh_encryption_key_rp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 815 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t mode;
        } read_simple_pairing_mode_rp; -}

{-# LINE 819 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 820 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 821 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_simple_pairing_mode_rp = C'read_simple_pairing_mode_rp{
  c'read_simple_pairing_mode_rp'status :: CUChar,
  c'read_simple_pairing_mode_rp'mode :: CUChar
} deriving (Eq,Show)
p'read_simple_pairing_mode_rp'status p = plusPtr p 0
p'read_simple_pairing_mode_rp'status :: Ptr (C'read_simple_pairing_mode_rp) -> Ptr (CUChar)
p'read_simple_pairing_mode_rp'mode p = plusPtr p 1
p'read_simple_pairing_mode_rp'mode :: Ptr (C'read_simple_pairing_mode_rp) -> Ptr (CUChar)
instance Storable C'read_simple_pairing_mode_rp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'read_simple_pairing_mode_rp v0 v1
  poke p (C'read_simple_pairing_mode_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 822 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t mode;
        } write_simple_pairing_mode_cp; -}

{-# LINE 826 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 827 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_simple_pairing_mode_cp = C'write_simple_pairing_mode_cp{
  c'write_simple_pairing_mode_cp'mode :: CUChar
} deriving (Eq,Show)
p'write_simple_pairing_mode_cp'mode p = plusPtr p 0
p'write_simple_pairing_mode_cp'mode :: Ptr (C'write_simple_pairing_mode_cp) -> Ptr (CUChar)
instance Storable C'write_simple_pairing_mode_cp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_simple_pairing_mode_cp v0
  poke p (C'write_simple_pairing_mode_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 828 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } write_simple_pairing_mode_rp; -}

{-# LINE 832 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 833 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_simple_pairing_mode_rp = C'write_simple_pairing_mode_rp{
  c'write_simple_pairing_mode_rp'status :: CUChar
} deriving (Eq,Show)
p'write_simple_pairing_mode_rp'status p = plusPtr p 0
p'write_simple_pairing_mode_rp'status :: Ptr (C'write_simple_pairing_mode_rp) -> Ptr (CUChar)
instance Storable C'write_simple_pairing_mode_rp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_simple_pairing_mode_rp v0
  poke p (C'write_simple_pairing_mode_rp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 834 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t hash[16]; uint8_t randomizer[16];
        } read_local_oob_data_rp; -}

{-# LINE 838 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 839 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 840 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 841 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_local_oob_data_rp = C'read_local_oob_data_rp{
  c'read_local_oob_data_rp'status :: CUChar,
  c'read_local_oob_data_rp'hash :: [CUChar],
  c'read_local_oob_data_rp'randomizer :: [CUChar]
} deriving (Eq,Show)
p'read_local_oob_data_rp'status p = plusPtr p 0
p'read_local_oob_data_rp'status :: Ptr (C'read_local_oob_data_rp) -> Ptr (CUChar)
p'read_local_oob_data_rp'hash p = plusPtr p 1
p'read_local_oob_data_rp'hash :: Ptr (C'read_local_oob_data_rp) -> Ptr (CUChar)
p'read_local_oob_data_rp'randomizer p = plusPtr p 17
p'read_local_oob_data_rp'randomizer :: Ptr (C'read_local_oob_data_rp) -> Ptr (CUChar)
instance Storable C'read_local_oob_data_rp where
  sizeOf _ = 33
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 16 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 1)
    v2 <- let s = div 16 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 17)
    return $ C'read_local_oob_data_rp v0 v1 v2
  poke p (C'read_local_oob_data_rp v0 v1 v2) = do
    pokeByteOff p 0 v0
    let s = div 16 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 1) (take s v1)
    let s = div 16 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 17) (take s v2)
    return ()

{-# LINE 842 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; int8_t level;
        } read_inq_response_tx_power_level_rp; -}

{-# LINE 846 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 847 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 848 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_inq_response_tx_power_level_rp = C'read_inq_response_tx_power_level_rp{
  c'read_inq_response_tx_power_level_rp'status :: CUChar,
  c'read_inq_response_tx_power_level_rp'level :: CSChar
} deriving (Eq,Show)
p'read_inq_response_tx_power_level_rp'status p = plusPtr p 0
p'read_inq_response_tx_power_level_rp'status :: Ptr (C'read_inq_response_tx_power_level_rp) -> Ptr (CUChar)
p'read_inq_response_tx_power_level_rp'level p = plusPtr p 1
p'read_inq_response_tx_power_level_rp'level :: Ptr (C'read_inq_response_tx_power_level_rp) -> Ptr (CSChar)
instance Storable C'read_inq_response_tx_power_level_rp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'read_inq_response_tx_power_level_rp v0 v1
  poke p (C'read_inq_response_tx_power_level_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 849 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; int8_t level;
        } read_inquiry_transmit_power_level_rp; -}

{-# LINE 853 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 854 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 855 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_inquiry_transmit_power_level_rp = C'read_inquiry_transmit_power_level_rp{
  c'read_inquiry_transmit_power_level_rp'status :: CUChar,
  c'read_inquiry_transmit_power_level_rp'level :: CSChar
} deriving (Eq,Show)
p'read_inquiry_transmit_power_level_rp'status p = plusPtr p 0
p'read_inquiry_transmit_power_level_rp'status :: Ptr (C'read_inquiry_transmit_power_level_rp) -> Ptr (CUChar)
p'read_inquiry_transmit_power_level_rp'level p = plusPtr p 1
p'read_inquiry_transmit_power_level_rp'level :: Ptr (C'read_inquiry_transmit_power_level_rp) -> Ptr (CSChar)
instance Storable C'read_inquiry_transmit_power_level_rp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'read_inquiry_transmit_power_level_rp v0 v1
  poke p (C'read_inquiry_transmit_power_level_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 856 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            int8_t level;
        } write_inquiry_transmit_power_level_cp; -}

{-# LINE 860 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 861 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_inquiry_transmit_power_level_cp = C'write_inquiry_transmit_power_level_cp{
  c'write_inquiry_transmit_power_level_cp'level :: CSChar
} deriving (Eq,Show)
p'write_inquiry_transmit_power_level_cp'level p = plusPtr p 0
p'write_inquiry_transmit_power_level_cp'level :: Ptr (C'write_inquiry_transmit_power_level_cp) -> Ptr (CSChar)
instance Storable C'write_inquiry_transmit_power_level_cp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_inquiry_transmit_power_level_cp v0
  poke p (C'write_inquiry_transmit_power_level_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 862 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } write_inquiry_transmit_power_level_rp; -}

{-# LINE 866 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 867 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_inquiry_transmit_power_level_rp = C'write_inquiry_transmit_power_level_rp{
  c'write_inquiry_transmit_power_level_rp'status :: CUChar
} deriving (Eq,Show)
p'write_inquiry_transmit_power_level_rp'status p = plusPtr p 0
p'write_inquiry_transmit_power_level_rp'status :: Ptr (C'write_inquiry_transmit_power_level_rp) -> Ptr (CUChar)
instance Storable C'write_inquiry_transmit_power_level_rp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_inquiry_transmit_power_level_rp v0
  poke p (C'write_inquiry_transmit_power_level_rp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 868 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t reporting;
        } read_default_error_data_reporting_rp; -}

{-# LINE 872 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 873 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 874 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_default_error_data_reporting_rp = C'read_default_error_data_reporting_rp{
  c'read_default_error_data_reporting_rp'status :: CUChar,
  c'read_default_error_data_reporting_rp'reporting :: CUChar
} deriving (Eq,Show)
p'read_default_error_data_reporting_rp'status p = plusPtr p 0
p'read_default_error_data_reporting_rp'status :: Ptr (C'read_default_error_data_reporting_rp) -> Ptr (CUChar)
p'read_default_error_data_reporting_rp'reporting p = plusPtr p 1
p'read_default_error_data_reporting_rp'reporting :: Ptr (C'read_default_error_data_reporting_rp) -> Ptr (CUChar)
instance Storable C'read_default_error_data_reporting_rp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'read_default_error_data_reporting_rp v0 v1
  poke p (C'read_default_error_data_reporting_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 875 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t reporting;
        } write_default_error_data_reporting_cp; -}

{-# LINE 879 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 880 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_default_error_data_reporting_cp = C'write_default_error_data_reporting_cp{
  c'write_default_error_data_reporting_cp'reporting :: CUChar
} deriving (Eq,Show)
p'write_default_error_data_reporting_cp'reporting p = plusPtr p 0
p'write_default_error_data_reporting_cp'reporting :: Ptr (C'write_default_error_data_reporting_cp) -> Ptr (CUChar)
instance Storable C'write_default_error_data_reporting_cp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_default_error_data_reporting_cp v0
  poke p (C'write_default_error_data_reporting_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 881 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } write_default_error_data_reporting_rp; -}

{-# LINE 885 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 886 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_default_error_data_reporting_rp = C'write_default_error_data_reporting_rp{
  c'write_default_error_data_reporting_rp'status :: CUChar
} deriving (Eq,Show)
p'write_default_error_data_reporting_rp'status p = plusPtr p 0
p'write_default_error_data_reporting_rp'status :: Ptr (C'write_default_error_data_reporting_rp) -> Ptr (CUChar)
instance Storable C'write_default_error_data_reporting_rp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_default_error_data_reporting_rp v0
  poke p (C'write_default_error_data_reporting_rp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 887 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint8_t type;
        } enhanced_flush_cp; -}

{-# LINE 891 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 892 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 893 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'enhanced_flush_cp = C'enhanced_flush_cp{
  c'enhanced_flush_cp'handle :: CUShort,
  c'enhanced_flush_cp'type :: CUChar
} deriving (Eq,Show)
p'enhanced_flush_cp'handle p = plusPtr p 0
p'enhanced_flush_cp'handle :: Ptr (C'enhanced_flush_cp) -> Ptr (CUShort)
p'enhanced_flush_cp'type p = plusPtr p 2
p'enhanced_flush_cp'type :: Ptr (C'enhanced_flush_cp) -> Ptr (CUChar)
instance Storable C'enhanced_flush_cp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'enhanced_flush_cp v0 v1
  poke p (C'enhanced_flush_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 894 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t type;
        } send_keypress_notify_cp; -}

{-# LINE 898 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 899 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 900 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'send_keypress_notify_cp = C'send_keypress_notify_cp{
  c'send_keypress_notify_cp'bdaddr :: C'bdaddr_t,
  c'send_keypress_notify_cp'type :: CUChar
} deriving (Eq,Show)
p'send_keypress_notify_cp'bdaddr p = plusPtr p 0
p'send_keypress_notify_cp'bdaddr :: Ptr (C'send_keypress_notify_cp) -> Ptr (C'bdaddr_t)
p'send_keypress_notify_cp'type p = plusPtr p 6
p'send_keypress_notify_cp'type :: Ptr (C'send_keypress_notify_cp) -> Ptr (CUChar)
instance Storable C'send_keypress_notify_cp where
  sizeOf _ = 7
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    return $ C'send_keypress_notify_cp v0 v1
  poke p (C'send_keypress_notify_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    return ()

{-# LINE 901 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } send_keypress_notify_rp; -}

{-# LINE 905 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 906 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'send_keypress_notify_rp = C'send_keypress_notify_rp{
  c'send_keypress_notify_rp'status :: CUChar
} deriving (Eq,Show)
p'send_keypress_notify_rp'status p = plusPtr p 0
p'send_keypress_notify_rp'status :: Ptr (C'send_keypress_notify_rp) -> Ptr (CUChar)
instance Storable C'send_keypress_notify_rp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'send_keypress_notify_rp v0
  poke p (C'send_keypress_notify_rp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 907 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t timeout;
        } read_log_link_accept_timeout_rp; -}

{-# LINE 911 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 912 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 913 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_log_link_accept_timeout_rp = C'read_log_link_accept_timeout_rp{
  c'read_log_link_accept_timeout_rp'status :: CUChar,
  c'read_log_link_accept_timeout_rp'timeout :: CUShort
} deriving (Eq,Show)
p'read_log_link_accept_timeout_rp'status p = plusPtr p 0
p'read_log_link_accept_timeout_rp'status :: Ptr (C'read_log_link_accept_timeout_rp) -> Ptr (CUChar)
p'read_log_link_accept_timeout_rp'timeout p = plusPtr p 1
p'read_log_link_accept_timeout_rp'timeout :: Ptr (C'read_log_link_accept_timeout_rp) -> Ptr (CUShort)
instance Storable C'read_log_link_accept_timeout_rp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'read_log_link_accept_timeout_rp v0 v1
  poke p (C'read_log_link_accept_timeout_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 914 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t timeout;
        } write_log_link_accept_timeout_cp; -}

{-# LINE 918 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 919 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_log_link_accept_timeout_cp = C'write_log_link_accept_timeout_cp{
  c'write_log_link_accept_timeout_cp'timeout :: CUShort
} deriving (Eq,Show)
p'write_log_link_accept_timeout_cp'timeout p = plusPtr p 0
p'write_log_link_accept_timeout_cp'timeout :: Ptr (C'write_log_link_accept_timeout_cp) -> Ptr (CUShort)
instance Storable C'write_log_link_accept_timeout_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_log_link_accept_timeout_cp v0
  poke p (C'write_log_link_accept_timeout_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 920 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t handle;
            int8_t level_gfsk;
            int8_t level_dqpsk;
            int8_t level_8dpsk;
        } read_enhanced_transmit_power_level_rp; -}

{-# LINE 928 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 929 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 930 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 931 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 932 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 933 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_enhanced_transmit_power_level_rp = C'read_enhanced_transmit_power_level_rp{
  c'read_enhanced_transmit_power_level_rp'status :: CUChar,
  c'read_enhanced_transmit_power_level_rp'handle :: CUShort,
  c'read_enhanced_transmit_power_level_rp'level_gfsk :: CSChar,
  c'read_enhanced_transmit_power_level_rp'level_dqpsk :: CSChar,
  c'read_enhanced_transmit_power_level_rp'level_8dpsk :: CSChar
} deriving (Eq,Show)
p'read_enhanced_transmit_power_level_rp'status p = plusPtr p 0
p'read_enhanced_transmit_power_level_rp'status :: Ptr (C'read_enhanced_transmit_power_level_rp) -> Ptr (CUChar)
p'read_enhanced_transmit_power_level_rp'handle p = plusPtr p 1
p'read_enhanced_transmit_power_level_rp'handle :: Ptr (C'read_enhanced_transmit_power_level_rp) -> Ptr (CUShort)
p'read_enhanced_transmit_power_level_rp'level_gfsk p = plusPtr p 3
p'read_enhanced_transmit_power_level_rp'level_gfsk :: Ptr (C'read_enhanced_transmit_power_level_rp) -> Ptr (CSChar)
p'read_enhanced_transmit_power_level_rp'level_dqpsk p = plusPtr p 4
p'read_enhanced_transmit_power_level_rp'level_dqpsk :: Ptr (C'read_enhanced_transmit_power_level_rp) -> Ptr (CSChar)
p'read_enhanced_transmit_power_level_rp'level_8dpsk p = plusPtr p 5
p'read_enhanced_transmit_power_level_rp'level_8dpsk :: Ptr (C'read_enhanced_transmit_power_level_rp) -> Ptr (CSChar)
instance Storable C'read_enhanced_transmit_power_level_rp where
  sizeOf _ = 6
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    v3 <- peekByteOff p 4
    v4 <- peekByteOff p 5
    return $ C'read_enhanced_transmit_power_level_rp v0 v1 v2 v3 v4
  poke p (C'read_enhanced_transmit_power_level_rp v0 v1 v2 v3 v4) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    pokeByteOff p 4 v3
    pokeByteOff p 5 v4
    return ()

{-# LINE 934 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint32_t timeout;
        } read_best_effort_flush_timeout_rp; -}

{-# LINE 938 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 939 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 940 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_best_effort_flush_timeout_rp = C'read_best_effort_flush_timeout_rp{
  c'read_best_effort_flush_timeout_rp'status :: CUChar,
  c'read_best_effort_flush_timeout_rp'timeout :: CUInt
} deriving (Eq,Show)
p'read_best_effort_flush_timeout_rp'status p = plusPtr p 0
p'read_best_effort_flush_timeout_rp'status :: Ptr (C'read_best_effort_flush_timeout_rp) -> Ptr (CUChar)
p'read_best_effort_flush_timeout_rp'timeout p = plusPtr p 1
p'read_best_effort_flush_timeout_rp'timeout :: Ptr (C'read_best_effort_flush_timeout_rp) -> Ptr (CUInt)
instance Storable C'read_best_effort_flush_timeout_rp where
  sizeOf _ = 5
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'read_best_effort_flush_timeout_rp v0 v1
  poke p (C'read_best_effort_flush_timeout_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 941 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint32_t timeout;
        } write_best_effort_flush_timeout_cp; -}

{-# LINE 945 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 946 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 947 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_best_effort_flush_timeout_cp = C'write_best_effort_flush_timeout_cp{
  c'write_best_effort_flush_timeout_cp'handle :: CUShort,
  c'write_best_effort_flush_timeout_cp'timeout :: CUInt
} deriving (Eq,Show)
p'write_best_effort_flush_timeout_cp'handle p = plusPtr p 0
p'write_best_effort_flush_timeout_cp'handle :: Ptr (C'write_best_effort_flush_timeout_cp) -> Ptr (CUShort)
p'write_best_effort_flush_timeout_cp'timeout p = plusPtr p 2
p'write_best_effort_flush_timeout_cp'timeout :: Ptr (C'write_best_effort_flush_timeout_cp) -> Ptr (CUInt)
instance Storable C'write_best_effort_flush_timeout_cp where
  sizeOf _ = 6
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'write_best_effort_flush_timeout_cp v0 v1
  poke p (C'write_best_effort_flush_timeout_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 948 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } write_best_effort_flush_timeout_rp; -}

{-# LINE 952 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 953 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_best_effort_flush_timeout_rp = C'write_best_effort_flush_timeout_rp{
  c'write_best_effort_flush_timeout_rp'status :: CUChar
} deriving (Eq,Show)
p'write_best_effort_flush_timeout_rp'status p = plusPtr p 0
p'write_best_effort_flush_timeout_rp'status :: Ptr (C'write_best_effort_flush_timeout_rp) -> Ptr (CUChar)
instance Storable C'write_best_effort_flush_timeout_rp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_best_effort_flush_timeout_rp v0
  poke p (C'write_best_effort_flush_timeout_rp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 954 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t le; uint8_t simul;
        } read_le_host_supported_rp; -}

{-# LINE 958 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 959 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 960 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 961 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_le_host_supported_rp = C'read_le_host_supported_rp{
  c'read_le_host_supported_rp'status :: CUChar,
  c'read_le_host_supported_rp'le :: CUChar,
  c'read_le_host_supported_rp'simul :: CUChar
} deriving (Eq,Show)
p'read_le_host_supported_rp'status p = plusPtr p 0
p'read_le_host_supported_rp'status :: Ptr (C'read_le_host_supported_rp) -> Ptr (CUChar)
p'read_le_host_supported_rp'le p = plusPtr p 1
p'read_le_host_supported_rp'le :: Ptr (C'read_le_host_supported_rp) -> Ptr (CUChar)
p'read_le_host_supported_rp'simul p = plusPtr p 2
p'read_le_host_supported_rp'simul :: Ptr (C'read_le_host_supported_rp) -> Ptr (CUChar)
instance Storable C'read_le_host_supported_rp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 2
    return $ C'read_le_host_supported_rp v0 v1 v2
  poke p (C'read_le_host_supported_rp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 2 v2
    return ()

{-# LINE 962 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t le; uint8_t simul;
        } write_le_host_supported_cp; -}

{-# LINE 966 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 967 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 968 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_le_host_supported_cp = C'write_le_host_supported_cp{
  c'write_le_host_supported_cp'le :: CUChar,
  c'write_le_host_supported_cp'simul :: CUChar
} deriving (Eq,Show)
p'write_le_host_supported_cp'le p = plusPtr p 0
p'write_le_host_supported_cp'le :: Ptr (C'write_le_host_supported_cp) -> Ptr (CUChar)
p'write_le_host_supported_cp'simul p = plusPtr p 1
p'write_le_host_supported_cp'simul :: Ptr (C'write_le_host_supported_cp) -> Ptr (CUChar)
instance Storable C'write_le_host_supported_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'write_le_host_supported_cp v0 v1
  poke p (C'write_le_host_supported_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 969 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint8_t hci_ver;
            uint16_t hci_rev;
            uint8_t lmp_ver;
            uint16_t manufacturer;
            uint16_t lmp_subver;
        } read_local_version_rp; -}

{-# LINE 978 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 979 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 980 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 981 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 982 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 983 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 984 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_local_version_rp = C'read_local_version_rp{
  c'read_local_version_rp'status :: CUChar,
  c'read_local_version_rp'hci_ver :: CUChar,
  c'read_local_version_rp'hci_rev :: CUShort,
  c'read_local_version_rp'lmp_ver :: CUChar,
  c'read_local_version_rp'manufacturer :: CUShort,
  c'read_local_version_rp'lmp_subver :: CUShort
} deriving (Eq,Show)
p'read_local_version_rp'status p = plusPtr p 0
p'read_local_version_rp'status :: Ptr (C'read_local_version_rp) -> Ptr (CUChar)
p'read_local_version_rp'hci_ver p = plusPtr p 1
p'read_local_version_rp'hci_ver :: Ptr (C'read_local_version_rp) -> Ptr (CUChar)
p'read_local_version_rp'hci_rev p = plusPtr p 2
p'read_local_version_rp'hci_rev :: Ptr (C'read_local_version_rp) -> Ptr (CUShort)
p'read_local_version_rp'lmp_ver p = plusPtr p 4
p'read_local_version_rp'lmp_ver :: Ptr (C'read_local_version_rp) -> Ptr (CUChar)
p'read_local_version_rp'manufacturer p = plusPtr p 5
p'read_local_version_rp'manufacturer :: Ptr (C'read_local_version_rp) -> Ptr (CUShort)
p'read_local_version_rp'lmp_subver p = plusPtr p 7
p'read_local_version_rp'lmp_subver :: Ptr (C'read_local_version_rp) -> Ptr (CUShort)
instance Storable C'read_local_version_rp where
  sizeOf _ = 9
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 2
    v3 <- peekByteOff p 4
    v4 <- peekByteOff p 5
    v5 <- peekByteOff p 7
    return $ C'read_local_version_rp v0 v1 v2 v3 v4 v5
  poke p (C'read_local_version_rp v0 v1 v2 v3 v4 v5) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 2 v2
    pokeByteOff p 4 v3
    pokeByteOff p 5 v4
    pokeByteOff p 7 v5
    return ()

{-# LINE 985 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t commands[64];
        } read_local_commands_rp; -}

{-# LINE 989 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 990 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 991 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_local_commands_rp = C'read_local_commands_rp{
  c'read_local_commands_rp'status :: CUChar,
  c'read_local_commands_rp'commands :: [CUChar]
} deriving (Eq,Show)
p'read_local_commands_rp'status p = plusPtr p 0
p'read_local_commands_rp'status :: Ptr (C'read_local_commands_rp) -> Ptr (CUChar)
p'read_local_commands_rp'commands p = plusPtr p 1
p'read_local_commands_rp'commands :: Ptr (C'read_local_commands_rp) -> Ptr (CUChar)
instance Storable C'read_local_commands_rp where
  sizeOf _ = 65
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 64 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 1)
    return $ C'read_local_commands_rp v0 v1
  poke p (C'read_local_commands_rp v0 v1) = do
    pokeByteOff p 0 v0
    let s = div 64 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 1) (take s v1)
    return ()

{-# LINE 992 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t features[8];
        } read_local_features_rp; -}

{-# LINE 996 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 997 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 998 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_local_features_rp = C'read_local_features_rp{
  c'read_local_features_rp'status :: CUChar,
  c'read_local_features_rp'features :: [CUChar]
} deriving (Eq,Show)
p'read_local_features_rp'status p = plusPtr p 0
p'read_local_features_rp'status :: Ptr (C'read_local_features_rp) -> Ptr (CUChar)
p'read_local_features_rp'features p = plusPtr p 1
p'read_local_features_rp'features :: Ptr (C'read_local_features_rp) -> Ptr (CUChar)
instance Storable C'read_local_features_rp where
  sizeOf _ = 9
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 8 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 1)
    return $ C'read_local_features_rp v0 v1
  poke p (C'read_local_features_rp v0 v1) = do
    pokeByteOff p 0 v0
    let s = div 8 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 1) (take s v1)
    return ()

{-# LINE 999 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t page_num;
        } read_local_ext_features_cp; -}

{-# LINE 1003 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1004 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_local_ext_features_cp = C'read_local_ext_features_cp{
  c'read_local_ext_features_cp'page_num :: CUChar
} deriving (Eq,Show)
p'read_local_ext_features_cp'page_num p = plusPtr p 0
p'read_local_ext_features_cp'page_num :: Ptr (C'read_local_ext_features_cp) -> Ptr (CUChar)
instance Storable C'read_local_ext_features_cp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'read_local_ext_features_cp v0
  poke p (C'read_local_ext_features_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1005 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint8_t page_num;
            uint8_t max_page_num;
            uint8_t features[8];
        } read_local_ext_features_rp; -}

{-# LINE 1012 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1013 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1014 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1015 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1016 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_local_ext_features_rp = C'read_local_ext_features_rp{
  c'read_local_ext_features_rp'status :: CUChar,
  c'read_local_ext_features_rp'page_num :: CUChar,
  c'read_local_ext_features_rp'max_page_num :: CUChar,
  c'read_local_ext_features_rp'features :: [CUChar]
} deriving (Eq,Show)
p'read_local_ext_features_rp'status p = plusPtr p 0
p'read_local_ext_features_rp'status :: Ptr (C'read_local_ext_features_rp) -> Ptr (CUChar)
p'read_local_ext_features_rp'page_num p = plusPtr p 1
p'read_local_ext_features_rp'page_num :: Ptr (C'read_local_ext_features_rp) -> Ptr (CUChar)
p'read_local_ext_features_rp'max_page_num p = plusPtr p 2
p'read_local_ext_features_rp'max_page_num :: Ptr (C'read_local_ext_features_rp) -> Ptr (CUChar)
p'read_local_ext_features_rp'features p = plusPtr p 3
p'read_local_ext_features_rp'features :: Ptr (C'read_local_ext_features_rp) -> Ptr (CUChar)
instance Storable C'read_local_ext_features_rp where
  sizeOf _ = 11
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 2
    v3 <- let s = div 8 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 3)
    return $ C'read_local_ext_features_rp v0 v1 v2 v3
  poke p (C'read_local_ext_features_rp v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 2 v2
    let s = div 8 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 3) (take s v3)
    return ()

{-# LINE 1017 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t acl_mtu;
            uint8_t sco_mtu;
            uint16_t acl_max_pkt;
            uint16_t sco_max_pkt;
        } read_buffer_size_rp; -}

{-# LINE 1025 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1026 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1027 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1028 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1029 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1030 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_buffer_size_rp = C'read_buffer_size_rp{
  c'read_buffer_size_rp'status :: CUChar,
  c'read_buffer_size_rp'acl_mtu :: CUShort,
  c'read_buffer_size_rp'sco_mtu :: CUChar,
  c'read_buffer_size_rp'acl_max_pkt :: CUShort,
  c'read_buffer_size_rp'sco_max_pkt :: CUShort
} deriving (Eq,Show)
p'read_buffer_size_rp'status p = plusPtr p 0
p'read_buffer_size_rp'status :: Ptr (C'read_buffer_size_rp) -> Ptr (CUChar)
p'read_buffer_size_rp'acl_mtu p = plusPtr p 1
p'read_buffer_size_rp'acl_mtu :: Ptr (C'read_buffer_size_rp) -> Ptr (CUShort)
p'read_buffer_size_rp'sco_mtu p = plusPtr p 3
p'read_buffer_size_rp'sco_mtu :: Ptr (C'read_buffer_size_rp) -> Ptr (CUChar)
p'read_buffer_size_rp'acl_max_pkt p = plusPtr p 4
p'read_buffer_size_rp'acl_max_pkt :: Ptr (C'read_buffer_size_rp) -> Ptr (CUShort)
p'read_buffer_size_rp'sco_max_pkt p = plusPtr p 6
p'read_buffer_size_rp'sco_max_pkt :: Ptr (C'read_buffer_size_rp) -> Ptr (CUShort)
instance Storable C'read_buffer_size_rp where
  sizeOf _ = 8
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    v3 <- peekByteOff p 4
    v4 <- peekByteOff p 6
    return $ C'read_buffer_size_rp v0 v1 v2 v3 v4
  poke p (C'read_buffer_size_rp v0 v1 v2 v3 v4) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    pokeByteOff p 4 v3
    pokeByteOff p 6 v4
    return ()

{-# LINE 1031 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; bdaddr_t bdaddr;
        } read_bd_addr_rp; -}

{-# LINE 1035 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1036 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1037 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_bd_addr_rp = C'read_bd_addr_rp{
  c'read_bd_addr_rp'status :: CUChar,
  c'read_bd_addr_rp'bdaddr :: C'bdaddr_t
} deriving (Eq,Show)
p'read_bd_addr_rp'status p = plusPtr p 0
p'read_bd_addr_rp'status :: Ptr (C'read_bd_addr_rp) -> Ptr (CUChar)
p'read_bd_addr_rp'bdaddr p = plusPtr p 1
p'read_bd_addr_rp'bdaddr :: Ptr (C'read_bd_addr_rp) -> Ptr (C'bdaddr_t)
instance Storable C'read_bd_addr_rp where
  sizeOf _ = 7
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'read_bd_addr_rp v0 v1
  poke p (C'read_bd_addr_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1038 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t max_acl_len;
            uint16_t data_block_len;
            uint16_t num_blocks;
        } read_data_block_size_rp; -}

{-# LINE 1045 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1046 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1047 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1048 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1049 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_data_block_size_rp = C'read_data_block_size_rp{
  c'read_data_block_size_rp'status :: CUChar,
  c'read_data_block_size_rp'max_acl_len :: CUShort,
  c'read_data_block_size_rp'data_block_len :: CUShort,
  c'read_data_block_size_rp'num_blocks :: CUShort
} deriving (Eq,Show)
p'read_data_block_size_rp'status p = plusPtr p 0
p'read_data_block_size_rp'status :: Ptr (C'read_data_block_size_rp) -> Ptr (CUChar)
p'read_data_block_size_rp'max_acl_len p = plusPtr p 1
p'read_data_block_size_rp'max_acl_len :: Ptr (C'read_data_block_size_rp) -> Ptr (CUShort)
p'read_data_block_size_rp'data_block_len p = plusPtr p 3
p'read_data_block_size_rp'data_block_len :: Ptr (C'read_data_block_size_rp) -> Ptr (CUShort)
p'read_data_block_size_rp'num_blocks p = plusPtr p 5
p'read_data_block_size_rp'num_blocks :: Ptr (C'read_data_block_size_rp) -> Ptr (CUShort)
instance Storable C'read_data_block_size_rp where
  sizeOf _ = 7
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    v3 <- peekByteOff p 5
    return $ C'read_data_block_size_rp v0 v1 v2 v3
  poke p (C'read_data_block_size_rp v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    pokeByteOff p 5 v3
    return ()

{-# LINE 1050 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t counter;
        } read_failed_contact_counter_rp; -}

{-# LINE 1054 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1055 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1056 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1057 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_failed_contact_counter_rp = C'read_failed_contact_counter_rp{
  c'read_failed_contact_counter_rp'status :: CUChar,
  c'read_failed_contact_counter_rp'handle :: CUShort,
  c'read_failed_contact_counter_rp'counter :: CUChar
} deriving (Eq,Show)
p'read_failed_contact_counter_rp'status p = plusPtr p 0
p'read_failed_contact_counter_rp'status :: Ptr (C'read_failed_contact_counter_rp) -> Ptr (CUChar)
p'read_failed_contact_counter_rp'handle p = plusPtr p 1
p'read_failed_contact_counter_rp'handle :: Ptr (C'read_failed_contact_counter_rp) -> Ptr (CUShort)
p'read_failed_contact_counter_rp'counter p = plusPtr p 3
p'read_failed_contact_counter_rp'counter :: Ptr (C'read_failed_contact_counter_rp) -> Ptr (CUChar)
instance Storable C'read_failed_contact_counter_rp where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    return $ C'read_failed_contact_counter_rp v0 v1 v2
  poke p (C'read_failed_contact_counter_rp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    return ()

{-# LINE 1058 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle;
        } reset_failed_contact_counter_rp; -}

{-# LINE 1062 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1063 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1064 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'reset_failed_contact_counter_rp = C'reset_failed_contact_counter_rp{
  c'reset_failed_contact_counter_rp'status :: CUChar,
  c'reset_failed_contact_counter_rp'handle :: CUShort
} deriving (Eq,Show)
p'reset_failed_contact_counter_rp'status p = plusPtr p 0
p'reset_failed_contact_counter_rp'status :: Ptr (C'reset_failed_contact_counter_rp) -> Ptr (CUChar)
p'reset_failed_contact_counter_rp'handle p = plusPtr p 1
p'reset_failed_contact_counter_rp'handle :: Ptr (C'reset_failed_contact_counter_rp) -> Ptr (CUShort)
instance Storable C'reset_failed_contact_counter_rp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'reset_failed_contact_counter_rp v0 v1
  poke p (C'reset_failed_contact_counter_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1065 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t link_quality;
        } read_link_quality_rp; -}

{-# LINE 1069 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1070 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1071 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1072 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_link_quality_rp = C'read_link_quality_rp{
  c'read_link_quality_rp'status :: CUChar,
  c'read_link_quality_rp'handle :: CUShort,
  c'read_link_quality_rp'link_quality :: CUChar
} deriving (Eq,Show)
p'read_link_quality_rp'status p = plusPtr p 0
p'read_link_quality_rp'status :: Ptr (C'read_link_quality_rp) -> Ptr (CUChar)
p'read_link_quality_rp'handle p = plusPtr p 1
p'read_link_quality_rp'handle :: Ptr (C'read_link_quality_rp) -> Ptr (CUShort)
p'read_link_quality_rp'link_quality p = plusPtr p 3
p'read_link_quality_rp'link_quality :: Ptr (C'read_link_quality_rp) -> Ptr (CUChar)
instance Storable C'read_link_quality_rp where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    return $ C'read_link_quality_rp v0 v1 v2
  poke p (C'read_link_quality_rp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    return ()

{-# LINE 1073 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; int8_t rssi;
        } read_rssi_rp; -}

{-# LINE 1077 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1078 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1079 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1080 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_rssi_rp = C'read_rssi_rp{
  c'read_rssi_rp'status :: CUChar,
  c'read_rssi_rp'handle :: CUShort,
  c'read_rssi_rp'rssi :: CSChar
} deriving (Eq,Show)
p'read_rssi_rp'status p = plusPtr p 0
p'read_rssi_rp'status :: Ptr (C'read_rssi_rp) -> Ptr (CUChar)
p'read_rssi_rp'handle p = plusPtr p 1
p'read_rssi_rp'handle :: Ptr (C'read_rssi_rp) -> Ptr (CUShort)
p'read_rssi_rp'rssi p = plusPtr p 3
p'read_rssi_rp'rssi :: Ptr (C'read_rssi_rp) -> Ptr (CSChar)
instance Storable C'read_rssi_rp where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    return $ C'read_rssi_rp v0 v1 v2
  poke p (C'read_rssi_rp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    return ()

{-# LINE 1081 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t mode; uint8_t map[10];
        } read_afh_map_rp; -}

{-# LINE 1085 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1086 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1087 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1088 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1089 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_afh_map_rp = C'read_afh_map_rp{
  c'read_afh_map_rp'status :: CUChar,
  c'read_afh_map_rp'handle :: CUShort,
  c'read_afh_map_rp'mode :: CUChar,
  c'read_afh_map_rp'map :: [CUChar]
} deriving (Eq,Show)
p'read_afh_map_rp'status p = plusPtr p 0
p'read_afh_map_rp'status :: Ptr (C'read_afh_map_rp) -> Ptr (CUChar)
p'read_afh_map_rp'handle p = plusPtr p 1
p'read_afh_map_rp'handle :: Ptr (C'read_afh_map_rp) -> Ptr (CUShort)
p'read_afh_map_rp'mode p = plusPtr p 3
p'read_afh_map_rp'mode :: Ptr (C'read_afh_map_rp) -> Ptr (CUChar)
p'read_afh_map_rp'map p = plusPtr p 4
p'read_afh_map_rp'map :: Ptr (C'read_afh_map_rp) -> Ptr (CUChar)
instance Storable C'read_afh_map_rp where
  sizeOf _ = 14
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    v3 <- let s = div 10 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 4)
    return $ C'read_afh_map_rp v0 v1 v2 v3
  poke p (C'read_afh_map_rp v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    let s = div 10 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 4) (take s v3)
    return ()

{-# LINE 1090 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint8_t which_clock;
        } read_clock_cp; -}

{-# LINE 1094 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1095 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1096 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_clock_cp = C'read_clock_cp{
  c'read_clock_cp'handle :: CUShort,
  c'read_clock_cp'which_clock :: CUChar
} deriving (Eq,Show)
p'read_clock_cp'handle p = plusPtr p 0
p'read_clock_cp'handle :: Ptr (C'read_clock_cp) -> Ptr (CUShort)
p'read_clock_cp'which_clock p = plusPtr p 2
p'read_clock_cp'which_clock :: Ptr (C'read_clock_cp) -> Ptr (CUChar)
instance Storable C'read_clock_cp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'read_clock_cp v0 v1
  poke p (C'read_clock_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 1097 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint32_t clock; uint16_t accuracy;
        } read_clock_rp; -}

{-# LINE 1101 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1102 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1103 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1104 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1105 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_clock_rp = C'read_clock_rp{
  c'read_clock_rp'status :: CUChar,
  c'read_clock_rp'handle :: CUShort,
  c'read_clock_rp'clock :: CUInt,
  c'read_clock_rp'accuracy :: CUShort
} deriving (Eq,Show)
p'read_clock_rp'status p = plusPtr p 0
p'read_clock_rp'status :: Ptr (C'read_clock_rp) -> Ptr (CUChar)
p'read_clock_rp'handle p = plusPtr p 1
p'read_clock_rp'handle :: Ptr (C'read_clock_rp) -> Ptr (CUShort)
p'read_clock_rp'clock p = plusPtr p 3
p'read_clock_rp'clock :: Ptr (C'read_clock_rp) -> Ptr (CUInt)
p'read_clock_rp'accuracy p = plusPtr p 7
p'read_clock_rp'accuracy :: Ptr (C'read_clock_rp) -> Ptr (CUShort)
instance Storable C'read_clock_rp where
  sizeOf _ = 9
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    v3 <- peekByteOff p 7
    return $ C'read_clock_rp v0 v1 v2 v3
  poke p (C'read_clock_rp v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    pokeByteOff p 7 v3
    return ()

{-# LINE 1106 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint8_t amp_status;
            uint32_t total_bandwidth;
            uint32_t max_guaranteed_bandwidth;
            uint32_t min_latency;
            uint32_t max_pdu_size;
            uint8_t controller_type;
            uint16_t pal_caps;
            uint16_t max_amp_assoc_length;
            uint32_t max_flush_timeout;
            uint32_t best_effort_flush_timeout;
        } read_local_amp_info_rp; -}

{-# LINE 1120 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1121 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1122 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1123 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1124 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1125 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1126 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1127 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1128 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1129 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1130 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1131 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_local_amp_info_rp = C'read_local_amp_info_rp{
  c'read_local_amp_info_rp'status :: CUChar,
  c'read_local_amp_info_rp'amp_status :: CUChar,
  c'read_local_amp_info_rp'total_bandwidth :: CUInt,
  c'read_local_amp_info_rp'max_guaranteed_bandwidth :: CUInt,
  c'read_local_amp_info_rp'min_latency :: CUInt,
  c'read_local_amp_info_rp'max_pdu_size :: CUInt,
  c'read_local_amp_info_rp'controller_type :: CUChar,
  c'read_local_amp_info_rp'pal_caps :: CUShort,
  c'read_local_amp_info_rp'max_amp_assoc_length :: CUShort,
  c'read_local_amp_info_rp'max_flush_timeout :: CUInt,
  c'read_local_amp_info_rp'best_effort_flush_timeout :: CUInt
} deriving (Eq,Show)
p'read_local_amp_info_rp'status p = plusPtr p 0
p'read_local_amp_info_rp'status :: Ptr (C'read_local_amp_info_rp) -> Ptr (CUChar)
p'read_local_amp_info_rp'amp_status p = plusPtr p 1
p'read_local_amp_info_rp'amp_status :: Ptr (C'read_local_amp_info_rp) -> Ptr (CUChar)
p'read_local_amp_info_rp'total_bandwidth p = plusPtr p 2
p'read_local_amp_info_rp'total_bandwidth :: Ptr (C'read_local_amp_info_rp) -> Ptr (CUInt)
p'read_local_amp_info_rp'max_guaranteed_bandwidth p = plusPtr p 6
p'read_local_amp_info_rp'max_guaranteed_bandwidth :: Ptr (C'read_local_amp_info_rp) -> Ptr (CUInt)
p'read_local_amp_info_rp'min_latency p = plusPtr p 10
p'read_local_amp_info_rp'min_latency :: Ptr (C'read_local_amp_info_rp) -> Ptr (CUInt)
p'read_local_amp_info_rp'max_pdu_size p = plusPtr p 14
p'read_local_amp_info_rp'max_pdu_size :: Ptr (C'read_local_amp_info_rp) -> Ptr (CUInt)
p'read_local_amp_info_rp'controller_type p = plusPtr p 18
p'read_local_amp_info_rp'controller_type :: Ptr (C'read_local_amp_info_rp) -> Ptr (CUChar)
p'read_local_amp_info_rp'pal_caps p = plusPtr p 19
p'read_local_amp_info_rp'pal_caps :: Ptr (C'read_local_amp_info_rp) -> Ptr (CUShort)
p'read_local_amp_info_rp'max_amp_assoc_length p = plusPtr p 21
p'read_local_amp_info_rp'max_amp_assoc_length :: Ptr (C'read_local_amp_info_rp) -> Ptr (CUShort)
p'read_local_amp_info_rp'max_flush_timeout p = plusPtr p 23
p'read_local_amp_info_rp'max_flush_timeout :: Ptr (C'read_local_amp_info_rp) -> Ptr (CUInt)
p'read_local_amp_info_rp'best_effort_flush_timeout p = plusPtr p 27
p'read_local_amp_info_rp'best_effort_flush_timeout :: Ptr (C'read_local_amp_info_rp) -> Ptr (CUInt)
instance Storable C'read_local_amp_info_rp where
  sizeOf _ = 31
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 2
    v3 <- peekByteOff p 6
    v4 <- peekByteOff p 10
    v5 <- peekByteOff p 14
    v6 <- peekByteOff p 18
    v7 <- peekByteOff p 19
    v8 <- peekByteOff p 21
    v9 <- peekByteOff p 23
    v10 <- peekByteOff p 27
    return $ C'read_local_amp_info_rp v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  poke p (C'read_local_amp_info_rp v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 2 v2
    pokeByteOff p 6 v3
    pokeByteOff p 10 v4
    pokeByteOff p 14 v5
    pokeByteOff p 18 v6
    pokeByteOff p 19 v7
    pokeByteOff p 21 v8
    pokeByteOff p 23 v9
    pokeByteOff p 27 v10
    return ()

{-# LINE 1132 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t handle; uint16_t length_so_far; uint16_t assoc_length;
        } read_local_amp_assoc_cp; -}

{-# LINE 1136 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1137 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1138 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1139 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_local_amp_assoc_cp = C'read_local_amp_assoc_cp{
  c'read_local_amp_assoc_cp'handle :: CUChar,
  c'read_local_amp_assoc_cp'length_so_far :: CUShort,
  c'read_local_amp_assoc_cp'assoc_length :: CUShort
} deriving (Eq,Show)
p'read_local_amp_assoc_cp'handle p = plusPtr p 0
p'read_local_amp_assoc_cp'handle :: Ptr (C'read_local_amp_assoc_cp) -> Ptr (CUChar)
p'read_local_amp_assoc_cp'length_so_far p = plusPtr p 1
p'read_local_amp_assoc_cp'length_so_far :: Ptr (C'read_local_amp_assoc_cp) -> Ptr (CUShort)
p'read_local_amp_assoc_cp'assoc_length p = plusPtr p 3
p'read_local_amp_assoc_cp'assoc_length :: Ptr (C'read_local_amp_assoc_cp) -> Ptr (CUShort)
instance Storable C'read_local_amp_assoc_cp where
  sizeOf _ = 5
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    return $ C'read_local_amp_assoc_cp v0 v1 v2
  poke p (C'read_local_amp_assoc_cp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    return ()

{-# LINE 1140 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint8_t handle;
            uint16_t length;
            uint8_t fragment[248];
        } read_local_amp_assoc_rp; -}

{-# LINE 1147 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1148 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1149 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1150 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1151 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'read_local_amp_assoc_rp = C'read_local_amp_assoc_rp{
  c'read_local_amp_assoc_rp'status :: CUChar,
  c'read_local_amp_assoc_rp'handle :: CUChar,
  c'read_local_amp_assoc_rp'length :: CUShort,
  c'read_local_amp_assoc_rp'fragment :: [CUChar]
} deriving (Eq,Show)
p'read_local_amp_assoc_rp'status p = plusPtr p 0
p'read_local_amp_assoc_rp'status :: Ptr (C'read_local_amp_assoc_rp) -> Ptr (CUChar)
p'read_local_amp_assoc_rp'handle p = plusPtr p 1
p'read_local_amp_assoc_rp'handle :: Ptr (C'read_local_amp_assoc_rp) -> Ptr (CUChar)
p'read_local_amp_assoc_rp'length p = plusPtr p 2
p'read_local_amp_assoc_rp'length :: Ptr (C'read_local_amp_assoc_rp) -> Ptr (CUShort)
p'read_local_amp_assoc_rp'fragment p = plusPtr p 4
p'read_local_amp_assoc_rp'fragment :: Ptr (C'read_local_amp_assoc_rp) -> Ptr (CUChar)
instance Storable C'read_local_amp_assoc_rp where
  sizeOf _ = 252
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 2
    v3 <- let s = div 248 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 4)
    return $ C'read_local_amp_assoc_rp v0 v1 v2 v3
  poke p (C'read_local_amp_assoc_rp v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 2 v2
    let s = div 248 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 4) (take s v3)
    return ()

{-# LINE 1152 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t handle;
            uint16_t length_so_far;
            uint16_t remaining_length;
            uint8_t fragment[248];
        } write_remote_amp_assoc_cp; -}

{-# LINE 1159 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1160 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1161 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1162 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1163 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_remote_amp_assoc_cp = C'write_remote_amp_assoc_cp{
  c'write_remote_amp_assoc_cp'handle :: CUChar,
  c'write_remote_amp_assoc_cp'length_so_far :: CUShort,
  c'write_remote_amp_assoc_cp'remaining_length :: CUShort,
  c'write_remote_amp_assoc_cp'fragment :: [CUChar]
} deriving (Eq,Show)
p'write_remote_amp_assoc_cp'handle p = plusPtr p 0
p'write_remote_amp_assoc_cp'handle :: Ptr (C'write_remote_amp_assoc_cp) -> Ptr (CUChar)
p'write_remote_amp_assoc_cp'length_so_far p = plusPtr p 1
p'write_remote_amp_assoc_cp'length_so_far :: Ptr (C'write_remote_amp_assoc_cp) -> Ptr (CUShort)
p'write_remote_amp_assoc_cp'remaining_length p = plusPtr p 3
p'write_remote_amp_assoc_cp'remaining_length :: Ptr (C'write_remote_amp_assoc_cp) -> Ptr (CUShort)
p'write_remote_amp_assoc_cp'fragment p = plusPtr p 5
p'write_remote_amp_assoc_cp'fragment :: Ptr (C'write_remote_amp_assoc_cp) -> Ptr (CUChar)
instance Storable C'write_remote_amp_assoc_cp where
  sizeOf _ = 253
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    v3 <- let s = div 248 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 5)
    return $ C'write_remote_amp_assoc_cp v0 v1 v2 v3
  poke p (C'write_remote_amp_assoc_cp v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    let s = div 248 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 5) (take s v3)
    return ()

{-# LINE 1164 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t handle;
        } write_remote_amp_assoc_rp; -}

{-# LINE 1168 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1169 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1170 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_remote_amp_assoc_rp = C'write_remote_amp_assoc_rp{
  c'write_remote_amp_assoc_rp'status :: CUChar,
  c'write_remote_amp_assoc_rp'handle :: CUChar
} deriving (Eq,Show)
p'write_remote_amp_assoc_rp'status p = plusPtr p 0
p'write_remote_amp_assoc_rp'status :: Ptr (C'write_remote_amp_assoc_rp) -> Ptr (CUChar)
p'write_remote_amp_assoc_rp'handle p = plusPtr p 1
p'write_remote_amp_assoc_rp'handle :: Ptr (C'write_remote_amp_assoc_rp) -> Ptr (CUChar)
instance Storable C'write_remote_amp_assoc_rp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'write_remote_amp_assoc_rp v0 v1
  poke p (C'write_remote_amp_assoc_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1171 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t mode;
        } write_simple_pairing_debug_mode_cp; -}

{-# LINE 1175 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1176 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_simple_pairing_debug_mode_cp = C'write_simple_pairing_debug_mode_cp{
  c'write_simple_pairing_debug_mode_cp'mode :: CUChar
} deriving (Eq,Show)
p'write_simple_pairing_debug_mode_cp'mode p = plusPtr p 0
p'write_simple_pairing_debug_mode_cp'mode :: Ptr (C'write_simple_pairing_debug_mode_cp) -> Ptr (CUChar)
instance Storable C'write_simple_pairing_debug_mode_cp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_simple_pairing_debug_mode_cp v0
  poke p (C'write_simple_pairing_debug_mode_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1177 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
        } write_simple_pairing_debug_mode_rp; -}

{-# LINE 1181 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1182 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'write_simple_pairing_debug_mode_rp = C'write_simple_pairing_debug_mode_rp{
  c'write_simple_pairing_debug_mode_rp'status :: CUChar
} deriving (Eq,Show)
p'write_simple_pairing_debug_mode_rp'status p = plusPtr p 0
p'write_simple_pairing_debug_mode_rp'status :: Ptr (C'write_simple_pairing_debug_mode_rp) -> Ptr (CUChar)
instance Storable C'write_simple_pairing_debug_mode_rp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'write_simple_pairing_debug_mode_rp v0
  poke p (C'write_simple_pairing_debug_mode_rp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1183 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t mask[8];
        } le_set_event_mask_cp; -}

{-# LINE 1187 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1188 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_set_event_mask_cp = C'le_set_event_mask_cp{
  c'le_set_event_mask_cp'mask :: [CUChar]
} deriving (Eq,Show)
p'le_set_event_mask_cp'mask p = plusPtr p 0
p'le_set_event_mask_cp'mask :: Ptr (C'le_set_event_mask_cp) -> Ptr (CUChar)
instance Storable C'le_set_event_mask_cp where
  sizeOf _ = 8
  alignment _ = 1
  peek p = do
    v0 <- let s = div 8 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 0)
    return $ C'le_set_event_mask_cp v0
  poke p (C'le_set_event_mask_cp v0) = do
    let s = div 8 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 0) (take s v0)
    return ()

{-# LINE 1189 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t pkt_len; uint8_t max_pkt;
        } le_read_buffer_size_rp; -}

{-# LINE 1193 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1194 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1195 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1196 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_read_buffer_size_rp = C'le_read_buffer_size_rp{
  c'le_read_buffer_size_rp'status :: CUChar,
  c'le_read_buffer_size_rp'pkt_len :: CUShort,
  c'le_read_buffer_size_rp'max_pkt :: CUChar
} deriving (Eq,Show)
p'le_read_buffer_size_rp'status p = plusPtr p 0
p'le_read_buffer_size_rp'status :: Ptr (C'le_read_buffer_size_rp) -> Ptr (CUChar)
p'le_read_buffer_size_rp'pkt_len p = plusPtr p 1
p'le_read_buffer_size_rp'pkt_len :: Ptr (C'le_read_buffer_size_rp) -> Ptr (CUShort)
p'le_read_buffer_size_rp'max_pkt p = plusPtr p 3
p'le_read_buffer_size_rp'max_pkt :: Ptr (C'le_read_buffer_size_rp) -> Ptr (CUChar)
instance Storable C'le_read_buffer_size_rp where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    return $ C'le_read_buffer_size_rp v0 v1 v2
  poke p (C'le_read_buffer_size_rp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    return ()

{-# LINE 1197 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t features[8];
        } le_read_local_supported_features_rp; -}

{-# LINE 1201 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1202 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1203 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_read_local_supported_features_rp = C'le_read_local_supported_features_rp{
  c'le_read_local_supported_features_rp'status :: CUChar,
  c'le_read_local_supported_features_rp'features :: [CUChar]
} deriving (Eq,Show)
p'le_read_local_supported_features_rp'status p = plusPtr p 0
p'le_read_local_supported_features_rp'status :: Ptr (C'le_read_local_supported_features_rp) -> Ptr (CUChar)
p'le_read_local_supported_features_rp'features p = plusPtr p 1
p'le_read_local_supported_features_rp'features :: Ptr (C'le_read_local_supported_features_rp) -> Ptr (CUChar)
instance Storable C'le_read_local_supported_features_rp where
  sizeOf _ = 9
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 8 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 1)
    return $ C'le_read_local_supported_features_rp v0 v1
  poke p (C'le_read_local_supported_features_rp v0 v1) = do
    pokeByteOff p 0 v0
    let s = div 8 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 1) (take s v1)
    return ()

{-# LINE 1204 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
        } le_set_random_address_cp; -}

{-# LINE 1208 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1209 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_set_random_address_cp = C'le_set_random_address_cp{
  c'le_set_random_address_cp'bdaddr :: C'bdaddr_t
} deriving (Eq,Show)
p'le_set_random_address_cp'bdaddr p = plusPtr p 0
p'le_set_random_address_cp'bdaddr :: Ptr (C'le_set_random_address_cp) -> Ptr (C'bdaddr_t)
instance Storable C'le_set_random_address_cp where
  sizeOf _ = 6
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'le_set_random_address_cp v0
  poke p (C'le_set_random_address_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1210 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t min_interval;
            uint16_t max_interval;
            uint8_t advtype;
            uint8_t own_bdaddr_type;
            uint8_t direct_bdaddr_type;
            bdaddr_t direct_bdaddr;
            uint8_t chan_map;
            uint8_t filter;
        } le_set_advertising_parameters_cp; -}

{-# LINE 1221 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1222 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1223 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1224 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1225 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1226 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1227 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1228 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1229 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_set_advertising_parameters_cp = C'le_set_advertising_parameters_cp{
  c'le_set_advertising_parameters_cp'min_interval :: CUShort,
  c'le_set_advertising_parameters_cp'max_interval :: CUShort,
  c'le_set_advertising_parameters_cp'advtype :: CUChar,
  c'le_set_advertising_parameters_cp'own_bdaddr_type :: CUChar,
  c'le_set_advertising_parameters_cp'direct_bdaddr_type :: CUChar,
  c'le_set_advertising_parameters_cp'direct_bdaddr :: C'bdaddr_t,
  c'le_set_advertising_parameters_cp'chan_map :: CUChar,
  c'le_set_advertising_parameters_cp'filter :: CUChar
} deriving (Eq,Show)
p'le_set_advertising_parameters_cp'min_interval p = plusPtr p 0
p'le_set_advertising_parameters_cp'min_interval :: Ptr (C'le_set_advertising_parameters_cp) -> Ptr (CUShort)
p'le_set_advertising_parameters_cp'max_interval p = plusPtr p 2
p'le_set_advertising_parameters_cp'max_interval :: Ptr (C'le_set_advertising_parameters_cp) -> Ptr (CUShort)
p'le_set_advertising_parameters_cp'advtype p = plusPtr p 4
p'le_set_advertising_parameters_cp'advtype :: Ptr (C'le_set_advertising_parameters_cp) -> Ptr (CUChar)
p'le_set_advertising_parameters_cp'own_bdaddr_type p = plusPtr p 5
p'le_set_advertising_parameters_cp'own_bdaddr_type :: Ptr (C'le_set_advertising_parameters_cp) -> Ptr (CUChar)
p'le_set_advertising_parameters_cp'direct_bdaddr_type p = plusPtr p 6
p'le_set_advertising_parameters_cp'direct_bdaddr_type :: Ptr (C'le_set_advertising_parameters_cp) -> Ptr (CUChar)
p'le_set_advertising_parameters_cp'direct_bdaddr p = plusPtr p 7
p'le_set_advertising_parameters_cp'direct_bdaddr :: Ptr (C'le_set_advertising_parameters_cp) -> Ptr (C'bdaddr_t)
p'le_set_advertising_parameters_cp'chan_map p = plusPtr p 13
p'le_set_advertising_parameters_cp'chan_map :: Ptr (C'le_set_advertising_parameters_cp) -> Ptr (CUChar)
p'le_set_advertising_parameters_cp'filter p = plusPtr p 14
p'le_set_advertising_parameters_cp'filter :: Ptr (C'le_set_advertising_parameters_cp) -> Ptr (CUChar)
instance Storable C'le_set_advertising_parameters_cp where
  sizeOf _ = 15
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    v3 <- peekByteOff p 5
    v4 <- peekByteOff p 6
    v5 <- peekByteOff p 7
    v6 <- peekByteOff p 13
    v7 <- peekByteOff p 14
    return $ C'le_set_advertising_parameters_cp v0 v1 v2 v3 v4 v5 v6 v7
  poke p (C'le_set_advertising_parameters_cp v0 v1 v2 v3 v4 v5 v6 v7) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    pokeByteOff p 5 v3
    pokeByteOff p 6 v4
    pokeByteOff p 7 v5
    pokeByteOff p 13 v6
    pokeByteOff p 14 v7
    return ()

{-# LINE 1230 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; int8_t level;
        } le_read_advertising_channel_tx_power_rp; -}

{-# LINE 1234 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1235 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1236 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_read_advertising_channel_tx_power_rp = C'le_read_advertising_channel_tx_power_rp{
  c'le_read_advertising_channel_tx_power_rp'status :: CUChar,
  c'le_read_advertising_channel_tx_power_rp'level :: CSChar
} deriving (Eq,Show)
p'le_read_advertising_channel_tx_power_rp'status p = plusPtr p 0
p'le_read_advertising_channel_tx_power_rp'status :: Ptr (C'le_read_advertising_channel_tx_power_rp) -> Ptr (CUChar)
p'le_read_advertising_channel_tx_power_rp'level p = plusPtr p 1
p'le_read_advertising_channel_tx_power_rp'level :: Ptr (C'le_read_advertising_channel_tx_power_rp) -> Ptr (CSChar)
instance Storable C'le_read_advertising_channel_tx_power_rp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'le_read_advertising_channel_tx_power_rp v0 v1
  poke p (C'le_read_advertising_channel_tx_power_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1237 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t length; uint8_t data[31];
        } le_set_advertising_data_cp; -}

{-# LINE 1241 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1242 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1243 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_set_advertising_data_cp = C'le_set_advertising_data_cp{
  c'le_set_advertising_data_cp'length :: CUChar,
  c'le_set_advertising_data_cp'data :: [CUChar]
} deriving (Eq,Show)
p'le_set_advertising_data_cp'length p = plusPtr p 0
p'le_set_advertising_data_cp'length :: Ptr (C'le_set_advertising_data_cp) -> Ptr (CUChar)
p'le_set_advertising_data_cp'data p = plusPtr p 1
p'le_set_advertising_data_cp'data :: Ptr (C'le_set_advertising_data_cp) -> Ptr (CUChar)
instance Storable C'le_set_advertising_data_cp where
  sizeOf _ = 32
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 31 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 1)
    return $ C'le_set_advertising_data_cp v0 v1
  poke p (C'le_set_advertising_data_cp v0 v1) = do
    pokeByteOff p 0 v0
    let s = div 31 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 1) (take s v1)
    return ()

{-# LINE 1244 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t length; uint8_t data[31];
        } le_set_scan_response_data_cp; -}

{-# LINE 1248 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1249 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1250 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_set_scan_response_data_cp = C'le_set_scan_response_data_cp{
  c'le_set_scan_response_data_cp'length :: CUChar,
  c'le_set_scan_response_data_cp'data :: [CUChar]
} deriving (Eq,Show)
p'le_set_scan_response_data_cp'length p = plusPtr p 0
p'le_set_scan_response_data_cp'length :: Ptr (C'le_set_scan_response_data_cp) -> Ptr (CUChar)
p'le_set_scan_response_data_cp'data p = plusPtr p 1
p'le_set_scan_response_data_cp'data :: Ptr (C'le_set_scan_response_data_cp) -> Ptr (CUChar)
instance Storable C'le_set_scan_response_data_cp where
  sizeOf _ = 32
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 31 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 1)
    return $ C'le_set_scan_response_data_cp v0 v1
  poke p (C'le_set_scan_response_data_cp v0 v1) = do
    pokeByteOff p 0 v0
    let s = div 31 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 1) (take s v1)
    return ()

{-# LINE 1251 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t enable;
        } le_set_advertise_enable_cp; -}

{-# LINE 1255 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1256 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_set_advertise_enable_cp = C'le_set_advertise_enable_cp{
  c'le_set_advertise_enable_cp'enable :: CUChar
} deriving (Eq,Show)
p'le_set_advertise_enable_cp'enable p = plusPtr p 0
p'le_set_advertise_enable_cp'enable :: Ptr (C'le_set_advertise_enable_cp) -> Ptr (CUChar)
instance Storable C'le_set_advertise_enable_cp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'le_set_advertise_enable_cp v0
  poke p (C'le_set_advertise_enable_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1257 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t type;
            uint16_t interval;
            uint16_t window;
            uint8_t own_bdaddr_type;
            uint8_t filter;
        } le_set_scan_parameters_cp; -}

{-# LINE 1265 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1266 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1267 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1268 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1269 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1270 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_set_scan_parameters_cp = C'le_set_scan_parameters_cp{
  c'le_set_scan_parameters_cp'type :: CUChar,
  c'le_set_scan_parameters_cp'interval :: CUShort,
  c'le_set_scan_parameters_cp'window :: CUShort,
  c'le_set_scan_parameters_cp'own_bdaddr_type :: CUChar,
  c'le_set_scan_parameters_cp'filter :: CUChar
} deriving (Eq,Show)
p'le_set_scan_parameters_cp'type p = plusPtr p 0
p'le_set_scan_parameters_cp'type :: Ptr (C'le_set_scan_parameters_cp) -> Ptr (CUChar)
p'le_set_scan_parameters_cp'interval p = plusPtr p 1
p'le_set_scan_parameters_cp'interval :: Ptr (C'le_set_scan_parameters_cp) -> Ptr (CUShort)
p'le_set_scan_parameters_cp'window p = plusPtr p 3
p'le_set_scan_parameters_cp'window :: Ptr (C'le_set_scan_parameters_cp) -> Ptr (CUShort)
p'le_set_scan_parameters_cp'own_bdaddr_type p = plusPtr p 5
p'le_set_scan_parameters_cp'own_bdaddr_type :: Ptr (C'le_set_scan_parameters_cp) -> Ptr (CUChar)
p'le_set_scan_parameters_cp'filter p = plusPtr p 6
p'le_set_scan_parameters_cp'filter :: Ptr (C'le_set_scan_parameters_cp) -> Ptr (CUChar)
instance Storable C'le_set_scan_parameters_cp where
  sizeOf _ = 7
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    v3 <- peekByteOff p 5
    v4 <- peekByteOff p 6
    return $ C'le_set_scan_parameters_cp v0 v1 v2 v3 v4
  poke p (C'le_set_scan_parameters_cp v0 v1 v2 v3 v4) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    pokeByteOff p 5 v3
    pokeByteOff p 6 v4
    return ()

{-# LINE 1271 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t enable; uint8_t filter_dup;
        } le_set_scan_enable_cp; -}

{-# LINE 1275 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1276 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1277 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_set_scan_enable_cp = C'le_set_scan_enable_cp{
  c'le_set_scan_enable_cp'enable :: CUChar,
  c'le_set_scan_enable_cp'filter_dup :: CUChar
} deriving (Eq,Show)
p'le_set_scan_enable_cp'enable p = plusPtr p 0
p'le_set_scan_enable_cp'enable :: Ptr (C'le_set_scan_enable_cp) -> Ptr (CUChar)
p'le_set_scan_enable_cp'filter_dup p = plusPtr p 1
p'le_set_scan_enable_cp'filter_dup :: Ptr (C'le_set_scan_enable_cp) -> Ptr (CUChar)
instance Storable C'le_set_scan_enable_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'le_set_scan_enable_cp v0 v1
  poke p (C'le_set_scan_enable_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1278 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t interval;
            uint16_t window;
            uint8_t initiator_filter;
            uint8_t peer_bdaddr_type;
            bdaddr_t peer_bdaddr;
            uint8_t own_bdaddr_type;
            uint16_t min_interval;
            uint16_t max_interval;
            uint16_t latency;
            uint16_t supervision_timeout;
            uint16_t min_ce_length;
            uint16_t max_ce_length;
        } le_create_connection_cp; -}

{-# LINE 1293 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1294 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1295 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1296 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1297 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1298 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1299 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1300 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1301 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1302 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1303 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1304 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1305 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_create_connection_cp = C'le_create_connection_cp{
  c'le_create_connection_cp'interval :: CUShort,
  c'le_create_connection_cp'window :: CUShort,
  c'le_create_connection_cp'initiator_filter :: CUChar,
  c'le_create_connection_cp'peer_bdaddr_type :: CUChar,
  c'le_create_connection_cp'peer_bdaddr :: C'bdaddr_t,
  c'le_create_connection_cp'own_bdaddr_type :: CUChar,
  c'le_create_connection_cp'min_interval :: CUShort,
  c'le_create_connection_cp'max_interval :: CUShort,
  c'le_create_connection_cp'latency :: CUShort,
  c'le_create_connection_cp'supervision_timeout :: CUShort,
  c'le_create_connection_cp'min_ce_length :: CUShort,
  c'le_create_connection_cp'max_ce_length :: CUShort
} deriving (Eq,Show)
p'le_create_connection_cp'interval p = plusPtr p 0
p'le_create_connection_cp'interval :: Ptr (C'le_create_connection_cp) -> Ptr (CUShort)
p'le_create_connection_cp'window p = plusPtr p 2
p'le_create_connection_cp'window :: Ptr (C'le_create_connection_cp) -> Ptr (CUShort)
p'le_create_connection_cp'initiator_filter p = plusPtr p 4
p'le_create_connection_cp'initiator_filter :: Ptr (C'le_create_connection_cp) -> Ptr (CUChar)
p'le_create_connection_cp'peer_bdaddr_type p = plusPtr p 5
p'le_create_connection_cp'peer_bdaddr_type :: Ptr (C'le_create_connection_cp) -> Ptr (CUChar)
p'le_create_connection_cp'peer_bdaddr p = plusPtr p 6
p'le_create_connection_cp'peer_bdaddr :: Ptr (C'le_create_connection_cp) -> Ptr (C'bdaddr_t)
p'le_create_connection_cp'own_bdaddr_type p = plusPtr p 12
p'le_create_connection_cp'own_bdaddr_type :: Ptr (C'le_create_connection_cp) -> Ptr (CUChar)
p'le_create_connection_cp'min_interval p = plusPtr p 13
p'le_create_connection_cp'min_interval :: Ptr (C'le_create_connection_cp) -> Ptr (CUShort)
p'le_create_connection_cp'max_interval p = plusPtr p 15
p'le_create_connection_cp'max_interval :: Ptr (C'le_create_connection_cp) -> Ptr (CUShort)
p'le_create_connection_cp'latency p = plusPtr p 17
p'le_create_connection_cp'latency :: Ptr (C'le_create_connection_cp) -> Ptr (CUShort)
p'le_create_connection_cp'supervision_timeout p = plusPtr p 19
p'le_create_connection_cp'supervision_timeout :: Ptr (C'le_create_connection_cp) -> Ptr (CUShort)
p'le_create_connection_cp'min_ce_length p = plusPtr p 21
p'le_create_connection_cp'min_ce_length :: Ptr (C'le_create_connection_cp) -> Ptr (CUShort)
p'le_create_connection_cp'max_ce_length p = plusPtr p 23
p'le_create_connection_cp'max_ce_length :: Ptr (C'le_create_connection_cp) -> Ptr (CUShort)
instance Storable C'le_create_connection_cp where
  sizeOf _ = 25
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    v3 <- peekByteOff p 5
    v4 <- peekByteOff p 6
    v5 <- peekByteOff p 12
    v6 <- peekByteOff p 13
    v7 <- peekByteOff p 15
    v8 <- peekByteOff p 17
    v9 <- peekByteOff p 19
    v10 <- peekByteOff p 21
    v11 <- peekByteOff p 23
    return $ C'le_create_connection_cp v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  poke p (C'le_create_connection_cp v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    pokeByteOff p 5 v3
    pokeByteOff p 6 v4
    pokeByteOff p 12 v5
    pokeByteOff p 13 v6
    pokeByteOff p 15 v7
    pokeByteOff p 17 v8
    pokeByteOff p 19 v9
    pokeByteOff p 21 v10
    pokeByteOff p 23 v11
    return ()

{-# LINE 1306 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t size;
        } le_read_white_list_size_rp; -}

{-# LINE 1310 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1311 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1312 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_read_white_list_size_rp = C'le_read_white_list_size_rp{
  c'le_read_white_list_size_rp'status :: CUChar,
  c'le_read_white_list_size_rp'size :: CUChar
} deriving (Eq,Show)
p'le_read_white_list_size_rp'status p = plusPtr p 0
p'le_read_white_list_size_rp'status :: Ptr (C'le_read_white_list_size_rp) -> Ptr (CUChar)
p'le_read_white_list_size_rp'size p = plusPtr p 1
p'le_read_white_list_size_rp'size :: Ptr (C'le_read_white_list_size_rp) -> Ptr (CUChar)
instance Storable C'le_read_white_list_size_rp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'le_read_white_list_size_rp v0 v1
  poke p (C'le_read_white_list_size_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1313 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t bdaddr_type; bdaddr_t bdaddr;
        } le_add_device_to_white_list_cp; -}

{-# LINE 1317 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1318 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1319 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_add_device_to_white_list_cp = C'le_add_device_to_white_list_cp{
  c'le_add_device_to_white_list_cp'bdaddr_type :: CUChar,
  c'le_add_device_to_white_list_cp'bdaddr :: C'bdaddr_t
} deriving (Eq,Show)
p'le_add_device_to_white_list_cp'bdaddr_type p = plusPtr p 0
p'le_add_device_to_white_list_cp'bdaddr_type :: Ptr (C'le_add_device_to_white_list_cp) -> Ptr (CUChar)
p'le_add_device_to_white_list_cp'bdaddr p = plusPtr p 1
p'le_add_device_to_white_list_cp'bdaddr :: Ptr (C'le_add_device_to_white_list_cp) -> Ptr (C'bdaddr_t)
instance Storable C'le_add_device_to_white_list_cp where
  sizeOf _ = 7
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'le_add_device_to_white_list_cp v0 v1
  poke p (C'le_add_device_to_white_list_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1320 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t bdaddr_type; bdaddr_t bdaddr;
        } le_remove_device_from_white_list_cp; -}

{-# LINE 1324 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1325 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1326 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_remove_device_from_white_list_cp = C'le_remove_device_from_white_list_cp{
  c'le_remove_device_from_white_list_cp'bdaddr_type :: CUChar,
  c'le_remove_device_from_white_list_cp'bdaddr :: C'bdaddr_t
} deriving (Eq,Show)
p'le_remove_device_from_white_list_cp'bdaddr_type p = plusPtr p 0
p'le_remove_device_from_white_list_cp'bdaddr_type :: Ptr (C'le_remove_device_from_white_list_cp) -> Ptr (CUChar)
p'le_remove_device_from_white_list_cp'bdaddr p = plusPtr p 1
p'le_remove_device_from_white_list_cp'bdaddr :: Ptr (C'le_remove_device_from_white_list_cp) -> Ptr (C'bdaddr_t)
instance Storable C'le_remove_device_from_white_list_cp where
  sizeOf _ = 7
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'le_remove_device_from_white_list_cp v0 v1
  poke p (C'le_remove_device_from_white_list_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1327 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
            uint16_t min_interval;
            uint16_t max_interval;
            uint16_t latency;
            uint16_t supervision_timeout;
            uint16_t min_ce_length;
            uint16_t max_ce_length;
        } le_connection_update_cp; -}

{-# LINE 1337 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1338 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1339 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1340 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1341 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1342 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1343 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1344 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_connection_update_cp = C'le_connection_update_cp{
  c'le_connection_update_cp'handle :: CUShort,
  c'le_connection_update_cp'min_interval :: CUShort,
  c'le_connection_update_cp'max_interval :: CUShort,
  c'le_connection_update_cp'latency :: CUShort,
  c'le_connection_update_cp'supervision_timeout :: CUShort,
  c'le_connection_update_cp'min_ce_length :: CUShort,
  c'le_connection_update_cp'max_ce_length :: CUShort
} deriving (Eq,Show)
p'le_connection_update_cp'handle p = plusPtr p 0
p'le_connection_update_cp'handle :: Ptr (C'le_connection_update_cp) -> Ptr (CUShort)
p'le_connection_update_cp'min_interval p = plusPtr p 2
p'le_connection_update_cp'min_interval :: Ptr (C'le_connection_update_cp) -> Ptr (CUShort)
p'le_connection_update_cp'max_interval p = plusPtr p 4
p'le_connection_update_cp'max_interval :: Ptr (C'le_connection_update_cp) -> Ptr (CUShort)
p'le_connection_update_cp'latency p = plusPtr p 6
p'le_connection_update_cp'latency :: Ptr (C'le_connection_update_cp) -> Ptr (CUShort)
p'le_connection_update_cp'supervision_timeout p = plusPtr p 8
p'le_connection_update_cp'supervision_timeout :: Ptr (C'le_connection_update_cp) -> Ptr (CUShort)
p'le_connection_update_cp'min_ce_length p = plusPtr p 10
p'le_connection_update_cp'min_ce_length :: Ptr (C'le_connection_update_cp) -> Ptr (CUShort)
p'le_connection_update_cp'max_ce_length p = plusPtr p 12
p'le_connection_update_cp'max_ce_length :: Ptr (C'le_connection_update_cp) -> Ptr (CUShort)
instance Storable C'le_connection_update_cp where
  sizeOf _ = 14
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    v3 <- peekByteOff p 6
    v4 <- peekByteOff p 8
    v5 <- peekByteOff p 10
    v6 <- peekByteOff p 12
    return $ C'le_connection_update_cp v0 v1 v2 v3 v4 v5 v6
  poke p (C'le_connection_update_cp v0 v1 v2 v3 v4 v5 v6) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    pokeByteOff p 6 v3
    pokeByteOff p 8 v4
    pokeByteOff p 10 v5
    pokeByteOff p 12 v6
    return ()

{-# LINE 1345 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t map[5];
        } le_set_host_channel_classification_cp; -}

{-# LINE 1349 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1350 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_set_host_channel_classification_cp = C'le_set_host_channel_classification_cp{
  c'le_set_host_channel_classification_cp'map :: [CUChar]
} deriving (Eq,Show)
p'le_set_host_channel_classification_cp'map p = plusPtr p 0
p'le_set_host_channel_classification_cp'map :: Ptr (C'le_set_host_channel_classification_cp) -> Ptr (CUChar)
instance Storable C'le_set_host_channel_classification_cp where
  sizeOf _ = 5
  alignment _ = 1
  peek p = do
    v0 <- let s = div 5 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 0)
    return $ C'le_set_host_channel_classification_cp v0
  poke p (C'le_set_host_channel_classification_cp v0) = do
    let s = div 5 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 0) (take s v0)
    return ()

{-# LINE 1351 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } le_read_channel_map_cp; -}

{-# LINE 1355 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1356 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_read_channel_map_cp = C'le_read_channel_map_cp{
  c'le_read_channel_map_cp'handle :: CUShort
} deriving (Eq,Show)
p'le_read_channel_map_cp'handle p = plusPtr p 0
p'le_read_channel_map_cp'handle :: Ptr (C'le_read_channel_map_cp) -> Ptr (CUShort)
instance Storable C'le_read_channel_map_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'le_read_channel_map_cp v0
  poke p (C'le_read_channel_map_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1357 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t map[5];
        } le_read_channel_map_rp; -}

{-# LINE 1361 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1362 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1363 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1364 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_read_channel_map_rp = C'le_read_channel_map_rp{
  c'le_read_channel_map_rp'status :: CUChar,
  c'le_read_channel_map_rp'handle :: CUShort,
  c'le_read_channel_map_rp'map :: [CUChar]
} deriving (Eq,Show)
p'le_read_channel_map_rp'status p = plusPtr p 0
p'le_read_channel_map_rp'status :: Ptr (C'le_read_channel_map_rp) -> Ptr (CUChar)
p'le_read_channel_map_rp'handle p = plusPtr p 1
p'le_read_channel_map_rp'handle :: Ptr (C'le_read_channel_map_rp) -> Ptr (CUShort)
p'le_read_channel_map_rp'map p = plusPtr p 3
p'le_read_channel_map_rp'map :: Ptr (C'le_read_channel_map_rp) -> Ptr (CUChar)
instance Storable C'le_read_channel_map_rp where
  sizeOf _ = 8
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- let s = div 5 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 3)
    return $ C'le_read_channel_map_rp v0 v1 v2
  poke p (C'le_read_channel_map_rp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    let s = div 5 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 3) (take s v2)
    return ()

{-# LINE 1365 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } le_read_remote_used_features_cp; -}

{-# LINE 1369 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1370 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_read_remote_used_features_cp = C'le_read_remote_used_features_cp{
  c'le_read_remote_used_features_cp'handle :: CUShort
} deriving (Eq,Show)
p'le_read_remote_used_features_cp'handle p = plusPtr p 0
p'le_read_remote_used_features_cp'handle :: Ptr (C'le_read_remote_used_features_cp) -> Ptr (CUShort)
instance Storable C'le_read_remote_used_features_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'le_read_remote_used_features_cp v0
  poke p (C'le_read_remote_used_features_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1371 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t key[16]; uint8_t plaintext[16];
        } le_encrypt_cp; -}

{-# LINE 1375 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1376 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1377 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_encrypt_cp = C'le_encrypt_cp{
  c'le_encrypt_cp'key :: [CUChar],
  c'le_encrypt_cp'plaintext :: [CUChar]
} deriving (Eq,Show)
p'le_encrypt_cp'key p = plusPtr p 0
p'le_encrypt_cp'key :: Ptr (C'le_encrypt_cp) -> Ptr (CUChar)
p'le_encrypt_cp'plaintext p = plusPtr p 16
p'le_encrypt_cp'plaintext :: Ptr (C'le_encrypt_cp) -> Ptr (CUChar)
instance Storable C'le_encrypt_cp where
  sizeOf _ = 32
  alignment _ = 1
  peek p = do
    v0 <- let s = div 16 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 0)
    v1 <- let s = div 16 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 16)
    return $ C'le_encrypt_cp v0 v1
  poke p (C'le_encrypt_cp v0 v1) = do
    let s = div 16 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 0) (take s v0)
    let s = div 16 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 16) (take s v1)
    return ()

{-# LINE 1378 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t data[16];
        } le_encrypt_rp; -}

{-# LINE 1382 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1383 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1384 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_encrypt_rp = C'le_encrypt_rp{
  c'le_encrypt_rp'status :: CUChar,
  c'le_encrypt_rp'data :: [CUChar]
} deriving (Eq,Show)
p'le_encrypt_rp'status p = plusPtr p 0
p'le_encrypt_rp'status :: Ptr (C'le_encrypt_rp) -> Ptr (CUChar)
p'le_encrypt_rp'data p = plusPtr p 1
p'le_encrypt_rp'data :: Ptr (C'le_encrypt_rp) -> Ptr (CUChar)
instance Storable C'le_encrypt_rp where
  sizeOf _ = 17
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 16 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 1)
    return $ C'le_encrypt_rp v0 v1
  poke p (C'le_encrypt_rp v0 v1) = do
    pokeByteOff p 0 v0
    let s = div 16 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 1) (take s v1)
    return ()

{-# LINE 1385 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint64_t random;
        } le_rand_rp; -}

{-# LINE 1389 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1390 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1391 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_rand_rp = C'le_rand_rp{
  c'le_rand_rp'status :: CUChar,
  c'le_rand_rp'random :: CULong
} deriving (Eq,Show)
p'le_rand_rp'status p = plusPtr p 0
p'le_rand_rp'status :: Ptr (C'le_rand_rp) -> Ptr (CUChar)
p'le_rand_rp'random p = plusPtr p 1
p'le_rand_rp'random :: Ptr (C'le_rand_rp) -> Ptr (CULong)
instance Storable C'le_rand_rp where
  sizeOf _ = 9
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'le_rand_rp v0 v1
  poke p (C'le_rand_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1392 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
            uint64_t random;
            uint16_t diversifier;
            uint8_t key[16];
        } le_start_encryption_cp; -}

{-# LINE 1399 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1400 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1401 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1402 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1403 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_start_encryption_cp = C'le_start_encryption_cp{
  c'le_start_encryption_cp'handle :: CUShort,
  c'le_start_encryption_cp'random :: CULong,
  c'le_start_encryption_cp'diversifier :: CUShort,
  c'le_start_encryption_cp'key :: [CUChar]
} deriving (Eq,Show)
p'le_start_encryption_cp'handle p = plusPtr p 0
p'le_start_encryption_cp'handle :: Ptr (C'le_start_encryption_cp) -> Ptr (CUShort)
p'le_start_encryption_cp'random p = plusPtr p 2
p'le_start_encryption_cp'random :: Ptr (C'le_start_encryption_cp) -> Ptr (CULong)
p'le_start_encryption_cp'diversifier p = plusPtr p 10
p'le_start_encryption_cp'diversifier :: Ptr (C'le_start_encryption_cp) -> Ptr (CUShort)
p'le_start_encryption_cp'key p = plusPtr p 12
p'le_start_encryption_cp'key :: Ptr (C'le_start_encryption_cp) -> Ptr (CUChar)
instance Storable C'le_start_encryption_cp where
  sizeOf _ = 28
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 10
    v3 <- let s = div 16 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 12)
    return $ C'le_start_encryption_cp v0 v1 v2 v3
  poke p (C'le_start_encryption_cp v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 10 v2
    let s = div 16 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 12) (take s v3)
    return ()

{-# LINE 1404 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint8_t key[16];
        } le_ltk_reply_cp; -}

{-# LINE 1408 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1409 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1410 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_ltk_reply_cp = C'le_ltk_reply_cp{
  c'le_ltk_reply_cp'handle :: CUShort,
  c'le_ltk_reply_cp'key :: [CUChar]
} deriving (Eq,Show)
p'le_ltk_reply_cp'handle p = plusPtr p 0
p'le_ltk_reply_cp'handle :: Ptr (C'le_ltk_reply_cp) -> Ptr (CUShort)
p'le_ltk_reply_cp'key p = plusPtr p 2
p'le_ltk_reply_cp'key :: Ptr (C'le_ltk_reply_cp) -> Ptr (CUChar)
instance Storable C'le_ltk_reply_cp where
  sizeOf _ = 18
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 16 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 2)
    return $ C'le_ltk_reply_cp v0 v1
  poke p (C'le_ltk_reply_cp v0 v1) = do
    pokeByteOff p 0 v0
    let s = div 16 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 2) (take s v1)
    return ()

{-# LINE 1411 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle;
        } le_ltk_reply_rp; -}

{-# LINE 1415 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1416 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1417 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_ltk_reply_rp = C'le_ltk_reply_rp{
  c'le_ltk_reply_rp'status :: CUChar,
  c'le_ltk_reply_rp'handle :: CUShort
} deriving (Eq,Show)
p'le_ltk_reply_rp'status p = plusPtr p 0
p'le_ltk_reply_rp'status :: Ptr (C'le_ltk_reply_rp) -> Ptr (CUChar)
p'le_ltk_reply_rp'handle p = plusPtr p 1
p'le_ltk_reply_rp'handle :: Ptr (C'le_ltk_reply_rp) -> Ptr (CUShort)
instance Storable C'le_ltk_reply_rp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'le_ltk_reply_rp v0 v1
  poke p (C'le_ltk_reply_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1418 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } le_ltk_neg_reply_cp; -}

{-# LINE 1422 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1423 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_ltk_neg_reply_cp = C'le_ltk_neg_reply_cp{
  c'le_ltk_neg_reply_cp'handle :: CUShort
} deriving (Eq,Show)
p'le_ltk_neg_reply_cp'handle p = plusPtr p 0
p'le_ltk_neg_reply_cp'handle :: Ptr (C'le_ltk_neg_reply_cp) -> Ptr (CUShort)
instance Storable C'le_ltk_neg_reply_cp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'le_ltk_neg_reply_cp v0
  poke p (C'le_ltk_neg_reply_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1424 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle;
        } le_ltk_neg_reply_rp; -}

{-# LINE 1428 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1429 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1430 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_ltk_neg_reply_rp = C'le_ltk_neg_reply_rp{
  c'le_ltk_neg_reply_rp'status :: CUChar,
  c'le_ltk_neg_reply_rp'handle :: CUShort
} deriving (Eq,Show)
p'le_ltk_neg_reply_rp'status p = plusPtr p 0
p'le_ltk_neg_reply_rp'status :: Ptr (C'le_ltk_neg_reply_rp) -> Ptr (CUChar)
p'le_ltk_neg_reply_rp'handle p = plusPtr p 1
p'le_ltk_neg_reply_rp'handle :: Ptr (C'le_ltk_neg_reply_rp) -> Ptr (CUShort)
instance Storable C'le_ltk_neg_reply_rp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'le_ltk_neg_reply_rp v0 v1
  poke p (C'le_ltk_neg_reply_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1431 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint64_t states;
        } le_read_supported_states_rp; -}

{-# LINE 1435 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1436 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1437 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_read_supported_states_rp = C'le_read_supported_states_rp{
  c'le_read_supported_states_rp'status :: CUChar,
  c'le_read_supported_states_rp'states :: CULong
} deriving (Eq,Show)
p'le_read_supported_states_rp'status p = plusPtr p 0
p'le_read_supported_states_rp'status :: Ptr (C'le_read_supported_states_rp) -> Ptr (CUChar)
p'le_read_supported_states_rp'states p = plusPtr p 1
p'le_read_supported_states_rp'states :: Ptr (C'le_read_supported_states_rp) -> Ptr (CULong)
instance Storable C'le_read_supported_states_rp where
  sizeOf _ = 9
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'le_read_supported_states_rp v0 v1
  poke p (C'le_read_supported_states_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1438 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t frequency;
        } le_receiver_test_cp; -}

{-# LINE 1442 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1443 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_receiver_test_cp = C'le_receiver_test_cp{
  c'le_receiver_test_cp'frequency :: CUChar
} deriving (Eq,Show)
p'le_receiver_test_cp'frequency p = plusPtr p 0
p'le_receiver_test_cp'frequency :: Ptr (C'le_receiver_test_cp) -> Ptr (CUChar)
instance Storable C'le_receiver_test_cp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'le_receiver_test_cp v0
  poke p (C'le_receiver_test_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1444 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t frequency; uint8_t length; uint8_t payload;
        } le_transmitter_test_cp; -}

{-# LINE 1448 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1449 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1450 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1451 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_transmitter_test_cp = C'le_transmitter_test_cp{
  c'le_transmitter_test_cp'frequency :: CUChar,
  c'le_transmitter_test_cp'length :: CUChar,
  c'le_transmitter_test_cp'payload :: CUChar
} deriving (Eq,Show)
p'le_transmitter_test_cp'frequency p = plusPtr p 0
p'le_transmitter_test_cp'frequency :: Ptr (C'le_transmitter_test_cp) -> Ptr (CUChar)
p'le_transmitter_test_cp'length p = plusPtr p 1
p'le_transmitter_test_cp'length :: Ptr (C'le_transmitter_test_cp) -> Ptr (CUChar)
p'le_transmitter_test_cp'payload p = plusPtr p 2
p'le_transmitter_test_cp'payload :: Ptr (C'le_transmitter_test_cp) -> Ptr (CUChar)
instance Storable C'le_transmitter_test_cp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 2
    return $ C'le_transmitter_test_cp v0 v1 v2
  poke p (C'le_transmitter_test_cp v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 2 v2
    return ()

{-# LINE 1452 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t num_pkts;
        } le_test_end_rp; -}

{-# LINE 1456 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1457 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1458 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_test_end_rp = C'le_test_end_rp{
  c'le_test_end_rp'status :: CUChar,
  c'le_test_end_rp'num_pkts :: CUShort
} deriving (Eq,Show)
p'le_test_end_rp'status p = plusPtr p 0
p'le_test_end_rp'status :: Ptr (C'le_test_end_rp) -> Ptr (CUChar)
p'le_test_end_rp'num_pkts p = plusPtr p 1
p'le_test_end_rp'num_pkts :: Ptr (C'le_test_end_rp) -> Ptr (CUShort)
instance Storable C'le_test_end_rp where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'le_test_end_rp v0 v1
  poke p (C'le_test_end_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1459 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t bdaddr_type;
            bdaddr_t bdaddr;
            uint8_t peer_irk[16];
            uint8_t local_irk[16];
        } le_add_device_to_resolv_list_cp; -}

{-# LINE 1466 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1467 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1468 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1469 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1470 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_add_device_to_resolv_list_cp = C'le_add_device_to_resolv_list_cp{
  c'le_add_device_to_resolv_list_cp'bdaddr_type :: CUChar,
  c'le_add_device_to_resolv_list_cp'bdaddr :: C'bdaddr_t,
  c'le_add_device_to_resolv_list_cp'peer_irk :: [CUChar],
  c'le_add_device_to_resolv_list_cp'local_irk :: [CUChar]
} deriving (Eq,Show)
p'le_add_device_to_resolv_list_cp'bdaddr_type p = plusPtr p 0
p'le_add_device_to_resolv_list_cp'bdaddr_type :: Ptr (C'le_add_device_to_resolv_list_cp) -> Ptr (CUChar)
p'le_add_device_to_resolv_list_cp'bdaddr p = plusPtr p 1
p'le_add_device_to_resolv_list_cp'bdaddr :: Ptr (C'le_add_device_to_resolv_list_cp) -> Ptr (C'bdaddr_t)
p'le_add_device_to_resolv_list_cp'peer_irk p = plusPtr p 7
p'le_add_device_to_resolv_list_cp'peer_irk :: Ptr (C'le_add_device_to_resolv_list_cp) -> Ptr (CUChar)
p'le_add_device_to_resolv_list_cp'local_irk p = plusPtr p 23
p'le_add_device_to_resolv_list_cp'local_irk :: Ptr (C'le_add_device_to_resolv_list_cp) -> Ptr (CUChar)
instance Storable C'le_add_device_to_resolv_list_cp where
  sizeOf _ = 39
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- let s = div 16 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 7)
    v3 <- let s = div 16 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 23)
    return $ C'le_add_device_to_resolv_list_cp v0 v1 v2 v3
  poke p (C'le_add_device_to_resolv_list_cp v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    let s = div 16 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 7) (take s v2)
    let s = div 16 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 23) (take s v3)
    return ()

{-# LINE 1471 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t bdaddr_type; bdaddr_t bdaddr;
        } le_remove_device_from_resolv_list_cp; -}

{-# LINE 1475 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1476 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1477 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_remove_device_from_resolv_list_cp = C'le_remove_device_from_resolv_list_cp{
  c'le_remove_device_from_resolv_list_cp'bdaddr_type :: CUChar,
  c'le_remove_device_from_resolv_list_cp'bdaddr :: C'bdaddr_t
} deriving (Eq,Show)
p'le_remove_device_from_resolv_list_cp'bdaddr_type p = plusPtr p 0
p'le_remove_device_from_resolv_list_cp'bdaddr_type :: Ptr (C'le_remove_device_from_resolv_list_cp) -> Ptr (CUChar)
p'le_remove_device_from_resolv_list_cp'bdaddr p = plusPtr p 1
p'le_remove_device_from_resolv_list_cp'bdaddr :: Ptr (C'le_remove_device_from_resolv_list_cp) -> Ptr (C'bdaddr_t)
instance Storable C'le_remove_device_from_resolv_list_cp where
  sizeOf _ = 7
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'le_remove_device_from_resolv_list_cp v0 v1
  poke p (C'le_remove_device_from_resolv_list_cp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1478 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t size;
        } le_read_resolv_list_size_rp; -}

{-# LINE 1482 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1483 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1484 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_read_resolv_list_size_rp = C'le_read_resolv_list_size_rp{
  c'le_read_resolv_list_size_rp'status :: CUChar,
  c'le_read_resolv_list_size_rp'size :: CUChar
} deriving (Eq,Show)
p'le_read_resolv_list_size_rp'status p = plusPtr p 0
p'le_read_resolv_list_size_rp'status :: Ptr (C'le_read_resolv_list_size_rp) -> Ptr (CUChar)
p'le_read_resolv_list_size_rp'size p = plusPtr p 1
p'le_read_resolv_list_size_rp'size :: Ptr (C'le_read_resolv_list_size_rp) -> Ptr (CUChar)
instance Storable C'le_read_resolv_list_size_rp where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'le_read_resolv_list_size_rp v0 v1
  poke p (C'le_read_resolv_list_size_rp v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1485 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t enable;
        } le_set_address_resolution_enable_cp; -}

{-# LINE 1489 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1490 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_set_address_resolution_enable_cp = C'le_set_address_resolution_enable_cp{
  c'le_set_address_resolution_enable_cp'enable :: CUChar
} deriving (Eq,Show)
p'le_set_address_resolution_enable_cp'enable p = plusPtr p 0
p'le_set_address_resolution_enable_cp'enable :: Ptr (C'le_set_address_resolution_enable_cp) -> Ptr (CUChar)
instance Storable C'le_set_address_resolution_enable_cp where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'le_set_address_resolution_enable_cp v0
  poke p (C'le_set_address_resolution_enable_cp v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1491 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
            uint8_t pscan_rep_mode;
            uint8_t pscan_period_mode;
            uint8_t pscan_mode;
            uint8_t dev_class[3];
            uint16_t clock_offset;
        } inquiry_info; -}

{-# LINE 1500 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1501 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1502 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1503 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1504 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1505 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1506 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'inquiry_info = C'inquiry_info{
  c'inquiry_info'bdaddr :: C'bdaddr_t,
  c'inquiry_info'pscan_rep_mode :: CUChar,
  c'inquiry_info'pscan_period_mode :: CUChar,
  c'inquiry_info'pscan_mode :: CUChar,
  c'inquiry_info'dev_class :: [CUChar],
  c'inquiry_info'clock_offset :: CUShort
} deriving (Eq,Show)
p'inquiry_info'bdaddr p = plusPtr p 0
p'inquiry_info'bdaddr :: Ptr (C'inquiry_info) -> Ptr (C'bdaddr_t)
p'inquiry_info'pscan_rep_mode p = plusPtr p 6
p'inquiry_info'pscan_rep_mode :: Ptr (C'inquiry_info) -> Ptr (CUChar)
p'inquiry_info'pscan_period_mode p = plusPtr p 7
p'inquiry_info'pscan_period_mode :: Ptr (C'inquiry_info) -> Ptr (CUChar)
p'inquiry_info'pscan_mode p = plusPtr p 8
p'inquiry_info'pscan_mode :: Ptr (C'inquiry_info) -> Ptr (CUChar)
p'inquiry_info'dev_class p = plusPtr p 9
p'inquiry_info'dev_class :: Ptr (C'inquiry_info) -> Ptr (CUChar)
p'inquiry_info'clock_offset p = plusPtr p 12
p'inquiry_info'clock_offset :: Ptr (C'inquiry_info) -> Ptr (CUShort)
instance Storable C'inquiry_info where
  sizeOf _ = 14
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    v2 <- peekByteOff p 7
    v3 <- peekByteOff p 8
    v4 <- let s = div 3 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 9)
    v5 <- peekByteOff p 12
    return $ C'inquiry_info v0 v1 v2 v3 v4 v5
  poke p (C'inquiry_info v0 v1 v2 v3 v4 v5) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    pokeByteOff p 7 v2
    pokeByteOff p 8 v3
    let s = div 3 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 9) (take s v4)
    pokeByteOff p 12 v5
    return ()

{-# LINE 1507 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t handle;
            bdaddr_t bdaddr;
            uint8_t link_type;
            uint8_t encr_mode;
        } evt_conn_complete; -}

{-# LINE 1515 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1516 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1517 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1518 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1519 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1520 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_conn_complete = C'evt_conn_complete{
  c'evt_conn_complete'status :: CUChar,
  c'evt_conn_complete'handle :: CUShort,
  c'evt_conn_complete'bdaddr :: C'bdaddr_t,
  c'evt_conn_complete'link_type :: CUChar,
  c'evt_conn_complete'encr_mode :: CUChar
} deriving (Eq,Show)
p'evt_conn_complete'status p = plusPtr p 0
p'evt_conn_complete'status :: Ptr (C'evt_conn_complete) -> Ptr (CUChar)
p'evt_conn_complete'handle p = plusPtr p 1
p'evt_conn_complete'handle :: Ptr (C'evt_conn_complete) -> Ptr (CUShort)
p'evt_conn_complete'bdaddr p = plusPtr p 3
p'evt_conn_complete'bdaddr :: Ptr (C'evt_conn_complete) -> Ptr (C'bdaddr_t)
p'evt_conn_complete'link_type p = plusPtr p 9
p'evt_conn_complete'link_type :: Ptr (C'evt_conn_complete) -> Ptr (CUChar)
p'evt_conn_complete'encr_mode p = plusPtr p 10
p'evt_conn_complete'encr_mode :: Ptr (C'evt_conn_complete) -> Ptr (CUChar)
instance Storable C'evt_conn_complete where
  sizeOf _ = 11
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    v3 <- peekByteOff p 9
    v4 <- peekByteOff p 10
    return $ C'evt_conn_complete v0 v1 v2 v3 v4
  poke p (C'evt_conn_complete v0 v1 v2 v3 v4) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    pokeByteOff p 9 v3
    pokeByteOff p 10 v4
    return ()

{-# LINE 1521 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t dev_class[3]; uint8_t link_type;
        } evt_conn_request; -}

{-# LINE 1525 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1526 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1527 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1528 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_conn_request = C'evt_conn_request{
  c'evt_conn_request'bdaddr :: C'bdaddr_t,
  c'evt_conn_request'dev_class :: [CUChar],
  c'evt_conn_request'link_type :: CUChar
} deriving (Eq,Show)
p'evt_conn_request'bdaddr p = plusPtr p 0
p'evt_conn_request'bdaddr :: Ptr (C'evt_conn_request) -> Ptr (C'bdaddr_t)
p'evt_conn_request'dev_class p = plusPtr p 6
p'evt_conn_request'dev_class :: Ptr (C'evt_conn_request) -> Ptr (CUChar)
p'evt_conn_request'link_type p = plusPtr p 9
p'evt_conn_request'link_type :: Ptr (C'evt_conn_request) -> Ptr (CUChar)
instance Storable C'evt_conn_request where
  sizeOf _ = 10
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 3 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 6)
    v2 <- peekByteOff p 9
    return $ C'evt_conn_request v0 v1 v2
  poke p (C'evt_conn_request v0 v1 v2) = do
    pokeByteOff p 0 v0
    let s = div 3 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 6) (take s v1)
    pokeByteOff p 9 v2
    return ()

{-# LINE 1529 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t reason;
        } evt_disconn_complete; -}

{-# LINE 1533 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1534 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1535 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1536 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_disconn_complete = C'evt_disconn_complete{
  c'evt_disconn_complete'status :: CUChar,
  c'evt_disconn_complete'handle :: CUShort,
  c'evt_disconn_complete'reason :: CUChar
} deriving (Eq,Show)
p'evt_disconn_complete'status p = plusPtr p 0
p'evt_disconn_complete'status :: Ptr (C'evt_disconn_complete) -> Ptr (CUChar)
p'evt_disconn_complete'handle p = plusPtr p 1
p'evt_disconn_complete'handle :: Ptr (C'evt_disconn_complete) -> Ptr (CUShort)
p'evt_disconn_complete'reason p = plusPtr p 3
p'evt_disconn_complete'reason :: Ptr (C'evt_disconn_complete) -> Ptr (CUChar)
instance Storable C'evt_disconn_complete where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    return $ C'evt_disconn_complete v0 v1 v2
  poke p (C'evt_disconn_complete v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    return ()

{-# LINE 1537 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle;
        } evt_auth_complete; -}

{-# LINE 1541 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1542 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1543 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_auth_complete = C'evt_auth_complete{
  c'evt_auth_complete'status :: CUChar,
  c'evt_auth_complete'handle :: CUShort
} deriving (Eq,Show)
p'evt_auth_complete'status p = plusPtr p 0
p'evt_auth_complete'status :: Ptr (C'evt_auth_complete) -> Ptr (CUChar)
p'evt_auth_complete'handle p = plusPtr p 1
p'evt_auth_complete'handle :: Ptr (C'evt_auth_complete) -> Ptr (CUShort)
instance Storable C'evt_auth_complete where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'evt_auth_complete v0 v1
  poke p (C'evt_auth_complete v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1544 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; bdaddr_t bdaddr; uint8_t name[248];
        } evt_remote_name_req_complete; -}

{-# LINE 1548 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1549 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1550 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1551 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_remote_name_req_complete = C'evt_remote_name_req_complete{
  c'evt_remote_name_req_complete'status :: CUChar,
  c'evt_remote_name_req_complete'bdaddr :: C'bdaddr_t,
  c'evt_remote_name_req_complete'name :: [CUChar]
} deriving (Eq,Show)
p'evt_remote_name_req_complete'status p = plusPtr p 0
p'evt_remote_name_req_complete'status :: Ptr (C'evt_remote_name_req_complete) -> Ptr (CUChar)
p'evt_remote_name_req_complete'bdaddr p = plusPtr p 1
p'evt_remote_name_req_complete'bdaddr :: Ptr (C'evt_remote_name_req_complete) -> Ptr (C'bdaddr_t)
p'evt_remote_name_req_complete'name p = plusPtr p 7
p'evt_remote_name_req_complete'name :: Ptr (C'evt_remote_name_req_complete) -> Ptr (CUChar)
instance Storable C'evt_remote_name_req_complete where
  sizeOf _ = 255
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- let s = div 248 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 7)
    return $ C'evt_remote_name_req_complete v0 v1 v2
  poke p (C'evt_remote_name_req_complete v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    let s = div 248 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 7) (take s v2)
    return ()

{-# LINE 1552 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t encrypt;
        } evt_encrypt_change; -}

{-# LINE 1556 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1557 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1558 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1559 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_encrypt_change = C'evt_encrypt_change{
  c'evt_encrypt_change'status :: CUChar,
  c'evt_encrypt_change'handle :: CUShort,
  c'evt_encrypt_change'encrypt :: CUChar
} deriving (Eq,Show)
p'evt_encrypt_change'status p = plusPtr p 0
p'evt_encrypt_change'status :: Ptr (C'evt_encrypt_change) -> Ptr (CUChar)
p'evt_encrypt_change'handle p = plusPtr p 1
p'evt_encrypt_change'handle :: Ptr (C'evt_encrypt_change) -> Ptr (CUShort)
p'evt_encrypt_change'encrypt p = plusPtr p 3
p'evt_encrypt_change'encrypt :: Ptr (C'evt_encrypt_change) -> Ptr (CUChar)
instance Storable C'evt_encrypt_change where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    return $ C'evt_encrypt_change v0 v1 v2
  poke p (C'evt_encrypt_change v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    return ()

{-# LINE 1560 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle;
        } evt_change_conn_link_key_complete; -}

{-# LINE 1564 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1565 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1566 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_change_conn_link_key_complete = C'evt_change_conn_link_key_complete{
  c'evt_change_conn_link_key_complete'status :: CUChar,
  c'evt_change_conn_link_key_complete'handle :: CUShort
} deriving (Eq,Show)
p'evt_change_conn_link_key_complete'status p = plusPtr p 0
p'evt_change_conn_link_key_complete'status :: Ptr (C'evt_change_conn_link_key_complete) -> Ptr (CUChar)
p'evt_change_conn_link_key_complete'handle p = plusPtr p 1
p'evt_change_conn_link_key_complete'handle :: Ptr (C'evt_change_conn_link_key_complete) -> Ptr (CUShort)
instance Storable C'evt_change_conn_link_key_complete where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'evt_change_conn_link_key_complete v0 v1
  poke p (C'evt_change_conn_link_key_complete v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1567 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t key_flag;
        } evt_master_link_key_complete; -}

{-# LINE 1571 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1572 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1573 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1574 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_master_link_key_complete = C'evt_master_link_key_complete{
  c'evt_master_link_key_complete'status :: CUChar,
  c'evt_master_link_key_complete'handle :: CUShort,
  c'evt_master_link_key_complete'key_flag :: CUChar
} deriving (Eq,Show)
p'evt_master_link_key_complete'status p = plusPtr p 0
p'evt_master_link_key_complete'status :: Ptr (C'evt_master_link_key_complete) -> Ptr (CUChar)
p'evt_master_link_key_complete'handle p = plusPtr p 1
p'evt_master_link_key_complete'handle :: Ptr (C'evt_master_link_key_complete) -> Ptr (CUShort)
p'evt_master_link_key_complete'key_flag p = plusPtr p 3
p'evt_master_link_key_complete'key_flag :: Ptr (C'evt_master_link_key_complete) -> Ptr (CUChar)
instance Storable C'evt_master_link_key_complete where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    return $ C'evt_master_link_key_complete v0 v1 v2
  poke p (C'evt_master_link_key_complete v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    return ()

{-# LINE 1575 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t features[8];
        } evt_read_remote_features_complete; -}

{-# LINE 1579 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1580 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1581 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1582 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_read_remote_features_complete = C'evt_read_remote_features_complete{
  c'evt_read_remote_features_complete'status :: CUChar,
  c'evt_read_remote_features_complete'handle :: CUShort,
  c'evt_read_remote_features_complete'features :: [CUChar]
} deriving (Eq,Show)
p'evt_read_remote_features_complete'status p = plusPtr p 0
p'evt_read_remote_features_complete'status :: Ptr (C'evt_read_remote_features_complete) -> Ptr (CUChar)
p'evt_read_remote_features_complete'handle p = plusPtr p 1
p'evt_read_remote_features_complete'handle :: Ptr (C'evt_read_remote_features_complete) -> Ptr (CUShort)
p'evt_read_remote_features_complete'features p = plusPtr p 3
p'evt_read_remote_features_complete'features :: Ptr (C'evt_read_remote_features_complete) -> Ptr (CUChar)
instance Storable C'evt_read_remote_features_complete where
  sizeOf _ = 11
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- let s = div 8 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 3)
    return $ C'evt_read_remote_features_complete v0 v1 v2
  poke p (C'evt_read_remote_features_complete v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    let s = div 8 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 3) (take s v2)
    return ()

{-# LINE 1583 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t handle;
            uint8_t lmp_ver;
            uint16_t manufacturer;
            uint16_t lmp_subver;
        } evt_read_remote_version_complete; -}

{-# LINE 1591 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1592 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1593 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1594 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1595 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1596 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_read_remote_version_complete = C'evt_read_remote_version_complete{
  c'evt_read_remote_version_complete'status :: CUChar,
  c'evt_read_remote_version_complete'handle :: CUShort,
  c'evt_read_remote_version_complete'lmp_ver :: CUChar,
  c'evt_read_remote_version_complete'manufacturer :: CUShort,
  c'evt_read_remote_version_complete'lmp_subver :: CUShort
} deriving (Eq,Show)
p'evt_read_remote_version_complete'status p = plusPtr p 0
p'evt_read_remote_version_complete'status :: Ptr (C'evt_read_remote_version_complete) -> Ptr (CUChar)
p'evt_read_remote_version_complete'handle p = plusPtr p 1
p'evt_read_remote_version_complete'handle :: Ptr (C'evt_read_remote_version_complete) -> Ptr (CUShort)
p'evt_read_remote_version_complete'lmp_ver p = plusPtr p 3
p'evt_read_remote_version_complete'lmp_ver :: Ptr (C'evt_read_remote_version_complete) -> Ptr (CUChar)
p'evt_read_remote_version_complete'manufacturer p = plusPtr p 4
p'evt_read_remote_version_complete'manufacturer :: Ptr (C'evt_read_remote_version_complete) -> Ptr (CUShort)
p'evt_read_remote_version_complete'lmp_subver p = plusPtr p 6
p'evt_read_remote_version_complete'lmp_subver :: Ptr (C'evt_read_remote_version_complete) -> Ptr (CUShort)
instance Storable C'evt_read_remote_version_complete where
  sizeOf _ = 8
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    v3 <- peekByteOff p 4
    v4 <- peekByteOff p 6
    return $ C'evt_read_remote_version_complete v0 v1 v2 v3 v4
  poke p (C'evt_read_remote_version_complete v0 v1 v2 v3 v4) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    pokeByteOff p 4 v3
    pokeByteOff p 6 v4
    return ()

{-# LINE 1597 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t flags; hci_qos qos;
        } evt_qos_setup_complete; -}

{-# LINE 1601 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1602 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1603 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1604 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1605 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_qos_setup_complete = C'evt_qos_setup_complete{
  c'evt_qos_setup_complete'status :: CUChar,
  c'evt_qos_setup_complete'handle :: CUShort,
  c'evt_qos_setup_complete'flags :: CUChar,
  c'evt_qos_setup_complete'qos :: C'hci_qos
} deriving (Eq,Show)
p'evt_qos_setup_complete'status p = plusPtr p 0
p'evt_qos_setup_complete'status :: Ptr (C'evt_qos_setup_complete) -> Ptr (CUChar)
p'evt_qos_setup_complete'handle p = plusPtr p 1
p'evt_qos_setup_complete'handle :: Ptr (C'evt_qos_setup_complete) -> Ptr (CUShort)
p'evt_qos_setup_complete'flags p = plusPtr p 3
p'evt_qos_setup_complete'flags :: Ptr (C'evt_qos_setup_complete) -> Ptr (CUChar)
p'evt_qos_setup_complete'qos p = plusPtr p 4
p'evt_qos_setup_complete'qos :: Ptr (C'evt_qos_setup_complete) -> Ptr (C'hci_qos)
instance Storable C'evt_qos_setup_complete where
  sizeOf _ = 21
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    v3 <- peekByteOff p 4
    return $ C'evt_qos_setup_complete v0 v1 v2 v3
  poke p (C'evt_qos_setup_complete v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    pokeByteOff p 4 v3
    return ()

{-# LINE 1606 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t ncmd; uint16_t opcode;
        } evt_cmd_complete; -}

{-# LINE 1610 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1611 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1612 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_cmd_complete = C'evt_cmd_complete{
  c'evt_cmd_complete'ncmd :: CUChar,
  c'evt_cmd_complete'opcode :: CUShort
} deriving (Eq,Show)
p'evt_cmd_complete'ncmd p = plusPtr p 0
p'evt_cmd_complete'ncmd :: Ptr (C'evt_cmd_complete) -> Ptr (CUChar)
p'evt_cmd_complete'opcode p = plusPtr p 1
p'evt_cmd_complete'opcode :: Ptr (C'evt_cmd_complete) -> Ptr (CUShort)
instance Storable C'evt_cmd_complete where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'evt_cmd_complete v0 v1
  poke p (C'evt_cmd_complete v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1613 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t ncmd; uint16_t opcode;
        } evt_cmd_status; -}

{-# LINE 1617 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1618 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1619 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1620 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_cmd_status = C'evt_cmd_status{
  c'evt_cmd_status'status :: CUChar,
  c'evt_cmd_status'ncmd :: CUChar,
  c'evt_cmd_status'opcode :: CUShort
} deriving (Eq,Show)
p'evt_cmd_status'status p = plusPtr p 0
p'evt_cmd_status'status :: Ptr (C'evt_cmd_status) -> Ptr (CUChar)
p'evt_cmd_status'ncmd p = plusPtr p 1
p'evt_cmd_status'ncmd :: Ptr (C'evt_cmd_status) -> Ptr (CUChar)
p'evt_cmd_status'opcode p = plusPtr p 2
p'evt_cmd_status'opcode :: Ptr (C'evt_cmd_status) -> Ptr (CUShort)
instance Storable C'evt_cmd_status where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 2
    return $ C'evt_cmd_status v0 v1 v2
  poke p (C'evt_cmd_status v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 2 v2
    return ()

{-# LINE 1621 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t code;
        } evt_hardware_error; -}

{-# LINE 1625 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1626 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_hardware_error = C'evt_hardware_error{
  c'evt_hardware_error'code :: CUChar
} deriving (Eq,Show)
p'evt_hardware_error'code p = plusPtr p 0
p'evt_hardware_error'code :: Ptr (C'evt_hardware_error) -> Ptr (CUChar)
instance Storable C'evt_hardware_error where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'evt_hardware_error v0
  poke p (C'evt_hardware_error v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1627 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } evt_flush_occured; -}

{-# LINE 1631 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1632 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_flush_occured = C'evt_flush_occured{
  c'evt_flush_occured'handle :: CUShort
} deriving (Eq,Show)
p'evt_flush_occured'handle p = plusPtr p 0
p'evt_flush_occured'handle :: Ptr (C'evt_flush_occured) -> Ptr (CUShort)
instance Storable C'evt_flush_occured where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'evt_flush_occured v0
  poke p (C'evt_flush_occured v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1633 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; bdaddr_t bdaddr; uint8_t role;
        } evt_role_change; -}

{-# LINE 1637 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1638 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1639 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1640 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_role_change = C'evt_role_change{
  c'evt_role_change'status :: CUChar,
  c'evt_role_change'bdaddr :: C'bdaddr_t,
  c'evt_role_change'role :: CUChar
} deriving (Eq,Show)
p'evt_role_change'status p = plusPtr p 0
p'evt_role_change'status :: Ptr (C'evt_role_change) -> Ptr (CUChar)
p'evt_role_change'bdaddr p = plusPtr p 1
p'evt_role_change'bdaddr :: Ptr (C'evt_role_change) -> Ptr (C'bdaddr_t)
p'evt_role_change'role p = plusPtr p 7
p'evt_role_change'role :: Ptr (C'evt_role_change) -> Ptr (CUChar)
instance Storable C'evt_role_change where
  sizeOf _ = 8
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 7
    return $ C'evt_role_change v0 v1 v2
  poke p (C'evt_role_change v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 7 v2
    return ()

{-# LINE 1641 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t num_hndl;
        } evt_num_comp_pkts; -}

{-# LINE 1645 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1646 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_num_comp_pkts = C'evt_num_comp_pkts{
  c'evt_num_comp_pkts'num_hndl :: CUChar
} deriving (Eq,Show)
p'evt_num_comp_pkts'num_hndl p = plusPtr p 0
p'evt_num_comp_pkts'num_hndl :: Ptr (C'evt_num_comp_pkts) -> Ptr (CUChar)
instance Storable C'evt_num_comp_pkts where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'evt_num_comp_pkts v0
  poke p (C'evt_num_comp_pkts v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1647 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t mode; uint16_t interval;
        } evt_mode_change; -}

{-# LINE 1651 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1652 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1653 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1654 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1655 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_mode_change = C'evt_mode_change{
  c'evt_mode_change'status :: CUChar,
  c'evt_mode_change'handle :: CUShort,
  c'evt_mode_change'mode :: CUChar,
  c'evt_mode_change'interval :: CUShort
} deriving (Eq,Show)
p'evt_mode_change'status p = plusPtr p 0
p'evt_mode_change'status :: Ptr (C'evt_mode_change) -> Ptr (CUChar)
p'evt_mode_change'handle p = plusPtr p 1
p'evt_mode_change'handle :: Ptr (C'evt_mode_change) -> Ptr (CUShort)
p'evt_mode_change'mode p = plusPtr p 3
p'evt_mode_change'mode :: Ptr (C'evt_mode_change) -> Ptr (CUChar)
p'evt_mode_change'interval p = plusPtr p 4
p'evt_mode_change'interval :: Ptr (C'evt_mode_change) -> Ptr (CUShort)
instance Storable C'evt_mode_change where
  sizeOf _ = 6
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    v3 <- peekByteOff p 4
    return $ C'evt_mode_change v0 v1 v2 v3
  poke p (C'evt_mode_change v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    pokeByteOff p 4 v3
    return ()

{-# LINE 1656 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t num_keys;
        } evt_return_link_keys; -}

{-# LINE 1660 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1661 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_return_link_keys = C'evt_return_link_keys{
  c'evt_return_link_keys'num_keys :: CUChar
} deriving (Eq,Show)
p'evt_return_link_keys'num_keys p = plusPtr p 0
p'evt_return_link_keys'num_keys :: Ptr (C'evt_return_link_keys) -> Ptr (CUChar)
instance Storable C'evt_return_link_keys where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'evt_return_link_keys v0
  poke p (C'evt_return_link_keys v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1662 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
        } evt_pin_code_req; -}

{-# LINE 1666 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1667 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_pin_code_req = C'evt_pin_code_req{
  c'evt_pin_code_req'bdaddr :: C'bdaddr_t
} deriving (Eq,Show)
p'evt_pin_code_req'bdaddr p = plusPtr p 0
p'evt_pin_code_req'bdaddr :: Ptr (C'evt_pin_code_req) -> Ptr (C'bdaddr_t)
instance Storable C'evt_pin_code_req where
  sizeOf _ = 6
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'evt_pin_code_req v0
  poke p (C'evt_pin_code_req v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1668 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
        } evt_link_key_req; -}

{-# LINE 1672 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1673 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_link_key_req = C'evt_link_key_req{
  c'evt_link_key_req'bdaddr :: C'bdaddr_t
} deriving (Eq,Show)
p'evt_link_key_req'bdaddr p = plusPtr p 0
p'evt_link_key_req'bdaddr :: Ptr (C'evt_link_key_req) -> Ptr (C'bdaddr_t)
instance Storable C'evt_link_key_req where
  sizeOf _ = 6
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'evt_link_key_req v0
  poke p (C'evt_link_key_req v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1674 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t link_key[16]; uint8_t key_type;
        } evt_link_key_notify; -}

{-# LINE 1678 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1679 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1680 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1681 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_link_key_notify = C'evt_link_key_notify{
  c'evt_link_key_notify'bdaddr :: C'bdaddr_t,
  c'evt_link_key_notify'link_key :: [CUChar],
  c'evt_link_key_notify'key_type :: CUChar
} deriving (Eq,Show)
p'evt_link_key_notify'bdaddr p = plusPtr p 0
p'evt_link_key_notify'bdaddr :: Ptr (C'evt_link_key_notify) -> Ptr (C'bdaddr_t)
p'evt_link_key_notify'link_key p = plusPtr p 6
p'evt_link_key_notify'link_key :: Ptr (C'evt_link_key_notify) -> Ptr (CUChar)
p'evt_link_key_notify'key_type p = plusPtr p 22
p'evt_link_key_notify'key_type :: Ptr (C'evt_link_key_notify) -> Ptr (CUChar)
instance Storable C'evt_link_key_notify where
  sizeOf _ = 23
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 16 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 6)
    v2 <- peekByteOff p 22
    return $ C'evt_link_key_notify v0 v1 v2
  poke p (C'evt_link_key_notify v0 v1 v2) = do
    pokeByteOff p 0 v0
    let s = div 16 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 6) (take s v1)
    pokeByteOff p 22 v2
    return ()

{-# LINE 1682 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t link_type;
        } evt_data_buffer_overflow; -}

{-# LINE 1686 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1687 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_data_buffer_overflow = C'evt_data_buffer_overflow{
  c'evt_data_buffer_overflow'link_type :: CUChar
} deriving (Eq,Show)
p'evt_data_buffer_overflow'link_type p = plusPtr p 0
p'evt_data_buffer_overflow'link_type :: Ptr (C'evt_data_buffer_overflow) -> Ptr (CUChar)
instance Storable C'evt_data_buffer_overflow where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'evt_data_buffer_overflow v0
  poke p (C'evt_data_buffer_overflow v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1688 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint8_t max_slots;
        } evt_max_slots_change; -}

{-# LINE 1692 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1693 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1694 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_max_slots_change = C'evt_max_slots_change{
  c'evt_max_slots_change'handle :: CUShort,
  c'evt_max_slots_change'max_slots :: CUChar
} deriving (Eq,Show)
p'evt_max_slots_change'handle p = plusPtr p 0
p'evt_max_slots_change'handle :: Ptr (C'evt_max_slots_change) -> Ptr (CUShort)
p'evt_max_slots_change'max_slots p = plusPtr p 2
p'evt_max_slots_change'max_slots :: Ptr (C'evt_max_slots_change) -> Ptr (CUChar)
instance Storable C'evt_max_slots_change where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'evt_max_slots_change v0 v1
  poke p (C'evt_max_slots_change v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 1695 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint16_t clock_offset;
        } evt_read_clock_offset_complete; -}

{-# LINE 1699 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1700 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1701 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1702 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_read_clock_offset_complete = C'evt_read_clock_offset_complete{
  c'evt_read_clock_offset_complete'status :: CUChar,
  c'evt_read_clock_offset_complete'handle :: CUShort,
  c'evt_read_clock_offset_complete'clock_offset :: CUShort
} deriving (Eq,Show)
p'evt_read_clock_offset_complete'status p = plusPtr p 0
p'evt_read_clock_offset_complete'status :: Ptr (C'evt_read_clock_offset_complete) -> Ptr (CUChar)
p'evt_read_clock_offset_complete'handle p = plusPtr p 1
p'evt_read_clock_offset_complete'handle :: Ptr (C'evt_read_clock_offset_complete) -> Ptr (CUShort)
p'evt_read_clock_offset_complete'clock_offset p = plusPtr p 3
p'evt_read_clock_offset_complete'clock_offset :: Ptr (C'evt_read_clock_offset_complete) -> Ptr (CUShort)
instance Storable C'evt_read_clock_offset_complete where
  sizeOf _ = 5
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    return $ C'evt_read_clock_offset_complete v0 v1 v2
  poke p (C'evt_read_clock_offset_complete v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    return ()

{-# LINE 1703 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint16_t ptype;
        } evt_conn_ptype_changed; -}

{-# LINE 1707 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1708 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1709 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1710 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_conn_ptype_changed = C'evt_conn_ptype_changed{
  c'evt_conn_ptype_changed'status :: CUChar,
  c'evt_conn_ptype_changed'handle :: CUShort,
  c'evt_conn_ptype_changed'ptype :: CUShort
} deriving (Eq,Show)
p'evt_conn_ptype_changed'status p = plusPtr p 0
p'evt_conn_ptype_changed'status :: Ptr (C'evt_conn_ptype_changed) -> Ptr (CUChar)
p'evt_conn_ptype_changed'handle p = plusPtr p 1
p'evt_conn_ptype_changed'handle :: Ptr (C'evt_conn_ptype_changed) -> Ptr (CUShort)
p'evt_conn_ptype_changed'ptype p = plusPtr p 3
p'evt_conn_ptype_changed'ptype :: Ptr (C'evt_conn_ptype_changed) -> Ptr (CUShort)
instance Storable C'evt_conn_ptype_changed where
  sizeOf _ = 5
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    return $ C'evt_conn_ptype_changed v0 v1 v2
  poke p (C'evt_conn_ptype_changed v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    return ()

{-# LINE 1711 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } evt_qos_violation; -}

{-# LINE 1715 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1716 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_qos_violation = C'evt_qos_violation{
  c'evt_qos_violation'handle :: CUShort
} deriving (Eq,Show)
p'evt_qos_violation'handle p = plusPtr p 0
p'evt_qos_violation'handle :: Ptr (C'evt_qos_violation) -> Ptr (CUShort)
instance Storable C'evt_qos_violation where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'evt_qos_violation v0
  poke p (C'evt_qos_violation v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1717 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t pscan_rep_mode;
        } evt_pscan_rep_mode_change; -}

{-# LINE 1721 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1722 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1723 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_pscan_rep_mode_change = C'evt_pscan_rep_mode_change{
  c'evt_pscan_rep_mode_change'bdaddr :: C'bdaddr_t,
  c'evt_pscan_rep_mode_change'pscan_rep_mode :: CUChar
} deriving (Eq,Show)
p'evt_pscan_rep_mode_change'bdaddr p = plusPtr p 0
p'evt_pscan_rep_mode_change'bdaddr :: Ptr (C'evt_pscan_rep_mode_change) -> Ptr (C'bdaddr_t)
p'evt_pscan_rep_mode_change'pscan_rep_mode p = plusPtr p 6
p'evt_pscan_rep_mode_change'pscan_rep_mode :: Ptr (C'evt_pscan_rep_mode_change) -> Ptr (CUChar)
instance Storable C'evt_pscan_rep_mode_change where
  sizeOf _ = 7
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    return $ C'evt_pscan_rep_mode_change v0 v1
  poke p (C'evt_pscan_rep_mode_change v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    return ()

{-# LINE 1724 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t handle;
            uint8_t flags;
            uint8_t direction;
            hci_qos qos;
        } evt_flow_spec_complete; -}

{-# LINE 1732 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1733 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1734 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1735 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1736 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1737 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_flow_spec_complete = C'evt_flow_spec_complete{
  c'evt_flow_spec_complete'status :: CUChar,
  c'evt_flow_spec_complete'handle :: CUShort,
  c'evt_flow_spec_complete'flags :: CUChar,
  c'evt_flow_spec_complete'direction :: CUChar,
  c'evt_flow_spec_complete'qos :: C'hci_qos
} deriving (Eq,Show)
p'evt_flow_spec_complete'status p = plusPtr p 0
p'evt_flow_spec_complete'status :: Ptr (C'evt_flow_spec_complete) -> Ptr (CUChar)
p'evt_flow_spec_complete'handle p = plusPtr p 1
p'evt_flow_spec_complete'handle :: Ptr (C'evt_flow_spec_complete) -> Ptr (CUShort)
p'evt_flow_spec_complete'flags p = plusPtr p 3
p'evt_flow_spec_complete'flags :: Ptr (C'evt_flow_spec_complete) -> Ptr (CUChar)
p'evt_flow_spec_complete'direction p = plusPtr p 4
p'evt_flow_spec_complete'direction :: Ptr (C'evt_flow_spec_complete) -> Ptr (CUChar)
p'evt_flow_spec_complete'qos p = plusPtr p 5
p'evt_flow_spec_complete'qos :: Ptr (C'evt_flow_spec_complete) -> Ptr (C'hci_qos)
instance Storable C'evt_flow_spec_complete where
  sizeOf _ = 22
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    v3 <- peekByteOff p 4
    v4 <- peekByteOff p 5
    return $ C'evt_flow_spec_complete v0 v1 v2 v3 v4
  poke p (C'evt_flow_spec_complete v0 v1 v2 v3 v4) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    pokeByteOff p 4 v3
    pokeByteOff p 5 v4
    return ()

{-# LINE 1738 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
            uint8_t pscan_rep_mode;
            uint8_t pscan_period_mode;
            uint8_t dev_class[3];
            uint16_t clock_offset;
            int8_t rssi;
        } inquiry_info_with_rssi; -}

{-# LINE 1747 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1748 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1749 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1750 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1751 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1752 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1753 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'inquiry_info_with_rssi = C'inquiry_info_with_rssi{
  c'inquiry_info_with_rssi'bdaddr :: C'bdaddr_t,
  c'inquiry_info_with_rssi'pscan_rep_mode :: CUChar,
  c'inquiry_info_with_rssi'pscan_period_mode :: CUChar,
  c'inquiry_info_with_rssi'dev_class :: [CUChar],
  c'inquiry_info_with_rssi'clock_offset :: CUShort,
  c'inquiry_info_with_rssi'rssi :: CSChar
} deriving (Eq,Show)
p'inquiry_info_with_rssi'bdaddr p = plusPtr p 0
p'inquiry_info_with_rssi'bdaddr :: Ptr (C'inquiry_info_with_rssi) -> Ptr (C'bdaddr_t)
p'inquiry_info_with_rssi'pscan_rep_mode p = plusPtr p 6
p'inquiry_info_with_rssi'pscan_rep_mode :: Ptr (C'inquiry_info_with_rssi) -> Ptr (CUChar)
p'inquiry_info_with_rssi'pscan_period_mode p = plusPtr p 7
p'inquiry_info_with_rssi'pscan_period_mode :: Ptr (C'inquiry_info_with_rssi) -> Ptr (CUChar)
p'inquiry_info_with_rssi'dev_class p = plusPtr p 8
p'inquiry_info_with_rssi'dev_class :: Ptr (C'inquiry_info_with_rssi) -> Ptr (CUChar)
p'inquiry_info_with_rssi'clock_offset p = plusPtr p 11
p'inquiry_info_with_rssi'clock_offset :: Ptr (C'inquiry_info_with_rssi) -> Ptr (CUShort)
p'inquiry_info_with_rssi'rssi p = plusPtr p 13
p'inquiry_info_with_rssi'rssi :: Ptr (C'inquiry_info_with_rssi) -> Ptr (CSChar)
instance Storable C'inquiry_info_with_rssi where
  sizeOf _ = 14
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    v2 <- peekByteOff p 7
    v3 <- let s = div 3 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 8)
    v4 <- peekByteOff p 11
    v5 <- peekByteOff p 13
    return $ C'inquiry_info_with_rssi v0 v1 v2 v3 v4 v5
  poke p (C'inquiry_info_with_rssi v0 v1 v2 v3 v4 v5) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    pokeByteOff p 7 v2
    let s = div 3 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 8) (take s v3)
    pokeByteOff p 11 v4
    pokeByteOff p 13 v5
    return ()

{-# LINE 1754 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
            uint8_t pscan_rep_mode;
            uint8_t pscan_period_mode;
            uint8_t pscan_mode;
            uint8_t dev_class[3];
            uint16_t clock_offset;
            int8_t rssi;
        } inquiry_info_with_rssi_and_pscan_mode; -}

{-# LINE 1764 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1765 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1766 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1767 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1768 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1769 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1770 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1771 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'inquiry_info_with_rssi_and_pscan_mode = C'inquiry_info_with_rssi_and_pscan_mode{
  c'inquiry_info_with_rssi_and_pscan_mode'bdaddr :: C'bdaddr_t,
  c'inquiry_info_with_rssi_and_pscan_mode'pscan_rep_mode :: CUChar,
  c'inquiry_info_with_rssi_and_pscan_mode'pscan_period_mode :: CUChar,
  c'inquiry_info_with_rssi_and_pscan_mode'pscan_mode :: CUChar,
  c'inquiry_info_with_rssi_and_pscan_mode'dev_class :: [CUChar],
  c'inquiry_info_with_rssi_and_pscan_mode'clock_offset :: CUShort,
  c'inquiry_info_with_rssi_and_pscan_mode'rssi :: CSChar
} deriving (Eq,Show)
p'inquiry_info_with_rssi_and_pscan_mode'bdaddr p = plusPtr p 0
p'inquiry_info_with_rssi_and_pscan_mode'bdaddr :: Ptr (C'inquiry_info_with_rssi_and_pscan_mode) -> Ptr (C'bdaddr_t)
p'inquiry_info_with_rssi_and_pscan_mode'pscan_rep_mode p = plusPtr p 6
p'inquiry_info_with_rssi_and_pscan_mode'pscan_rep_mode :: Ptr (C'inquiry_info_with_rssi_and_pscan_mode) -> Ptr (CUChar)
p'inquiry_info_with_rssi_and_pscan_mode'pscan_period_mode p = plusPtr p 7
p'inquiry_info_with_rssi_and_pscan_mode'pscan_period_mode :: Ptr (C'inquiry_info_with_rssi_and_pscan_mode) -> Ptr (CUChar)
p'inquiry_info_with_rssi_and_pscan_mode'pscan_mode p = plusPtr p 8
p'inquiry_info_with_rssi_and_pscan_mode'pscan_mode :: Ptr (C'inquiry_info_with_rssi_and_pscan_mode) -> Ptr (CUChar)
p'inquiry_info_with_rssi_and_pscan_mode'dev_class p = plusPtr p 9
p'inquiry_info_with_rssi_and_pscan_mode'dev_class :: Ptr (C'inquiry_info_with_rssi_and_pscan_mode) -> Ptr (CUChar)
p'inquiry_info_with_rssi_and_pscan_mode'clock_offset p = plusPtr p 12
p'inquiry_info_with_rssi_and_pscan_mode'clock_offset :: Ptr (C'inquiry_info_with_rssi_and_pscan_mode) -> Ptr (CUShort)
p'inquiry_info_with_rssi_and_pscan_mode'rssi p = plusPtr p 14
p'inquiry_info_with_rssi_and_pscan_mode'rssi :: Ptr (C'inquiry_info_with_rssi_and_pscan_mode) -> Ptr (CSChar)
instance Storable C'inquiry_info_with_rssi_and_pscan_mode where
  sizeOf _ = 15
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    v2 <- peekByteOff p 7
    v3 <- peekByteOff p 8
    v4 <- let s = div 3 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 9)
    v5 <- peekByteOff p 12
    v6 <- peekByteOff p 14
    return $ C'inquiry_info_with_rssi_and_pscan_mode v0 v1 v2 v3 v4 v5 v6
  poke p (C'inquiry_info_with_rssi_and_pscan_mode v0 v1 v2 v3 v4 v5 v6) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    pokeByteOff p 7 v2
    pokeByteOff p 8 v3
    let s = div 3 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 9) (take s v4)
    pokeByteOff p 12 v5
    pokeByteOff p 14 v6
    return ()

{-# LINE 1772 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t handle;
            uint8_t page_num;
            uint8_t max_page_num;
            uint8_t features[8];
        } evt_read_remote_ext_features_complete; -}

{-# LINE 1780 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1781 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1782 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1783 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1784 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1785 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_read_remote_ext_features_complete = C'evt_read_remote_ext_features_complete{
  c'evt_read_remote_ext_features_complete'status :: CUChar,
  c'evt_read_remote_ext_features_complete'handle :: CUShort,
  c'evt_read_remote_ext_features_complete'page_num :: CUChar,
  c'evt_read_remote_ext_features_complete'max_page_num :: CUChar,
  c'evt_read_remote_ext_features_complete'features :: [CUChar]
} deriving (Eq,Show)
p'evt_read_remote_ext_features_complete'status p = plusPtr p 0
p'evt_read_remote_ext_features_complete'status :: Ptr (C'evt_read_remote_ext_features_complete) -> Ptr (CUChar)
p'evt_read_remote_ext_features_complete'handle p = plusPtr p 1
p'evt_read_remote_ext_features_complete'handle :: Ptr (C'evt_read_remote_ext_features_complete) -> Ptr (CUShort)
p'evt_read_remote_ext_features_complete'page_num p = plusPtr p 3
p'evt_read_remote_ext_features_complete'page_num :: Ptr (C'evt_read_remote_ext_features_complete) -> Ptr (CUChar)
p'evt_read_remote_ext_features_complete'max_page_num p = plusPtr p 4
p'evt_read_remote_ext_features_complete'max_page_num :: Ptr (C'evt_read_remote_ext_features_complete) -> Ptr (CUChar)
p'evt_read_remote_ext_features_complete'features p = plusPtr p 5
p'evt_read_remote_ext_features_complete'features :: Ptr (C'evt_read_remote_ext_features_complete) -> Ptr (CUChar)
instance Storable C'evt_read_remote_ext_features_complete where
  sizeOf _ = 13
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    v3 <- peekByteOff p 4
    v4 <- let s = div 8 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 5)
    return $ C'evt_read_remote_ext_features_complete v0 v1 v2 v3 v4
  poke p (C'evt_read_remote_ext_features_complete v0 v1 v2 v3 v4) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    pokeByteOff p 4 v3
    let s = div 8 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 5) (take s v4)
    return ()

{-# LINE 1786 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t handle;
            bdaddr_t bdaddr;
            uint8_t link_type;
            uint8_t trans_interval;
            uint8_t retrans_window;
            uint16_t rx_pkt_len;
            uint16_t tx_pkt_len;
            uint8_t air_mode;
        } evt_sync_conn_complete; -}

{-# LINE 1798 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1799 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1800 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1801 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1802 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1803 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1804 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1805 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1806 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1807 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_sync_conn_complete = C'evt_sync_conn_complete{
  c'evt_sync_conn_complete'status :: CUChar,
  c'evt_sync_conn_complete'handle :: CUShort,
  c'evt_sync_conn_complete'bdaddr :: C'bdaddr_t,
  c'evt_sync_conn_complete'link_type :: CUChar,
  c'evt_sync_conn_complete'trans_interval :: CUChar,
  c'evt_sync_conn_complete'retrans_window :: CUChar,
  c'evt_sync_conn_complete'rx_pkt_len :: CUShort,
  c'evt_sync_conn_complete'tx_pkt_len :: CUShort,
  c'evt_sync_conn_complete'air_mode :: CUChar
} deriving (Eq,Show)
p'evt_sync_conn_complete'status p = plusPtr p 0
p'evt_sync_conn_complete'status :: Ptr (C'evt_sync_conn_complete) -> Ptr (CUChar)
p'evt_sync_conn_complete'handle p = plusPtr p 1
p'evt_sync_conn_complete'handle :: Ptr (C'evt_sync_conn_complete) -> Ptr (CUShort)
p'evt_sync_conn_complete'bdaddr p = plusPtr p 3
p'evt_sync_conn_complete'bdaddr :: Ptr (C'evt_sync_conn_complete) -> Ptr (C'bdaddr_t)
p'evt_sync_conn_complete'link_type p = plusPtr p 9
p'evt_sync_conn_complete'link_type :: Ptr (C'evt_sync_conn_complete) -> Ptr (CUChar)
p'evt_sync_conn_complete'trans_interval p = plusPtr p 10
p'evt_sync_conn_complete'trans_interval :: Ptr (C'evt_sync_conn_complete) -> Ptr (CUChar)
p'evt_sync_conn_complete'retrans_window p = plusPtr p 11
p'evt_sync_conn_complete'retrans_window :: Ptr (C'evt_sync_conn_complete) -> Ptr (CUChar)
p'evt_sync_conn_complete'rx_pkt_len p = plusPtr p 12
p'evt_sync_conn_complete'rx_pkt_len :: Ptr (C'evt_sync_conn_complete) -> Ptr (CUShort)
p'evt_sync_conn_complete'tx_pkt_len p = plusPtr p 14
p'evt_sync_conn_complete'tx_pkt_len :: Ptr (C'evt_sync_conn_complete) -> Ptr (CUShort)
p'evt_sync_conn_complete'air_mode p = plusPtr p 16
p'evt_sync_conn_complete'air_mode :: Ptr (C'evt_sync_conn_complete) -> Ptr (CUChar)
instance Storable C'evt_sync_conn_complete where
  sizeOf _ = 17
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    v3 <- peekByteOff p 9
    v4 <- peekByteOff p 10
    v5 <- peekByteOff p 11
    v6 <- peekByteOff p 12
    v7 <- peekByteOff p 14
    v8 <- peekByteOff p 16
    return $ C'evt_sync_conn_complete v0 v1 v2 v3 v4 v5 v6 v7 v8
  poke p (C'evt_sync_conn_complete v0 v1 v2 v3 v4 v5 v6 v7 v8) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    pokeByteOff p 9 v3
    pokeByteOff p 10 v4
    pokeByteOff p 11 v5
    pokeByteOff p 12 v6
    pokeByteOff p 14 v7
    pokeByteOff p 16 v8
    return ()

{-# LINE 1808 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t handle;
            uint8_t trans_interval;
            uint8_t retrans_window;
            uint16_t rx_pkt_len;
            uint16_t tx_pkt_len;
        } evt_sync_conn_changed; -}

{-# LINE 1817 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1818 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1819 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1820 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1821 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1822 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1823 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_sync_conn_changed = C'evt_sync_conn_changed{
  c'evt_sync_conn_changed'status :: CUChar,
  c'evt_sync_conn_changed'handle :: CUShort,
  c'evt_sync_conn_changed'trans_interval :: CUChar,
  c'evt_sync_conn_changed'retrans_window :: CUChar,
  c'evt_sync_conn_changed'rx_pkt_len :: CUShort,
  c'evt_sync_conn_changed'tx_pkt_len :: CUShort
} deriving (Eq,Show)
p'evt_sync_conn_changed'status p = plusPtr p 0
p'evt_sync_conn_changed'status :: Ptr (C'evt_sync_conn_changed) -> Ptr (CUChar)
p'evt_sync_conn_changed'handle p = plusPtr p 1
p'evt_sync_conn_changed'handle :: Ptr (C'evt_sync_conn_changed) -> Ptr (CUShort)
p'evt_sync_conn_changed'trans_interval p = plusPtr p 3
p'evt_sync_conn_changed'trans_interval :: Ptr (C'evt_sync_conn_changed) -> Ptr (CUChar)
p'evt_sync_conn_changed'retrans_window p = plusPtr p 4
p'evt_sync_conn_changed'retrans_window :: Ptr (C'evt_sync_conn_changed) -> Ptr (CUChar)
p'evt_sync_conn_changed'rx_pkt_len p = plusPtr p 5
p'evt_sync_conn_changed'rx_pkt_len :: Ptr (C'evt_sync_conn_changed) -> Ptr (CUShort)
p'evt_sync_conn_changed'tx_pkt_len p = plusPtr p 7
p'evt_sync_conn_changed'tx_pkt_len :: Ptr (C'evt_sync_conn_changed) -> Ptr (CUShort)
instance Storable C'evt_sync_conn_changed where
  sizeOf _ = 9
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    v3 <- peekByteOff p 4
    v4 <- peekByteOff p 5
    v5 <- peekByteOff p 7
    return $ C'evt_sync_conn_changed v0 v1 v2 v3 v4 v5
  poke p (C'evt_sync_conn_changed v0 v1 v2 v3 v4 v5) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    pokeByteOff p 4 v3
    pokeByteOff p 5 v4
    pokeByteOff p 7 v5
    return ()

{-# LINE 1824 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t handle;
            uint16_t max_tx_latency;
            uint16_t max_rx_latency;
            uint16_t min_remote_timeout;
            uint16_t min_local_timeout;
        } evt_sniff_subrating; -}

{-# LINE 1833 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1834 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1835 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1836 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1837 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1838 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1839 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_sniff_subrating = C'evt_sniff_subrating{
  c'evt_sniff_subrating'status :: CUChar,
  c'evt_sniff_subrating'handle :: CUShort,
  c'evt_sniff_subrating'max_tx_latency :: CUShort,
  c'evt_sniff_subrating'max_rx_latency :: CUShort,
  c'evt_sniff_subrating'min_remote_timeout :: CUShort,
  c'evt_sniff_subrating'min_local_timeout :: CUShort
} deriving (Eq,Show)
p'evt_sniff_subrating'status p = plusPtr p 0
p'evt_sniff_subrating'status :: Ptr (C'evt_sniff_subrating) -> Ptr (CUChar)
p'evt_sniff_subrating'handle p = plusPtr p 1
p'evt_sniff_subrating'handle :: Ptr (C'evt_sniff_subrating) -> Ptr (CUShort)
p'evt_sniff_subrating'max_tx_latency p = plusPtr p 3
p'evt_sniff_subrating'max_tx_latency :: Ptr (C'evt_sniff_subrating) -> Ptr (CUShort)
p'evt_sniff_subrating'max_rx_latency p = plusPtr p 5
p'evt_sniff_subrating'max_rx_latency :: Ptr (C'evt_sniff_subrating) -> Ptr (CUShort)
p'evt_sniff_subrating'min_remote_timeout p = plusPtr p 7
p'evt_sniff_subrating'min_remote_timeout :: Ptr (C'evt_sniff_subrating) -> Ptr (CUShort)
p'evt_sniff_subrating'min_local_timeout p = plusPtr p 9
p'evt_sniff_subrating'min_local_timeout :: Ptr (C'evt_sniff_subrating) -> Ptr (CUShort)
instance Storable C'evt_sniff_subrating where
  sizeOf _ = 11
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    v3 <- peekByteOff p 5
    v4 <- peekByteOff p 7
    v5 <- peekByteOff p 9
    return $ C'evt_sniff_subrating v0 v1 v2 v3 v4 v5
  poke p (C'evt_sniff_subrating v0 v1 v2 v3 v4 v5) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    pokeByteOff p 5 v3
    pokeByteOff p 7 v4
    pokeByteOff p 9 v5
    return ()

{-# LINE 1840 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
            uint8_t pscan_rep_mode;
            uint8_t pscan_period_mode;
            uint8_t dev_class[3];
            uint16_t clock_offset;
            int8_t rssi;
            uint8_t data[240];
        } extended_inquiry_info; -}

{-# LINE 1850 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1851 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1852 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1853 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1854 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1855 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1856 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1857 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'extended_inquiry_info = C'extended_inquiry_info{
  c'extended_inquiry_info'bdaddr :: C'bdaddr_t,
  c'extended_inquiry_info'pscan_rep_mode :: CUChar,
  c'extended_inquiry_info'pscan_period_mode :: CUChar,
  c'extended_inquiry_info'dev_class :: [CUChar],
  c'extended_inquiry_info'clock_offset :: CUShort,
  c'extended_inquiry_info'rssi :: CSChar,
  c'extended_inquiry_info'data :: [CUChar]
} deriving (Eq,Show)
p'extended_inquiry_info'bdaddr p = plusPtr p 0
p'extended_inquiry_info'bdaddr :: Ptr (C'extended_inquiry_info) -> Ptr (C'bdaddr_t)
p'extended_inquiry_info'pscan_rep_mode p = plusPtr p 6
p'extended_inquiry_info'pscan_rep_mode :: Ptr (C'extended_inquiry_info) -> Ptr (CUChar)
p'extended_inquiry_info'pscan_period_mode p = plusPtr p 7
p'extended_inquiry_info'pscan_period_mode :: Ptr (C'extended_inquiry_info) -> Ptr (CUChar)
p'extended_inquiry_info'dev_class p = plusPtr p 8
p'extended_inquiry_info'dev_class :: Ptr (C'extended_inquiry_info) -> Ptr (CUChar)
p'extended_inquiry_info'clock_offset p = plusPtr p 11
p'extended_inquiry_info'clock_offset :: Ptr (C'extended_inquiry_info) -> Ptr (CUShort)
p'extended_inquiry_info'rssi p = plusPtr p 13
p'extended_inquiry_info'rssi :: Ptr (C'extended_inquiry_info) -> Ptr (CSChar)
p'extended_inquiry_info'data p = plusPtr p 14
p'extended_inquiry_info'data :: Ptr (C'extended_inquiry_info) -> Ptr (CUChar)
instance Storable C'extended_inquiry_info where
  sizeOf _ = 254
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    v2 <- peekByteOff p 7
    v3 <- let s = div 3 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 8)
    v4 <- peekByteOff p 11
    v5 <- peekByteOff p 13
    v6 <- let s = div 240 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 14)
    return $ C'extended_inquiry_info v0 v1 v2 v3 v4 v5 v6
  poke p (C'extended_inquiry_info v0 v1 v2 v3 v4 v5 v6) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    pokeByteOff p 7 v2
    let s = div 3 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 8) (take s v3)
    pokeByteOff p 11 v4
    pokeByteOff p 13 v5
    let s = div 240 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 14) (take s v6)
    return ()

{-# LINE 1858 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle;
        } evt_encryption_key_refresh_complete; -}

{-# LINE 1862 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1863 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1864 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_encryption_key_refresh_complete = C'evt_encryption_key_refresh_complete{
  c'evt_encryption_key_refresh_complete'status :: CUChar,
  c'evt_encryption_key_refresh_complete'handle :: CUShort
} deriving (Eq,Show)
p'evt_encryption_key_refresh_complete'status p = plusPtr p 0
p'evt_encryption_key_refresh_complete'status :: Ptr (C'evt_encryption_key_refresh_complete) -> Ptr (CUChar)
p'evt_encryption_key_refresh_complete'handle p = plusPtr p 1
p'evt_encryption_key_refresh_complete'handle :: Ptr (C'evt_encryption_key_refresh_complete) -> Ptr (CUShort)
instance Storable C'evt_encryption_key_refresh_complete where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'evt_encryption_key_refresh_complete v0 v1
  poke p (C'evt_encryption_key_refresh_complete v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1865 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
        } evt_io_capability_request; -}

{-# LINE 1869 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1870 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_io_capability_request = C'evt_io_capability_request{
  c'evt_io_capability_request'bdaddr :: C'bdaddr_t
} deriving (Eq,Show)
p'evt_io_capability_request'bdaddr p = plusPtr p 0
p'evt_io_capability_request'bdaddr :: Ptr (C'evt_io_capability_request) -> Ptr (C'bdaddr_t)
instance Storable C'evt_io_capability_request where
  sizeOf _ = 6
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'evt_io_capability_request v0
  poke p (C'evt_io_capability_request v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1871 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
            uint8_t capability;
            uint8_t oob_data;
            uint8_t authentication;
        } evt_io_capability_response; -}

{-# LINE 1878 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1879 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1880 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1881 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1882 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_io_capability_response = C'evt_io_capability_response{
  c'evt_io_capability_response'bdaddr :: C'bdaddr_t,
  c'evt_io_capability_response'capability :: CUChar,
  c'evt_io_capability_response'oob_data :: CUChar,
  c'evt_io_capability_response'authentication :: CUChar
} deriving (Eq,Show)
p'evt_io_capability_response'bdaddr p = plusPtr p 0
p'evt_io_capability_response'bdaddr :: Ptr (C'evt_io_capability_response) -> Ptr (C'bdaddr_t)
p'evt_io_capability_response'capability p = plusPtr p 6
p'evt_io_capability_response'capability :: Ptr (C'evt_io_capability_response) -> Ptr (CUChar)
p'evt_io_capability_response'oob_data p = plusPtr p 7
p'evt_io_capability_response'oob_data :: Ptr (C'evt_io_capability_response) -> Ptr (CUChar)
p'evt_io_capability_response'authentication p = plusPtr p 8
p'evt_io_capability_response'authentication :: Ptr (C'evt_io_capability_response) -> Ptr (CUChar)
instance Storable C'evt_io_capability_response where
  sizeOf _ = 9
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    v2 <- peekByteOff p 7
    v3 <- peekByteOff p 8
    return $ C'evt_io_capability_response v0 v1 v2 v3
  poke p (C'evt_io_capability_response v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    pokeByteOff p 7 v2
    pokeByteOff p 8 v3
    return ()

{-# LINE 1883 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint32_t passkey;
        } evt_user_confirm_request; -}

{-# LINE 1887 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1888 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1889 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_user_confirm_request = C'evt_user_confirm_request{
  c'evt_user_confirm_request'bdaddr :: C'bdaddr_t,
  c'evt_user_confirm_request'passkey :: CUInt
} deriving (Eq,Show)
p'evt_user_confirm_request'bdaddr p = plusPtr p 0
p'evt_user_confirm_request'bdaddr :: Ptr (C'evt_user_confirm_request) -> Ptr (C'bdaddr_t)
p'evt_user_confirm_request'passkey p = plusPtr p 6
p'evt_user_confirm_request'passkey :: Ptr (C'evt_user_confirm_request) -> Ptr (CUInt)
instance Storable C'evt_user_confirm_request where
  sizeOf _ = 10
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    return $ C'evt_user_confirm_request v0 v1
  poke p (C'evt_user_confirm_request v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    return ()

{-# LINE 1890 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
        } evt_user_passkey_request; -}

{-# LINE 1894 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1895 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_user_passkey_request = C'evt_user_passkey_request{
  c'evt_user_passkey_request'bdaddr :: C'bdaddr_t
} deriving (Eq,Show)
p'evt_user_passkey_request'bdaddr p = plusPtr p 0
p'evt_user_passkey_request'bdaddr :: Ptr (C'evt_user_passkey_request) -> Ptr (C'bdaddr_t)
instance Storable C'evt_user_passkey_request where
  sizeOf _ = 6
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'evt_user_passkey_request v0
  poke p (C'evt_user_passkey_request v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1896 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr;
        } evt_remote_oob_data_request; -}

{-# LINE 1900 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1901 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_remote_oob_data_request = C'evt_remote_oob_data_request{
  c'evt_remote_oob_data_request'bdaddr :: C'bdaddr_t
} deriving (Eq,Show)
p'evt_remote_oob_data_request'bdaddr p = plusPtr p 0
p'evt_remote_oob_data_request'bdaddr :: Ptr (C'evt_remote_oob_data_request) -> Ptr (C'bdaddr_t)
instance Storable C'evt_remote_oob_data_request where
  sizeOf _ = 6
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'evt_remote_oob_data_request v0
  poke p (C'evt_remote_oob_data_request v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1902 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; bdaddr_t bdaddr;
        } evt_simple_pairing_complete; -}

{-# LINE 1906 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1907 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1908 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_simple_pairing_complete = C'evt_simple_pairing_complete{
  c'evt_simple_pairing_complete'status :: CUChar,
  c'evt_simple_pairing_complete'bdaddr :: C'bdaddr_t
} deriving (Eq,Show)
p'evt_simple_pairing_complete'status p = plusPtr p 0
p'evt_simple_pairing_complete'status :: Ptr (C'evt_simple_pairing_complete) -> Ptr (CUChar)
p'evt_simple_pairing_complete'bdaddr p = plusPtr p 1
p'evt_simple_pairing_complete'bdaddr :: Ptr (C'evt_simple_pairing_complete) -> Ptr (C'bdaddr_t)
instance Storable C'evt_simple_pairing_complete where
  sizeOf _ = 7
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'evt_simple_pairing_complete v0 v1
  poke p (C'evt_simple_pairing_complete v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1909 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint16_t timeout;
        } evt_link_supervision_timeout_changed; -}

{-# LINE 1913 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1914 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1915 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_link_supervision_timeout_changed = C'evt_link_supervision_timeout_changed{
  c'evt_link_supervision_timeout_changed'handle :: CUShort,
  c'evt_link_supervision_timeout_changed'timeout :: CUShort
} deriving (Eq,Show)
p'evt_link_supervision_timeout_changed'handle p = plusPtr p 0
p'evt_link_supervision_timeout_changed'handle :: Ptr (C'evt_link_supervision_timeout_changed) -> Ptr (CUShort)
p'evt_link_supervision_timeout_changed'timeout p = plusPtr p 2
p'evt_link_supervision_timeout_changed'timeout :: Ptr (C'evt_link_supervision_timeout_changed) -> Ptr (CUShort)
instance Storable C'evt_link_supervision_timeout_changed where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'evt_link_supervision_timeout_changed v0 v1
  poke p (C'evt_link_supervision_timeout_changed v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 1916 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle;
        } evt_enhanced_flush_complete; -}

{-# LINE 1920 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1921 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_enhanced_flush_complete = C'evt_enhanced_flush_complete{
  c'evt_enhanced_flush_complete'handle :: CUShort
} deriving (Eq,Show)
p'evt_enhanced_flush_complete'handle p = plusPtr p 0
p'evt_enhanced_flush_complete'handle :: Ptr (C'evt_enhanced_flush_complete) -> Ptr (CUShort)
instance Storable C'evt_enhanced_flush_complete where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'evt_enhanced_flush_complete v0
  poke p (C'evt_enhanced_flush_complete v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 1922 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint32_t passkey;
        } evt_user_passkey_notify; -}

{-# LINE 1926 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1927 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1928 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_user_passkey_notify = C'evt_user_passkey_notify{
  c'evt_user_passkey_notify'bdaddr :: C'bdaddr_t,
  c'evt_user_passkey_notify'passkey :: CUInt
} deriving (Eq,Show)
p'evt_user_passkey_notify'bdaddr p = plusPtr p 0
p'evt_user_passkey_notify'bdaddr :: Ptr (C'evt_user_passkey_notify) -> Ptr (C'bdaddr_t)
p'evt_user_passkey_notify'passkey p = plusPtr p 6
p'evt_user_passkey_notify'passkey :: Ptr (C'evt_user_passkey_notify) -> Ptr (CUInt)
instance Storable C'evt_user_passkey_notify where
  sizeOf _ = 10
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    return $ C'evt_user_passkey_notify v0 v1
  poke p (C'evt_user_passkey_notify v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    return ()

{-# LINE 1929 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t type;
        } evt_keypress_notify; -}

{-# LINE 1933 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1934 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1935 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_keypress_notify = C'evt_keypress_notify{
  c'evt_keypress_notify'bdaddr :: C'bdaddr_t,
  c'evt_keypress_notify'type :: CUChar
} deriving (Eq,Show)
p'evt_keypress_notify'bdaddr p = plusPtr p 0
p'evt_keypress_notify'bdaddr :: Ptr (C'evt_keypress_notify) -> Ptr (C'bdaddr_t)
p'evt_keypress_notify'type p = plusPtr p 6
p'evt_keypress_notify'type :: Ptr (C'evt_keypress_notify) -> Ptr (CUChar)
instance Storable C'evt_keypress_notify where
  sizeOf _ = 7
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    return $ C'evt_keypress_notify v0 v1
  poke p (C'evt_keypress_notify v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    return ()

{-# LINE 1936 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            bdaddr_t bdaddr; uint8_t features[8];
        } evt_remote_host_features_notify; -}

{-# LINE 1940 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1941 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1942 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_remote_host_features_notify = C'evt_remote_host_features_notify{
  c'evt_remote_host_features_notify'bdaddr :: C'bdaddr_t,
  c'evt_remote_host_features_notify'features :: [CUChar]
} deriving (Eq,Show)
p'evt_remote_host_features_notify'bdaddr p = plusPtr p 0
p'evt_remote_host_features_notify'bdaddr :: Ptr (C'evt_remote_host_features_notify) -> Ptr (C'bdaddr_t)
p'evt_remote_host_features_notify'features p = plusPtr p 6
p'evt_remote_host_features_notify'features :: Ptr (C'evt_remote_host_features_notify) -> Ptr (CUChar)
instance Storable C'evt_remote_host_features_notify where
  sizeOf _ = 14
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 8 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 6)
    return $ C'evt_remote_host_features_notify v0 v1
  poke p (C'evt_remote_host_features_notify v0 v1) = do
    pokeByteOff p 0 v0
    let s = div 8 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 6) (take s v1)
    return ()

{-# LINE 1943 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t subevent; uint8_t data[0];
        } evt_le_meta_event; -}

{-# LINE 1947 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1948 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1949 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_le_meta_event = C'evt_le_meta_event{
  c'evt_le_meta_event'subevent :: CUChar,
  c'evt_le_meta_event'data :: CUChar
} deriving (Eq,Show)
p'evt_le_meta_event'subevent p = plusPtr p 0
p'evt_le_meta_event'subevent :: Ptr (C'evt_le_meta_event) -> Ptr (CUChar)
p'evt_le_meta_event'data p = plusPtr p 1
p'evt_le_meta_event'data :: Ptr (C'evt_le_meta_event) -> Ptr (CUChar)
instance Storable C'evt_le_meta_event where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'evt_le_meta_event v0 v1
  poke p (C'evt_le_meta_event v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 1950 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t handle;
            uint8_t role;
            uint8_t peer_bdaddr_type;
            bdaddr_t peer_bdaddr;
            uint16_t interval;
            uint16_t latency;
            uint16_t supervision_timeout;
            uint8_t master_clock_accuracy;
        } evt_le_connection_complete; -}

{-# LINE 1962 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1963 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1964 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1965 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1966 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1967 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1968 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1969 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1970 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1971 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_le_connection_complete = C'evt_le_connection_complete{
  c'evt_le_connection_complete'status :: CUChar,
  c'evt_le_connection_complete'handle :: CUShort,
  c'evt_le_connection_complete'role :: CUChar,
  c'evt_le_connection_complete'peer_bdaddr_type :: CUChar,
  c'evt_le_connection_complete'peer_bdaddr :: C'bdaddr_t,
  c'evt_le_connection_complete'interval :: CUShort,
  c'evt_le_connection_complete'latency :: CUShort,
  c'evt_le_connection_complete'supervision_timeout :: CUShort,
  c'evt_le_connection_complete'master_clock_accuracy :: CUChar
} deriving (Eq,Show)
p'evt_le_connection_complete'status p = plusPtr p 0
p'evt_le_connection_complete'status :: Ptr (C'evt_le_connection_complete) -> Ptr (CUChar)
p'evt_le_connection_complete'handle p = plusPtr p 1
p'evt_le_connection_complete'handle :: Ptr (C'evt_le_connection_complete) -> Ptr (CUShort)
p'evt_le_connection_complete'role p = plusPtr p 3
p'evt_le_connection_complete'role :: Ptr (C'evt_le_connection_complete) -> Ptr (CUChar)
p'evt_le_connection_complete'peer_bdaddr_type p = plusPtr p 4
p'evt_le_connection_complete'peer_bdaddr_type :: Ptr (C'evt_le_connection_complete) -> Ptr (CUChar)
p'evt_le_connection_complete'peer_bdaddr p = plusPtr p 5
p'evt_le_connection_complete'peer_bdaddr :: Ptr (C'evt_le_connection_complete) -> Ptr (C'bdaddr_t)
p'evt_le_connection_complete'interval p = plusPtr p 11
p'evt_le_connection_complete'interval :: Ptr (C'evt_le_connection_complete) -> Ptr (CUShort)
p'evt_le_connection_complete'latency p = plusPtr p 13
p'evt_le_connection_complete'latency :: Ptr (C'evt_le_connection_complete) -> Ptr (CUShort)
p'evt_le_connection_complete'supervision_timeout p = plusPtr p 15
p'evt_le_connection_complete'supervision_timeout :: Ptr (C'evt_le_connection_complete) -> Ptr (CUShort)
p'evt_le_connection_complete'master_clock_accuracy p = plusPtr p 17
p'evt_le_connection_complete'master_clock_accuracy :: Ptr (C'evt_le_connection_complete) -> Ptr (CUChar)
instance Storable C'evt_le_connection_complete where
  sizeOf _ = 18
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    v3 <- peekByteOff p 4
    v4 <- peekByteOff p 5
    v5 <- peekByteOff p 11
    v6 <- peekByteOff p 13
    v7 <- peekByteOff p 15
    v8 <- peekByteOff p 17
    return $ C'evt_le_connection_complete v0 v1 v2 v3 v4 v5 v6 v7 v8
  poke p (C'evt_le_connection_complete v0 v1 v2 v3 v4 v5 v6 v7 v8) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    pokeByteOff p 4 v3
    pokeByteOff p 5 v4
    pokeByteOff p 11 v5
    pokeByteOff p 13 v6
    pokeByteOff p 15 v7
    pokeByteOff p 17 v8
    return ()

{-# LINE 1972 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t evt_type;
            uint8_t bdaddr_type;
            bdaddr_t bdaddr;
            uint8_t length;
            uint8_t data[0];
        } le_advertising_info; -}

{-# LINE 1980 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1981 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1982 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1983 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1984 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1985 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'le_advertising_info = C'le_advertising_info{
  c'le_advertising_info'evt_type :: CUChar,
  c'le_advertising_info'bdaddr_type :: CUChar,
  c'le_advertising_info'bdaddr :: C'bdaddr_t,
  c'le_advertising_info'length :: CUChar,
  c'le_advertising_info'data :: CUChar
} deriving (Eq,Show)
p'le_advertising_info'evt_type p = plusPtr p 0
p'le_advertising_info'evt_type :: Ptr (C'le_advertising_info) -> Ptr (CUChar)
p'le_advertising_info'bdaddr_type p = plusPtr p 1
p'le_advertising_info'bdaddr_type :: Ptr (C'le_advertising_info) -> Ptr (CUChar)
p'le_advertising_info'bdaddr p = plusPtr p 2
p'le_advertising_info'bdaddr :: Ptr (C'le_advertising_info) -> Ptr (C'bdaddr_t)
p'le_advertising_info'length p = plusPtr p 8
p'le_advertising_info'length :: Ptr (C'le_advertising_info) -> Ptr (CUChar)
p'le_advertising_info'data p = plusPtr p 9
p'le_advertising_info'data :: Ptr (C'le_advertising_info) -> Ptr (CUChar)
instance Storable C'le_advertising_info where
  sizeOf _ = 9
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 2
    v3 <- peekByteOff p 8
    v4 <- peekByteOff p 9
    return $ C'le_advertising_info v0 v1 v2 v3 v4
  poke p (C'le_advertising_info v0 v1 v2 v3 v4) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 2 v2
    pokeByteOff p 8 v3
    pokeByteOff p 9 v4
    return ()

{-# LINE 1986 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t handle;
            uint16_t interval;
            uint16_t latency;
            uint16_t supervision_timeout;
        } evt_le_connection_update_complete; -}

{-# LINE 1994 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1995 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1996 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1997 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1998 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 1999 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_le_connection_update_complete = C'evt_le_connection_update_complete{
  c'evt_le_connection_update_complete'status :: CUChar,
  c'evt_le_connection_update_complete'handle :: CUShort,
  c'evt_le_connection_update_complete'interval :: CUShort,
  c'evt_le_connection_update_complete'latency :: CUShort,
  c'evt_le_connection_update_complete'supervision_timeout :: CUShort
} deriving (Eq,Show)
p'evt_le_connection_update_complete'status p = plusPtr p 0
p'evt_le_connection_update_complete'status :: Ptr (C'evt_le_connection_update_complete) -> Ptr (CUChar)
p'evt_le_connection_update_complete'handle p = plusPtr p 1
p'evt_le_connection_update_complete'handle :: Ptr (C'evt_le_connection_update_complete) -> Ptr (CUShort)
p'evt_le_connection_update_complete'interval p = plusPtr p 3
p'evt_le_connection_update_complete'interval :: Ptr (C'evt_le_connection_update_complete) -> Ptr (CUShort)
p'evt_le_connection_update_complete'latency p = plusPtr p 5
p'evt_le_connection_update_complete'latency :: Ptr (C'evt_le_connection_update_complete) -> Ptr (CUShort)
p'evt_le_connection_update_complete'supervision_timeout p = plusPtr p 7
p'evt_le_connection_update_complete'supervision_timeout :: Ptr (C'evt_le_connection_update_complete) -> Ptr (CUShort)
instance Storable C'evt_le_connection_update_complete where
  sizeOf _ = 9
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    v3 <- peekByteOff p 5
    v4 <- peekByteOff p 7
    return $ C'evt_le_connection_update_complete v0 v1 v2 v3 v4
  poke p (C'evt_le_connection_update_complete v0 v1 v2 v3 v4) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    pokeByteOff p 5 v3
    pokeByteOff p 7 v4
    return ()

{-# LINE 2000 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle; uint8_t features[8];
        } evt_le_read_remote_used_features_complete; -}

{-# LINE 2004 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2005 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2006 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2007 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_le_read_remote_used_features_complete = C'evt_le_read_remote_used_features_complete{
  c'evt_le_read_remote_used_features_complete'status :: CUChar,
  c'evt_le_read_remote_used_features_complete'handle :: CUShort,
  c'evt_le_read_remote_used_features_complete'features :: [CUChar]
} deriving (Eq,Show)
p'evt_le_read_remote_used_features_complete'status p = plusPtr p 0
p'evt_le_read_remote_used_features_complete'status :: Ptr (C'evt_le_read_remote_used_features_complete) -> Ptr (CUChar)
p'evt_le_read_remote_used_features_complete'handle p = plusPtr p 1
p'evt_le_read_remote_used_features_complete'handle :: Ptr (C'evt_le_read_remote_used_features_complete) -> Ptr (CUShort)
p'evt_le_read_remote_used_features_complete'features p = plusPtr p 3
p'evt_le_read_remote_used_features_complete'features :: Ptr (C'evt_le_read_remote_used_features_complete) -> Ptr (CUChar)
instance Storable C'evt_le_read_remote_used_features_complete where
  sizeOf _ = 11
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- let s = div 8 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 3)
    return $ C'evt_le_read_remote_used_features_complete v0 v1 v2
  poke p (C'evt_le_read_remote_used_features_complete v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    let s = div 8 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 3) (take s v2)
    return ()

{-# LINE 2008 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint64_t random; uint16_t diversifier;
        } evt_le_long_term_key_request; -}

{-# LINE 2012 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2013 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2014 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2015 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_le_long_term_key_request = C'evt_le_long_term_key_request{
  c'evt_le_long_term_key_request'handle :: CUShort,
  c'evt_le_long_term_key_request'random :: CULong,
  c'evt_le_long_term_key_request'diversifier :: CUShort
} deriving (Eq,Show)
p'evt_le_long_term_key_request'handle p = plusPtr p 0
p'evt_le_long_term_key_request'handle :: Ptr (C'evt_le_long_term_key_request) -> Ptr (CUShort)
p'evt_le_long_term_key_request'random p = plusPtr p 2
p'evt_le_long_term_key_request'random :: Ptr (C'evt_le_long_term_key_request) -> Ptr (CULong)
p'evt_le_long_term_key_request'diversifier p = plusPtr p 10
p'evt_le_long_term_key_request'diversifier :: Ptr (C'evt_le_long_term_key_request) -> Ptr (CUShort)
instance Storable C'evt_le_long_term_key_request where
  sizeOf _ = 12
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 10
    return $ C'evt_le_long_term_key_request v0 v1 v2
  poke p (C'evt_le_long_term_key_request v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 10 v2
    return ()

{-# LINE 2016 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t handle;
        } evt_physical_link_complete; -}

{-# LINE 2020 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2021 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2022 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_physical_link_complete = C'evt_physical_link_complete{
  c'evt_physical_link_complete'status :: CUChar,
  c'evt_physical_link_complete'handle :: CUChar
} deriving (Eq,Show)
p'evt_physical_link_complete'status p = plusPtr p 0
p'evt_physical_link_complete'status :: Ptr (C'evt_physical_link_complete) -> Ptr (CUChar)
p'evt_physical_link_complete'handle p = plusPtr p 1
p'evt_physical_link_complete'handle :: Ptr (C'evt_physical_link_complete) -> Ptr (CUChar)
instance Storable C'evt_physical_link_complete where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'evt_physical_link_complete v0 v1
  poke p (C'evt_physical_link_complete v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 2023 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t handle; uint8_t reason;
        } evt_disconn_physical_link_complete; -}

{-# LINE 2027 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2028 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2029 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2030 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_disconn_physical_link_complete = C'evt_disconn_physical_link_complete{
  c'evt_disconn_physical_link_complete'status :: CUChar,
  c'evt_disconn_physical_link_complete'handle :: CUChar,
  c'evt_disconn_physical_link_complete'reason :: CUChar
} deriving (Eq,Show)
p'evt_disconn_physical_link_complete'status p = plusPtr p 0
p'evt_disconn_physical_link_complete'status :: Ptr (C'evt_disconn_physical_link_complete) -> Ptr (CUChar)
p'evt_disconn_physical_link_complete'handle p = plusPtr p 1
p'evt_disconn_physical_link_complete'handle :: Ptr (C'evt_disconn_physical_link_complete) -> Ptr (CUChar)
p'evt_disconn_physical_link_complete'reason p = plusPtr p 2
p'evt_disconn_physical_link_complete'reason :: Ptr (C'evt_disconn_physical_link_complete) -> Ptr (CUChar)
instance Storable C'evt_disconn_physical_link_complete where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 2
    return $ C'evt_disconn_physical_link_complete v0 v1 v2
  poke p (C'evt_disconn_physical_link_complete v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 2 v2
    return ()

{-# LINE 2031 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t handle; uint8_t reason;
        } evt_physical_link_loss_warning; -}

{-# LINE 2035 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2036 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2037 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_physical_link_loss_warning = C'evt_physical_link_loss_warning{
  c'evt_physical_link_loss_warning'handle :: CUChar,
  c'evt_physical_link_loss_warning'reason :: CUChar
} deriving (Eq,Show)
p'evt_physical_link_loss_warning'handle p = plusPtr p 0
p'evt_physical_link_loss_warning'handle :: Ptr (C'evt_physical_link_loss_warning) -> Ptr (CUChar)
p'evt_physical_link_loss_warning'reason p = plusPtr p 1
p'evt_physical_link_loss_warning'reason :: Ptr (C'evt_physical_link_loss_warning) -> Ptr (CUChar)
instance Storable C'evt_physical_link_loss_warning where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'evt_physical_link_loss_warning v0 v1
  poke p (C'evt_physical_link_loss_warning v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 2038 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t handle;
        } evt_physical_link_recovery; -}

{-# LINE 2042 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2043 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_physical_link_recovery = C'evt_physical_link_recovery{
  c'evt_physical_link_recovery'handle :: CUChar
} deriving (Eq,Show)
p'evt_physical_link_recovery'handle p = plusPtr p 0
p'evt_physical_link_recovery'handle :: Ptr (C'evt_physical_link_recovery) -> Ptr (CUChar)
instance Storable C'evt_physical_link_recovery where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'evt_physical_link_recovery v0
  poke p (C'evt_physical_link_recovery v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 2044 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status;
            uint16_t log_handle;
            uint8_t handle;
            uint8_t tx_flow_id;
        } evt_logical_link_complete; -}

{-# LINE 2051 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2052 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2053 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2054 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2055 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_logical_link_complete = C'evt_logical_link_complete{
  c'evt_logical_link_complete'status :: CUChar,
  c'evt_logical_link_complete'log_handle :: CUShort,
  c'evt_logical_link_complete'handle :: CUChar,
  c'evt_logical_link_complete'tx_flow_id :: CUChar
} deriving (Eq,Show)
p'evt_logical_link_complete'status p = plusPtr p 0
p'evt_logical_link_complete'status :: Ptr (C'evt_logical_link_complete) -> Ptr (CUChar)
p'evt_logical_link_complete'log_handle p = plusPtr p 1
p'evt_logical_link_complete'log_handle :: Ptr (C'evt_logical_link_complete) -> Ptr (CUShort)
p'evt_logical_link_complete'handle p = plusPtr p 3
p'evt_logical_link_complete'handle :: Ptr (C'evt_logical_link_complete) -> Ptr (CUChar)
p'evt_logical_link_complete'tx_flow_id p = plusPtr p 4
p'evt_logical_link_complete'tx_flow_id :: Ptr (C'evt_logical_link_complete) -> Ptr (CUChar)
instance Storable C'evt_logical_link_complete where
  sizeOf _ = 5
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    v3 <- peekByteOff p 4
    return $ C'evt_logical_link_complete v0 v1 v2 v3
  poke p (C'evt_logical_link_complete v0 v1 v2 v3) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    pokeByteOff p 4 v3
    return ()

{-# LINE 2056 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint16_t handle;
        } evt_flow_spec_modify_complete; -}

{-# LINE 2060 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2061 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2062 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_flow_spec_modify_complete = C'evt_flow_spec_modify_complete{
  c'evt_flow_spec_modify_complete'status :: CUChar,
  c'evt_flow_spec_modify_complete'handle :: CUShort
} deriving (Eq,Show)
p'evt_flow_spec_modify_complete'status p = plusPtr p 0
p'evt_flow_spec_modify_complete'status :: Ptr (C'evt_flow_spec_modify_complete) -> Ptr (CUChar)
p'evt_flow_spec_modify_complete'handle p = plusPtr p 1
p'evt_flow_spec_modify_complete'handle :: Ptr (C'evt_flow_spec_modify_complete) -> Ptr (CUShort)
instance Storable C'evt_flow_spec_modify_complete where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'evt_flow_spec_modify_complete v0 v1
  poke p (C'evt_flow_spec_modify_complete v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 2063 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint16_t num_cmplt_pkts; uint16_t num_cmplt_blks;
        } cmplt_handle; -}

{-# LINE 2067 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2068 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2069 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2070 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'cmplt_handle = C'cmplt_handle{
  c'cmplt_handle'handle :: CUShort,
  c'cmplt_handle'num_cmplt_pkts :: CUShort,
  c'cmplt_handle'num_cmplt_blks :: CUShort
} deriving (Eq,Show)
p'cmplt_handle'handle p = plusPtr p 0
p'cmplt_handle'handle :: Ptr (C'cmplt_handle) -> Ptr (CUShort)
p'cmplt_handle'num_cmplt_pkts p = plusPtr p 2
p'cmplt_handle'num_cmplt_pkts :: Ptr (C'cmplt_handle) -> Ptr (CUShort)
p'cmplt_handle'num_cmplt_blks p = plusPtr p 4
p'cmplt_handle'num_cmplt_blks :: Ptr (C'cmplt_handle) -> Ptr (CUShort)
instance Storable C'cmplt_handle where
  sizeOf _ = 6
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    return $ C'cmplt_handle v0 v1 v2
  poke p (C'cmplt_handle v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    return ()

{-# LINE 2071 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t total_num_blocks;
            uint8_t num_handles;
            cmplt_handle handles[0];
        } evt_num_completed_blocks; -}

{-# LINE 2077 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2078 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2079 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2080 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_num_completed_blocks = C'evt_num_completed_blocks{
  c'evt_num_completed_blocks'total_num_blocks :: CUShort,
  c'evt_num_completed_blocks'num_handles :: CUChar,
  c'evt_num_completed_blocks'handles :: C'cmplt_handle
} deriving (Eq,Show)
p'evt_num_completed_blocks'total_num_blocks p = plusPtr p 0
p'evt_num_completed_blocks'total_num_blocks :: Ptr (C'evt_num_completed_blocks) -> Ptr (CUShort)
p'evt_num_completed_blocks'num_handles p = plusPtr p 2
p'evt_num_completed_blocks'num_handles :: Ptr (C'evt_num_completed_blocks) -> Ptr (CUChar)
p'evt_num_completed_blocks'handles p = plusPtr p 3
p'evt_num_completed_blocks'handles :: Ptr (C'evt_num_completed_blocks) -> Ptr (C'cmplt_handle)
instance Storable C'evt_num_completed_blocks where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 3
    return $ C'evt_num_completed_blocks v0 v1 v2
  poke p (C'evt_num_completed_blocks v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 3 v2
    return ()

{-# LINE 2081 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t status; uint8_t amp_status;
        } evt_amp_status_change; -}

{-# LINE 2085 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2086 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2087 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_amp_status_change = C'evt_amp_status_change{
  c'evt_amp_status_change'status :: CUChar,
  c'evt_amp_status_change'amp_status :: CUChar
} deriving (Eq,Show)
p'evt_amp_status_change'status p = plusPtr p 0
p'evt_amp_status_change'status :: Ptr (C'evt_amp_status_change) -> Ptr (CUChar)
p'evt_amp_status_change'amp_status p = plusPtr p 1
p'evt_amp_status_change'amp_status :: Ptr (C'evt_amp_status_change) -> Ptr (CUChar)
instance Storable C'evt_amp_status_change where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'evt_amp_status_change v0 v1
  poke p (C'evt_amp_status_change v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 2088 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t type; uint8_t data[0];
        } evt_stack_internal; -}

{-# LINE 2092 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2093 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2094 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_stack_internal = C'evt_stack_internal{
  c'evt_stack_internal'type :: CUShort,
  c'evt_stack_internal'data :: CUChar
} deriving (Eq,Show)
p'evt_stack_internal'type p = plusPtr p 0
p'evt_stack_internal'type :: Ptr (C'evt_stack_internal) -> Ptr (CUShort)
p'evt_stack_internal'data p = plusPtr p 2
p'evt_stack_internal'data :: Ptr (C'evt_stack_internal) -> Ptr (CUChar)
instance Storable C'evt_stack_internal where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'evt_stack_internal v0 v1
  poke p (C'evt_stack_internal v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 2095 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t event; uint16_t dev_id;
        } evt_si_device; -}

{-# LINE 2099 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2100 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2101 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'evt_si_device = C'evt_si_device{
  c'evt_si_device'event :: CUShort,
  c'evt_si_device'dev_id :: CUShort
} deriving (Eq,Show)
p'evt_si_device'event p = plusPtr p 0
p'evt_si_device'event :: Ptr (C'evt_si_device) -> Ptr (CUShort)
p'evt_si_device'dev_id p = plusPtr p 2
p'evt_si_device'dev_id :: Ptr (C'evt_si_device) -> Ptr (CUShort)
instance Storable C'evt_si_device where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'evt_si_device v0 v1
  poke p (C'evt_si_device v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 2102 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t opcode; uint8_t plen;
        } hci_command_hdr; -}

{-# LINE 2106 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2107 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2108 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'hci_command_hdr = C'hci_command_hdr{
  c'hci_command_hdr'opcode :: CUShort,
  c'hci_command_hdr'plen :: CUChar
} deriving (Eq,Show)
p'hci_command_hdr'opcode p = plusPtr p 0
p'hci_command_hdr'opcode :: Ptr (C'hci_command_hdr) -> Ptr (CUShort)
p'hci_command_hdr'plen p = plusPtr p 2
p'hci_command_hdr'plen :: Ptr (C'hci_command_hdr) -> Ptr (CUChar)
instance Storable C'hci_command_hdr where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'hci_command_hdr v0 v1
  poke p (C'hci_command_hdr v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 2109 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint8_t evt; uint8_t plen;
        } hci_event_hdr; -}

{-# LINE 2113 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2114 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2115 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'hci_event_hdr = C'hci_event_hdr{
  c'hci_event_hdr'evt :: CUChar,
  c'hci_event_hdr'plen :: CUChar
} deriving (Eq,Show)
p'hci_event_hdr'evt p = plusPtr p 0
p'hci_event_hdr'evt :: Ptr (C'hci_event_hdr) -> Ptr (CUChar)
p'hci_event_hdr'plen p = plusPtr p 1
p'hci_event_hdr'plen :: Ptr (C'hci_event_hdr) -> Ptr (CUChar)
instance Storable C'hci_event_hdr where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'hci_event_hdr v0 v1
  poke p (C'hci_event_hdr v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 2116 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint16_t dlen;
        } hci_acl_hdr; -}

{-# LINE 2120 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2121 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2122 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'hci_acl_hdr = C'hci_acl_hdr{
  c'hci_acl_hdr'handle :: CUShort,
  c'hci_acl_hdr'dlen :: CUShort
} deriving (Eq,Show)
p'hci_acl_hdr'handle p = plusPtr p 0
p'hci_acl_hdr'handle :: Ptr (C'hci_acl_hdr) -> Ptr (CUShort)
p'hci_acl_hdr'dlen p = plusPtr p 2
p'hci_acl_hdr'dlen :: Ptr (C'hci_acl_hdr) -> Ptr (CUShort)
instance Storable C'hci_acl_hdr where
  sizeOf _ = 4
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'hci_acl_hdr v0 v1
  poke p (C'hci_acl_hdr v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 2123 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t handle; uint8_t dlen;
        } hci_sco_hdr; -}

{-# LINE 2127 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2128 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2129 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'hci_sco_hdr = C'hci_sco_hdr{
  c'hci_sco_hdr'handle :: CUShort,
  c'hci_sco_hdr'dlen :: CUChar
} deriving (Eq,Show)
p'hci_sco_hdr'handle p = plusPtr p 0
p'hci_sco_hdr'handle :: Ptr (C'hci_sco_hdr) -> Ptr (CUShort)
p'hci_sco_hdr'dlen p = plusPtr p 2
p'hci_sco_hdr'dlen :: Ptr (C'hci_sco_hdr) -> Ptr (CUChar)
instance Storable C'hci_sco_hdr where
  sizeOf _ = 3
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    return $ C'hci_sco_hdr v0 v1
  poke p (C'hci_sco_hdr v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    return ()

{-# LINE 2130 "src/Bluetooth/Raw/Hci.hsc" #-}
{- typedef struct __attribute__((packed)) {
            uint16_t device; uint16_t type; uint16_t plen;
        } hci_msg_hdr; -}

{-# LINE 2134 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2135 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2136 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2137 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'hci_msg_hdr = C'hci_msg_hdr{
  c'hci_msg_hdr'device :: CUShort,
  c'hci_msg_hdr'type :: CUShort,
  c'hci_msg_hdr'plen :: CUShort
} deriving (Eq,Show)
p'hci_msg_hdr'device p = plusPtr p 0
p'hci_msg_hdr'device :: Ptr (C'hci_msg_hdr) -> Ptr (CUShort)
p'hci_msg_hdr'type p = plusPtr p 2
p'hci_msg_hdr'type :: Ptr (C'hci_msg_hdr) -> Ptr (CUShort)
p'hci_msg_hdr'plen p = plusPtr p 4
p'hci_msg_hdr'plen :: Ptr (C'hci_msg_hdr) -> Ptr (CUShort)
instance Storable C'hci_msg_hdr where
  sizeOf _ = 6
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    return $ C'hci_msg_hdr v0 v1 v2
  poke p (C'hci_msg_hdr v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    return ()

{-# LINE 2138 "src/Bluetooth/Raw/Hci.hsc" #-}
{- struct sockaddr_hci {
    sa_family_t hci_family;
    unsigned short hci_dev;
    unsigned short hci_channel;
}; -}

{-# LINE 2144 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2145 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2146 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2147 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'sockaddr_hci = C'sockaddr_hci{
  c'sockaddr_hci'hci_family :: CUShort,
  c'sockaddr_hci'hci_dev :: CUShort,
  c'sockaddr_hci'hci_channel :: CUShort
} deriving (Eq,Show)
p'sockaddr_hci'hci_family p = plusPtr p 0
p'sockaddr_hci'hci_family :: Ptr (C'sockaddr_hci) -> Ptr (CUShort)
p'sockaddr_hci'hci_dev p = plusPtr p 2
p'sockaddr_hci'hci_dev :: Ptr (C'sockaddr_hci) -> Ptr (CUShort)
p'sockaddr_hci'hci_channel p = plusPtr p 4
p'sockaddr_hci'hci_channel :: Ptr (C'sockaddr_hci) -> Ptr (CUShort)
instance Storable C'sockaddr_hci where
  sizeOf _ = 6
  alignment _ = 2
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    return $ C'sockaddr_hci v0 v1 v2
  poke p (C'sockaddr_hci v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    return ()

{-# LINE 2148 "src/Bluetooth/Raw/Hci.hsc" #-}
{- struct hci_filter {
    uint32_t type_mask; uint32_t event_mask[2]; uint16_t opcode;
}; -}

{-# LINE 2152 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2153 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2154 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2155 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'hci_filter = C'hci_filter{
  c'hci_filter'type_mask :: CUInt,
  c'hci_filter'event_mask :: [CUInt],
  c'hci_filter'opcode :: CUShort
} deriving (Eq,Show)
p'hci_filter'type_mask p = plusPtr p 0
p'hci_filter'type_mask :: Ptr (C'hci_filter) -> Ptr (CUInt)
p'hci_filter'event_mask p = plusPtr p 4
p'hci_filter'event_mask :: Ptr (C'hci_filter) -> Ptr (CUInt)
p'hci_filter'opcode p = plusPtr p 12
p'hci_filter'opcode :: Ptr (C'hci_filter) -> Ptr (CUShort)
instance Storable C'hci_filter where
  sizeOf _ = 16
  alignment _ = 4
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 8 $ sizeOf $ (undefined :: CUInt) in peekArray s (plusPtr p 4)
    v2 <- peekByteOff p 12
    return $ C'hci_filter v0 v1 v2
  poke p (C'hci_filter v0 v1 v2) = do
    pokeByteOff p 0 v0
    let s = div 8 $ sizeOf $ (undefined :: CUInt)
    pokeArray (plusPtr p 4) (take s v1)
    pokeByteOff p 12 v2
    return ()

{-# LINE 2156 "src/Bluetooth/Raw/Hci.hsc" #-}
{- struct hci_dev_stats {
    uint32_t err_rx;
    uint32_t err_tx;
    uint32_t cmd_tx;
    uint32_t evt_rx;
    uint32_t acl_tx;
    uint32_t acl_rx;
    uint32_t sco_tx;
    uint32_t sco_rx;
    uint32_t byte_rx;
    uint32_t byte_tx;
}; -}

{-# LINE 2169 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2170 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2171 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2172 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2173 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2174 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2175 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2176 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2177 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2178 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2179 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'hci_dev_stats = C'hci_dev_stats{
  c'hci_dev_stats'err_rx :: CUInt,
  c'hci_dev_stats'err_tx :: CUInt,
  c'hci_dev_stats'cmd_tx :: CUInt,
  c'hci_dev_stats'evt_rx :: CUInt,
  c'hci_dev_stats'acl_tx :: CUInt,
  c'hci_dev_stats'acl_rx :: CUInt,
  c'hci_dev_stats'sco_tx :: CUInt,
  c'hci_dev_stats'sco_rx :: CUInt,
  c'hci_dev_stats'byte_rx :: CUInt,
  c'hci_dev_stats'byte_tx :: CUInt
} deriving (Eq,Show)
p'hci_dev_stats'err_rx p = plusPtr p 0
p'hci_dev_stats'err_rx :: Ptr (C'hci_dev_stats) -> Ptr (CUInt)
p'hci_dev_stats'err_tx p = plusPtr p 4
p'hci_dev_stats'err_tx :: Ptr (C'hci_dev_stats) -> Ptr (CUInt)
p'hci_dev_stats'cmd_tx p = plusPtr p 8
p'hci_dev_stats'cmd_tx :: Ptr (C'hci_dev_stats) -> Ptr (CUInt)
p'hci_dev_stats'evt_rx p = plusPtr p 12
p'hci_dev_stats'evt_rx :: Ptr (C'hci_dev_stats) -> Ptr (CUInt)
p'hci_dev_stats'acl_tx p = plusPtr p 16
p'hci_dev_stats'acl_tx :: Ptr (C'hci_dev_stats) -> Ptr (CUInt)
p'hci_dev_stats'acl_rx p = plusPtr p 20
p'hci_dev_stats'acl_rx :: Ptr (C'hci_dev_stats) -> Ptr (CUInt)
p'hci_dev_stats'sco_tx p = plusPtr p 24
p'hci_dev_stats'sco_tx :: Ptr (C'hci_dev_stats) -> Ptr (CUInt)
p'hci_dev_stats'sco_rx p = plusPtr p 28
p'hci_dev_stats'sco_rx :: Ptr (C'hci_dev_stats) -> Ptr (CUInt)
p'hci_dev_stats'byte_rx p = plusPtr p 32
p'hci_dev_stats'byte_rx :: Ptr (C'hci_dev_stats) -> Ptr (CUInt)
p'hci_dev_stats'byte_tx p = plusPtr p 36
p'hci_dev_stats'byte_tx :: Ptr (C'hci_dev_stats) -> Ptr (CUInt)
instance Storable C'hci_dev_stats where
  sizeOf _ = 40
  alignment _ = 4
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 4
    v2 <- peekByteOff p 8
    v3 <- peekByteOff p 12
    v4 <- peekByteOff p 16
    v5 <- peekByteOff p 20
    v6 <- peekByteOff p 24
    v7 <- peekByteOff p 28
    v8 <- peekByteOff p 32
    v9 <- peekByteOff p 36
    return $ C'hci_dev_stats v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  poke p (C'hci_dev_stats v0 v1 v2 v3 v4 v5 v6 v7 v8 v9) = do
    pokeByteOff p 0 v0
    pokeByteOff p 4 v1
    pokeByteOff p 8 v2
    pokeByteOff p 12 v3
    pokeByteOff p 16 v4
    pokeByteOff p 20 v5
    pokeByteOff p 24 v6
    pokeByteOff p 28 v7
    pokeByteOff p 32 v8
    pokeByteOff p 36 v9
    return ()

{-# LINE 2180 "src/Bluetooth/Raw/Hci.hsc" #-}
{- struct hci_dev_info {
    uint16_t dev_id;
    char name[8];
    bdaddr_t bdaddr;
    uint32_t flags;
    uint8_t type;
    uint8_t features[8];
    uint32_t pkt_type;
    uint32_t link_policy;
    uint32_t link_mode;
    uint16_t acl_mtu;
    uint16_t acl_pkts;
    uint16_t sco_mtu;
    uint16_t sco_pkts;
    struct hci_dev_stats stat;
}; -}

{-# LINE 2197 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2198 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2199 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2200 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2201 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2202 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2203 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2204 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2205 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2206 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2207 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2208 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2209 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2210 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2211 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'hci_dev_info = C'hci_dev_info{
  c'hci_dev_info'dev_id :: CUShort,
  c'hci_dev_info'name :: [CChar],
  c'hci_dev_info'bdaddr :: C'bdaddr_t,
  c'hci_dev_info'flags :: CUInt,
  c'hci_dev_info'type :: CUChar,
  c'hci_dev_info'features :: [CUChar],
  c'hci_dev_info'pkt_type :: CUInt,
  c'hci_dev_info'link_policy :: CUInt,
  c'hci_dev_info'link_mode :: CUInt,
  c'hci_dev_info'acl_mtu :: CUShort,
  c'hci_dev_info'acl_pkts :: CUShort,
  c'hci_dev_info'sco_mtu :: CUShort,
  c'hci_dev_info'sco_pkts :: CUShort,
  c'hci_dev_info'stat :: C'hci_dev_stats
} deriving (Eq,Show)
p'hci_dev_info'dev_id p = plusPtr p 0
p'hci_dev_info'dev_id :: Ptr (C'hci_dev_info) -> Ptr (CUShort)
p'hci_dev_info'name p = plusPtr p 2
p'hci_dev_info'name :: Ptr (C'hci_dev_info) -> Ptr (CChar)
p'hci_dev_info'bdaddr p = plusPtr p 10
p'hci_dev_info'bdaddr :: Ptr (C'hci_dev_info) -> Ptr (C'bdaddr_t)
p'hci_dev_info'flags p = plusPtr p 16
p'hci_dev_info'flags :: Ptr (C'hci_dev_info) -> Ptr (CUInt)
p'hci_dev_info'type p = plusPtr p 20
p'hci_dev_info'type :: Ptr (C'hci_dev_info) -> Ptr (CUChar)
p'hci_dev_info'features p = plusPtr p 21
p'hci_dev_info'features :: Ptr (C'hci_dev_info) -> Ptr (CUChar)
p'hci_dev_info'pkt_type p = plusPtr p 32
p'hci_dev_info'pkt_type :: Ptr (C'hci_dev_info) -> Ptr (CUInt)
p'hci_dev_info'link_policy p = plusPtr p 36
p'hci_dev_info'link_policy :: Ptr (C'hci_dev_info) -> Ptr (CUInt)
p'hci_dev_info'link_mode p = plusPtr p 40
p'hci_dev_info'link_mode :: Ptr (C'hci_dev_info) -> Ptr (CUInt)
p'hci_dev_info'acl_mtu p = plusPtr p 44
p'hci_dev_info'acl_mtu :: Ptr (C'hci_dev_info) -> Ptr (CUShort)
p'hci_dev_info'acl_pkts p = plusPtr p 46
p'hci_dev_info'acl_pkts :: Ptr (C'hci_dev_info) -> Ptr (CUShort)
p'hci_dev_info'sco_mtu p = plusPtr p 48
p'hci_dev_info'sco_mtu :: Ptr (C'hci_dev_info) -> Ptr (CUShort)
p'hci_dev_info'sco_pkts p = plusPtr p 50
p'hci_dev_info'sco_pkts :: Ptr (C'hci_dev_info) -> Ptr (CUShort)
p'hci_dev_info'stat p = plusPtr p 52
p'hci_dev_info'stat :: Ptr (C'hci_dev_info) -> Ptr (C'hci_dev_stats)
instance Storable C'hci_dev_info where
  sizeOf _ = 92
  alignment _ = 4
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- let s = div 8 $ sizeOf $ (undefined :: CChar) in peekArray s (plusPtr p 2)
    v2 <- peekByteOff p 10
    v3 <- peekByteOff p 16
    v4 <- peekByteOff p 20
    v5 <- let s = div 8 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 21)
    v6 <- peekByteOff p 32
    v7 <- peekByteOff p 36
    v8 <- peekByteOff p 40
    v9 <- peekByteOff p 44
    v10 <- peekByteOff p 46
    v11 <- peekByteOff p 48
    v12 <- peekByteOff p 50
    v13 <- peekByteOff p 52
    return $ C'hci_dev_info v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  poke p (C'hci_dev_info v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13) = do
    pokeByteOff p 0 v0
    let s = div 8 $ sizeOf $ (undefined :: CChar)
    pokeArray (plusPtr p 2) (take s v1)
    pokeByteOff p 10 v2
    pokeByteOff p 16 v3
    pokeByteOff p 20 v4
    let s = div 8 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 21) (take s v5)
    pokeByteOff p 32 v6
    pokeByteOff p 36 v7
    pokeByteOff p 40 v8
    pokeByteOff p 44 v9
    pokeByteOff p 46 v10
    pokeByteOff p 48 v11
    pokeByteOff p 50 v12
    pokeByteOff p 52 v13
    return ()

{-# LINE 2212 "src/Bluetooth/Raw/Hci.hsc" #-}
{- struct hci_conn_info {
    uint16_t handle;
    bdaddr_t bdaddr;
    uint8_t type;
    uint8_t out;
    uint16_t state;
    uint32_t link_mode;
}; -}

{-# LINE 2221 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2222 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2223 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2224 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2225 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2226 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2227 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'hci_conn_info = C'hci_conn_info{
  c'hci_conn_info'handle :: CUShort,
  c'hci_conn_info'bdaddr :: C'bdaddr_t,
  c'hci_conn_info'type :: CUChar,
  c'hci_conn_info'out :: CUChar,
  c'hci_conn_info'state :: CUShort,
  c'hci_conn_info'link_mode :: CUInt
} deriving (Eq,Show)
p'hci_conn_info'handle p = plusPtr p 0
p'hci_conn_info'handle :: Ptr (C'hci_conn_info) -> Ptr (CUShort)
p'hci_conn_info'bdaddr p = plusPtr p 2
p'hci_conn_info'bdaddr :: Ptr (C'hci_conn_info) -> Ptr (C'bdaddr_t)
p'hci_conn_info'type p = plusPtr p 8
p'hci_conn_info'type :: Ptr (C'hci_conn_info) -> Ptr (CUChar)
p'hci_conn_info'out p = plusPtr p 9
p'hci_conn_info'out :: Ptr (C'hci_conn_info) -> Ptr (CUChar)
p'hci_conn_info'state p = plusPtr p 10
p'hci_conn_info'state :: Ptr (C'hci_conn_info) -> Ptr (CUShort)
p'hci_conn_info'link_mode p = plusPtr p 12
p'hci_conn_info'link_mode :: Ptr (C'hci_conn_info) -> Ptr (CUInt)
instance Storable C'hci_conn_info where
  sizeOf _ = 16
  alignment _ = 4
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 8
    v3 <- peekByteOff p 9
    v4 <- peekByteOff p 10
    v5 <- peekByteOff p 12
    return $ C'hci_conn_info v0 v1 v2 v3 v4 v5
  poke p (C'hci_conn_info v0 v1 v2 v3 v4 v5) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 8 v2
    pokeByteOff p 9 v3
    pokeByteOff p 10 v4
    pokeByteOff p 12 v5
    return ()

{-# LINE 2228 "src/Bluetooth/Raw/Hci.hsc" #-}
{- struct hci_dev_req {
    uint16_t dev_id; uint32_t dev_opt;
}; -}

{-# LINE 2232 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2233 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2234 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'hci_dev_req = C'hci_dev_req{
  c'hci_dev_req'dev_id :: CUShort,
  c'hci_dev_req'dev_opt :: CUInt
} deriving (Eq,Show)
p'hci_dev_req'dev_id p = plusPtr p 0
p'hci_dev_req'dev_id :: Ptr (C'hci_dev_req) -> Ptr (CUShort)
p'hci_dev_req'dev_opt p = plusPtr p 4
p'hci_dev_req'dev_opt :: Ptr (C'hci_dev_req) -> Ptr (CUInt)
instance Storable C'hci_dev_req where
  sizeOf _ = 8
  alignment _ = 4
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 4
    return $ C'hci_dev_req v0 v1
  poke p (C'hci_dev_req v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 4 v1
    return ()

{-# LINE 2235 "src/Bluetooth/Raw/Hci.hsc" #-}
{- struct hci_dev_list_req {
    uint16_t dev_num; struct hci_dev_req dev_req[0];
}; -}

{-# LINE 2239 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2240 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2241 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'hci_dev_list_req = C'hci_dev_list_req{
  c'hci_dev_list_req'dev_num :: CUShort,
  c'hci_dev_list_req'dev_req :: C'hci_dev_req
} deriving (Eq,Show)
p'hci_dev_list_req'dev_num p = plusPtr p 0
p'hci_dev_list_req'dev_num :: Ptr (C'hci_dev_list_req) -> Ptr (CUShort)
p'hci_dev_list_req'dev_req p = plusPtr p 4
p'hci_dev_list_req'dev_req :: Ptr (C'hci_dev_list_req) -> Ptr (C'hci_dev_req)
instance Storable C'hci_dev_list_req where
  sizeOf _ = 4
  alignment _ = 4
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 4
    return $ C'hci_dev_list_req v0 v1
  poke p (C'hci_dev_list_req v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 4 v1
    return ()

{-# LINE 2242 "src/Bluetooth/Raw/Hci.hsc" #-}
{- struct hci_conn_list_req {
    uint16_t dev_id;
    uint16_t conn_num;
    struct hci_conn_info conn_info[0];
}; -}

{-# LINE 2248 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2249 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2250 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2251 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'hci_conn_list_req = C'hci_conn_list_req{
  c'hci_conn_list_req'dev_id :: CUShort,
  c'hci_conn_list_req'conn_num :: CUShort,
  c'hci_conn_list_req'conn_info :: C'hci_conn_info
} deriving (Eq,Show)
p'hci_conn_list_req'dev_id p = plusPtr p 0
p'hci_conn_list_req'dev_id :: Ptr (C'hci_conn_list_req) -> Ptr (CUShort)
p'hci_conn_list_req'conn_num p = plusPtr p 2
p'hci_conn_list_req'conn_num :: Ptr (C'hci_conn_list_req) -> Ptr (CUShort)
p'hci_conn_list_req'conn_info p = plusPtr p 4
p'hci_conn_list_req'conn_info :: Ptr (C'hci_conn_list_req) -> Ptr (C'hci_conn_info)
instance Storable C'hci_conn_list_req where
  sizeOf _ = 4
  alignment _ = 4
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    return $ C'hci_conn_list_req v0 v1 v2
  poke p (C'hci_conn_list_req v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    return ()

{-# LINE 2252 "src/Bluetooth/Raw/Hci.hsc" #-}
{- struct hci_conn_info_req {
    bdaddr_t bdaddr; uint8_t type; struct hci_conn_info conn_info[0];
}; -}

{-# LINE 2256 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2257 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2258 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2259 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'hci_conn_info_req = C'hci_conn_info_req{
  c'hci_conn_info_req'bdaddr :: C'bdaddr_t,
  c'hci_conn_info_req'type :: CUChar,
  c'hci_conn_info_req'conn_info :: C'hci_conn_info
} deriving (Eq,Show)
p'hci_conn_info_req'bdaddr p = plusPtr p 0
p'hci_conn_info_req'bdaddr :: Ptr (C'hci_conn_info_req) -> Ptr (C'bdaddr_t)
p'hci_conn_info_req'type p = plusPtr p 6
p'hci_conn_info_req'type :: Ptr (C'hci_conn_info_req) -> Ptr (CUChar)
p'hci_conn_info_req'conn_info p = plusPtr p 8
p'hci_conn_info_req'conn_info :: Ptr (C'hci_conn_info_req) -> Ptr (C'hci_conn_info)
instance Storable C'hci_conn_info_req where
  sizeOf _ = 8
  alignment _ = 4
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    v2 <- peekByteOff p 8
    return $ C'hci_conn_info_req v0 v1 v2
  poke p (C'hci_conn_info_req v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    pokeByteOff p 8 v2
    return ()

{-# LINE 2260 "src/Bluetooth/Raw/Hci.hsc" #-}
{- struct hci_auth_info_req {
    bdaddr_t bdaddr; uint8_t type;
}; -}

{-# LINE 2264 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2265 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2266 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'hci_auth_info_req = C'hci_auth_info_req{
  c'hci_auth_info_req'bdaddr :: C'bdaddr_t,
  c'hci_auth_info_req'type :: CUChar
} deriving (Eq,Show)
p'hci_auth_info_req'bdaddr p = plusPtr p 0
p'hci_auth_info_req'bdaddr :: Ptr (C'hci_auth_info_req) -> Ptr (C'bdaddr_t)
p'hci_auth_info_req'type p = plusPtr p 6
p'hci_auth_info_req'type :: Ptr (C'hci_auth_info_req) -> Ptr (CUChar)
instance Storable C'hci_auth_info_req where
  sizeOf _ = 7
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 6
    return $ C'hci_auth_info_req v0 v1
  poke p (C'hci_auth_info_req v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 6 v1
    return ()

{-# LINE 2267 "src/Bluetooth/Raw/Hci.hsc" #-}
{- struct hci_inquiry_req {
    uint16_t dev_id;
    uint16_t flags;
    uint8_t lap[3];
    uint8_t length;
    uint8_t num_rsp;
}; -}

{-# LINE 2275 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2276 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2277 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2278 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2279 "src/Bluetooth/Raw/Hci.hsc" #-}

{-# LINE 2280 "src/Bluetooth/Raw/Hci.hsc" #-}
data C'hci_inquiry_req = C'hci_inquiry_req{
  c'hci_inquiry_req'dev_id :: CUShort,
  c'hci_inquiry_req'flags :: CUShort,
  c'hci_inquiry_req'lap :: [CUChar],
  c'hci_inquiry_req'length :: CUChar,
  c'hci_inquiry_req'num_rsp :: CUChar
} deriving (Eq,Show)
p'hci_inquiry_req'dev_id p = plusPtr p 0
p'hci_inquiry_req'dev_id :: Ptr (C'hci_inquiry_req) -> Ptr (CUShort)
p'hci_inquiry_req'flags p = plusPtr p 2
p'hci_inquiry_req'flags :: Ptr (C'hci_inquiry_req) -> Ptr (CUShort)
p'hci_inquiry_req'lap p = plusPtr p 4
p'hci_inquiry_req'lap :: Ptr (C'hci_inquiry_req) -> Ptr (CUChar)
p'hci_inquiry_req'length p = plusPtr p 7
p'hci_inquiry_req'length :: Ptr (C'hci_inquiry_req) -> Ptr (CUChar)
p'hci_inquiry_req'num_rsp p = plusPtr p 8
p'hci_inquiry_req'num_rsp :: Ptr (C'hci_inquiry_req) -> Ptr (CUChar)
instance Storable C'hci_inquiry_req where
  sizeOf _ = 10
  alignment _ = 2
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- let s = div 3 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 4)
    v3 <- peekByteOff p 7
    v4 <- peekByteOff p 8
    return $ C'hci_inquiry_req v0 v1 v2 v3 v4
  poke p (C'hci_inquiry_req v0 v1 v2 v3 v4) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    let s = div 3 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 4) (take s v2)
    pokeByteOff p 7 v3
    pokeByteOff p 8 v4
    return ()

{-# LINE 2281 "src/Bluetooth/Raw/Hci.hsc" #-}
