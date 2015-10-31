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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Process
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Process a raster collection asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasterCollections.process@.
module Network.Google.Resource.MapsEngine.RasterCollections.Process
    (
    -- * REST Resource
      RasterCollectionsProcessResource

    -- * Creating a Request
    , rasterCollectionsProcess
    , RasterCollectionsProcess

    -- * Request Lenses
    , rcpId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasterCollections.process@ method which the
-- 'RasterCollectionsProcess' request conforms to.
type RasterCollectionsProcessResource =
     "mapsengine" :>
       "v1" :>
         "rasterCollections" :>
           Capture "id" Text :>
             "process" :>
               QueryParam "alt" AltJSON :>
                 Post '[JSON] ProcessResponse

-- | Process a raster collection asset.
--
-- /See:/ 'rasterCollectionsProcess' smart constructor.
newtype RasterCollectionsProcess = RasterCollectionsProcess
    { _rcpId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsProcess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcpId'
rasterCollectionsProcess
    :: Text -- ^ 'rcpId'
    -> RasterCollectionsProcess
rasterCollectionsProcess pRcpId_ =
    RasterCollectionsProcess
    { _rcpId = pRcpId_
    }

-- | The ID of the raster collection.
rcpId :: Lens' RasterCollectionsProcess Text
rcpId = lens _rcpId (\ s a -> s{_rcpId = a})

instance GoogleRequest RasterCollectionsProcess where
        type Rs RasterCollectionsProcess = ProcessResponse
        type Scopes RasterCollectionsProcess =
             '["https://www.googleapis.com/auth/mapsengine"]
        requestClient RasterCollectionsProcess{..}
          = go _rcpId (Just AltJSON) mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy RasterCollectionsProcessResource)
                      mempty
