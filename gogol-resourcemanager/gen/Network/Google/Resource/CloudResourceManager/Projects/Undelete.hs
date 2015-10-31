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
-- Module      : Network.Google.Resource.CloudResourceManager.Projects.Undelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores the project identified by the specified \`project_id\` (for
-- example, \`my-project-123\`). You can only use this method for a project
-- that has a lifecycle state of [DELETE_REQUESTED]
-- [google.cloudresourcemanager.projects.v1beta1.LifecycleState.DELETE_REQUESTED].
-- After deletion starts, as indicated by a lifecycle state of
-- [DELETE_IN_PROGRESS]
-- [google.cloudresourcemanager.projects.v1beta1.LifecycleState.DELETE_IN_PROGRESS],
-- the project cannot be restored. The caller must have modify permissions
-- for this project.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.undelete@.
module Network.Google.Resource.CloudResourceManager.Projects.Undelete
    (
    -- * REST Resource
      ProjectsUndeleteResource

    -- * Creating a Request
    , projectsUndelete
    , ProjectsUndelete

    -- * Request Lenses
    , puXgafv
    , puUploadProtocol
    , puPp
    , puAccessToken
    , puUploadType
    , puBearerToken
    , puProjectId
    , puCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.undelete@ method which the
-- 'ProjectsUndelete' request conforms to.
type ProjectsUndeleteResource =
     "v1beta1" :>
       "projects" :>
         CaptureMode "projectId" "undelete" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Restores the project identified by the specified \`project_id\` (for
-- example, \`my-project-123\`). You can only use this method for a project
-- that has a lifecycle state of [DELETE_REQUESTED]
-- [google.cloudresourcemanager.projects.v1beta1.LifecycleState.DELETE_REQUESTED].
-- After deletion starts, as indicated by a lifecycle state of
-- [DELETE_IN_PROGRESS]
-- [google.cloudresourcemanager.projects.v1beta1.LifecycleState.DELETE_IN_PROGRESS],
-- the project cannot be restored. The caller must have modify permissions
-- for this project.
--
-- /See:/ 'projectsUndelete' smart constructor.
data ProjectsUndelete = ProjectsUndelete
    { _puXgafv          :: !(Maybe Text)
    , _puUploadProtocol :: !(Maybe Text)
    , _puPp             :: !Bool
    , _puAccessToken    :: !(Maybe Text)
    , _puUploadType     :: !(Maybe Text)
    , _puBearerToken    :: !(Maybe Text)
    , _puProjectId      :: !Text
    , _puCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puXgafv'
--
-- * 'puUploadProtocol'
--
-- * 'puPp'
--
-- * 'puAccessToken'
--
-- * 'puUploadType'
--
-- * 'puBearerToken'
--
-- * 'puProjectId'
--
-- * 'puCallback'
projectsUndelete
    :: Text -- ^ 'puProjectId'
    -> ProjectsUndelete
projectsUndelete pPuProjectId_ =
    ProjectsUndelete
    { _puXgafv = Nothing
    , _puUploadProtocol = Nothing
    , _puPp = True
    , _puAccessToken = Nothing
    , _puUploadType = Nothing
    , _puBearerToken = Nothing
    , _puProjectId = pPuProjectId_
    , _puCallback = Nothing
    }

-- | V1 error format.
puXgafv :: Lens' ProjectsUndelete (Maybe Text)
puXgafv = lens _puXgafv (\ s a -> s{_puXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
puUploadProtocol :: Lens' ProjectsUndelete (Maybe Text)
puUploadProtocol
  = lens _puUploadProtocol
      (\ s a -> s{_puUploadProtocol = a})

-- | Pretty-print response.
puPp :: Lens' ProjectsUndelete Bool
puPp = lens _puPp (\ s a -> s{_puPp = a})

-- | OAuth access token.
puAccessToken :: Lens' ProjectsUndelete (Maybe Text)
puAccessToken
  = lens _puAccessToken
      (\ s a -> s{_puAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
puUploadType :: Lens' ProjectsUndelete (Maybe Text)
puUploadType
  = lens _puUploadType (\ s a -> s{_puUploadType = a})

-- | OAuth bearer token.
puBearerToken :: Lens' ProjectsUndelete (Maybe Text)
puBearerToken
  = lens _puBearerToken
      (\ s a -> s{_puBearerToken = a})

-- | The project ID (for example, \`foo-bar-123\`). Required.
puProjectId :: Lens' ProjectsUndelete Text
puProjectId
  = lens _puProjectId (\ s a -> s{_puProjectId = a})

-- | JSONP
puCallback :: Lens' ProjectsUndelete (Maybe Text)
puCallback
  = lens _puCallback (\ s a -> s{_puCallback = a})

instance GoogleRequest ProjectsUndelete where
        type Rs ProjectsUndelete = Empty
        type Scopes ProjectsUndelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsUndelete{..}
          = go _puProjectId _puXgafv _puUploadProtocol
              (Just _puPp)
              _puAccessToken
              _puUploadType
              _puBearerToken
              _puCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsUndeleteResource)
                      mempty
