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
-- Module      : Network.Google.Resource.ProximityBeacon.Beacons.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns detailed information about the specified beacon.
--
-- /See:/ <https://developers.google.com/beacons/proximity/ Google Proximity Beacon API Reference> for @proximitybeacon.beacons.get@.
module Network.Google.Resource.ProximityBeacon.Beacons.Get
    (
    -- * REST Resource
      BeaconsGetResource

    -- * Creating a Request
    , beaconsGet
    , BeaconsGet

    -- * Request Lenses
    , bgXgafv
    , bgUploadProtocol
    , bgPp
    , bgAccessToken
    , bgBeaconName
    , bgUploadType
    , bgBearerToken
    , bgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ProximityBeacon.Types

-- | A resource alias for @proximitybeacon.beacons.get@ method which the
-- 'BeaconsGet' request conforms to.
type BeaconsGetResource =
     "v1beta1" :>
       Capture "beaconName" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Beacon

-- | Returns detailed information about the specified beacon.
--
-- /See:/ 'beaconsGet' smart constructor.
data BeaconsGet = BeaconsGet
    { _bgXgafv          :: !(Maybe Text)
    , _bgUploadProtocol :: !(Maybe Text)
    , _bgPp             :: !Bool
    , _bgAccessToken    :: !(Maybe Text)
    , _bgBeaconName     :: !Text
    , _bgUploadType     :: !(Maybe Text)
    , _bgBearerToken    :: !(Maybe Text)
    , _bgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BeaconsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgXgafv'
--
-- * 'bgUploadProtocol'
--
-- * 'bgPp'
--
-- * 'bgAccessToken'
--
-- * 'bgBeaconName'
--
-- * 'bgUploadType'
--
-- * 'bgBearerToken'
--
-- * 'bgCallback'
beaconsGet
    :: Text -- ^ 'bgBeaconName'
    -> BeaconsGet
beaconsGet pBgBeaconName_ =
    BeaconsGet
    { _bgXgafv = Nothing
    , _bgUploadProtocol = Nothing
    , _bgPp = True
    , _bgAccessToken = Nothing
    , _bgBeaconName = pBgBeaconName_
    , _bgUploadType = Nothing
    , _bgBearerToken = Nothing
    , _bgCallback = Nothing
    }

-- | V1 error format.
bgXgafv :: Lens' BeaconsGet (Maybe Text)
bgXgafv = lens _bgXgafv (\ s a -> s{_bgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bgUploadProtocol :: Lens' BeaconsGet (Maybe Text)
bgUploadProtocol
  = lens _bgUploadProtocol
      (\ s a -> s{_bgUploadProtocol = a})

-- | Pretty-print response.
bgPp :: Lens' BeaconsGet Bool
bgPp = lens _bgPp (\ s a -> s{_bgPp = a})

-- | OAuth access token.
bgAccessToken :: Lens' BeaconsGet (Maybe Text)
bgAccessToken
  = lens _bgAccessToken
      (\ s a -> s{_bgAccessToken = a})

-- | Beacon that is requested.
bgBeaconName :: Lens' BeaconsGet Text
bgBeaconName
  = lens _bgBeaconName (\ s a -> s{_bgBeaconName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bgUploadType :: Lens' BeaconsGet (Maybe Text)
bgUploadType
  = lens _bgUploadType (\ s a -> s{_bgUploadType = a})

-- | OAuth bearer token.
bgBearerToken :: Lens' BeaconsGet (Maybe Text)
bgBearerToken
  = lens _bgBearerToken
      (\ s a -> s{_bgBearerToken = a})

-- | JSONP
bgCallback :: Lens' BeaconsGet (Maybe Text)
bgCallback
  = lens _bgCallback (\ s a -> s{_bgCallback = a})

instance GoogleRequest BeaconsGet where
        type Rs BeaconsGet = Beacon
        type Scopes BeaconsGet = '[]
        requestClient BeaconsGet{..}
          = go _bgBeaconName _bgXgafv _bgUploadProtocol
              (Just _bgPp)
              _bgAccessToken
              _bgUploadType
              _bgBearerToken
              _bgCallback
              (Just AltJSON)
              proximityBeaconService
          where go
                  = buildClient (Proxy :: Proxy BeaconsGetResource)
                      mempty
