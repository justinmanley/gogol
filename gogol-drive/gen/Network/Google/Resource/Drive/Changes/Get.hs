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
-- Module      : Network.Google.Resource.Drive.Changes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a specific change.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.changes.get@.
module Network.Google.Resource.Drive.Changes.Get
    (
    -- * REST Resource
      ChangesGetResource

    -- * Creating a Request
    , changesGet
    , ChangesGet

    -- * Request Lenses
    , cgChangeId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.changes.get@ method which the
-- 'ChangesGet' request conforms to.
type ChangesGetResource =
     "drive" :>
       "v2" :>
         "changes" :>
           Capture "changeId" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Change

-- | Gets a specific change.
--
-- /See:/ 'changesGet' smart constructor.
newtype ChangesGet = ChangesGet
    { _cgChangeId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgChangeId'
changesGet
    :: Text -- ^ 'cgChangeId'
    -> ChangesGet
changesGet pCgChangeId_ =
    ChangesGet
    { _cgChangeId = pCgChangeId_
    }

-- | The ID of the change.
cgChangeId :: Lens' ChangesGet Text
cgChangeId
  = lens _cgChangeId (\ s a -> s{_cgChangeId = a})

instance GoogleRequest ChangesGet where
        type Rs ChangesGet = Change
        type Scopes ChangesGet =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.apps.readonly",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.metadata",
               "https://www.googleapis.com/auth/drive.metadata.readonly",
               "https://www.googleapis.com/auth/drive.photos.readonly",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient ChangesGet{..}
          = go _cgChangeId (Just AltJSON) driveService
          where go
                  = buildClient (Proxy :: Proxy ChangesGetResource)
                      mempty
