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
-- Module      : Network.Google.Resource.AppEngine.Apps.Modules.Versions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the versions of a module.
--
-- /See:/ <https://developers.google.com/appengine/ Google App Engine Admin API Reference> for @appengine.apps.modules.versions.list@.
module Network.Google.Resource.AppEngine.Apps.Modules.Versions.List
    (
    -- * REST Resource
      AppsModulesVersionsListResource

    -- * Creating a Request
    , appsModulesVersionsList
    , AppsModulesVersionsList

    -- * Request Lenses
    , amvlXgafv
    , amvlUploadProtocol
    , amvlPp
    , amvlAccessToken
    , amvlUploadType
    , amvlModulesId
    , amvlBearerToken
    , amvlAppsId
    , amvlView
    , amvlPageToken
    , amvlPageSize
    , amvlCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.modules.versions.list@ method which the
-- 'AppsModulesVersionsList' request conforms to.
type AppsModulesVersionsListResource =
     "v1beta4" :>
       "apps" :>
         Capture "appsId" Text :>
           "modules" :>
             Capture "modulesId" Text :>
               "versions" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "view" Text :>
                               QueryParam "pageToken" Text :>
                                 QueryParam "pageSize" (Textual Int32) :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] ListVersionsResponse

-- | Lists the versions of a module.
--
-- /See:/ 'appsModulesVersionsList' smart constructor.
data AppsModulesVersionsList = AppsModulesVersionsList
    { _amvlXgafv          :: !(Maybe Text)
    , _amvlUploadProtocol :: !(Maybe Text)
    , _amvlPp             :: !Bool
    , _amvlAccessToken    :: !(Maybe Text)
    , _amvlUploadType     :: !(Maybe Text)
    , _amvlModulesId      :: !Text
    , _amvlBearerToken    :: !(Maybe Text)
    , _amvlAppsId         :: !Text
    , _amvlView           :: !(Maybe Text)
    , _amvlPageToken      :: !(Maybe Text)
    , _amvlPageSize       :: !(Maybe (Textual Int32))
    , _amvlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsModulesVersionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amvlXgafv'
--
-- * 'amvlUploadProtocol'
--
-- * 'amvlPp'
--
-- * 'amvlAccessToken'
--
-- * 'amvlUploadType'
--
-- * 'amvlModulesId'
--
-- * 'amvlBearerToken'
--
-- * 'amvlAppsId'
--
-- * 'amvlView'
--
-- * 'amvlPageToken'
--
-- * 'amvlPageSize'
--
-- * 'amvlCallback'
appsModulesVersionsList
    :: Text -- ^ 'amvlModulesId'
    -> Text -- ^ 'amvlAppsId'
    -> AppsModulesVersionsList
appsModulesVersionsList pAmvlModulesId_ pAmvlAppsId_ =
    AppsModulesVersionsList
    { _amvlXgafv = Nothing
    , _amvlUploadProtocol = Nothing
    , _amvlPp = True
    , _amvlAccessToken = Nothing
    , _amvlUploadType = Nothing
    , _amvlModulesId = pAmvlModulesId_
    , _amvlBearerToken = Nothing
    , _amvlAppsId = pAmvlAppsId_
    , _amvlView = Nothing
    , _amvlPageToken = Nothing
    , _amvlPageSize = Nothing
    , _amvlCallback = Nothing
    }

-- | V1 error format.
amvlXgafv :: Lens' AppsModulesVersionsList (Maybe Text)
amvlXgafv
  = lens _amvlXgafv (\ s a -> s{_amvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
amvlUploadProtocol :: Lens' AppsModulesVersionsList (Maybe Text)
amvlUploadProtocol
  = lens _amvlUploadProtocol
      (\ s a -> s{_amvlUploadProtocol = a})

-- | Pretty-print response.
amvlPp :: Lens' AppsModulesVersionsList Bool
amvlPp = lens _amvlPp (\ s a -> s{_amvlPp = a})

-- | OAuth access token.
amvlAccessToken :: Lens' AppsModulesVersionsList (Maybe Text)
amvlAccessToken
  = lens _amvlAccessToken
      (\ s a -> s{_amvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
amvlUploadType :: Lens' AppsModulesVersionsList (Maybe Text)
amvlUploadType
  = lens _amvlUploadType
      (\ s a -> s{_amvlUploadType = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
amvlModulesId :: Lens' AppsModulesVersionsList Text
amvlModulesId
  = lens _amvlModulesId
      (\ s a -> s{_amvlModulesId = a})

-- | OAuth bearer token.
amvlBearerToken :: Lens' AppsModulesVersionsList (Maybe Text)
amvlBearerToken
  = lens _amvlBearerToken
      (\ s a -> s{_amvlBearerToken = a})

-- | Part of \`name\`. Name of the resource requested. For example:
-- \"apps\/myapp\/modules\/default\".
amvlAppsId :: Lens' AppsModulesVersionsList Text
amvlAppsId
  = lens _amvlAppsId (\ s a -> s{_amvlAppsId = a})

-- | Controls the set of fields returned in the \`List\` response.
amvlView :: Lens' AppsModulesVersionsList (Maybe Text)
amvlView = lens _amvlView (\ s a -> s{_amvlView = a})

-- | Continuation token for fetching the next page of results.
amvlPageToken :: Lens' AppsModulesVersionsList (Maybe Text)
amvlPageToken
  = lens _amvlPageToken
      (\ s a -> s{_amvlPageToken = a})

-- | Maximum results to return per page.
amvlPageSize :: Lens' AppsModulesVersionsList (Maybe Int32)
amvlPageSize
  = lens _amvlPageSize (\ s a -> s{_amvlPageSize = a})
      . mapping _Coerce

-- | JSONP
amvlCallback :: Lens' AppsModulesVersionsList (Maybe Text)
amvlCallback
  = lens _amvlCallback (\ s a -> s{_amvlCallback = a})

instance GoogleRequest AppsModulesVersionsList where
        type Rs AppsModulesVersionsList =
             ListVersionsResponse
        type Scopes AppsModulesVersionsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AppsModulesVersionsList{..}
          = go _amvlAppsId _amvlModulesId _amvlXgafv
              _amvlUploadProtocol
              (Just _amvlPp)
              _amvlAccessToken
              _amvlUploadType
              _amvlBearerToken
              _amvlView
              _amvlPageToken
              _amvlPageSize
              _amvlCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsModulesVersionsListResource)
                      mempty
