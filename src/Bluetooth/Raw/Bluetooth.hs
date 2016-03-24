{-# LINE 1 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# LINE 2 "src/Bluetooth/Raw/Bluetooth.hsc" #-}

{-# LINE 3 "src/Bluetooth/Raw/Bluetooth.hsc" #-}

{-# LINE 4 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
module Bluetooth.Raw.Bluetooth where
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

{-# LINE 7 "src/Bluetooth/Raw/Bluetooth.hsc" #-}

{- struct bt_security {
    uint8_t level; uint8_t key_size;
}; -}

{-# LINE 12 "src/Bluetooth/Raw/Bluetooth.hsc" #-}

{-# LINE 13 "src/Bluetooth/Raw/Bluetooth.hsc" #-}

{-# LINE 14 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
data C'bt_security = C'bt_security{
  c'bt_security'level :: CUChar,
  c'bt_security'key_size :: CUChar
} deriving (Eq,Show)
p'bt_security'level p = plusPtr p 0
p'bt_security'level :: Ptr (C'bt_security) -> Ptr (CUChar)
p'bt_security'key_size p = plusPtr p 1
p'bt_security'key_size :: Ptr (C'bt_security) -> Ptr (CUChar)
instance Storable C'bt_security where
  sizeOf _ = 2
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    v1 <- peekByteOff p 1
    return $ C'bt_security v0 v1
  poke p (C'bt_security v0 v1) = do
    pokeByteOff p 0 v0
    pokeByteOff p 1 v1
    return ()

{-# LINE 15 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
{- struct bt_power {
    uint8_t force_active;
}; -}

{-# LINE 19 "src/Bluetooth/Raw/Bluetooth.hsc" #-}

{-# LINE 20 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
data C'bt_power = C'bt_power{
  c'bt_power'force_active :: CUChar
} deriving (Eq,Show)
p'bt_power'force_active p = plusPtr p 0
p'bt_power'force_active :: Ptr (C'bt_power) -> Ptr (CUChar)
instance Storable C'bt_power where
  sizeOf _ = 1
  alignment _ = 1
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'bt_power v0
  poke p (C'bt_power v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 21 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
{- struct bt_voice {
    uint16_t setting;
}; -}

{-# LINE 25 "src/Bluetooth/Raw/Bluetooth.hsc" #-}

{-# LINE 26 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
data C'bt_voice = C'bt_voice{
  c'bt_voice'setting :: CUShort
} deriving (Eq,Show)
p'bt_voice'setting p = plusPtr p 0
p'bt_voice'setting :: Ptr (C'bt_voice) -> Ptr (CUShort)
instance Storable C'bt_voice where
  sizeOf _ = 2
  alignment _ = 2
  peek p = do
    v0 <- peekByteOff p 0
    return $ C'bt_voice v0
  poke p (C'bt_voice v0) = do
    pokeByteOff p 0 v0
    return ()

{-# LINE 27 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
{- enum {
    BT_CONNECTED = 1,
    BT_OPEN,
    BT_BOUND,
    BT_LISTEN,
    BT_CONNECT,
    BT_CONNECT2,
    BT_CONFIG,
    BT_DISCONN,
    BT_CLOSED
}; -}
c'BT_CONNECTED = 1
c'BT_CONNECTED :: (Num a) => a

{-# LINE 39 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
c'BT_OPEN = 2
c'BT_OPEN :: (Num a) => a

{-# LINE 40 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
c'BT_BOUND = 3
c'BT_BOUND :: (Num a) => a

{-# LINE 41 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
c'BT_LISTEN = 4
c'BT_LISTEN :: (Num a) => a

{-# LINE 42 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
c'BT_CONNECT = 5
c'BT_CONNECT :: (Num a) => a

{-# LINE 43 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
c'BT_CONNECT2 = 6
c'BT_CONNECT2 :: (Num a) => a

{-# LINE 44 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
c'BT_CONFIG = 7
c'BT_CONFIG :: (Num a) => a

{-# LINE 45 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
c'BT_DISCONN = 8
c'BT_DISCONN :: (Num a) => a

{-# LINE 46 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
c'BT_CLOSED = 9
c'BT_CLOSED :: (Num a) => a

{-# LINE 47 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
{- #cinline bt_get_le64 , Ptr () -> IO CULong -}
{- #cinline bt_get_be64 , Ptr () -> IO CULong -}
{- #cinline bt_get_le32 , Ptr () -> IO CUInt -}
{- #cinline bt_get_be32 , Ptr () -> IO CUInt -}
{- #cinline bt_get_le16 , Ptr () -> IO CUShort -}
{- #cinline bt_get_be16 , Ptr () -> IO CUShort -}
{- #cinline bt_put_le64 , CULong -> Ptr () -> IO () -}
{- #cinline bt_put_be64 , CULong -> Ptr () -> IO () -}
{- #cinline bt_put_le32 , CUInt -> Ptr () -> IO () -}
{- #cinline bt_put_be32 , CUInt -> Ptr () -> IO () -}
{- #cinline bt_put_le16 , CUShort -> Ptr () -> IO () -}
{- #cinline bt_put_be16 , CUShort -> Ptr () -> IO () -}
{- typedef struct __attribute__((packed)) {
            uint8_t b[6];
        } bdaddr_t; -}

{-# LINE 63 "src/Bluetooth/Raw/Bluetooth.hsc" #-}

{-# LINE 64 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
data C'bdaddr_t = C'bdaddr_t{
  c'bdaddr_t'b :: [CUChar]
} deriving (Eq,Show)
p'bdaddr_t'b p = plusPtr p 0
p'bdaddr_t'b :: Ptr (C'bdaddr_t) -> Ptr (CUChar)
instance Storable C'bdaddr_t where
  sizeOf _ = 6
  alignment _ = 1
  peek p = do
    v0 <- let s = div 6 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 0)
    return $ C'bdaddr_t v0
  poke p (C'bdaddr_t v0) = do
    let s = div 6 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 0) (take s v0)
    return ()

{-# LINE 65 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
{- #cinline bacmp , Ptr <bdaddr_t> -> Ptr <bdaddr_t> -> IO CInt -}
{- #cinline bacpy , Ptr <bdaddr_t> -> Ptr <bdaddr_t> -> IO () -}
foreign import ccall "baswap" c'baswap
  :: Ptr C'bdaddr_t -> Ptr C'bdaddr_t -> IO ()
foreign import ccall "&baswap" p'baswap
  :: FunPtr (Ptr C'bdaddr_t -> Ptr C'bdaddr_t -> IO ())

{-# LINE 68 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
foreign import ccall "strtoba" c'strtoba
  :: CString -> IO (Ptr C'bdaddr_t)
foreign import ccall "&strtoba" p'strtoba
  :: FunPtr (CString -> IO (Ptr C'bdaddr_t))

{-# LINE 69 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
foreign import ccall "batostr" c'batostr
  :: Ptr C'bdaddr_t -> IO CString
foreign import ccall "&batostr" p'batostr
  :: FunPtr (Ptr C'bdaddr_t -> IO CString)

{-# LINE 70 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
foreign import ccall "ba2str" c'ba2str
  :: Ptr C'bdaddr_t -> CString -> IO CInt
foreign import ccall "&ba2str" p'ba2str
  :: FunPtr (Ptr C'bdaddr_t -> CString -> IO CInt)

{-# LINE 71 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
foreign import ccall "str2ba" c'str2ba
  :: CString -> Ptr C'bdaddr_t -> IO CInt
foreign import ccall "&str2ba" p'str2ba
  :: FunPtr (CString -> Ptr C'bdaddr_t -> IO CInt)

{-# LINE 72 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
foreign import ccall "ba2oui" c'ba2oui
  :: Ptr C'bdaddr_t -> CString -> IO CInt
foreign import ccall "&ba2oui" p'ba2oui
  :: FunPtr (Ptr C'bdaddr_t -> CString -> IO CInt)

{-# LINE 73 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
foreign import ccall "bachk" c'bachk
  :: CString -> IO CInt
foreign import ccall "&bachk" p'bachk
  :: FunPtr (CString -> IO CInt)

{-# LINE 74 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
foreign import ccall "baprintf" c'baprintf
  :: CString -> IO CInt
foreign import ccall "&baprintf" p'baprintf
  :: FunPtr (CString -> IO CInt)

{-# LINE 75 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
{- #ccall bafprintf , Ptr <struct _IO_FILE> -> CString -> IO CInt -}
foreign import ccall "basprintf" c'basprintf
  :: CString -> CString -> IO CInt
foreign import ccall "&basprintf" p'basprintf
  :: FunPtr (CString -> CString -> IO CInt)

{-# LINE 77 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
foreign import ccall "basnprintf" c'basnprintf
  :: CString -> CSize -> CString -> IO CInt
foreign import ccall "&basnprintf" p'basnprintf
  :: FunPtr (CString -> CSize -> CString -> IO CInt)

{-# LINE 78 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
foreign import ccall "bt_malloc" c'bt_malloc
  :: CSize -> IO (Ptr ())
foreign import ccall "&bt_malloc" p'bt_malloc
  :: FunPtr (CSize -> IO (Ptr ()))

{-# LINE 79 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
foreign import ccall "bt_free" c'bt_free
  :: Ptr () -> IO ()
foreign import ccall "&bt_free" p'bt_free
  :: FunPtr (Ptr () -> IO ())

{-# LINE 80 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
foreign import ccall "bt_error" c'bt_error
  :: CUShort -> IO CInt
foreign import ccall "&bt_error" p'bt_error
  :: FunPtr (CUShort -> IO CInt)

{-# LINE 81 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
foreign import ccall "bt_compidtostr" c'bt_compidtostr
  :: CInt -> IO CString
foreign import ccall "&bt_compidtostr" p'bt_compidtostr
  :: FunPtr (CInt -> IO CString)

{-# LINE 82 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
{- typedef struct {
            uint8_t data[16];
        } uint128_t; -}

{-# LINE 86 "src/Bluetooth/Raw/Bluetooth.hsc" #-}

{-# LINE 87 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
data C'uint128_t = C'uint128_t{
  c'uint128_t'data :: [CUChar]
} deriving (Eq,Show)
p'uint128_t'data p = plusPtr p 0
p'uint128_t'data :: Ptr (C'uint128_t) -> Ptr (CUChar)
instance Storable C'uint128_t where
  sizeOf _ = 16
  alignment _ = 1
  peek p = do
    v0 <- let s = div 16 $ sizeOf $ (undefined :: CUChar) in peekArray s (plusPtr p 0)
    return $ C'uint128_t v0
  poke p (C'uint128_t v0) = do
    let s = div 16 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr p 0) (take s v0)
    return ()

{-# LINE 88 "src/Bluetooth/Raw/Bluetooth.hsc" #-}
{- #cinline bswap_128 , Ptr () -> Ptr () -> IO () -}
{- #cinline ntoh64 , CULong -> IO CULong -}
{- #cinline ntoh128 , Ptr <uint128_t> -> Ptr <uint128_t> -> IO () -}
{- #cinline btoh128 , Ptr <uint128_t> -> Ptr <uint128_t> -> IO () -}
