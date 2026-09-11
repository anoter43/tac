module Main (main) where

import System.Environment
import Control.Exception

main :: IO ()
main=getArgs>>= \a->if null a then interact(unlines.map reverse.lines) else mapM_(\f->catch(readFile f>>=putStrLn.unlines.map reverse.lines)(\e->print (e::IOException))) a
