{-# LINE 1 "src/Bluetooth/Raw/HciLib.hsc" #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# LINE 2 "src/Bluetooth/Raw/HciLib.hsc" #-}

{-# LINE 3 "src/Bluetooth/Raw/HciLib.hsc" #-}

{-# LINE 4 "src/Bluetooth/Raw/HciLib.hsc" #-}
module Bluetooth.Raw.HciLib where
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

{-# LINE 7 "src/Bluetooth/Raw/HciLib.hsc" #-}

import Bluetooth.Raw.Bluetooth
import Bluetooth.Raw.Hci
{- struct hci_request {
    uint16_t ogf;
    uint16_t ocf;
    int event;
    void * cparam;
    int clen;
    void * rparam;
    int rlen;
}; -}

{-# LINE 20 "src/Bluetooth/Raw/HciLib.hsc" #-}

{-# LINE 21 "src/Bluetooth/Raw/HciLib.hsc" #-}

{-# LINE 22 "src/Bluetooth/Raw/HciLib.hsc" #-}

{-# LINE 23 "src/Bluetooth/Raw/HciLib.hsc" #-}

{-# LINE 24 "src/Bluetooth/Raw/HciLib.hsc" #-}

{-# LINE 25 "src/Bluetooth/Raw/HciLib.hsc" #-}

{-# LINE 26 "src/Bluetooth/Raw/HciLib.hsc" #-}

{-# LINE 27 "src/Bluetooth/Raw/HciLib.hsc" #-}
data C'hci_request = C'hci_request{
  c'hci_request'ogf :: CUShort,
  c'hci_request'ocf :: CUShort,
  c'hci_request'event :: CInt,
  c'hci_request'cparam :: Ptr (),
  c'hci_request'clen :: CInt,
  c'hci_request'rparam :: Ptr (),
  c'hci_request'rlen :: CInt
} deriving (Eq,Show)
p'hci_request'ogf p = plusPtr p 0
p'hci_request'ogf :: Ptr (C'hci_request) -> Ptr (CUShort)
p'hci_request'ocf p = plusPtr p 2
p'hci_request'ocf :: Ptr (C'hci_request) -> Ptr (CUShort)
p'hci_request'event p = plusPtr p 4
p'hci_request'event :: Ptr (C'hci_request) -> Ptr (CInt)
p'hci_request'cparam p = plusPtr p 8
p'hci_request'cparam :: Ptr (C'hci_request) -> Ptr (Ptr ())
p'hci_request'clen p = plusPtr p 16
p'hci_request'clen :: Ptr (C'hci_request) -> Ptr (CInt)
p'hci_request'rparam p = plusPtr p 24
p'hci_request'rparam :: Ptr (C'hci_request) -> Ptr (Ptr ())
p'hci_request'rlen p = plusPtr p 32
p'hci_request'rlen :: Ptr (C'hci_request) -> Ptr (CInt)
instance Storable C'hci_request where
  sizeOf _ = 40
  alignment _ = 8
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    v3 <- peekByteOff p 8
    v4 <- peekByteOff p 16
    v5 <- peekByteOff p 24
    v6 <- peekByteOff p 32
    return $ C'hci_request v0 v1 v2 v3 v4 v5 v6
  poke p (C'hci_request v0 v1 v2 v3 v4 v5 v6) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    pokeByteOff p 8 v3
    pokeByteOff p 16 v4
    pokeByteOff p 24 v5
    pokeByteOff p 32 v6
    return ()

{-# LINE 28 "src/Bluetooth/Raw/HciLib.hsc" #-}
{- struct hci_version {
    uint16_t manufacturer;
    uint8_t hci_ver;
    uint16_t hci_rev;
    uint8_t lmp_ver;
    uint16_t lmp_subver;
}; -}

{-# LINE 36 "src/Bluetooth/Raw/HciLib.hsc" #-}

{-# LINE 37 "src/Bluetooth/Raw/HciLib.hsc" #-}

{-# LINE 38 "src/Bluetooth/Raw/HciLib.hsc" #-}

{-# LINE 39 "src/Bluetooth/Raw/HciLib.hsc" #-}

{-# LINE 40 "src/Bluetooth/Raw/HciLib.hsc" #-}

{-# LINE 41 "src/Bluetooth/Raw/HciLib.hsc" #-}
data C'hci_version = C'hci_version{
  c'hci_version'manufacturer :: CUShort,
  c'hci_version'hci_ver :: CUChar,
  c'hci_version'hci_rev :: CUShort,
  c'hci_version'lmp_ver :: CUChar,
  c'hci_version'lmp_subver :: CUShort
} deriving (Eq,Show)
p'hci_version'manufacturer p = plusPtr p 0
p'hci_version'manufacturer :: Ptr (C'hci_version) -> Ptr (CUShort)
p'hci_version'hci_ver p = plusPtr p 2
p'hci_version'hci_ver :: Ptr (C'hci_version) -> Ptr (CUChar)
p'hci_version'hci_rev p = plusPtr p 4
p'hci_version'hci_rev :: Ptr (C'hci_version) -> Ptr (CUShort)
p'hci_version'lmp_ver p = plusPtr p 6
p'hci_version'lmp_ver :: Ptr (C'hci_version) -> Ptr (CUChar)
p'hci_version'lmp_subver p = plusPtr p 8
p'hci_version'lmp_subver :: Ptr (C'hci_version) -> Ptr (CUShort)
instance Storable C'hci_version where
  sizeOf _ = 10
  alignment _ = 2
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    v3 <- peekByteOff p 6
    v4 <- peekByteOff p 8
    return $ C'hci_version v0 v1 v2 v3 v4
  poke p (C'hci_version v0 v1 v2 v3 v4) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    pokeByteOff p 6 v3
    pokeByteOff p 8 v4
    return ()

{-# LINE 42 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_open_dev" c'hci_open_dev
  :: CInt -> IO CInt
foreign import ccall "&hci_open_dev" p'hci_open_dev
  :: FunPtr (CInt -> IO CInt)

{-# LINE 43 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_close_dev" c'hci_close_dev
  :: CInt -> IO CInt
foreign import ccall "&hci_close_dev" p'hci_close_dev
  :: FunPtr (CInt -> IO CInt)

{-# LINE 44 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_send_cmd" c'hci_send_cmd
  :: CInt -> CUShort -> CUShort -> CUChar -> Ptr () -> IO CInt
foreign import ccall "&hci_send_cmd" p'hci_send_cmd
  :: FunPtr (CInt -> CUShort -> CUShort -> CUChar -> Ptr () -> IO CInt)

{-# LINE 45 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_send_req" c'hci_send_req
  :: CInt -> Ptr C'hci_request -> CInt -> IO CInt
foreign import ccall "&hci_send_req" p'hci_send_req
  :: FunPtr (CInt -> Ptr C'hci_request -> CInt -> IO CInt)

{-# LINE 46 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_create_connection" c'hci_create_connection
  :: CInt -> Ptr C'bdaddr_t -> CUShort -> CUShort -> CUChar -> Ptr CUShort -> CInt -> IO CInt
foreign import ccall "&hci_create_connection" p'hci_create_connection
  :: FunPtr (CInt -> Ptr C'bdaddr_t -> CUShort -> CUShort -> CUChar -> Ptr CUShort -> CInt -> IO CInt)

{-# LINE 47 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_disconnect" c'hci_disconnect
  :: CInt -> CUShort -> CUChar -> CInt -> IO CInt
foreign import ccall "&hci_disconnect" p'hci_disconnect
  :: FunPtr (CInt -> CUShort -> CUChar -> CInt -> IO CInt)

{-# LINE 48 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_inquiry" c'hci_inquiry
  :: CInt -> CInt -> CInt -> Ptr CUChar -> Ptr (Ptr C'inquiry_info) -> CLong -> IO CInt
foreign import ccall "&hci_inquiry" p'hci_inquiry
  :: FunPtr (CInt -> CInt -> CInt -> Ptr CUChar -> Ptr (Ptr C'inquiry_info) -> CLong -> IO CInt)

{-# LINE 49 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_devinfo" c'hci_devinfo
  :: CInt -> Ptr C'hci_dev_info -> IO CInt
foreign import ccall "&hci_devinfo" p'hci_devinfo
  :: FunPtr (CInt -> Ptr C'hci_dev_info -> IO CInt)

{-# LINE 50 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_devba" c'hci_devba
  :: CInt -> Ptr C'bdaddr_t -> IO CInt
foreign import ccall "&hci_devba" p'hci_devba
  :: FunPtr (CInt -> Ptr C'bdaddr_t -> IO CInt)

{-# LINE 51 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_devid" c'hci_devid
  :: CString -> IO CInt
foreign import ccall "&hci_devid" p'hci_devid
  :: FunPtr (CString -> IO CInt)

{-# LINE 52 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_local_name" c'hci_read_local_name
  :: CInt -> CInt -> CString -> CInt -> IO CInt
foreign import ccall "&hci_read_local_name" p'hci_read_local_name
  :: FunPtr (CInt -> CInt -> CString -> CInt -> IO CInt)

{-# LINE 53 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_write_local_name" c'hci_write_local_name
  :: CInt -> CString -> CInt -> IO CInt
foreign import ccall "&hci_write_local_name" p'hci_write_local_name
  :: FunPtr (CInt -> CString -> CInt -> IO CInt)

{-# LINE 54 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_remote_name" c'hci_read_remote_name
  :: CInt -> Ptr C'bdaddr_t -> CInt -> CString -> CInt -> IO CInt
foreign import ccall "&hci_read_remote_name" p'hci_read_remote_name
  :: FunPtr (CInt -> Ptr C'bdaddr_t -> CInt -> CString -> CInt -> IO CInt)

{-# LINE 55 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_remote_name_with_clock_offset" c'hci_read_remote_name_with_clock_offset
  :: CInt -> Ptr C'bdaddr_t -> CUChar -> CUShort -> CInt -> CString -> CInt -> IO CInt
foreign import ccall "&hci_read_remote_name_with_clock_offset" p'hci_read_remote_name_with_clock_offset
  :: FunPtr (CInt -> Ptr C'bdaddr_t -> CUChar -> CUShort -> CInt -> CString -> CInt -> IO CInt)

{-# LINE 56 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_remote_name_cancel" c'hci_read_remote_name_cancel
  :: CInt -> Ptr C'bdaddr_t -> CInt -> IO CInt
foreign import ccall "&hci_read_remote_name_cancel" p'hci_read_remote_name_cancel
  :: FunPtr (CInt -> Ptr C'bdaddr_t -> CInt -> IO CInt)

{-# LINE 57 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_remote_version" c'hci_read_remote_version
  :: CInt -> CUShort -> Ptr C'hci_version -> CInt -> IO CInt
foreign import ccall "&hci_read_remote_version" p'hci_read_remote_version
  :: FunPtr (CInt -> CUShort -> Ptr C'hci_version -> CInt -> IO CInt)

{-# LINE 58 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_remote_features" c'hci_read_remote_features
  :: CInt -> CUShort -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_read_remote_features" p'hci_read_remote_features
  :: FunPtr (CInt -> CUShort -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 59 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_remote_ext_features" c'hci_read_remote_ext_features
  :: CInt -> CUShort -> CUChar -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_read_remote_ext_features" p'hci_read_remote_ext_features
  :: FunPtr (CInt -> CUShort -> CUChar -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 60 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_clock_offset" c'hci_read_clock_offset
  :: CInt -> CUShort -> Ptr CUShort -> CInt -> IO CInt
foreign import ccall "&hci_read_clock_offset" p'hci_read_clock_offset
  :: FunPtr (CInt -> CUShort -> Ptr CUShort -> CInt -> IO CInt)

{-# LINE 61 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_local_version" c'hci_read_local_version
  :: CInt -> Ptr C'hci_version -> CInt -> IO CInt
foreign import ccall "&hci_read_local_version" p'hci_read_local_version
  :: FunPtr (CInt -> Ptr C'hci_version -> CInt -> IO CInt)

{-# LINE 62 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_local_commands" c'hci_read_local_commands
  :: CInt -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_read_local_commands" p'hci_read_local_commands
  :: FunPtr (CInt -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 63 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_local_features" c'hci_read_local_features
  :: CInt -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_read_local_features" p'hci_read_local_features
  :: FunPtr (CInt -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 64 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_local_ext_features" c'hci_read_local_ext_features
  :: CInt -> CUChar -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_read_local_ext_features" p'hci_read_local_ext_features
  :: FunPtr (CInt -> CUChar -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 65 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_bd_addr" c'hci_read_bd_addr
  :: CInt -> Ptr C'bdaddr_t -> CInt -> IO CInt
foreign import ccall "&hci_read_bd_addr" p'hci_read_bd_addr
  :: FunPtr (CInt -> Ptr C'bdaddr_t -> CInt -> IO CInt)

{-# LINE 66 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_class_of_dev" c'hci_read_class_of_dev
  :: CInt -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_read_class_of_dev" p'hci_read_class_of_dev
  :: FunPtr (CInt -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 67 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_write_class_of_dev" c'hci_write_class_of_dev
  :: CInt -> CUInt -> CInt -> IO CInt
foreign import ccall "&hci_write_class_of_dev" p'hci_write_class_of_dev
  :: FunPtr (CInt -> CUInt -> CInt -> IO CInt)

{-# LINE 68 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_voice_setting" c'hci_read_voice_setting
  :: CInt -> Ptr CUShort -> CInt -> IO CInt
foreign import ccall "&hci_read_voice_setting" p'hci_read_voice_setting
  :: FunPtr (CInt -> Ptr CUShort -> CInt -> IO CInt)

{-# LINE 69 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_write_voice_setting" c'hci_write_voice_setting
  :: CInt -> CUShort -> CInt -> IO CInt
foreign import ccall "&hci_write_voice_setting" p'hci_write_voice_setting
  :: FunPtr (CInt -> CUShort -> CInt -> IO CInt)

{-# LINE 70 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_current_iac_lap" c'hci_read_current_iac_lap
  :: CInt -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_read_current_iac_lap" p'hci_read_current_iac_lap
  :: FunPtr (CInt -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 71 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_write_current_iac_lap" c'hci_write_current_iac_lap
  :: CInt -> CUChar -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_write_current_iac_lap" p'hci_write_current_iac_lap
  :: FunPtr (CInt -> CUChar -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 72 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_stored_link_key" c'hci_read_stored_link_key
  :: CInt -> Ptr C'bdaddr_t -> CUChar -> CInt -> IO CInt
foreign import ccall "&hci_read_stored_link_key" p'hci_read_stored_link_key
  :: FunPtr (CInt -> Ptr C'bdaddr_t -> CUChar -> CInt -> IO CInt)

{-# LINE 73 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_write_stored_link_key" c'hci_write_stored_link_key
  :: CInt -> Ptr C'bdaddr_t -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_write_stored_link_key" p'hci_write_stored_link_key
  :: FunPtr (CInt -> Ptr C'bdaddr_t -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 74 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_delete_stored_link_key" c'hci_delete_stored_link_key
  :: CInt -> Ptr C'bdaddr_t -> CUChar -> CInt -> IO CInt
foreign import ccall "&hci_delete_stored_link_key" p'hci_delete_stored_link_key
  :: FunPtr (CInt -> Ptr C'bdaddr_t -> CUChar -> CInt -> IO CInt)

{-# LINE 75 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_authenticate_link" c'hci_authenticate_link
  :: CInt -> CUShort -> CInt -> IO CInt
foreign import ccall "&hci_authenticate_link" p'hci_authenticate_link
  :: FunPtr (CInt -> CUShort -> CInt -> IO CInt)

{-# LINE 76 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_encrypt_link" c'hci_encrypt_link
  :: CInt -> CUShort -> CUChar -> CInt -> IO CInt
foreign import ccall "&hci_encrypt_link" p'hci_encrypt_link
  :: FunPtr (CInt -> CUShort -> CUChar -> CInt -> IO CInt)

{-# LINE 77 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_change_link_key" c'hci_change_link_key
  :: CInt -> CUShort -> CInt -> IO CInt
foreign import ccall "&hci_change_link_key" p'hci_change_link_key
  :: FunPtr (CInt -> CUShort -> CInt -> IO CInt)

{-# LINE 78 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_switch_role" c'hci_switch_role
  :: CInt -> Ptr C'bdaddr_t -> CUChar -> CInt -> IO CInt
foreign import ccall "&hci_switch_role" p'hci_switch_role
  :: FunPtr (CInt -> Ptr C'bdaddr_t -> CUChar -> CInt -> IO CInt)

{-# LINE 79 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_park_mode" c'hci_park_mode
  :: CInt -> CUShort -> CUShort -> CUShort -> CInt -> IO CInt
foreign import ccall "&hci_park_mode" p'hci_park_mode
  :: FunPtr (CInt -> CUShort -> CUShort -> CUShort -> CInt -> IO CInt)

{-# LINE 80 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_exit_park_mode" c'hci_exit_park_mode
  :: CInt -> CUShort -> CInt -> IO CInt
foreign import ccall "&hci_exit_park_mode" p'hci_exit_park_mode
  :: FunPtr (CInt -> CUShort -> CInt -> IO CInt)

{-# LINE 81 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_inquiry_scan_type" c'hci_read_inquiry_scan_type
  :: CInt -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_read_inquiry_scan_type" p'hci_read_inquiry_scan_type
  :: FunPtr (CInt -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 82 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_write_inquiry_scan_type" c'hci_write_inquiry_scan_type
  :: CInt -> CUChar -> CInt -> IO CInt
foreign import ccall "&hci_write_inquiry_scan_type" p'hci_write_inquiry_scan_type
  :: FunPtr (CInt -> CUChar -> CInt -> IO CInt)

{-# LINE 83 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_inquiry_mode" c'hci_read_inquiry_mode
  :: CInt -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_read_inquiry_mode" p'hci_read_inquiry_mode
  :: FunPtr (CInt -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 84 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_write_inquiry_mode" c'hci_write_inquiry_mode
  :: CInt -> CUChar -> CInt -> IO CInt
foreign import ccall "&hci_write_inquiry_mode" p'hci_write_inquiry_mode
  :: FunPtr (CInt -> CUChar -> CInt -> IO CInt)

{-# LINE 85 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_afh_mode" c'hci_read_afh_mode
  :: CInt -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_read_afh_mode" p'hci_read_afh_mode
  :: FunPtr (CInt -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 86 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_write_afh_mode" c'hci_write_afh_mode
  :: CInt -> CUChar -> CInt -> IO CInt
foreign import ccall "&hci_write_afh_mode" p'hci_write_afh_mode
  :: FunPtr (CInt -> CUChar -> CInt -> IO CInt)

{-# LINE 87 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_ext_inquiry_response" c'hci_read_ext_inquiry_response
  :: CInt -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_read_ext_inquiry_response" p'hci_read_ext_inquiry_response
  :: FunPtr (CInt -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 88 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_write_ext_inquiry_response" c'hci_write_ext_inquiry_response
  :: CInt -> CUChar -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_write_ext_inquiry_response" p'hci_write_ext_inquiry_response
  :: FunPtr (CInt -> CUChar -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 89 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_simple_pairing_mode" c'hci_read_simple_pairing_mode
  :: CInt -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_read_simple_pairing_mode" p'hci_read_simple_pairing_mode
  :: FunPtr (CInt -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 90 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_write_simple_pairing_mode" c'hci_write_simple_pairing_mode
  :: CInt -> CUChar -> CInt -> IO CInt
foreign import ccall "&hci_write_simple_pairing_mode" p'hci_write_simple_pairing_mode
  :: FunPtr (CInt -> CUChar -> CInt -> IO CInt)

{-# LINE 91 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_local_oob_data" c'hci_read_local_oob_data
  :: CInt -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_read_local_oob_data" p'hci_read_local_oob_data
  :: FunPtr (CInt -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 92 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_inq_response_tx_power_level" c'hci_read_inq_response_tx_power_level
  :: CInt -> Ptr CSChar -> CInt -> IO CInt
foreign import ccall "&hci_read_inq_response_tx_power_level" p'hci_read_inq_response_tx_power_level
  :: FunPtr (CInt -> Ptr CSChar -> CInt -> IO CInt)

{-# LINE 93 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_inquiry_transmit_power_level" c'hci_read_inquiry_transmit_power_level
  :: CInt -> Ptr CSChar -> CInt -> IO CInt
foreign import ccall "&hci_read_inquiry_transmit_power_level" p'hci_read_inquiry_transmit_power_level
  :: FunPtr (CInt -> Ptr CSChar -> CInt -> IO CInt)

{-# LINE 94 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_write_inquiry_transmit_power_level" c'hci_write_inquiry_transmit_power_level
  :: CInt -> CSChar -> CInt -> IO CInt
foreign import ccall "&hci_write_inquiry_transmit_power_level" p'hci_write_inquiry_transmit_power_level
  :: FunPtr (CInt -> CSChar -> CInt -> IO CInt)

{-# LINE 95 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_transmit_power_level" c'hci_read_transmit_power_level
  :: CInt -> CUShort -> CUChar -> Ptr CSChar -> CInt -> IO CInt
foreign import ccall "&hci_read_transmit_power_level" p'hci_read_transmit_power_level
  :: FunPtr (CInt -> CUShort -> CUChar -> Ptr CSChar -> CInt -> IO CInt)

{-# LINE 96 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_link_policy" c'hci_read_link_policy
  :: CInt -> CUShort -> Ptr CUShort -> CInt -> IO CInt
foreign import ccall "&hci_read_link_policy" p'hci_read_link_policy
  :: FunPtr (CInt -> CUShort -> Ptr CUShort -> CInt -> IO CInt)

{-# LINE 97 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_write_link_policy" c'hci_write_link_policy
  :: CInt -> CUShort -> CUShort -> CInt -> IO CInt
foreign import ccall "&hci_write_link_policy" p'hci_write_link_policy
  :: FunPtr (CInt -> CUShort -> CUShort -> CInt -> IO CInt)

{-# LINE 98 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_link_supervision_timeout" c'hci_read_link_supervision_timeout
  :: CInt -> CUShort -> Ptr CUShort -> CInt -> IO CInt
foreign import ccall "&hci_read_link_supervision_timeout" p'hci_read_link_supervision_timeout
  :: FunPtr (CInt -> CUShort -> Ptr CUShort -> CInt -> IO CInt)

{-# LINE 99 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_write_link_supervision_timeout" c'hci_write_link_supervision_timeout
  :: CInt -> CUShort -> CUShort -> CInt -> IO CInt
foreign import ccall "&hci_write_link_supervision_timeout" p'hci_write_link_supervision_timeout
  :: FunPtr (CInt -> CUShort -> CUShort -> CInt -> IO CInt)

{-# LINE 100 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_set_afh_classification" c'hci_set_afh_classification
  :: CInt -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_set_afh_classification" p'hci_set_afh_classification
  :: FunPtr (CInt -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 101 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_link_quality" c'hci_read_link_quality
  :: CInt -> CUShort -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_read_link_quality" p'hci_read_link_quality
  :: FunPtr (CInt -> CUShort -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 102 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_rssi" c'hci_read_rssi
  :: CInt -> CUShort -> Ptr CSChar -> CInt -> IO CInt
foreign import ccall "&hci_read_rssi" p'hci_read_rssi
  :: FunPtr (CInt -> CUShort -> Ptr CSChar -> CInt -> IO CInt)

{-# LINE 103 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_afh_map" c'hci_read_afh_map
  :: CInt -> CUShort -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_read_afh_map" p'hci_read_afh_map
  :: FunPtr (CInt -> CUShort -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 104 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_read_clock" c'hci_read_clock
  :: CInt -> CUShort -> CUChar -> Ptr CUInt -> Ptr CUShort -> CInt -> IO CInt
foreign import ccall "&hci_read_clock" p'hci_read_clock
  :: FunPtr (CInt -> CUShort -> CUChar -> Ptr CUInt -> Ptr CUShort -> CInt -> IO CInt)

{-# LINE 105 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_le_set_scan_enable" c'hci_le_set_scan_enable
  :: CInt -> CUChar -> CUChar -> CInt -> IO CInt
foreign import ccall "&hci_le_set_scan_enable" p'hci_le_set_scan_enable
  :: FunPtr (CInt -> CUChar -> CUChar -> CInt -> IO CInt)

{-# LINE 106 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_le_set_scan_parameters" c'hci_le_set_scan_parameters
  :: CInt -> CUChar -> CUShort -> CUShort -> CUChar -> CUChar -> CInt -> IO CInt
foreign import ccall "&hci_le_set_scan_parameters" p'hci_le_set_scan_parameters
  :: FunPtr (CInt -> CUChar -> CUShort -> CUShort -> CUChar -> CUChar -> CInt -> IO CInt)

{-# LINE 107 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_le_set_advertise_enable" c'hci_le_set_advertise_enable
  :: CInt -> CUChar -> CInt -> IO CInt
foreign import ccall "&hci_le_set_advertise_enable" p'hci_le_set_advertise_enable
  :: FunPtr (CInt -> CUChar -> CInt -> IO CInt)

{-# LINE 108 "src/Bluetooth/Raw/HciLib.hsc" #-}
{- #ccall hci_le_create_conn , CInt -> CUShort -> CUShort -> CUChar -> CUChar -> <bdaddr_t> -> CUChar -> CUShort -> CUShort -> CUShort -> CUShort -> CUShort -> CUShort -> Ptr CUShort -> CInt -> IO CInt -}
foreign import ccall "hci_le_conn_update" c'hci_le_conn_update
  :: CInt -> CUShort -> CUShort -> CUShort -> CUShort -> CUShort -> CInt -> IO CInt
foreign import ccall "&hci_le_conn_update" p'hci_le_conn_update
  :: FunPtr (CInt -> CUShort -> CUShort -> CUShort -> CUShort -> CUShort -> CInt -> IO CInt)

{-# LINE 110 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_le_add_white_list" c'hci_le_add_white_list
  :: CInt -> Ptr C'bdaddr_t -> CUChar -> CInt -> IO CInt
foreign import ccall "&hci_le_add_white_list" p'hci_le_add_white_list
  :: FunPtr (CInt -> Ptr C'bdaddr_t -> CUChar -> CInt -> IO CInt)

{-# LINE 111 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_le_rm_white_list" c'hci_le_rm_white_list
  :: CInt -> Ptr C'bdaddr_t -> CUChar -> CInt -> IO CInt
foreign import ccall "&hci_le_rm_white_list" p'hci_le_rm_white_list
  :: FunPtr (CInt -> Ptr C'bdaddr_t -> CUChar -> CInt -> IO CInt)

{-# LINE 112 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_le_read_white_list_size" c'hci_le_read_white_list_size
  :: CInt -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_le_read_white_list_size" p'hci_le_read_white_list_size
  :: FunPtr (CInt -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 113 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_le_clear_white_list" c'hci_le_clear_white_list
  :: CInt -> CInt -> IO CInt
foreign import ccall "&hci_le_clear_white_list" p'hci_le_clear_white_list
  :: FunPtr (CInt -> CInt -> IO CInt)

{-# LINE 114 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_le_add_resolving_list" c'hci_le_add_resolving_list
  :: CInt -> Ptr C'bdaddr_t -> CUChar -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_le_add_resolving_list" p'hci_le_add_resolving_list
  :: FunPtr (CInt -> Ptr C'bdaddr_t -> CUChar -> Ptr CUChar -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 115 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_le_rm_resolving_list" c'hci_le_rm_resolving_list
  :: CInt -> Ptr C'bdaddr_t -> CUChar -> CInt -> IO CInt
foreign import ccall "&hci_le_rm_resolving_list" p'hci_le_rm_resolving_list
  :: FunPtr (CInt -> Ptr C'bdaddr_t -> CUChar -> CInt -> IO CInt)

{-# LINE 116 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_le_clear_resolving_list" c'hci_le_clear_resolving_list
  :: CInt -> CInt -> IO CInt
foreign import ccall "&hci_le_clear_resolving_list" p'hci_le_clear_resolving_list
  :: FunPtr (CInt -> CInt -> IO CInt)

{-# LINE 117 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_le_read_resolving_list_size" c'hci_le_read_resolving_list_size
  :: CInt -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_le_read_resolving_list_size" p'hci_le_read_resolving_list_size
  :: FunPtr (CInt -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 118 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_le_set_address_resolution_enable" c'hci_le_set_address_resolution_enable
  :: CInt -> CUChar -> CInt -> IO CInt
foreign import ccall "&hci_le_set_address_resolution_enable" p'hci_le_set_address_resolution_enable
  :: FunPtr (CInt -> CUChar -> CInt -> IO CInt)

{-# LINE 119 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_le_read_remote_features" c'hci_le_read_remote_features
  :: CInt -> CUShort -> Ptr CUChar -> CInt -> IO CInt
foreign import ccall "&hci_le_read_remote_features" p'hci_le_read_remote_features
  :: FunPtr (CInt -> CUShort -> Ptr CUChar -> CInt -> IO CInt)

{-# LINE 120 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_for_each_dev" c'hci_for_each_dev
  :: CInt -> FunPtr (CInt -> CInt -> CLong -> CInt) -> CLong -> IO CInt
foreign import ccall "&hci_for_each_dev" p'hci_for_each_dev
  :: FunPtr (CInt -> FunPtr (CInt -> CInt -> CLong -> CInt) -> CLong -> IO CInt)

{-# LINE 121 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_get_route" c'hci_get_route
  :: Ptr C'bdaddr_t -> IO CInt
foreign import ccall "&hci_get_route" p'hci_get_route
  :: FunPtr (Ptr C'bdaddr_t -> IO CInt)

{-# LINE 122 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_bustostr" c'hci_bustostr
  :: CInt -> IO CString
foreign import ccall "&hci_bustostr" p'hci_bustostr
  :: FunPtr (CInt -> IO CString)

{-# LINE 123 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_typetostr" c'hci_typetostr
  :: CInt -> IO CString
foreign import ccall "&hci_typetostr" p'hci_typetostr
  :: FunPtr (CInt -> IO CString)

{-# LINE 124 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_dtypetostr" c'hci_dtypetostr
  :: CInt -> IO CString
foreign import ccall "&hci_dtypetostr" p'hci_dtypetostr
  :: FunPtr (CInt -> IO CString)

{-# LINE 125 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_dflagstostr" c'hci_dflagstostr
  :: CUInt -> IO CString
foreign import ccall "&hci_dflagstostr" p'hci_dflagstostr
  :: FunPtr (CUInt -> IO CString)

{-# LINE 126 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_ptypetostr" c'hci_ptypetostr
  :: CUInt -> IO CString
foreign import ccall "&hci_ptypetostr" p'hci_ptypetostr
  :: FunPtr (CUInt -> IO CString)

{-# LINE 127 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_strtoptype" c'hci_strtoptype
  :: CString -> Ptr CUInt -> IO CInt
foreign import ccall "&hci_strtoptype" p'hci_strtoptype
  :: FunPtr (CString -> Ptr CUInt -> IO CInt)

{-# LINE 128 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_scoptypetostr" c'hci_scoptypetostr
  :: CUInt -> IO CString
foreign import ccall "&hci_scoptypetostr" p'hci_scoptypetostr
  :: FunPtr (CUInt -> IO CString)

{-# LINE 129 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_strtoscoptype" c'hci_strtoscoptype
  :: CString -> Ptr CUInt -> IO CInt
foreign import ccall "&hci_strtoscoptype" p'hci_strtoscoptype
  :: FunPtr (CString -> Ptr CUInt -> IO CInt)

{-# LINE 130 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_lptostr" c'hci_lptostr
  :: CUInt -> IO CString
foreign import ccall "&hci_lptostr" p'hci_lptostr
  :: FunPtr (CUInt -> IO CString)

{-# LINE 131 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_strtolp" c'hci_strtolp
  :: CString -> Ptr CUInt -> IO CInt
foreign import ccall "&hci_strtolp" p'hci_strtolp
  :: FunPtr (CString -> Ptr CUInt -> IO CInt)

{-# LINE 132 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_lmtostr" c'hci_lmtostr
  :: CUInt -> IO CString
foreign import ccall "&hci_lmtostr" p'hci_lmtostr
  :: FunPtr (CUInt -> IO CString)

{-# LINE 133 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_strtolm" c'hci_strtolm
  :: CString -> Ptr CUInt -> IO CInt
foreign import ccall "&hci_strtolm" p'hci_strtolm
  :: FunPtr (CString -> Ptr CUInt -> IO CInt)

{-# LINE 134 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_cmdtostr" c'hci_cmdtostr
  :: CUInt -> IO CString
foreign import ccall "&hci_cmdtostr" p'hci_cmdtostr
  :: FunPtr (CUInt -> IO CString)

{-# LINE 135 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_commandstostr" c'hci_commandstostr
  :: Ptr CUChar -> CString -> CInt -> IO CString
foreign import ccall "&hci_commandstostr" p'hci_commandstostr
  :: FunPtr (Ptr CUChar -> CString -> CInt -> IO CString)

{-# LINE 136 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_vertostr" c'hci_vertostr
  :: CUInt -> IO CString
foreign import ccall "&hci_vertostr" p'hci_vertostr
  :: FunPtr (CUInt -> IO CString)

{-# LINE 137 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "hci_strtover" c'hci_strtover
  :: CString -> Ptr CUInt -> IO CInt
foreign import ccall "&hci_strtover" p'hci_strtover
  :: FunPtr (CString -> Ptr CUInt -> IO CInt)

{-# LINE 138 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "lmp_vertostr" c'lmp_vertostr
  :: CUInt -> IO CString
foreign import ccall "&lmp_vertostr" p'lmp_vertostr
  :: FunPtr (CUInt -> IO CString)

{-# LINE 139 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "lmp_strtover" c'lmp_strtover
  :: CString -> Ptr CUInt -> IO CInt
foreign import ccall "&lmp_strtover" p'lmp_strtover
  :: FunPtr (CString -> Ptr CUInt -> IO CInt)

{-# LINE 140 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "pal_vertostr" c'pal_vertostr
  :: CUInt -> IO CString
foreign import ccall "&pal_vertostr" p'pal_vertostr
  :: FunPtr (CUInt -> IO CString)

{-# LINE 141 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "pal_strtover" c'pal_strtover
  :: CString -> Ptr CUInt -> IO CInt
foreign import ccall "&pal_strtover" p'pal_strtover
  :: FunPtr (CString -> Ptr CUInt -> IO CInt)

{-# LINE 142 "src/Bluetooth/Raw/HciLib.hsc" #-}
foreign import ccall "lmp_featurestostr" c'lmp_featurestostr
  :: Ptr CUChar -> CString -> CInt -> IO CString
foreign import ccall "&lmp_featurestostr" p'lmp_featurestostr
  :: FunPtr (Ptr CUChar -> CString -> CInt -> IO CString)

{-# LINE 143 "src/Bluetooth/Raw/HciLib.hsc" #-}
{- #cinline hci_set_bit , CInt -> Ptr () -> IO () -}
{- #cinline hci_clear_bit , CInt -> Ptr () -> IO () -}
{- #cinline hci_test_bit , CInt -> Ptr () -> IO CInt -}
{- #cinline hci_filter_clear , Ptr <struct hci_filter> -> IO () -}
{- #cinline hci_filter_set_ptype , CInt -> Ptr <struct hci_filter> -> IO () -}
{- #cinline hci_filter_clear_ptype , CInt -> Ptr <struct hci_filter> -> IO () -}
{- #cinline hci_filter_test_ptype , CInt -> Ptr <struct hci_filter> -> IO CInt -}
{- #cinline hci_filter_all_ptypes , Ptr <struct hci_filter> -> IO () -}
{- #cinline hci_filter_set_event , CInt -> Ptr <struct hci_filter> -> IO () -}
{- #cinline hci_filter_clear_event , CInt -> Ptr <struct hci_filter> -> IO () -}
{- #cinline hci_filter_test_event , CInt -> Ptr <struct hci_filter> -> IO CInt -}
{- #cinline hci_filter_all_events , Ptr <struct hci_filter> -> IO () -}
{- #cinline hci_filter_set_opcode , CInt -> Ptr <struct hci_filter> -> IO () -}
{- #cinline hci_filter_clear_opcode , Ptr <struct hci_filter> -> IO () -}
{- #cinline hci_filter_test_opcode , CInt -> Ptr <struct hci_filter> -> IO CInt -}
