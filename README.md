# inline-c-win32

This is a little helper for the marvelous [inline-c](http://hackage.haskell.org/package/inline-c) library. It provides a context with Win32 API data types so you can use ```DWORD```, ```BOOL```, ```UINT``` and other Win32 data types right in your inlined function types.

In other words, it allows you to write something like ```[C.block| DWORD { return 0xFFFFFFFF; } |]```, which otherwise will give you an error about unknown DWORD type.
