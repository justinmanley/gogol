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
-- Module      : Network.Google.Resource.Compute.InstanceTemplates.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified instance template.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceTemplates.delete@.
module Network.Google.Resource.Compute.InstanceTemplates.Delete
    (
    -- * REST Resource
      InstanceTemplatesDeleteResource

    -- * Creating a Request
    , instanceTemplatesDelete
    , InstanceTemplatesDelete

    -- * Request Lenses
    , itdProject
    , itdInstanceTemplate
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceTemplates.delete@ method which the
-- 'InstanceTemplatesDelete' request conforms to.
type InstanceTemplatesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "instanceTemplates" :>
                 Capture "instanceTemplate" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified instance template.
--
-- /See:/ 'instanceTemplatesDelete' smart constructor.
data InstanceTemplatesDelete = InstanceTemplatesDelete
    { _itdProject          :: !Text
    , _itdInstanceTemplate :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceTemplatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itdProject'
--
-- * 'itdInstanceTemplate'
instanceTemplatesDelete
    :: Text -- ^ 'itdProject'
    -> Text -- ^ 'itdInstanceTemplate'
    -> InstanceTemplatesDelete
instanceTemplatesDelete pItdProject_ pItdInstanceTemplate_ =
    InstanceTemplatesDelete
    { _itdProject = pItdProject_
    , _itdInstanceTemplate = pItdInstanceTemplate_
    }

-- | The project ID for this request.
itdProject :: Lens' InstanceTemplatesDelete Text
itdProject
  = lens _itdProject (\ s a -> s{_itdProject = a})

-- | The name of the instance template to delete.
itdInstanceTemplate :: Lens' InstanceTemplatesDelete Text
itdInstanceTemplate
  = lens _itdInstanceTemplate
      (\ s a -> s{_itdInstanceTemplate = a})

instance GoogleRequest InstanceTemplatesDelete where
        type Rs InstanceTemplatesDelete = Operation
        type Scopes InstanceTemplatesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstanceTemplatesDelete{..}
          = go _itdProject _itdInstanceTemplate (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceTemplatesDeleteResource)
                      mempty
