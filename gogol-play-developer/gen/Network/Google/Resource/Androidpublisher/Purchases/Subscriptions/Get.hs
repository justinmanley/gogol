{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Purchases.Subscriptions.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Checks whether a user\'s subscription purchase is valid and returns its
-- expiry time.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherPurchasesSubscriptionsGet@.
module Androidpublisher.Purchases.Subscriptions.Get
    (
    -- * REST Resource
      PurchasesSubscriptionsGetAPI

    -- * Creating a Request
    , purchasesSubscriptionsGet
    , PurchasesSubscriptionsGet

    -- * Request Lenses
    , psgQuotaUser
    , psgPrettyPrint
    , psgPackageName
    , psgUserIp
    , psgToken
    , psgKey
    , psgOauthToken
    , psgSubscriptionId
    , psgFields
    , psgAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherPurchasesSubscriptionsGet@ which the
-- 'PurchasesSubscriptionsGet' request conforms to.
type PurchasesSubscriptionsGetAPI =
     Capture "packageName" Text :>
       "purchases" :>
         "subscriptions" :>
           Capture "subscriptionId" Text :>
             "tokens" :>
               Capture "token" Text :>
                 Get '[JSON] SubscriptionPurchase

-- | Checks whether a user\'s subscription purchase is valid and returns its
-- expiry time.
--
-- /See:/ 'purchasesSubscriptionsGet' smart constructor.
data PurchasesSubscriptionsGet = PurchasesSubscriptionsGet
    { _psgQuotaUser      :: !(Maybe Text)
    , _psgPrettyPrint    :: !Bool
    , _psgPackageName    :: !Text
    , _psgUserIp         :: !(Maybe Text)
    , _psgToken          :: !Text
    , _psgKey            :: !(Maybe Text)
    , _psgOauthToken     :: !(Maybe Text)
    , _psgSubscriptionId :: !Text
    , _psgFields         :: !(Maybe Text)
    , _psgAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PurchasesSubscriptionsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgQuotaUser'
--
-- * 'psgPrettyPrint'
--
-- * 'psgPackageName'
--
-- * 'psgUserIp'
--
-- * 'psgToken'
--
-- * 'psgKey'
--
-- * 'psgOauthToken'
--
-- * 'psgSubscriptionId'
--
-- * 'psgFields'
--
-- * 'psgAlt'
purchasesSubscriptionsGet
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'token'
    -> Text -- ^ 'subscriptionId'
    -> PurchasesSubscriptionsGet
purchasesSubscriptionsGet pPsgPackageName_ pPsgToken_ pPsgSubscriptionId_ =
    PurchasesSubscriptionsGet
    { _psgQuotaUser = Nothing
    , _psgPrettyPrint = True
    , _psgPackageName = pPsgPackageName_
    , _psgUserIp = Nothing
    , _psgToken = pPsgToken_
    , _psgKey = Nothing
    , _psgOauthToken = Nothing
    , _psgSubscriptionId = pPsgSubscriptionId_
    , _psgFields = Nothing
    , _psgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
psgQuotaUser :: Lens' PurchasesSubscriptionsGet' (Maybe Text)
psgQuotaUser
  = lens _psgQuotaUser (\ s a -> s{_psgQuotaUser = a})

-- | Returns response with indentations and line breaks.
psgPrettyPrint :: Lens' PurchasesSubscriptionsGet' Bool
psgPrettyPrint
  = lens _psgPrettyPrint
      (\ s a -> s{_psgPrettyPrint = a})

-- | The package name of the application for which this subscription was
-- purchased (for example, \'com.some.thing\').
psgPackageName :: Lens' PurchasesSubscriptionsGet' Text
psgPackageName
  = lens _psgPackageName
      (\ s a -> s{_psgPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
psgUserIp :: Lens' PurchasesSubscriptionsGet' (Maybe Text)
psgUserIp
  = lens _psgUserIp (\ s a -> s{_psgUserIp = a})

-- | The token provided to the user\'s device when the subscription was
-- purchased.
psgToken :: Lens' PurchasesSubscriptionsGet' Text
psgToken = lens _psgToken (\ s a -> s{_psgToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psgKey :: Lens' PurchasesSubscriptionsGet' (Maybe Text)
psgKey = lens _psgKey (\ s a -> s{_psgKey = a})

-- | OAuth 2.0 token for the current user.
psgOauthToken :: Lens' PurchasesSubscriptionsGet' (Maybe Text)
psgOauthToken
  = lens _psgOauthToken
      (\ s a -> s{_psgOauthToken = a})

-- | The purchased subscription ID (for example, \'monthly001\').
psgSubscriptionId :: Lens' PurchasesSubscriptionsGet' Text
psgSubscriptionId
  = lens _psgSubscriptionId
      (\ s a -> s{_psgSubscriptionId = a})

-- | Selector specifying which fields to include in a partial response.
psgFields :: Lens' PurchasesSubscriptionsGet' (Maybe Text)
psgFields
  = lens _psgFields (\ s a -> s{_psgFields = a})

-- | Data format for the response.
psgAlt :: Lens' PurchasesSubscriptionsGet' Text
psgAlt = lens _psgAlt (\ s a -> s{_psgAlt = a})

instance GoogleRequest PurchasesSubscriptionsGet'
         where
        type Rs PurchasesSubscriptionsGet' =
             SubscriptionPurchase
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u PurchasesSubscriptionsGet{..}
          = go _psgQuotaUser _psgPrettyPrint _psgPackageName
              _psgUserIp
              _psgToken
              _psgKey
              _psgOauthToken
              _psgSubscriptionId
              _psgFields
              _psgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PurchasesSubscriptionsGetAPI)
                      r
                      u