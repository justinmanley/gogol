{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Compute.TargetPools.AggregatedList
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of target pools grouped by scope.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetPools.aggregatedList@.
module Network.Google.Resource.Compute.TargetPools.AggregatedList
    (
    -- * REST Resource
      TargetPoolsAggregatedListResource

    -- * Creating a Request
    , targetPoolsAggregatedList
    , TargetPoolsAggregatedList

    -- * Request Lenses
    , tpalProject
    , tpalFilter
    , tpalPageToken
    , tpalMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetPools.aggregatedList@ method which the
-- 'TargetPoolsAggregatedList' request conforms to.
type TargetPoolsAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "targetPools" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] TargetPoolAggregatedList

-- | Retrieves the list of target pools grouped by scope.
--
-- /See:/ 'targetPoolsAggregatedList' smart constructor.
data TargetPoolsAggregatedList = TargetPoolsAggregatedList
    { _tpalProject    :: !Text
    , _tpalFilter     :: !(Maybe Text)
    , _tpalPageToken  :: !(Maybe Text)
    , _tpalMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpalProject'
--
-- * 'tpalFilter'
--
-- * 'tpalPageToken'
--
-- * 'tpalMaxResults'
targetPoolsAggregatedList
    :: Text -- ^ 'tpalProject'
    -> TargetPoolsAggregatedList
targetPoolsAggregatedList pTpalProject_ =
    TargetPoolsAggregatedList
    { _tpalProject = pTpalProject_
    , _tpalFilter = Nothing
    , _tpalPageToken = Nothing
    , _tpalMaxResults = 500
    }

-- | Name of the project scoping this request.
tpalProject :: Lens' TargetPoolsAggregatedList Text
tpalProject
  = lens _tpalProject (\ s a -> s{_tpalProject = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
tpalFilter :: Lens' TargetPoolsAggregatedList (Maybe Text)
tpalFilter
  = lens _tpalFilter (\ s a -> s{_tpalFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
tpalPageToken :: Lens' TargetPoolsAggregatedList (Maybe Text)
tpalPageToken
  = lens _tpalPageToken
      (\ s a -> s{_tpalPageToken = a})

-- | Maximum count of results to be returned.
tpalMaxResults :: Lens' TargetPoolsAggregatedList Word32
tpalMaxResults
  = lens _tpalMaxResults
      (\ s a -> s{_tpalMaxResults = a})
      . _Coerce

instance GoogleRequest TargetPoolsAggregatedList
         where
        type Rs TargetPoolsAggregatedList =
             TargetPoolAggregatedList
        type Scopes TargetPoolsAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient TargetPoolsAggregatedList{..}
          = go _tpalProject _tpalFilter _tpalPageToken
              (Just _tpalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetPoolsAggregatedListResource)
                      mempty
