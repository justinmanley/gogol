{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BigQuery.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.BigQuery.Types.Sum where

import           Network.Google.Prelude

-- | Restrict information returned to a set of selected fields
data JobsListProjection
    = Full
      -- ^ @full@
      -- Includes all job data
    | Minimal
      -- ^ @minimal@
      -- Does not include the job configuration
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable JobsListProjection

instance FromText JobsListProjection where
    fromText = \case
        "full" -> Just Full
        "minimal" -> Just Minimal
        _ -> Nothing

instance ToText JobsListProjection where
    toText = \case
        Full -> "full"
        Minimal -> "minimal"

instance FromJSON JobsListProjection where
    parseJSON = parseJSONText "JobsListProjection"

instance ToJSON JobsListProjection where
    toJSON = toJSONText

-- | Filter for job state
data JobsListStateFilter
    = Done
      -- ^ @done@
      -- Finished jobs
    | Pending
      -- ^ @pending@
      -- Pending jobs
    | Running
      -- ^ @running@
      -- Running jobs
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable JobsListStateFilter

instance FromText JobsListStateFilter where
    fromText = \case
        "done" -> Just Done
        "pending" -> Just Pending
        "running" -> Just Running
        _ -> Nothing

instance ToText JobsListStateFilter where
    toText = \case
        Done -> "done"
        Pending -> "pending"
        Running -> "running"

instance FromJSON JobsListStateFilter where
    parseJSON = parseJSONText "JobsListStateFilter"

instance ToJSON JobsListStateFilter where
    toJSON = toJSONText
