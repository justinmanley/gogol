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
-- Module      : Network.Google.Resource.MapsEngine.RasterCollections.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Mutate a raster collection asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.rasterCollections.patch@.
module Network.Google.Resource.MapsEngine.RasterCollections.Patch
    (
    -- * REST Resource
      RasterCollectionsPatchResource

    -- * Creating a Request
    , rasterCollectionsPatch
    , RasterCollectionsPatch

    -- * Request Lenses
    , rasPayload
    , rasId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.rasterCollections.patch@ method which the
-- 'RasterCollectionsPatch' request conforms to.
type RasterCollectionsPatchResource =
     "mapsengine" :>
       "v1" :>
         "rasterCollections" :>
           Capture "id" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] RasterCollection :> Patch '[JSON] ()

-- | Mutate a raster collection asset.
--
-- /See:/ 'rasterCollectionsPatch' smart constructor.
data RasterCollectionsPatch = RasterCollectionsPatch
    { _rasPayload :: !RasterCollection
    , _rasId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RasterCollectionsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rasPayload'
--
-- * 'rasId'
rasterCollectionsPatch
    :: RasterCollection -- ^ 'rasPayload'
    -> Text -- ^ 'rasId'
    -> RasterCollectionsPatch
rasterCollectionsPatch pRasPayload_ pRasId_ =
    RasterCollectionsPatch
    { _rasPayload = pRasPayload_
    , _rasId = pRasId_
    }

-- | Multipart request metadata.
rasPayload :: Lens' RasterCollectionsPatch RasterCollection
rasPayload
  = lens _rasPayload (\ s a -> s{_rasPayload = a})

-- | The ID of the raster collection.
rasId :: Lens' RasterCollectionsPatch Text
rasId = lens _rasId (\ s a -> s{_rasId = a})

instance GoogleRequest RasterCollectionsPatch where
        type Rs RasterCollectionsPatch = ()
        type Scopes RasterCollectionsPatch =
             '["https://www.googleapis.com/auth/mapsengine"]
        requestClient RasterCollectionsPatch{..}
          = go _rasId (Just AltJSON) _rasPayload
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy RasterCollectionsPatchResource)
                      mempty
