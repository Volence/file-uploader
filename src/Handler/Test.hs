{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE DeriveGeneric #-}

module Handler.Test where

import           Data.Aeson
import Import


data TestResponse = TestResponse {
    message :: [Char]
} deriving (Generic, Show)

instance FromJSON TestResponse
instance ToJSON TestResponse


getTestR :: Handler Value
getTestR = do
    returnJson  $ TestResponse "This is working"

