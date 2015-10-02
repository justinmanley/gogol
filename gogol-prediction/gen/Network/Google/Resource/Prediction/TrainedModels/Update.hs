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
-- Module      : Network.Google.Resource.Prediction.TrainedModels.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add new data to a trained model.
--
-- /See:/ <https://developers.google.com/prediction/docs/developer-guide Prediction API Reference> for @PredictionTrainedModelsUpdate@.
module Network.Google.Resource.Prediction.TrainedModels.Update
    (
    -- * REST Resource
      TrainedModelsUpdateResource

    -- * Creating a Request
    , trainedModelsUpdate'
    , TrainedModelsUpdate'

    -- * Request Lenses
    , tmuQuotaUser
    , tmuPrettyPrint
    , tmuProject
    , tmuUserIP
    , tmuKey
    , tmuId
    , tmuOAuthToken
    , tmuFields
    , tmuUpdate
    ) where

import           Network.Google.Prediction.Types
import           Network.Google.Prelude

-- | A resource alias for @PredictionTrainedModelsUpdate@ which the
-- 'TrainedModelsUpdate'' request conforms to.
type TrainedModelsUpdateResource =
     Capture "project" Text :>
       "trainedmodels" :>
         Capture "id" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Update :> Put '[JSON] Insert2

-- | Add new data to a trained model.
--
-- /See:/ 'trainedModelsUpdate'' smart constructor.
data TrainedModelsUpdate' = TrainedModelsUpdate'
    { _tmuQuotaUser   :: !(Maybe Text)
    , _tmuPrettyPrint :: !Bool
    , _tmuProject     :: !Text
    , _tmuUserIP      :: !(Maybe Text)
    , _tmuKey         :: !(Maybe Key)
    , _tmuId          :: !Text
    , _tmuOAuthToken  :: !(Maybe OAuthToken)
    , _tmuFields      :: !(Maybe Text)
    , _tmuUpdate      :: !Update
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TrainedModelsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmuQuotaUser'
--
-- * 'tmuPrettyPrint'
--
-- * 'tmuProject'
--
-- * 'tmuUserIP'
--
-- * 'tmuKey'
--
-- * 'tmuId'
--
-- * 'tmuOAuthToken'
--
-- * 'tmuFields'
--
-- * 'tmuUpdate'
trainedModelsUpdate'
    :: Text -- ^ 'project'
    -> Text -- ^ 'id'
    -> Update -- ^ 'Update'
    -> TrainedModelsUpdate'
trainedModelsUpdate' pTmuProject_ pTmuId_ pTmuUpdate_ =
    TrainedModelsUpdate'
    { _tmuQuotaUser = Nothing
    , _tmuPrettyPrint = True
    , _tmuProject = pTmuProject_
    , _tmuUserIP = Nothing
    , _tmuKey = Nothing
    , _tmuId = pTmuId_
    , _tmuOAuthToken = Nothing
    , _tmuFields = Nothing
    , _tmuUpdate = pTmuUpdate_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tmuQuotaUser :: Lens' TrainedModelsUpdate' (Maybe Text)
tmuQuotaUser
  = lens _tmuQuotaUser (\ s a -> s{_tmuQuotaUser = a})

-- | Returns response with indentations and line breaks.
tmuPrettyPrint :: Lens' TrainedModelsUpdate' Bool
tmuPrettyPrint
  = lens _tmuPrettyPrint
      (\ s a -> s{_tmuPrettyPrint = a})

-- | The project associated with the model.
tmuProject :: Lens' TrainedModelsUpdate' Text
tmuProject
  = lens _tmuProject (\ s a -> s{_tmuProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tmuUserIP :: Lens' TrainedModelsUpdate' (Maybe Text)
tmuUserIP
  = lens _tmuUserIP (\ s a -> s{_tmuUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tmuKey :: Lens' TrainedModelsUpdate' (Maybe Key)
tmuKey = lens _tmuKey (\ s a -> s{_tmuKey = a})

-- | The unique name for the predictive model.
tmuId :: Lens' TrainedModelsUpdate' Text
tmuId = lens _tmuId (\ s a -> s{_tmuId = a})

-- | OAuth 2.0 token for the current user.
tmuOAuthToken :: Lens' TrainedModelsUpdate' (Maybe OAuthToken)
tmuOAuthToken
  = lens _tmuOAuthToken
      (\ s a -> s{_tmuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tmuFields :: Lens' TrainedModelsUpdate' (Maybe Text)
tmuFields
  = lens _tmuFields (\ s a -> s{_tmuFields = a})

-- | Multipart request metadata.
tmuUpdate :: Lens' TrainedModelsUpdate' Update
tmuUpdate
  = lens _tmuUpdate (\ s a -> s{_tmuUpdate = a})

instance GoogleAuth TrainedModelsUpdate' where
        authKey = tmuKey . _Just
        authToken = tmuOAuthToken . _Just

instance GoogleRequest TrainedModelsUpdate' where
        type Rs TrainedModelsUpdate' = Insert2
        request = requestWithRoute defReq predictionURL
        requestWithRoute r u TrainedModelsUpdate'{..}
          = go _tmuQuotaUser (Just _tmuPrettyPrint) _tmuProject
              _tmuUserIP
              _tmuKey
              _tmuId
              _tmuOAuthToken
              _tmuFields
              (Just AltJSON)
              _tmuUpdate
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TrainedModelsUpdateResource)
                      r
                      u