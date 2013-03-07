module Main where

import Language.Lojban.Xiragan
import System.Environment

main :: IO ()
main = do
	args <- getArgs
	case args of
		[] -> interact xiragan
		"-e" : rest -> putStrLn $ unwords $ map xiragan rest
		[file] -> readFile file >>= putStrLn . xiragan
