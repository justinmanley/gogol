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
-- Module      : Network.Google.Resource.Compute.Snapshots.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of Snapshot resources contained within the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.snapshots.list@.
module Network.Google.Resource.Compute.Snapshots.List
    (
    -- * REST Resource
      SnapshotsListResource

    -- * Creating a Request
    , snapshotsList
    , SnapshotsList

    -- * Request Lenses
    , slProject
    , slFilter
    , slPageToken
    , slMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.snapshots.list@ method which the
-- 'SnapshotsList' request conforms to.
type SnapshotsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "snapshots" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :> Get '[JSON] SnapshotList

-- | Retrieves the list of Snapshot resources contained within the specified
-- project.
--
-- /See:/ 'snapshotsList' smart constructor.
data SnapshotsList = SnapshotsList
    { _slProject    :: !Text
    , _slFilter     :: !(Maybe Text)
    , _slPageToken  :: !(Maybe Text)
    , _slMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SnapshotsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slProject'
--
-- * 'slFilter'
--
-- * 'slPageToken'
--
-- * 'slMaxResults'
snapshotsList
    :: Text -- ^ 'slProject'
    -> SnapshotsList
snapshotsList pSlProject_ =
    SnapshotsList
    { _slProject = pSlProject_
    , _slFilter = Nothing
    , _slPageToken = Nothing
    , _slMaxResults = 500
    }

-- | Name of the project scoping this request.
slProject :: Lens' SnapshotsList Text
slProject
  = lens _slProject (\ s a -> s{_slProject = a})

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
slFilter :: Lens' SnapshotsList (Maybe Text)
slFilter = lens _slFilter (\ s a -> s{_slFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
slPageToken :: Lens' SnapshotsList (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | Maximum count of results to be returned.
slMaxResults :: Lens' SnapshotsList Word32
slMaxResults
  = lens _slMaxResults (\ s a -> s{_slMaxResults = a})
      . _Coerce

instance GoogleRequest SnapshotsList where
        type Rs SnapshotsList = SnapshotList
        type Scopes SnapshotsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient SnapshotsList{..}
          = go _slProject _slFilter _slPageToken
              (Just _slMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy SnapshotsListResource)
                      mempty
