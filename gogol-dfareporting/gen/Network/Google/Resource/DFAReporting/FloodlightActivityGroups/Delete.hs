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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing floodlight activity group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.floodlightActivityGroups.delete@.
module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Delete
    (
    -- * REST Resource
      FloodlightActivityGroupsDeleteResource

    -- * Creating a Request
    , floodlightActivityGroupsDelete
    , FloodlightActivityGroupsDelete

    -- * Request Lenses
    , fagdProFileId
    , fagdId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivityGroups.delete@ method which the
-- 'FloodlightActivityGroupsDelete' request conforms to.
type FloodlightActivityGroupsDeleteResource =
     "dfareporting" :>
       "v2.2" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightActivityGroups" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing floodlight activity group.
--
-- /See:/ 'floodlightActivityGroupsDelete' smart constructor.
data FloodlightActivityGroupsDelete = FloodlightActivityGroupsDelete
    { _fagdProFileId :: !(Textual Int64)
    , _fagdId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivityGroupsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fagdProFileId'
--
-- * 'fagdId'
floodlightActivityGroupsDelete
    :: Int64 -- ^ 'fagdProFileId'
    -> Int64 -- ^ 'fagdId'
    -> FloodlightActivityGroupsDelete
floodlightActivityGroupsDelete pFagdProFileId_ pFagdId_ =
    FloodlightActivityGroupsDelete
    { _fagdProFileId = _Coerce # pFagdProFileId_
    , _fagdId = _Coerce # pFagdId_
    }

-- | User profile ID associated with this request.
fagdProFileId :: Lens' FloodlightActivityGroupsDelete Int64
fagdProFileId
  = lens _fagdProFileId
      (\ s a -> s{_fagdProFileId = a})
      . _Coerce

-- | Floodlight activity Group ID.
fagdId :: Lens' FloodlightActivityGroupsDelete Int64
fagdId
  = lens _fagdId (\ s a -> s{_fagdId = a}) . _Coerce

instance GoogleRequest FloodlightActivityGroupsDelete
         where
        type Rs FloodlightActivityGroupsDelete = ()
        type Scopes FloodlightActivityGroupsDelete =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient FloodlightActivityGroupsDelete{..}
          = go _fagdProFileId _fagdId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FloodlightActivityGroupsDeleteResource)
                      mempty
