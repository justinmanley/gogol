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
-- Module      : Network.Google.Resource.Drive.Files.GenerateIds
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a set of file IDs which can be provided in insert requests.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.generateIds@.
module Network.Google.Resource.Drive.Files.GenerateIds
    (
    -- * REST Resource
      FilesGenerateIdsResource

    -- * Creating a Request
    , filesGenerateIds
    , FilesGenerateIds

    -- * Request Lenses
    , fgiSpace
    , fgiMaxResults
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.files.generateIds@ method which the
-- 'FilesGenerateIds' request conforms to.
type FilesGenerateIdsResource =
     "drive" :>
       "v2" :>
         "files" :>
           "generateIds" :>
             QueryParam "space" Text :>
               QueryParam "maxResults" (Textual Int32) :>
                 QueryParam "alt" AltJSON :> Get '[JSON] GeneratedIds

-- | Generates a set of file IDs which can be provided in insert requests.
--
-- /See:/ 'filesGenerateIds' smart constructor.
data FilesGenerateIds = FilesGenerateIds
    { _fgiSpace      :: !Text
    , _fgiMaxResults :: !(Textual Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesGenerateIds' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fgiSpace'
--
-- * 'fgiMaxResults'
filesGenerateIds
    :: FilesGenerateIds
filesGenerateIds =
    FilesGenerateIds
    { _fgiSpace = "drive"
    , _fgiMaxResults = 10
    }

-- | The space in which the IDs can be used to create new files. Supported
-- values are \'drive\' and \'appDataFolder\'.
fgiSpace :: Lens' FilesGenerateIds Text
fgiSpace = lens _fgiSpace (\ s a -> s{_fgiSpace = a})

-- | Maximum number of IDs to return.
fgiMaxResults :: Lens' FilesGenerateIds Int32
fgiMaxResults
  = lens _fgiMaxResults
      (\ s a -> s{_fgiMaxResults = a})
      . _Coerce

instance GoogleRequest FilesGenerateIds where
        type Rs FilesGenerateIds = GeneratedIds
        requestClient FilesGenerateIds{..}
          = go (Just _fgiSpace) (Just _fgiMaxResults)
              (Just AltJSON)
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy FilesGenerateIdsResource)
                      mempty
