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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.RemoveInstances
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes one or more instances from the specified instance group, but
-- does not delete those instances.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroups.removeInstances@.
module Network.Google.Resource.Compute.InstanceGroups.RemoveInstances
    (
    -- * REST Resource
      InstanceGroupsRemoveInstancesResource

    -- * Creating a Request
    , instanceGroupsRemoveInstances
    , InstanceGroupsRemoveInstances

    -- * Request Lenses
    , igriProject
    , igriZone
    , igriPayload
    , igriInstanceGroup
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceGroups.removeInstances@ method which the
-- 'InstanceGroupsRemoveInstances' request conforms to.
type InstanceGroupsRemoveInstancesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instanceGroups" :>
                   Capture "instanceGroup" Text :>
                     "removeInstances" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] InstanceGroupsRemoveInstancesRequest
                           :> Post '[JSON] Operation

-- | Removes one or more instances from the specified instance group, but
-- does not delete those instances.
--
-- /See:/ 'instanceGroupsRemoveInstances' smart constructor.
data InstanceGroupsRemoveInstances = InstanceGroupsRemoveInstances
    { _igriProject       :: !Text
    , _igriZone          :: !Text
    , _igriPayload       :: !InstanceGroupsRemoveInstancesRequest
    , _igriInstanceGroup :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsRemoveInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igriProject'
--
-- * 'igriZone'
--
-- * 'igriPayload'
--
-- * 'igriInstanceGroup'
instanceGroupsRemoveInstances
    :: Text -- ^ 'igriProject'
    -> Text -- ^ 'igriZone'
    -> InstanceGroupsRemoveInstancesRequest -- ^ 'igriPayload'
    -> Text -- ^ 'igriInstanceGroup'
    -> InstanceGroupsRemoveInstances
instanceGroupsRemoveInstances pIgriProject_ pIgriZone_ pIgriPayload_ pIgriInstanceGroup_ =
    InstanceGroupsRemoveInstances
    { _igriProject = pIgriProject_
    , _igriZone = pIgriZone_
    , _igriPayload = pIgriPayload_
    , _igriInstanceGroup = pIgriInstanceGroup_
    }

-- | The project ID for this request.
igriProject :: Lens' InstanceGroupsRemoveInstances Text
igriProject
  = lens _igriProject (\ s a -> s{_igriProject = a})

-- | The name of the zone where the instance group is located.
igriZone :: Lens' InstanceGroupsRemoveInstances Text
igriZone = lens _igriZone (\ s a -> s{_igriZone = a})

-- | Multipart request metadata.
igriPayload :: Lens' InstanceGroupsRemoveInstances InstanceGroupsRemoveInstancesRequest
igriPayload
  = lens _igriPayload (\ s a -> s{_igriPayload = a})

-- | The name of the instance group where the specified instances will be
-- removed.
igriInstanceGroup :: Lens' InstanceGroupsRemoveInstances Text
igriInstanceGroup
  = lens _igriInstanceGroup
      (\ s a -> s{_igriInstanceGroup = a})

instance GoogleRequest InstanceGroupsRemoveInstances
         where
        type Rs InstanceGroupsRemoveInstances = Operation
        type Scopes InstanceGroupsRemoveInstances =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstanceGroupsRemoveInstances{..}
          = go _igriProject _igriZone _igriInstanceGroup
              (Just AltJSON)
              _igriPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstanceGroupsRemoveInstancesResource)
                      mempty
