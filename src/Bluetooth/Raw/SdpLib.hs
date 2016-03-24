{-# LINE 1 "src/Bluetooth/Raw/SdpLib.hsc" #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# LINE 2 "src/Bluetooth/Raw/SdpLib.hsc" #-}

{-# LINE 3 "src/Bluetooth/Raw/SdpLib.hsc" #-}

{-# LINE 4 "src/Bluetooth/Raw/SdpLib.hsc" #-}
module Bluetooth.Raw.SdpLib where
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

{-# LINE 7 "src/Bluetooth/Raw/SdpLib.hsc" #-}

import Bluetooth.Raw.Sdp
import Bluetooth.Raw.Bluetooth
import Bluetooth.Raw.Hci
type C'sdp_list_func_t = FunPtr (Ptr () -> Ptr () -> IO ())
foreign import ccall "wrapper" mk'sdp_list_func_t
  :: (Ptr () -> Ptr () -> IO ()) -> IO C'sdp_list_func_t
foreign import ccall "dynamic" mK'sdp_list_func_t
  :: C'sdp_list_func_t -> (Ptr () -> Ptr () -> IO ())

{-# LINE 12 "src/Bluetooth/Raw/SdpLib.hsc" #-}
type C'sdp_free_func_t = FunPtr (Ptr () -> IO ())
foreign import ccall "wrapper" mk'sdp_free_func_t
  :: (Ptr () -> IO ()) -> IO C'sdp_free_func_t
foreign import ccall "dynamic" mK'sdp_free_func_t
  :: C'sdp_free_func_t -> (Ptr () -> IO ())

{-# LINE 13 "src/Bluetooth/Raw/SdpLib.hsc" #-}
type C'sdp_comp_func_t = FunPtr (Ptr () -> Ptr () -> IO CInt)
foreign import ccall "wrapper" mk'sdp_comp_func_t
  :: (Ptr () -> Ptr () -> IO CInt) -> IO C'sdp_comp_func_t
foreign import ccall "dynamic" mK'sdp_comp_func_t
  :: C'sdp_comp_func_t -> (Ptr () -> Ptr () -> IO CInt)

{-# LINE 14 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_list_append" c'sdp_list_append
  :: Ptr C'_sdp_list -> Ptr () -> IO (Ptr C'_sdp_list)
foreign import ccall "&sdp_list_append" p'sdp_list_append
  :: FunPtr (Ptr C'_sdp_list -> Ptr () -> IO (Ptr C'_sdp_list))

{-# LINE 15 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_list_remove" c'sdp_list_remove
  :: Ptr C'_sdp_list -> Ptr () -> IO (Ptr C'_sdp_list)
foreign import ccall "&sdp_list_remove" p'sdp_list_remove
  :: FunPtr (Ptr C'_sdp_list -> Ptr () -> IO (Ptr C'_sdp_list))

{-# LINE 16 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_list_insert_sorted" c'sdp_list_insert_sorted
  :: Ptr C'_sdp_list -> Ptr () -> C'sdp_comp_func_t -> IO (Ptr C'_sdp_list)
foreign import ccall "&sdp_list_insert_sorted" p'sdp_list_insert_sorted
  :: FunPtr (Ptr C'_sdp_list -> Ptr () -> C'sdp_comp_func_t -> IO (Ptr C'_sdp_list))

{-# LINE 17 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_list_free" c'sdp_list_free
  :: Ptr C'_sdp_list -> C'sdp_free_func_t -> IO ()
foreign import ccall "&sdp_list_free" p'sdp_list_free
  :: FunPtr (Ptr C'_sdp_list -> C'sdp_free_func_t -> IO ())

{-# LINE 18 "src/Bluetooth/Raw/SdpLib.hsc" #-}
{- #cinline sdp_list_len , Ptr <struct _sdp_list> -> IO CInt -}
{- #cinline sdp_list_find , Ptr <struct _sdp_list> -> Ptr () -> <sdp_comp_func_t> -> IO (Ptr <struct _sdp_list>) -}
{- #cinline sdp_list_foreach , Ptr <struct _sdp_list> -> <sdp_list_func_t> -> Ptr () -> IO () -}
{- typedef struct {
            int sock;
            int state;
            int local;
            int flags;
            uint16_t tid;
            void * priv;
        } sdp_session_t; -}

{-# LINE 30 "src/Bluetooth/Raw/SdpLib.hsc" #-}

{-# LINE 31 "src/Bluetooth/Raw/SdpLib.hsc" #-}

{-# LINE 32 "src/Bluetooth/Raw/SdpLib.hsc" #-}

{-# LINE 33 "src/Bluetooth/Raw/SdpLib.hsc" #-}

{-# LINE 34 "src/Bluetooth/Raw/SdpLib.hsc" #-}

{-# LINE 35 "src/Bluetooth/Raw/SdpLib.hsc" #-}

{-# LINE 36 "src/Bluetooth/Raw/SdpLib.hsc" #-}
data C'sdp_session_t = C'sdp_session_t{
  c'sdp_session_t'sock :: CInt,
  c'sdp_session_t'state :: CInt,
  c'sdp_session_t'local :: CInt,
  c'sdp_session_t'flags :: CInt,
  c'sdp_session_t'tid :: CUShort,
  c'sdp_session_t'priv :: Ptr ()
} deriving (Eq,Show)
p'sdp_session_t'sock p = plusPtr p 0
p'sdp_session_t'sock :: Ptr (C'sdp_session_t) -> Ptr (CInt)
p'sdp_session_t'state p = plusPtr p 4
p'sdp_session_t'state :: Ptr (C'sdp_session_t) -> Ptr (CInt)
p'sdp_session_t'local p = plusPtr p 8
p'sdp_session_t'local :: Ptr (C'sdp_session_t) -> Ptr (CInt)
p'sdp_session_t'flags p = plusPtr p 12
p'sdp_session_t'flags :: Ptr (C'sdp_session_t) -> Ptr (CInt)
p'sdp_session_t'tid p = plusPtr p 16
p'sdp_session_t'tid :: Ptr (C'sdp_session_t) -> Ptr (CUShort)
p'sdp_session_t'priv p = plusPtr p 24
p'sdp_session_t'priv :: Ptr (C'sdp_session_t) -> Ptr (Ptr ())
instance Storable C'sdp_session_t where
  sizeOf _ = 32
  alignment _ = 8
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 4
    v2 <- peekByteOff p 8
    v3 <- peekByteOff p 12
    v4 <- peekByteOff p 16
    v5 <- peekByteOff p 24
    return $ C'sdp_session_t v0 v1 v2 v3 v4 v5
  poke p (C'sdp_session_t v0 v1 v2 v3 v4 v5) = do
    pokeByteOff p 0 v0
    pokeByteOff p 4 v1
    pokeByteOff p 8 v2
    pokeByteOff p 12 v3
    pokeByteOff p 16 v4
    pokeByteOff p 24 v5
    return ()

{-# LINE 37 "src/Bluetooth/Raw/SdpLib.hsc" #-}
{- typedef enum {
            SDP_ATTR_REQ_INDIVIDUAL = 1, SDP_ATTR_REQ_RANGE
        } sdp_attrreq_type_t; -}
type C'sdp_attrreq_type_t = CUInt

{-# LINE 41 "src/Bluetooth/Raw/SdpLib.hsc" #-}
c'SDP_ATTR_REQ_INDIVIDUAL = 1
c'SDP_ATTR_REQ_INDIVIDUAL :: (Num a) => a

{-# LINE 42 "src/Bluetooth/Raw/SdpLib.hsc" #-}
c'SDP_ATTR_REQ_RANGE = 2
c'SDP_ATTR_REQ_RANGE :: (Num a) => a

{-# LINE 43 "src/Bluetooth/Raw/SdpLib.hsc" #-}
type C'sdp_callback_t = FunPtr (CUChar -> CUShort -> Ptr CUChar -> CSize -> Ptr () -> IO ())
foreign import ccall "wrapper" mk'sdp_callback_t
  :: (CUChar -> CUShort -> Ptr CUChar -> CSize -> Ptr () -> IO ()) -> IO C'sdp_callback_t
foreign import ccall "dynamic" mK'sdp_callback_t
  :: C'sdp_callback_t -> (CUChar -> CUShort -> Ptr CUChar -> CSize -> Ptr () -> IO ())

{-# LINE 44 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_connect" c'sdp_connect
  :: Ptr C'bdaddr_t -> Ptr C'bdaddr_t -> CUInt -> IO (Ptr C'sdp_session_t)
foreign import ccall "&sdp_connect" p'sdp_connect
  :: FunPtr (Ptr C'bdaddr_t -> Ptr C'bdaddr_t -> CUInt -> IO (Ptr C'sdp_session_t))

{-# LINE 45 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_close" c'sdp_close
  :: Ptr C'sdp_session_t -> IO CInt
foreign import ccall "&sdp_close" p'sdp_close
  :: FunPtr (Ptr C'sdp_session_t -> IO CInt)

{-# LINE 46 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_get_socket" c'sdp_get_socket
  :: Ptr C'sdp_session_t -> IO CInt
foreign import ccall "&sdp_get_socket" p'sdp_get_socket
  :: FunPtr (Ptr C'sdp_session_t -> IO CInt)

{-# LINE 47 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_create" c'sdp_create
  :: CInt -> CUInt -> IO (Ptr C'sdp_session_t)
foreign import ccall "&sdp_create" p'sdp_create
  :: FunPtr (CInt -> CUInt -> IO (Ptr C'sdp_session_t))

{-# LINE 48 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_get_error" c'sdp_get_error
  :: Ptr C'sdp_session_t -> IO CInt
foreign import ccall "&sdp_get_error" p'sdp_get_error
  :: FunPtr (Ptr C'sdp_session_t -> IO CInt)

{-# LINE 49 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_process" c'sdp_process
  :: Ptr C'sdp_session_t -> IO CInt
foreign import ccall "&sdp_process" p'sdp_process
  :: FunPtr (Ptr C'sdp_session_t -> IO CInt)

{-# LINE 50 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_set_notify" c'sdp_set_notify
  :: Ptr C'sdp_session_t -> Ptr C'sdp_callback_t -> Ptr () -> IO CInt
foreign import ccall "&sdp_set_notify" p'sdp_set_notify
  :: FunPtr (Ptr C'sdp_session_t -> Ptr C'sdp_callback_t -> Ptr () -> IO CInt)

{-# LINE 51 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_service_search_async" c'sdp_service_search_async
  :: Ptr C'sdp_session_t -> Ptr C'_sdp_list -> CUShort -> IO CInt
foreign import ccall "&sdp_service_search_async" p'sdp_service_search_async
  :: FunPtr (Ptr C'sdp_session_t -> Ptr C'_sdp_list -> CUShort -> IO CInt)

{-# LINE 52 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_service_attr_async" c'sdp_service_attr_async
  :: Ptr C'sdp_session_t -> CUInt -> C'sdp_attrreq_type_t -> Ptr C'_sdp_list -> IO CInt
foreign import ccall "&sdp_service_attr_async" p'sdp_service_attr_async
  :: FunPtr (Ptr C'sdp_session_t -> CUInt -> C'sdp_attrreq_type_t -> Ptr C'_sdp_list -> IO CInt)

{-# LINE 53 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_service_search_attr_async" c'sdp_service_search_attr_async
  :: Ptr C'sdp_session_t -> Ptr C'_sdp_list -> C'sdp_attrreq_type_t -> Ptr C'_sdp_list -> IO CInt
foreign import ccall "&sdp_service_search_attr_async" p'sdp_service_search_attr_async
  :: FunPtr (Ptr C'sdp_session_t -> Ptr C'_sdp_list -> C'sdp_attrreq_type_t -> Ptr C'_sdp_list -> IO CInt)

{-# LINE 54 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_gen_tid" c'sdp_gen_tid
  :: Ptr C'sdp_session_t -> IO CUShort
foreign import ccall "&sdp_gen_tid" p'sdp_gen_tid
  :: FunPtr (Ptr C'sdp_session_t -> IO CUShort)

{-# LINE 55 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_general_inquiry" c'sdp_general_inquiry
  :: Ptr C'inquiry_info -> CInt -> CInt -> Ptr CUChar -> IO CInt
foreign import ccall "&sdp_general_inquiry" p'sdp_general_inquiry
  :: FunPtr (Ptr C'inquiry_info -> CInt -> CInt -> Ptr CUChar -> IO CInt)

{-# LINE 56 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_get_int_attr" c'sdp_get_int_attr
  :: Ptr C'sdp_record_t -> CUShort -> Ptr CInt -> IO CInt
foreign import ccall "&sdp_get_int_attr" p'sdp_get_int_attr
  :: FunPtr (Ptr C'sdp_record_t -> CUShort -> Ptr CInt -> IO CInt)

{-# LINE 57 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_get_string_attr" c'sdp_get_string_attr
  :: Ptr C'sdp_record_t -> CUShort -> CString -> CInt -> IO CInt
foreign import ccall "&sdp_get_string_attr" p'sdp_get_string_attr
  :: FunPtr (Ptr C'sdp_record_t -> CUShort -> CString -> CInt -> IO CInt)

{-# LINE 58 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_data_alloc" c'sdp_data_alloc
  :: CUChar -> Ptr () -> IO (Ptr C'sdp_data_struct)
foreign import ccall "&sdp_data_alloc" p'sdp_data_alloc
  :: FunPtr (CUChar -> Ptr () -> IO (Ptr C'sdp_data_struct))

{-# LINE 59 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_data_alloc_with_length" c'sdp_data_alloc_with_length
  :: CUChar -> Ptr () -> CUInt -> IO (Ptr C'sdp_data_struct)
foreign import ccall "&sdp_data_alloc_with_length" p'sdp_data_alloc_with_length
  :: FunPtr (CUChar -> Ptr () -> CUInt -> IO (Ptr C'sdp_data_struct))

{-# LINE 60 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_data_free" c'sdp_data_free
  :: Ptr C'sdp_data_struct -> IO ()
foreign import ccall "&sdp_data_free" p'sdp_data_free
  :: FunPtr (Ptr C'sdp_data_struct -> IO ())

{-# LINE 61 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_data_get" c'sdp_data_get
  :: Ptr C'sdp_record_t -> CUShort -> IO (Ptr C'sdp_data_struct)
foreign import ccall "&sdp_data_get" p'sdp_data_get
  :: FunPtr (Ptr C'sdp_record_t -> CUShort -> IO (Ptr C'sdp_data_struct))

{-# LINE 62 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_seq_alloc" c'sdp_seq_alloc
  :: Ptr (Ptr ()) -> Ptr (Ptr ()) -> CInt -> IO (Ptr C'sdp_data_struct)
foreign import ccall "&sdp_seq_alloc" p'sdp_seq_alloc
  :: FunPtr (Ptr (Ptr ()) -> Ptr (Ptr ()) -> CInt -> IO (Ptr C'sdp_data_struct))

{-# LINE 63 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_seq_alloc_with_length" c'sdp_seq_alloc_with_length
  :: Ptr (Ptr ()) -> Ptr (Ptr ()) -> Ptr CInt -> CInt -> IO (Ptr C'sdp_data_struct)
foreign import ccall "&sdp_seq_alloc_with_length" p'sdp_seq_alloc_with_length
  :: FunPtr (Ptr (Ptr ()) -> Ptr (Ptr ()) -> Ptr CInt -> CInt -> IO (Ptr C'sdp_data_struct))

{-# LINE 64 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_seq_append" c'sdp_seq_append
  :: Ptr C'sdp_data_struct -> Ptr C'sdp_data_struct -> IO (Ptr C'sdp_data_struct)
foreign import ccall "&sdp_seq_append" p'sdp_seq_append
  :: FunPtr (Ptr C'sdp_data_struct -> Ptr C'sdp_data_struct -> IO (Ptr C'sdp_data_struct))

{-# LINE 65 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_attr_add" c'sdp_attr_add
  :: Ptr C'sdp_record_t -> CUShort -> Ptr C'sdp_data_struct -> IO CInt
foreign import ccall "&sdp_attr_add" p'sdp_attr_add
  :: FunPtr (Ptr C'sdp_record_t -> CUShort -> Ptr C'sdp_data_struct -> IO CInt)

{-# LINE 66 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_attr_remove" c'sdp_attr_remove
  :: Ptr C'sdp_record_t -> CUShort -> IO ()
foreign import ccall "&sdp_attr_remove" p'sdp_attr_remove
  :: FunPtr (Ptr C'sdp_record_t -> CUShort -> IO ())

{-# LINE 67 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_attr_replace" c'sdp_attr_replace
  :: Ptr C'sdp_record_t -> CUShort -> Ptr C'sdp_data_struct -> IO ()
foreign import ccall "&sdp_attr_replace" p'sdp_attr_replace
  :: FunPtr (Ptr C'sdp_record_t -> CUShort -> Ptr C'sdp_data_struct -> IO ())

{-# LINE 68 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_set_uuidseq_attr" c'sdp_set_uuidseq_attr
  :: Ptr C'sdp_record_t -> CUShort -> Ptr C'_sdp_list -> IO CInt
foreign import ccall "&sdp_set_uuidseq_attr" p'sdp_set_uuidseq_attr
  :: FunPtr (Ptr C'sdp_record_t -> CUShort -> Ptr C'_sdp_list -> IO CInt)

{-# LINE 69 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_get_uuidseq_attr" c'sdp_get_uuidseq_attr
  :: Ptr C'sdp_record_t -> CUShort -> Ptr (Ptr C'_sdp_list) -> IO CInt
foreign import ccall "&sdp_get_uuidseq_attr" p'sdp_get_uuidseq_attr
  :: FunPtr (Ptr C'sdp_record_t -> CUShort -> Ptr (Ptr C'_sdp_list) -> IO CInt)

{-# LINE 70 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_attr_add_new" c'sdp_attr_add_new
  :: Ptr C'sdp_record_t -> CUShort -> CUChar -> Ptr () -> IO CInt
foreign import ccall "&sdp_attr_add_new" p'sdp_attr_add_new
  :: FunPtr (Ptr C'sdp_record_t -> CUShort -> CUChar -> Ptr () -> IO CInt)

{-# LINE 71 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_set_info_attr" c'sdp_set_info_attr
  :: Ptr C'sdp_record_t -> CString -> CString -> CString -> IO ()
foreign import ccall "&sdp_set_info_attr" p'sdp_set_info_attr
  :: FunPtr (Ptr C'sdp_record_t -> CString -> CString -> CString -> IO ())

{-# LINE 72 "src/Bluetooth/Raw/SdpLib.hsc" #-}
{- #cinline sdp_set_service_classes , Ptr <sdp_record_t> -> Ptr <struct _sdp_list> -> IO CInt -}
{- #cinline sdp_get_service_classes , Ptr <sdp_record_t> -> Ptr (Ptr <struct _sdp_list>) -> IO CInt -}
{- #cinline sdp_set_browse_groups , Ptr <sdp_record_t> -> Ptr <struct _sdp_list> -> IO CInt -}
foreign import ccall "sdp_set_access_protos" c'sdp_set_access_protos
  :: Ptr C'sdp_record_t -> Ptr C'_sdp_list -> IO CInt
foreign import ccall "&sdp_set_access_protos" p'sdp_set_access_protos
  :: FunPtr (Ptr C'sdp_record_t -> Ptr C'_sdp_list -> IO CInt)

{-# LINE 76 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_set_add_access_protos" c'sdp_set_add_access_protos
  :: Ptr C'sdp_record_t -> Ptr C'_sdp_list -> IO CInt
foreign import ccall "&sdp_set_add_access_protos" p'sdp_set_add_access_protos
  :: FunPtr (Ptr C'sdp_record_t -> Ptr C'_sdp_list -> IO CInt)

{-# LINE 77 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_get_proto_port" c'sdp_get_proto_port
  :: Ptr C'_sdp_list -> CInt -> IO CInt
foreign import ccall "&sdp_get_proto_port" p'sdp_get_proto_port
  :: FunPtr (Ptr C'_sdp_list -> CInt -> IO CInt)

{-# LINE 78 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_get_proto_desc" c'sdp_get_proto_desc
  :: Ptr C'_sdp_list -> CInt -> IO (Ptr C'sdp_data_struct)
foreign import ccall "&sdp_get_proto_desc" p'sdp_get_proto_desc
  :: FunPtr (Ptr C'_sdp_list -> CInt -> IO (Ptr C'sdp_data_struct))

{-# LINE 79 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_set_lang_attr" c'sdp_set_lang_attr
  :: Ptr C'sdp_record_t -> Ptr C'_sdp_list -> IO CInt
foreign import ccall "&sdp_set_lang_attr" p'sdp_set_lang_attr
  :: FunPtr (Ptr C'sdp_record_t -> Ptr C'_sdp_list -> IO CInt)

{-# LINE 80 "src/Bluetooth/Raw/SdpLib.hsc" #-}
{- #cinline sdp_set_service_ttl , Ptr <sdp_record_t> -> CUInt -> IO CInt -}
{- #cinline sdp_set_record_state , Ptr <sdp_record_t> -> CUInt -> IO CInt -}
{- #ccall sdp_set_service_id , Ptr <sdp_record_t> -> <uuid_t> -> IO () -}
{- #ccall sdp_set_group_id , Ptr <sdp_record_t> -> <uuid_t> -> IO () -}
{- #cinline sdp_set_service_avail , Ptr <sdp_record_t> -> CUChar -> IO CInt -}
foreign import ccall "sdp_set_profile_descs" c'sdp_set_profile_descs
  :: Ptr C'sdp_record_t -> Ptr C'_sdp_list -> IO CInt
foreign import ccall "&sdp_set_profile_descs" p'sdp_set_profile_descs
  :: FunPtr (Ptr C'sdp_record_t -> Ptr C'_sdp_list -> IO CInt)

{-# LINE 86 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_set_url_attr" c'sdp_set_url_attr
  :: Ptr C'sdp_record_t -> CString -> CString -> CString -> IO ()
foreign import ccall "&sdp_set_url_attr" p'sdp_set_url_attr
  :: FunPtr (Ptr C'sdp_record_t -> CString -> CString -> CString -> IO ())

{-# LINE 87 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_service_search_req" c'sdp_service_search_req
  :: Ptr C'sdp_session_t -> Ptr C'_sdp_list -> CUShort -> Ptr (Ptr C'_sdp_list) -> IO CInt
foreign import ccall "&sdp_service_search_req" p'sdp_service_search_req
  :: FunPtr (Ptr C'sdp_session_t -> Ptr C'_sdp_list -> CUShort -> Ptr (Ptr C'_sdp_list) -> IO CInt)

{-# LINE 88 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_service_attr_req" c'sdp_service_attr_req
  :: Ptr C'sdp_session_t -> CUInt -> C'sdp_attrreq_type_t -> Ptr C'_sdp_list -> IO (Ptr C'sdp_record_t)
foreign import ccall "&sdp_service_attr_req" p'sdp_service_attr_req
  :: FunPtr (Ptr C'sdp_session_t -> CUInt -> C'sdp_attrreq_type_t -> Ptr C'_sdp_list -> IO (Ptr C'sdp_record_t))

{-# LINE 89 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_service_search_attr_req" c'sdp_service_search_attr_req
  :: Ptr C'sdp_session_t -> Ptr C'_sdp_list -> C'sdp_attrreq_type_t -> Ptr C'_sdp_list -> Ptr (Ptr C'_sdp_list) -> IO CInt
foreign import ccall "&sdp_service_search_attr_req" p'sdp_service_search_attr_req
  :: FunPtr (Ptr C'sdp_session_t -> Ptr C'_sdp_list -> C'sdp_attrreq_type_t -> Ptr C'_sdp_list -> Ptr (Ptr C'_sdp_list) -> IO CInt)

{-# LINE 90 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_record_alloc" c'sdp_record_alloc
  :: IO (Ptr C'sdp_record_t)
foreign import ccall "&sdp_record_alloc" p'sdp_record_alloc
  :: FunPtr (IO (Ptr C'sdp_record_t))

{-# LINE 91 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_record_free" c'sdp_record_free
  :: Ptr C'sdp_record_t -> IO ()
foreign import ccall "&sdp_record_free" p'sdp_record_free
  :: FunPtr (Ptr C'sdp_record_t -> IO ())

{-# LINE 92 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_device_record_register_binary" c'sdp_device_record_register_binary
  :: Ptr C'sdp_session_t -> Ptr C'bdaddr_t -> Ptr CUChar -> CUInt -> CUChar -> Ptr CUInt -> IO CInt
foreign import ccall "&sdp_device_record_register_binary" p'sdp_device_record_register_binary
  :: FunPtr (Ptr C'sdp_session_t -> Ptr C'bdaddr_t -> Ptr CUChar -> CUInt -> CUChar -> Ptr CUInt -> IO CInt)

{-# LINE 93 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_device_record_register" c'sdp_device_record_register
  :: Ptr C'sdp_session_t -> Ptr C'bdaddr_t -> Ptr C'sdp_record_t -> CUChar -> IO CInt
foreign import ccall "&sdp_device_record_register" p'sdp_device_record_register
  :: FunPtr (Ptr C'sdp_session_t -> Ptr C'bdaddr_t -> Ptr C'sdp_record_t -> CUChar -> IO CInt)

{-# LINE 94 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_record_register" c'sdp_record_register
  :: Ptr C'sdp_session_t -> Ptr C'sdp_record_t -> CUChar -> IO CInt
foreign import ccall "&sdp_record_register" p'sdp_record_register
  :: FunPtr (Ptr C'sdp_session_t -> Ptr C'sdp_record_t -> CUChar -> IO CInt)

{-# LINE 95 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_device_record_unregister_binary" c'sdp_device_record_unregister_binary
  :: Ptr C'sdp_session_t -> Ptr C'bdaddr_t -> CUInt -> IO CInt
foreign import ccall "&sdp_device_record_unregister_binary" p'sdp_device_record_unregister_binary
  :: FunPtr (Ptr C'sdp_session_t -> Ptr C'bdaddr_t -> CUInt -> IO CInt)

{-# LINE 96 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_device_record_unregister" c'sdp_device_record_unregister
  :: Ptr C'sdp_session_t -> Ptr C'bdaddr_t -> Ptr C'sdp_record_t -> IO CInt
foreign import ccall "&sdp_device_record_unregister" p'sdp_device_record_unregister
  :: FunPtr (Ptr C'sdp_session_t -> Ptr C'bdaddr_t -> Ptr C'sdp_record_t -> IO CInt)

{-# LINE 97 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_record_unregister" c'sdp_record_unregister
  :: Ptr C'sdp_session_t -> Ptr C'sdp_record_t -> IO CInt
foreign import ccall "&sdp_record_unregister" p'sdp_record_unregister
  :: FunPtr (Ptr C'sdp_session_t -> Ptr C'sdp_record_t -> IO CInt)

{-# LINE 98 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_device_record_update_binary" c'sdp_device_record_update_binary
  :: Ptr C'sdp_session_t -> Ptr C'bdaddr_t -> CUInt -> Ptr CUChar -> CUInt -> IO CInt
foreign import ccall "&sdp_device_record_update_binary" p'sdp_device_record_update_binary
  :: FunPtr (Ptr C'sdp_session_t -> Ptr C'bdaddr_t -> CUInt -> Ptr CUChar -> CUInt -> IO CInt)

{-# LINE 99 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_device_record_update" c'sdp_device_record_update
  :: Ptr C'sdp_session_t -> Ptr C'bdaddr_t -> Ptr C'sdp_record_t -> IO CInt
foreign import ccall "&sdp_device_record_update" p'sdp_device_record_update
  :: FunPtr (Ptr C'sdp_session_t -> Ptr C'bdaddr_t -> Ptr C'sdp_record_t -> IO CInt)

{-# LINE 100 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_record_update" c'sdp_record_update
  :: Ptr C'sdp_session_t -> Ptr C'sdp_record_t -> IO CInt
foreign import ccall "&sdp_record_update" p'sdp_record_update
  :: FunPtr (Ptr C'sdp_session_t -> Ptr C'sdp_record_t -> IO CInt)

{-# LINE 101 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_record_print" c'sdp_record_print
  :: Ptr C'sdp_record_t -> IO ()
foreign import ccall "&sdp_record_print" p'sdp_record_print
  :: FunPtr (Ptr C'sdp_record_t -> IO ())

{-# LINE 102 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_uuid16_create" c'sdp_uuid16_create
  :: Ptr C'uuid_t -> CUShort -> IO (Ptr C'uuid_t)
foreign import ccall "&sdp_uuid16_create" p'sdp_uuid16_create
  :: FunPtr (Ptr C'uuid_t -> CUShort -> IO (Ptr C'uuid_t))

{-# LINE 103 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_uuid32_create" c'sdp_uuid32_create
  :: Ptr C'uuid_t -> CUInt -> IO (Ptr C'uuid_t)
foreign import ccall "&sdp_uuid32_create" p'sdp_uuid32_create
  :: FunPtr (Ptr C'uuid_t -> CUInt -> IO (Ptr C'uuid_t))

{-# LINE 104 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_uuid128_create" c'sdp_uuid128_create
  :: Ptr C'uuid_t -> Ptr () -> IO (Ptr C'uuid_t)
foreign import ccall "&sdp_uuid128_create" p'sdp_uuid128_create
  :: FunPtr (Ptr C'uuid_t -> Ptr () -> IO (Ptr C'uuid_t))

{-# LINE 105 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_uuid16_cmp" c'sdp_uuid16_cmp
  :: Ptr () -> Ptr () -> IO CInt
foreign import ccall "&sdp_uuid16_cmp" p'sdp_uuid16_cmp
  :: FunPtr (Ptr () -> Ptr () -> IO CInt)

{-# LINE 106 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_uuid128_cmp" c'sdp_uuid128_cmp
  :: Ptr () -> Ptr () -> IO CInt
foreign import ccall "&sdp_uuid128_cmp" p'sdp_uuid128_cmp
  :: FunPtr (Ptr () -> Ptr () -> IO CInt)

{-# LINE 107 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_uuid_cmp" c'sdp_uuid_cmp
  :: Ptr () -> Ptr () -> IO CInt
foreign import ccall "&sdp_uuid_cmp" p'sdp_uuid_cmp
  :: FunPtr (Ptr () -> Ptr () -> IO CInt)

{-# LINE 108 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_uuid_to_uuid128" c'sdp_uuid_to_uuid128
  :: Ptr C'uuid_t -> IO (Ptr C'uuid_t)
foreign import ccall "&sdp_uuid_to_uuid128" p'sdp_uuid_to_uuid128
  :: FunPtr (Ptr C'uuid_t -> IO (Ptr C'uuid_t))

{-# LINE 109 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_uuid16_to_uuid128" c'sdp_uuid16_to_uuid128
  :: Ptr C'uuid_t -> Ptr C'uuid_t -> IO ()
foreign import ccall "&sdp_uuid16_to_uuid128" p'sdp_uuid16_to_uuid128
  :: FunPtr (Ptr C'uuid_t -> Ptr C'uuid_t -> IO ())

{-# LINE 110 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_uuid32_to_uuid128" c'sdp_uuid32_to_uuid128
  :: Ptr C'uuid_t -> Ptr C'uuid_t -> IO ()
foreign import ccall "&sdp_uuid32_to_uuid128" p'sdp_uuid32_to_uuid128
  :: FunPtr (Ptr C'uuid_t -> Ptr C'uuid_t -> IO ())

{-# LINE 111 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_uuid128_to_uuid" c'sdp_uuid128_to_uuid
  :: Ptr C'uuid_t -> IO CInt
foreign import ccall "&sdp_uuid128_to_uuid" p'sdp_uuid128_to_uuid
  :: FunPtr (Ptr C'uuid_t -> IO CInt)

{-# LINE 112 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_uuid_to_proto" c'sdp_uuid_to_proto
  :: Ptr C'uuid_t -> IO CInt
foreign import ccall "&sdp_uuid_to_proto" p'sdp_uuid_to_proto
  :: FunPtr (Ptr C'uuid_t -> IO CInt)

{-# LINE 113 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_uuid_extract" c'sdp_uuid_extract
  :: Ptr CUChar -> CInt -> Ptr C'uuid_t -> Ptr CInt -> IO CInt
foreign import ccall "&sdp_uuid_extract" p'sdp_uuid_extract
  :: FunPtr (Ptr CUChar -> CInt -> Ptr C'uuid_t -> Ptr CInt -> IO CInt)

{-# LINE 114 "src/Bluetooth/Raw/SdpLib.hsc" #-}
{- #ccall sdp_uuid_print , Ptr <uuid_t> -> IO () -}
foreign import ccall "sdp_uuid2strn" c'sdp_uuid2strn
  :: Ptr C'uuid_t -> CString -> CSize -> IO CInt
foreign import ccall "&sdp_uuid2strn" p'sdp_uuid2strn
  :: FunPtr (Ptr C'uuid_t -> CString -> CSize -> IO CInt)

{-# LINE 116 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_proto_uuid2strn" c'sdp_proto_uuid2strn
  :: Ptr C'uuid_t -> CString -> CSize -> IO CInt
foreign import ccall "&sdp_proto_uuid2strn" p'sdp_proto_uuid2strn
  :: FunPtr (Ptr C'uuid_t -> CString -> CSize -> IO CInt)

{-# LINE 117 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_svclass_uuid2strn" c'sdp_svclass_uuid2strn
  :: Ptr C'uuid_t -> CString -> CSize -> IO CInt
foreign import ccall "&sdp_svclass_uuid2strn" p'sdp_svclass_uuid2strn
  :: FunPtr (Ptr C'uuid_t -> CString -> CSize -> IO CInt)

{-# LINE 118 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_profile_uuid2strn" c'sdp_profile_uuid2strn
  :: Ptr C'uuid_t -> CString -> CSize -> IO CInt
foreign import ccall "&sdp_profile_uuid2strn" p'sdp_profile_uuid2strn
  :: FunPtr (Ptr C'uuid_t -> CString -> CSize -> IO CInt)

{-# LINE 119 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_get_access_protos" c'sdp_get_access_protos
  :: Ptr C'sdp_record_t -> Ptr (Ptr C'_sdp_list) -> IO CInt
foreign import ccall "&sdp_get_access_protos" p'sdp_get_access_protos
  :: FunPtr (Ptr C'sdp_record_t -> Ptr (Ptr C'_sdp_list) -> IO CInt)

{-# LINE 120 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_get_add_access_protos" c'sdp_get_add_access_protos
  :: Ptr C'sdp_record_t -> Ptr (Ptr C'_sdp_list) -> IO CInt
foreign import ccall "&sdp_get_add_access_protos" p'sdp_get_add_access_protos
  :: FunPtr (Ptr C'sdp_record_t -> Ptr (Ptr C'_sdp_list) -> IO CInt)

{-# LINE 121 "src/Bluetooth/Raw/SdpLib.hsc" #-}
{- #cinline sdp_get_browse_groups , Ptr <sdp_record_t> -> Ptr (Ptr <struct _sdp_list>) -> IO CInt -}
foreign import ccall "sdp_get_lang_attr" c'sdp_get_lang_attr
  :: Ptr C'sdp_record_t -> Ptr (Ptr C'_sdp_list) -> IO CInt
foreign import ccall "&sdp_get_lang_attr" p'sdp_get_lang_attr
  :: FunPtr (Ptr C'sdp_record_t -> Ptr (Ptr C'_sdp_list) -> IO CInt)

{-# LINE 123 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_get_profile_descs" c'sdp_get_profile_descs
  :: Ptr C'sdp_record_t -> Ptr (Ptr C'_sdp_list) -> IO CInt
foreign import ccall "&sdp_get_profile_descs" p'sdp_get_profile_descs
  :: FunPtr (Ptr C'sdp_record_t -> Ptr (Ptr C'_sdp_list) -> IO CInt)

{-# LINE 124 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_get_server_ver" c'sdp_get_server_ver
  :: Ptr C'sdp_record_t -> Ptr (Ptr C'_sdp_list) -> IO CInt
foreign import ccall "&sdp_get_server_ver" p'sdp_get_server_ver
  :: FunPtr (Ptr C'sdp_record_t -> Ptr (Ptr C'_sdp_list) -> IO CInt)

{-# LINE 125 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_get_service_id" c'sdp_get_service_id
  :: Ptr C'sdp_record_t -> Ptr C'uuid_t -> IO CInt
foreign import ccall "&sdp_get_service_id" p'sdp_get_service_id
  :: FunPtr (Ptr C'sdp_record_t -> Ptr C'uuid_t -> IO CInt)

{-# LINE 126 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_get_group_id" c'sdp_get_group_id
  :: Ptr C'sdp_record_t -> Ptr C'uuid_t -> IO CInt
foreign import ccall "&sdp_get_group_id" p'sdp_get_group_id
  :: FunPtr (Ptr C'sdp_record_t -> Ptr C'uuid_t -> IO CInt)

{-# LINE 127 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_get_record_state" c'sdp_get_record_state
  :: Ptr C'sdp_record_t -> Ptr CUInt -> IO CInt
foreign import ccall "&sdp_get_record_state" p'sdp_get_record_state
  :: FunPtr (Ptr C'sdp_record_t -> Ptr CUInt -> IO CInt)

{-# LINE 128 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_get_service_avail" c'sdp_get_service_avail
  :: Ptr C'sdp_record_t -> Ptr CUChar -> IO CInt
foreign import ccall "&sdp_get_service_avail" p'sdp_get_service_avail
  :: FunPtr (Ptr C'sdp_record_t -> Ptr CUChar -> IO CInt)

{-# LINE 129 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_get_service_ttl" c'sdp_get_service_ttl
  :: Ptr C'sdp_record_t -> Ptr CUInt -> IO CInt
foreign import ccall "&sdp_get_service_ttl" p'sdp_get_service_ttl
  :: FunPtr (Ptr C'sdp_record_t -> Ptr CUInt -> IO CInt)

{-# LINE 130 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_get_database_state" c'sdp_get_database_state
  :: Ptr C'sdp_record_t -> Ptr CUInt -> IO CInt
foreign import ccall "&sdp_get_database_state" p'sdp_get_database_state
  :: FunPtr (Ptr C'sdp_record_t -> Ptr CUInt -> IO CInt)

{-# LINE 131 "src/Bluetooth/Raw/SdpLib.hsc" #-}
{- #cinline sdp_get_service_name , Ptr <sdp_record_t> -> CString -> CInt -> IO CInt -}
{- #cinline sdp_get_service_desc , Ptr <sdp_record_t> -> CString -> CInt -> IO CInt -}
{- #cinline sdp_get_provider_name , Ptr <sdp_record_t> -> CString -> CInt -> IO CInt -}
{- #cinline sdp_get_doc_url , Ptr <sdp_record_t> -> CString -> CInt -> IO CInt -}
{- #cinline sdp_get_clnt_exec_url , Ptr <sdp_record_t> -> CString -> CInt -> IO CInt -}
{- #cinline sdp_get_icon_url , Ptr <sdp_record_t> -> CString -> CInt -> IO CInt -}
foreign import ccall "sdp_set_supp_feat" c'sdp_set_supp_feat
  :: Ptr C'sdp_record_t -> Ptr C'_sdp_list -> IO CInt
foreign import ccall "&sdp_set_supp_feat" p'sdp_set_supp_feat
  :: FunPtr (Ptr C'sdp_record_t -> Ptr C'_sdp_list -> IO CInt)

{-# LINE 138 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_get_supp_feat" c'sdp_get_supp_feat
  :: Ptr C'sdp_record_t -> Ptr (Ptr C'_sdp_list) -> IO CInt
foreign import ccall "&sdp_get_supp_feat" p'sdp_get_supp_feat
  :: FunPtr (Ptr C'sdp_record_t -> Ptr (Ptr C'_sdp_list) -> IO CInt)

{-# LINE 139 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_extract_pdu" c'sdp_extract_pdu
  :: Ptr CUChar -> CInt -> Ptr CInt -> IO (Ptr C'sdp_record_t)
foreign import ccall "&sdp_extract_pdu" p'sdp_extract_pdu
  :: FunPtr (Ptr CUChar -> CInt -> Ptr CInt -> IO (Ptr C'sdp_record_t))

{-# LINE 140 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_copy_record" c'sdp_copy_record
  :: Ptr C'sdp_record_t -> IO (Ptr C'sdp_record_t)
foreign import ccall "&sdp_copy_record" p'sdp_copy_record
  :: FunPtr (Ptr C'sdp_record_t -> IO (Ptr C'sdp_record_t))

{-# LINE 141 "src/Bluetooth/Raw/SdpLib.hsc" #-}
{- #ccall sdp_data_print , Ptr <struct sdp_data_struct> -> IO () -}
{- #ccall sdp_print_service_attr , Ptr <struct _sdp_list> -> IO () -}
foreign import ccall "sdp_attrid_comp_func" c'sdp_attrid_comp_func
  :: Ptr () -> Ptr () -> IO CInt
foreign import ccall "&sdp_attrid_comp_func" p'sdp_attrid_comp_func
  :: FunPtr (Ptr () -> Ptr () -> IO CInt)

{-# LINE 144 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_set_seq_len" c'sdp_set_seq_len
  :: Ptr CUChar -> CUInt -> IO ()
foreign import ccall "&sdp_set_seq_len" p'sdp_set_seq_len
  :: FunPtr (Ptr CUChar -> CUInt -> IO ())

{-# LINE 145 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_set_attrid" c'sdp_set_attrid
  :: Ptr C'sdp_buf_t -> CUShort -> IO ()
foreign import ccall "&sdp_set_attrid" p'sdp_set_attrid
  :: FunPtr (Ptr C'sdp_buf_t -> CUShort -> IO ())

{-# LINE 146 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_append_to_pdu" c'sdp_append_to_pdu
  :: Ptr C'sdp_buf_t -> Ptr C'sdp_data_struct -> IO ()
foreign import ccall "&sdp_append_to_pdu" p'sdp_append_to_pdu
  :: FunPtr (Ptr C'sdp_buf_t -> Ptr C'sdp_data_struct -> IO ())

{-# LINE 147 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_append_to_buf" c'sdp_append_to_buf
  :: Ptr C'sdp_buf_t -> Ptr CUChar -> CUInt -> IO ()
foreign import ccall "&sdp_append_to_buf" p'sdp_append_to_buf
  :: FunPtr (Ptr C'sdp_buf_t -> Ptr CUChar -> CUInt -> IO ())

{-# LINE 148 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_gen_pdu" c'sdp_gen_pdu
  :: Ptr C'sdp_buf_t -> Ptr C'sdp_data_struct -> IO CInt
foreign import ccall "&sdp_gen_pdu" p'sdp_gen_pdu
  :: FunPtr (Ptr C'sdp_buf_t -> Ptr C'sdp_data_struct -> IO CInt)

{-# LINE 149 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_gen_record_pdu" c'sdp_gen_record_pdu
  :: Ptr C'sdp_record_t -> Ptr C'sdp_buf_t -> IO CInt
foreign import ccall "&sdp_gen_record_pdu" p'sdp_gen_record_pdu
  :: FunPtr (Ptr C'sdp_record_t -> Ptr C'sdp_buf_t -> IO CInt)

{-# LINE 150 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_extract_seqtype" c'sdp_extract_seqtype
  :: Ptr CUChar -> CInt -> Ptr CUChar -> Ptr CInt -> IO CInt
foreign import ccall "&sdp_extract_seqtype" p'sdp_extract_seqtype
  :: FunPtr (Ptr CUChar -> CInt -> Ptr CUChar -> Ptr CInt -> IO CInt)

{-# LINE 151 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_extract_attr" c'sdp_extract_attr
  :: Ptr CUChar -> CInt -> Ptr CInt -> Ptr C'sdp_record_t -> IO (Ptr C'sdp_data_struct)
foreign import ccall "&sdp_extract_attr" p'sdp_extract_attr
  :: FunPtr (Ptr CUChar -> CInt -> Ptr CInt -> Ptr C'sdp_record_t -> IO (Ptr C'sdp_data_struct))

{-# LINE 152 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_pattern_add_uuid" c'sdp_pattern_add_uuid
  :: Ptr C'sdp_record_t -> Ptr C'uuid_t -> IO ()
foreign import ccall "&sdp_pattern_add_uuid" p'sdp_pattern_add_uuid
  :: FunPtr (Ptr C'sdp_record_t -> Ptr C'uuid_t -> IO ())

{-# LINE 153 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_pattern_add_uuidseq" c'sdp_pattern_add_uuidseq
  :: Ptr C'sdp_record_t -> Ptr C'_sdp_list -> IO ()
foreign import ccall "&sdp_pattern_add_uuidseq" p'sdp_pattern_add_uuidseq
  :: FunPtr (Ptr C'sdp_record_t -> Ptr C'_sdp_list -> IO ())

{-# LINE 154 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_send_req_w4_rsp" c'sdp_send_req_w4_rsp
  :: Ptr C'sdp_session_t -> Ptr CUChar -> Ptr CUChar -> CUInt -> Ptr CUInt -> IO CInt
foreign import ccall "&sdp_send_req_w4_rsp" p'sdp_send_req_w4_rsp
  :: FunPtr (Ptr C'sdp_session_t -> Ptr CUChar -> Ptr CUChar -> CUInt -> Ptr CUInt -> IO CInt)

{-# LINE 155 "src/Bluetooth/Raw/SdpLib.hsc" #-}
foreign import ccall "sdp_add_lang_attr" c'sdp_add_lang_attr
  :: Ptr C'sdp_record_t -> IO ()
foreign import ccall "&sdp_add_lang_attr" p'sdp_add_lang_attr
  :: FunPtr (Ptr C'sdp_record_t -> IO ())

{-# LINE 156 "src/Bluetooth/Raw/SdpLib.hsc" #-}
