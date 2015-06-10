{-# LANGUAGE OverloadedStrings, QuasiQuotes, TemplateHaskell #-}
module Language.C.Inline.Win32 (win32Ctx) where

import Data.Monoid (mempty)
import Language.C.Inline
import Language.C.Inline.Context
import System.Win32.Types
import qualified Data.Map as Map
import qualified Language.C.Types as C
import qualified Language.Haskell.TH as TH

win32Ctx :: Context
win32Ctx = mempty { ctxTypesTable = win32TypesTable }

win32TypesTable :: Map.Map C.TypeSpecifier TH.TypeQ
win32TypesTable = Map.fromList
  [ (C.TypeName "BOOL", [t| BOOL |])
  , (C.TypeName "BYTE", [t| BYTE |])
  , (C.TypeName "UCHAR", [t| UCHAR |])
  , (C.TypeName "USHORT", [t| USHORT |])
  , (C.TypeName "UINT", [t| UINT |])
  , (C.TypeName "INT", [t| INT |])
  , (C.TypeName "WORD", [t| WORD |])
  , (C.TypeName "DWORD", [t| DWORD |])
  , (C.TypeName "LONG", [t| LONG |])
  , (C.TypeName "FLOAT", [t| FLOAT |])
  , (C.TypeName "LARGE_INTEGER", [t| LARGE_INTEGER |])
  , (C.TypeName "UINT_PTR", [t| UINT_PTR |])
  , (C.TypeName "DDWORD", [t| DDWORD |])
  , (C.TypeName "ATOM", [t| ATOM |])
  , (C.TypeName "WPARAM", [t| WPARAM |])
  , (C.TypeName "LPARAM", [t| LPARAM |])
  , (C.TypeName "LRESULT", [t| LRESULT |])
  , (C.TypeName "SIZE_T", [t| SIZE_T |])
  , (C.TypeName "HRESULT", [t| HRESULT |])
  , (C.TypeName "LPVOID", [t| LPVOID |])
  , (C.TypeName "LPBOOL", [t| LPBOOL |])
  , (C.TypeName "LPBYTE", [t| LPBYTE |])
  , (C.TypeName "PUCHAR", [t| PUCHAR |])
  , (C.TypeName "LPDWORD", [t| LPDWORD |])
  , (C.TypeName "LPSTR", [t| LPSTR |])
  , (C.TypeName "LPCSTR", [t| LPCSTR |])
  , (C.TypeName "LPWSTR", [t| LPWSTR |])
  , (C.TypeName "LPCWSTR", [t| LPCWSTR |])
  , (C.TypeName "LPTSTR", [t| LPTSTR |])
  , (C.TypeName "LPCTSTR", [t| LPCTSTR |])
  , (C.TypeName "HANDLE", [t| HANDLE |])
  , (C.TypeName "HINSTANCE", [t| HINSTANCE |])
  , (C.TypeName "HMODULE", [t| HMODULE |])
  ]
