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
-- Module      : Network.Google.Resource.TagManager.Accounts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GTM Accounts that a user has access to.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @tagmanager.accounts.list@.
module Network.Google.Resource.TagManager.Accounts.List
    (
    -- * REST Resource
      AccountsListResource

    -- * Creating a Request
    , accountsList
    , AccountsList

    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @tagmanager.accounts.list@ method which the
-- 'AccountsList' request conforms to.
type AccountsListResource =
     "tagmanager" :>
       "v1" :>
         "accounts" :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] ListAccountsResponse

-- | Lists all GTM Accounts that a user has access to.
--
-- /See:/ 'accountsList' smart constructor.
data AccountsList =
    AccountsList
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsList' with the minimum fields required to make a request.
--
accountsList
    :: AccountsList
accountsList = AccountsList

instance GoogleRequest AccountsList where
        type Rs AccountsList = ListAccountsResponse
        type Scopes AccountsList =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers",
               "https://www.googleapis.com/auth/tagmanager.manage.accounts",
               "https://www.googleapis.com/auth/tagmanager.readonly"]
        requestClient AccountsList{}
          = go (Just AltJSON) tagManagerService
          where go
                  = buildClient (Proxy :: Proxy AccountsListResource)
                      mempty
