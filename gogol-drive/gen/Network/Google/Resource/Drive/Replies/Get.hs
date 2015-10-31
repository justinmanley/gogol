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
-- Module      : Network.Google.Resource.Drive.Replies.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a reply.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.replies.get@.
module Network.Google.Resource.Drive.Replies.Get
    (
    -- * REST Resource
      RepliesGetResource

    -- * Creating a Request
    , repliesGet
    , RepliesGet

    -- * Request Lenses
    , rgReplyId
    , rgFileId
    , rgCommentId
    , rgIncludeDeleted
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.replies.get@ method which the
-- 'RepliesGet' request conforms to.
type RepliesGetResource =
     "drive" :>
       "v2" :>
         "files" :>
           Capture "fileId" Text :>
             "comments" :>
               Capture "commentId" Text :>
                 "replies" :>
                   Capture "replyId" Text :>
                     QueryParam "includeDeleted" Bool :>
                       QueryParam "alt" AltJSON :> Get '[JSON] CommentReply

-- | Gets a reply.
--
-- /See:/ 'repliesGet' smart constructor.
data RepliesGet = RepliesGet
    { _rgReplyId        :: !Text
    , _rgFileId         :: !Text
    , _rgCommentId      :: !Text
    , _rgIncludeDeleted :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RepliesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgReplyId'
--
-- * 'rgFileId'
--
-- * 'rgCommentId'
--
-- * 'rgIncludeDeleted'
repliesGet
    :: Text -- ^ 'rgReplyId'
    -> Text -- ^ 'rgFileId'
    -> Text -- ^ 'rgCommentId'
    -> RepliesGet
repliesGet pRgReplyId_ pRgFileId_ pRgCommentId_ =
    RepliesGet
    { _rgReplyId = pRgReplyId_
    , _rgFileId = pRgFileId_
    , _rgCommentId = pRgCommentId_
    , _rgIncludeDeleted = False
    }

-- | The ID of the reply.
rgReplyId :: Lens' RepliesGet Text
rgReplyId
  = lens _rgReplyId (\ s a -> s{_rgReplyId = a})

-- | The ID of the file.
rgFileId :: Lens' RepliesGet Text
rgFileId = lens _rgFileId (\ s a -> s{_rgFileId = a})

-- | The ID of the comment.
rgCommentId :: Lens' RepliesGet Text
rgCommentId
  = lens _rgCommentId (\ s a -> s{_rgCommentId = a})

-- | If set, this will succeed when retrieving a deleted reply.
rgIncludeDeleted :: Lens' RepliesGet Bool
rgIncludeDeleted
  = lens _rgIncludeDeleted
      (\ s a -> s{_rgIncludeDeleted = a})

instance GoogleRequest RepliesGet where
        type Rs RepliesGet = CommentReply
        type Scopes RepliesGet =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient RepliesGet{..}
          = go _rgFileId _rgCommentId _rgReplyId
              (Just _rgIncludeDeleted)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy RepliesGetResource)
                      mempty
