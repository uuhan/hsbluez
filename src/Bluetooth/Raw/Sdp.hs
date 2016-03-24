{-# LINE 1 "src/Bluetooth/Raw/Sdp.hsc" #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# LINE 2 "src/Bluetooth/Raw/Sdp.hsc" #-}

{-# LINE 3 "src/Bluetooth/Raw/Sdp.hsc" #-}

{-# LINE 4 "src/Bluetooth/Raw/Sdp.hsc" #-}
module Bluetooth.Raw.Sdp where
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

{-# LINE 7 "src/Bluetooth/Raw/Sdp.hsc" #-}

{- typedef struct __attribute__((packed)) {
            uint8_t pdu_id; uint16_t tid; uint16_t plen;
        } sdp_pdu_hdr_t; -}

{-# LINE 12 "src/Bluetooth/Raw/Sdp.hsc" #-}

{-# LINE 13 "src/Bluetooth/Raw/Sdp.hsc" #-}

{-# LINE 14 "src/Bluetooth/Raw/Sdp.hsc" #-}

{-# LINE 15 "src/Bluetooth/Raw/Sdp.hsc" #-}
data C'sdp_pdu_hdr_t = C'sdp_pdu_hdr_t{
  c'sdp_pdu_hdr_t'pdu_id :: CUChar,
  c'sdp_pdu_hdr_t'tid :: CUShort,
  c'sdp_pdu_hdr_t'plen :: CUShort
} deriving (Eq,Show)
p'sdp_pdu_hdr_t'pdu_id p = plusPtr p 0
p'sdp_pdu_hdr_t'pdu_id :: Ptr (C'sdp_pdu_hdr_t) -> Ptr (CUChar)
p'sdp_pdu_hdr_t'tid p = plusPtr p 1
p'sdp_pdu_hdr_t'tid :: Ptr (C'sdp_pdu_hdr_t) -> Ptr (CUShort)
p'sdp_pdu_hdr_t'plen p = plusPtr p 3
p'sdp_pdu_hdr_t'plen :: Ptr (C'sdp_pdu_hdr_t) -> Ptr (CUShort)
instance Storable C'sdp_pdu_hdr_t where
  sizeOf _ = 5
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    v2 <- peekByteOff p 3
    return $ C'sdp_pdu_hdr_t v0 v1 v2
  poke p (C'sdp_pdu_hdr_t v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    pokeByteOff p 3 v2
    return ()

{-# LINE 16 "src/Bluetooth/Raw/Sdp.hsc" #-}
{- typedef struct {
            uint8_t type;
            union {
                uint16_t uuid16; uint32_t uuid32; uint128_t uuid128;
            } value;
        } uuid_t; -}
data C'uuid_t = C'uuid_t

{-# LINE 23 "src/Bluetooth/Raw/Sdp.hsc" #-}
{- #starttype uuid_t -}
{- #field type , CUChar -}
{- #field value ,  -}
{- #stoptype -}
{- typedef struct _sdp_list sdp_list_t; -}
{- #opaque_t struct _sdp_list -}
type C'sdp_list_t = C'_sdp_list

{-# LINE 30 "src/Bluetooth/Raw/Sdp.hsc" #-}
{- struct _sdp_list {
    sdp_list_t * next; void * data;
}; -}

{-# LINE 34 "src/Bluetooth/Raw/Sdp.hsc" #-}

{-# LINE 35 "src/Bluetooth/Raw/Sdp.hsc" #-}

{-# LINE 36 "src/Bluetooth/Raw/Sdp.hsc" #-}
data C'_sdp_list = C'_sdp_list{
  c'_sdp_list'next :: Ptr C'_sdp_list,
  c'_sdp_list'data :: Ptr ()
} deriving (Eq,Show)
p'_sdp_list'next p = plusPtr p 0
p'_sdp_list'next :: Ptr (C'_sdp_list) -> Ptr (Ptr C'_sdp_list)
p'_sdp_list'data p = plusPtr p 8
p'_sdp_list'data :: Ptr (C'_sdp_list) -> Ptr (Ptr ())
instance Storable C'_sdp_list where
  sizeOf _ = 16
  alignment _ = 8
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 8
    return $ C'_sdp_list v0 v1
  poke p (C'_sdp_list v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 8 v1
    return ()

{-# LINE 37 "src/Bluetooth/Raw/Sdp.hsc" #-}
{- typedef struct {
            uint16_t code_ISO639; uint16_t encoding; uint16_t base_offset;
        } sdp_lang_attr_t; -}

{-# LINE 41 "src/Bluetooth/Raw/Sdp.hsc" #-}

{-# LINE 42 "src/Bluetooth/Raw/Sdp.hsc" #-}

{-# LINE 43 "src/Bluetooth/Raw/Sdp.hsc" #-}

{-# LINE 44 "src/Bluetooth/Raw/Sdp.hsc" #-}
data C'sdp_lang_attr_t = C'sdp_lang_attr_t{
  c'sdp_lang_attr_t'code_ISO639 :: CUShort,
  c'sdp_lang_attr_t'encoding :: CUShort,
  c'sdp_lang_attr_t'base_offset :: CUShort
} deriving (Eq,Show)
p'sdp_lang_attr_t'code_ISO639 p = plusPtr p 0
p'sdp_lang_attr_t'code_ISO639 :: Ptr (C'sdp_lang_attr_t) -> Ptr (CUShort)
p'sdp_lang_attr_t'encoding p = plusPtr p 2
p'sdp_lang_attr_t'encoding :: Ptr (C'sdp_lang_attr_t) -> Ptr (CUShort)
p'sdp_lang_attr_t'base_offset p = plusPtr p 4
p'sdp_lang_attr_t'base_offset :: Ptr (C'sdp_lang_attr_t) -> Ptr (CUShort)
instance Storable C'sdp_lang_attr_t where
  sizeOf _ = 6
  alignment _ = 2
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 2
    v2 <- peekByteOff p 4
    return $ C'sdp_lang_attr_t v0 v1 v2
  poke p (C'sdp_lang_attr_t v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 2 v1
    pokeByteOff p 4 v2
    return ()

{-# LINE 45 "src/Bluetooth/Raw/Sdp.hsc" #-}
{- typedef struct {
            uuid_t uuid; uint16_t version;
        } sdp_profile_desc_t; -}
{- #starttype sdp_profile_desc_t -}
{- #field uuid , <uuid_t> -}
{- #field version , CUShort -}
{- #stoptype -}
{- typedef struct {
            uint8_t major; uint8_t minor;
        } sdp_version_t; -}

{-# LINE 56 "src/Bluetooth/Raw/Sdp.hsc" #-}

{-# LINE 57 "src/Bluetooth/Raw/Sdp.hsc" #-}

{-# LINE 58 "src/Bluetooth/Raw/Sdp.hsc" #-}
data C'sdp_version_t = C'sdp_version_t{
  c'sdp_version_t'major :: CUChar,
  c'sdp_version_t'minor :: CUChar
} deriving (Eq,Show)
p'sdp_version_t'major p = plusPtr p 0
p'sdp_version_t'major :: Ptr (C'sdp_version_t) -> Ptr (CUChar)
p'sdp_version_t'minor p = plusPtr p 1
p'sdp_version_t'minor :: Ptr (C'sdp_version_t) -> Ptr (CUChar)
instance Storable C'sdp_version_t where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'sdp_version_t v0 v1
  poke p (C'sdp_version_t v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 59 "src/Bluetooth/Raw/Sdp.hsc" #-}
{- typedef struct {
            uint8_t * data; uint32_t data_size; uint32_t buf_size;
        } sdp_buf_t; -}

{-# LINE 63 "src/Bluetooth/Raw/Sdp.hsc" #-}

{-# LINE 64 "src/Bluetooth/Raw/Sdp.hsc" #-}

{-# LINE 65 "src/Bluetooth/Raw/Sdp.hsc" #-}

{-# LINE 66 "src/Bluetooth/Raw/Sdp.hsc" #-}
data C'sdp_buf_t = C'sdp_buf_t{
  c'sdp_buf_t'data :: Ptr CUChar,
  c'sdp_buf_t'data_size :: CUInt,
  c'sdp_buf_t'buf_size :: CUInt
} deriving (Eq,Show)
p'sdp_buf_t'data p = plusPtr p 0
p'sdp_buf_t'data :: Ptr (C'sdp_buf_t) -> Ptr (Ptr CUChar)
p'sdp_buf_t'data_size p = plusPtr p 8
p'sdp_buf_t'data_size :: Ptr (C'sdp_buf_t) -> Ptr (CUInt)
p'sdp_buf_t'buf_size p = plusPtr p 12
p'sdp_buf_t'buf_size :: Ptr (C'sdp_buf_t) -> Ptr (CUInt)
instance Storable C'sdp_buf_t where
  sizeOf _ = 16
  alignment _ = 8
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 8
    v2 <- peekByteOff p 12
    return $ C'sdp_buf_t v0 v1 v2
  poke p (C'sdp_buf_t v0 v1 v2) = do
    pokeByteOff p 0 v0
    pokeByteOff p 8 v1
    pokeByteOff p 12 v2
    return ()

{-# LINE 67 "src/Bluetooth/Raw/Sdp.hsc" #-}
{- typedef struct {
            uint32_t handle;
            sdp_list_t * pattern;
            sdp_list_t * attrlist;
            uuid_t svclass;
        } sdp_record_t; -}
data C'sdp_record_t = C'sdp_record_t

{-# LINE 74 "src/Bluetooth/Raw/Sdp.hsc" #-}
{- #starttype sdp_record_t -}
{- #field handle , CUInt -}
{- #field pattern , Ptr <struct _sdp_list> -}
{- #field attrlist , Ptr <struct _sdp_list> -}
{- #field svclass , <uuid_t> -}
{- #stoptype -}
{- typedef struct sdp_data_struct sdp_data_t; -}
data C'sdp_data_struct = C'sdp_data_struct

{-# LINE 82 "src/Bluetooth/Raw/Sdp.hsc" #-}
type C'sdp_data_t = C'sdp_data_struct

{-# LINE 83 "src/Bluetooth/Raw/Sdp.hsc" #-}
{- struct sdp_data_struct {
    uint8_t dtd;
    uint16_t attrId;
    union {
        int8_t int8;
        int16_t int16;
        int32_t int32;
        int64_t int64;
        uint128_t int128;
        uint8_t uint8;
        uint16_t uint16;
        uint32_t uint32;
        uint64_t uint64;
        uint128_t uint128;
        uuid_t uuid;
        char * str;
        sdp_data_t * dataseq;
    } val;
    sdp_data_t * next;
    int unitSize;
}; -}
{- #starttype struct sdp_data_struct -}
{- #field dtd , CUChar -}
{- #field attrId , CUShort -}
{- #field val ,  -}
{- #field next , Ptr <struct sdp_data_struct> -}
{- #field unitSize , CInt -}
{- #stoptype -}
