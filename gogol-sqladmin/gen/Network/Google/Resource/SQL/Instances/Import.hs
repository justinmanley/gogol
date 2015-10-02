{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.SQL.Instances.Import
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Imports data into a Cloud SQL instance from a MySQL dump file in Google
-- Cloud Storage.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLInstancesImport@.
module Network.Google.Resource.SQL.Instances.Import
    (
    -- * REST Resource
      InstancesImportResource

    -- * Creating a Request
    , instancesImport'
    , InstancesImport'

    -- * Request Lenses
    , insQuotaUser
    , insPrettyPrint
    , insProject
    , insUserIP
    , insKey
    , insOAuthToken
    , insInstancesImportRequest
    , insFields
    , insInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLInstancesImport@ which the
-- 'InstancesImport'' request conforms to.
type InstancesImportResource =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "import" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] InstancesImportRequest :>
                               Post '[JSON] Operation

-- | Imports data into a Cloud SQL instance from a MySQL dump file in Google
-- Cloud Storage.
--
-- /See:/ 'instancesImport'' smart constructor.
data InstancesImport' = InstancesImport'
    { _insQuotaUser              :: !(Maybe Text)
    , _insPrettyPrint            :: !Bool
    , _insProject                :: !Text
    , _insUserIP                 :: !(Maybe Text)
    , _insKey                    :: !(Maybe Key)
    , _insOAuthToken             :: !(Maybe OAuthToken)
    , _insInstancesImportRequest :: !InstancesImportRequest
    , _insFields                 :: !(Maybe Text)
    , _insInstance               :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesImport'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'insQuotaUser'
--
-- * 'insPrettyPrint'
--
-- * 'insProject'
--
-- * 'insUserIP'
--
-- * 'insKey'
--
-- * 'insOAuthToken'
--
-- * 'insInstancesImportRequest'
--
-- * 'insFields'
--
-- * 'insInstance'
instancesImport'
    :: Text -- ^ 'project'
    -> InstancesImportRequest -- ^ 'InstancesImportRequest'
    -> Text -- ^ 'instance'
    -> InstancesImport'
instancesImport' pInsProject_ pInsInstancesImportRequest_ pInsInstance_ =
    InstancesImport'
    { _insQuotaUser = Nothing
    , _insPrettyPrint = True
    , _insProject = pInsProject_
    , _insUserIP = Nothing
    , _insKey = Nothing
    , _insOAuthToken = Nothing
    , _insInstancesImportRequest = pInsInstancesImportRequest_
    , _insFields = Nothing
    , _insInstance = pInsInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
insQuotaUser :: Lens' InstancesImport' (Maybe Text)
insQuotaUser
  = lens _insQuotaUser (\ s a -> s{_insQuotaUser = a})

-- | Returns response with indentations and line breaks.
insPrettyPrint :: Lens' InstancesImport' Bool
insPrettyPrint
  = lens _insPrettyPrint
      (\ s a -> s{_insPrettyPrint = a})

-- | Project ID of the project that contains the instance.
insProject :: Lens' InstancesImport' Text
insProject
  = lens _insProject (\ s a -> s{_insProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
insUserIP :: Lens' InstancesImport' (Maybe Text)
insUserIP
  = lens _insUserIP (\ s a -> s{_insUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
insKey :: Lens' InstancesImport' (Maybe Key)
insKey = lens _insKey (\ s a -> s{_insKey = a})

-- | OAuth 2.0 token for the current user.
insOAuthToken :: Lens' InstancesImport' (Maybe OAuthToken)
insOAuthToken
  = lens _insOAuthToken
      (\ s a -> s{_insOAuthToken = a})

-- | Multipart request metadata.
insInstancesImportRequest :: Lens' InstancesImport' InstancesImportRequest
insInstancesImportRequest
  = lens _insInstancesImportRequest
      (\ s a -> s{_insInstancesImportRequest = a})

-- | Selector specifying which fields to include in a partial response.
insFields :: Lens' InstancesImport' (Maybe Text)
insFields
  = lens _insFields (\ s a -> s{_insFields = a})

-- | Cloud SQL instance ID. This does not include the project ID.
insInstance :: Lens' InstancesImport' Text
insInstance
  = lens _insInstance (\ s a -> s{_insInstance = a})

instance GoogleAuth InstancesImport' where
        authKey = insKey . _Just
        authToken = insOAuthToken . _Just

instance GoogleRequest InstancesImport' where
        type Rs InstancesImport' = Operation
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u InstancesImport'{..}
          = go _insQuotaUser (Just _insPrettyPrint) _insProject
              _insUserIP
              _insKey
              _insOAuthToken
              _insFields
              _insInstance
              (Just AltJSON)
              _insInstancesImportRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstancesImportResource)
                      r
                      u