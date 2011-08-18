#!/usr/bin/env runhaskell
-- Jeffrey Lau
-- 2011-08-18

{-
 - URL: http://www.pythonchallenge.com/pc/def/0.html
 -}

main = do
	print $ pow 2 38
	print $ 2 ^ 38

-- defining my own function since I didn't know about (^).
-- ghci> :t (^)
-- (^) :: (Num a, Integral b) => a -> b -> a)
pow :: (Num a) => a -> a -> a
pow n m = pow' n m 1
	where pow' n 0 acc = acc
	      pow' n m acc = pow' n (m - 1) (n * acc)
