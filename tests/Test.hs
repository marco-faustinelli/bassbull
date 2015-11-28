module Main where

import Bassbull
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "verify that bassbull outputs the correct data" $ do
    it "equals zero" $ do
      theSum <- getAtBatsSum "batting.csv"
      shouldBe theSum 4858210
