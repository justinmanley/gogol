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
-- Module      : Network.Google.Resource.Drive.Revisions.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a revision.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.revisions.delete@.
module Network.Google.Resource.Drive.Revisions.Delete
    (
    -- * REST Resource
      RevisionsDeleteResource

    -- * Creating a Request
    , revisionsDelete
    , RevisionsDelete

    -- * Request Lenses
    , rFileId
    , rRevisionId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.revisions.delete@ method which the
-- 'RevisionsDelete' request conforms to.
type RevisionsDeleteResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "fileId" Text :>
             "revisions" :>
               Capture "revisionId" Text :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a revision.
--
-- /See:/ 'revisionsDelete' smart constructor.
data RevisionsDelete = RevisionsDelete
    { _rFileId     :: !Text
    , _rRevisionId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RevisionsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rFileId'
--
-- * 'rRevisionId'
revisionsDelete
    :: Text -- ^ 'rFileId'
    -> Text -- ^ 'rRevisionId'
    -> RevisionsDelete
revisionsDelete pRFileId_ pRRevisionId_ =
    RevisionsDelete
    { _rFileId = pRFileId_
    , _rRevisionId = pRRevisionId_
    }

-- | The ID of the file.
rFileId :: Lens' RevisionsDelete Text
rFileId = lens _rFileId (\ s a -> s{_rFileId = a})

-- | The ID of the revision.
rRevisionId :: Lens' RevisionsDelete Text
rRevisionId
  = lens _rRevisionId (\ s a -> s{_rRevisionId = a})

instance GoogleRequest RevisionsDelete where
        type Rs RevisionsDelete = ()
        requestClient RevisionsDelete{..}
          = go _rFileId _rRevisionId (Just AltJSON)
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy RevisionsDeleteResource)
                      mempty
