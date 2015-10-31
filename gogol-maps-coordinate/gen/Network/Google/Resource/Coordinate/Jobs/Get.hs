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
-- Module      : Network.Google.Resource.Coordinate.Jobs.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a job, including all the changes made to the job.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @coordinate.jobs.get@.
module Network.Google.Resource.Coordinate.Jobs.Get
    (
    -- * REST Resource
      JobsGetResource

    -- * Creating a Request
    , jobsGet
    , JobsGet

    -- * Request Lenses
    , jgJobId
    , jgTeamId
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @coordinate.jobs.get@ method which the
-- 'JobsGet' request conforms to.
type JobsGetResource =
     "coordinate" :>
       "v1" :>
         "teams" :>
           Capture "teamId" Text :>
             "jobs" :>
               Capture "jobId" (Textual Word64) :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Job

-- | Retrieves a job, including all the changes made to the job.
--
-- /See:/ 'jobsGet' smart constructor.
data JobsGet = JobsGet
    { _jgJobId  :: !(Textual Word64)
    , _jgTeamId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jgJobId'
--
-- * 'jgTeamId'
jobsGet
    :: Word64 -- ^ 'jgJobId'
    -> Text -- ^ 'jgTeamId'
    -> JobsGet
jobsGet pJgJobId_ pJgTeamId_ =
    JobsGet
    { _jgJobId = _Coerce # pJgJobId_
    , _jgTeamId = pJgTeamId_
    }

-- | Job number
jgJobId :: Lens' JobsGet Word64
jgJobId
  = lens _jgJobId (\ s a -> s{_jgJobId = a}) . _Coerce

-- | Team ID
jgTeamId :: Lens' JobsGet Text
jgTeamId = lens _jgTeamId (\ s a -> s{_jgTeamId = a})

instance GoogleRequest JobsGet where
        type Rs JobsGet = Job
        type Scopes JobsGet =
             '["https://www.googleapis.com/auth/coordinate",
               "https://www.googleapis.com/auth/coordinate.readonly"]
        requestClient JobsGet{..}
          = go _jgTeamId _jgJobId (Just AltJSON)
              mapsCoordinateService
          where go
                  = buildClient (Proxy :: Proxy JobsGetResource) mempty
