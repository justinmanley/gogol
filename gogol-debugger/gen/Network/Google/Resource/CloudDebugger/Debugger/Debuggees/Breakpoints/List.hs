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
-- Module      : Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all breakpoints of the debuggee that the user has access to.
--
-- /See:/ <https://cloud.google.com/tools/cloud-debugger Google Cloud Debugger API Reference> for @clouddebugger.debugger.debuggees.breakpoints.list@.
module Network.Google.Resource.CloudDebugger.Debugger.Debuggees.Breakpoints.List
    (
    -- * REST Resource
      DebuggerDebuggeesBreakpointsListResource

    -- * Creating a Request
    , debuggerDebuggeesBreakpointsList
    , DebuggerDebuggeesBreakpointsList

    -- * Request Lenses
    , ddblXgafv
    , ddblIncludeInactive
    , ddblUploadProtocol
    , ddblPp
    , ddblAccessToken
    , ddblActionValue
    , ddblUploadType
    , ddblStripResults
    , ddblBearerToken
    , ddblIncludeAllUsers
    , ddblWaitToken
    , ddblDebuggeeId
    , ddblCallback
    ) where

import           Network.Google.Debugger.Types
import           Network.Google.Prelude

-- | A resource alias for @clouddebugger.debugger.debuggees.breakpoints.list@ method which the
-- 'DebuggerDebuggeesBreakpointsList' request conforms to.
type DebuggerDebuggeesBreakpointsListResource =
     "v2" :>
       "debugger" :>
         "debuggees" :>
           Capture "debuggeeId" Text :>
             "breakpoints" :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "includeInactive" Bool :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "action.value" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "stripResults" Bool :>
                               QueryParam "bearer_token" Text :>
                                 QueryParam "includeAllUsers" Bool :>
                                   QueryParam "waitToken" Text :>
                                     QueryParam "callback" Text :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] ListBreakpointsResponse

-- | Lists all breakpoints of the debuggee that the user has access to.
--
-- /See:/ 'debuggerDebuggeesBreakpointsList' smart constructor.
data DebuggerDebuggeesBreakpointsList = DebuggerDebuggeesBreakpointsList
    { _ddblXgafv           :: !(Maybe Text)
    , _ddblIncludeInactive :: !(Maybe Bool)
    , _ddblUploadProtocol  :: !(Maybe Text)
    , _ddblPp              :: !Bool
    , _ddblAccessToken     :: !(Maybe Text)
    , _ddblActionValue     :: !(Maybe Text)
    , _ddblUploadType      :: !(Maybe Text)
    , _ddblStripResults    :: !(Maybe Bool)
    , _ddblBearerToken     :: !(Maybe Text)
    , _ddblIncludeAllUsers :: !(Maybe Bool)
    , _ddblWaitToken       :: !(Maybe Text)
    , _ddblDebuggeeId      :: !Text
    , _ddblCallback        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DebuggerDebuggeesBreakpointsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddblXgafv'
--
-- * 'ddblIncludeInactive'
--
-- * 'ddblUploadProtocol'
--
-- * 'ddblPp'
--
-- * 'ddblAccessToken'
--
-- * 'ddblActionValue'
--
-- * 'ddblUploadType'
--
-- * 'ddblStripResults'
--
-- * 'ddblBearerToken'
--
-- * 'ddblIncludeAllUsers'
--
-- * 'ddblWaitToken'
--
-- * 'ddblDebuggeeId'
--
-- * 'ddblCallback'
debuggerDebuggeesBreakpointsList
    :: Text -- ^ 'ddblDebuggeeId'
    -> DebuggerDebuggeesBreakpointsList
debuggerDebuggeesBreakpointsList pDdblDebuggeeId_ =
    DebuggerDebuggeesBreakpointsList
    { _ddblXgafv = Nothing
    , _ddblIncludeInactive = Nothing
    , _ddblUploadProtocol = Nothing
    , _ddblPp = True
    , _ddblAccessToken = Nothing
    , _ddblActionValue = Nothing
    , _ddblUploadType = Nothing
    , _ddblStripResults = Nothing
    , _ddblBearerToken = Nothing
    , _ddblIncludeAllUsers = Nothing
    , _ddblWaitToken = Nothing
    , _ddblDebuggeeId = pDdblDebuggeeId_
    , _ddblCallback = Nothing
    }

-- | V1 error format.
ddblXgafv :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Text)
ddblXgafv
  = lens _ddblXgafv (\ s a -> s{_ddblXgafv = a})

-- | When set to true the response includes active and inactive breakpoints,
-- otherwise only active breakpoints are returned.
ddblIncludeInactive :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Bool)
ddblIncludeInactive
  = lens _ddblIncludeInactive
      (\ s a -> s{_ddblIncludeInactive = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddblUploadProtocol :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Text)
ddblUploadProtocol
  = lens _ddblUploadProtocol
      (\ s a -> s{_ddblUploadProtocol = a})

-- | Pretty-print response.
ddblPp :: Lens' DebuggerDebuggeesBreakpointsList Bool
ddblPp = lens _ddblPp (\ s a -> s{_ddblPp = a})

-- | OAuth access token.
ddblAccessToken :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Text)
ddblAccessToken
  = lens _ddblAccessToken
      (\ s a -> s{_ddblAccessToken = a})

-- | Only breakpoints with the specified action will pass the filter.
ddblActionValue :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Text)
ddblActionValue
  = lens _ddblActionValue
      (\ s a -> s{_ddblActionValue = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddblUploadType :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Text)
ddblUploadType
  = lens _ddblUploadType
      (\ s a -> s{_ddblUploadType = a})

-- | When set to true the response breakpoints will be stripped of the
-- results fields: stack_frames, evaluated_expressions and variable_table.
ddblStripResults :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Bool)
ddblStripResults
  = lens _ddblStripResults
      (\ s a -> s{_ddblStripResults = a})

-- | OAuth bearer token.
ddblBearerToken :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Text)
ddblBearerToken
  = lens _ddblBearerToken
      (\ s a -> s{_ddblBearerToken = a})

-- | When set to true the response includes the list of breakpoints set by
-- any user, otherwise only breakpoints set by the caller.
ddblIncludeAllUsers :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Bool)
ddblIncludeAllUsers
  = lens _ddblIncludeAllUsers
      (\ s a -> s{_ddblIncludeAllUsers = a})

-- | A wait token that, if specified, blocks the call until the breakpoints
-- list has changed, or a server selected timeout has expired. The value
-- should be set from the last response to ListBreakpoints. The error code
-- ABORTED is returned on wait timeout, which should be called again with
-- the same wait_token.
ddblWaitToken :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Text)
ddblWaitToken
  = lens _ddblWaitToken
      (\ s a -> s{_ddblWaitToken = a})

-- | The debuggee id to list breakpoint from.
ddblDebuggeeId :: Lens' DebuggerDebuggeesBreakpointsList Text
ddblDebuggeeId
  = lens _ddblDebuggeeId
      (\ s a -> s{_ddblDebuggeeId = a})

-- | JSONP
ddblCallback :: Lens' DebuggerDebuggeesBreakpointsList (Maybe Text)
ddblCallback
  = lens _ddblCallback (\ s a -> s{_ddblCallback = a})

instance GoogleRequest
         DebuggerDebuggeesBreakpointsList where
        type Rs DebuggerDebuggeesBreakpointsList =
             ListBreakpointsResponse
        requestClient DebuggerDebuggeesBreakpointsList{..}
          = go _ddblDebuggeeId _ddblXgafv _ddblIncludeInactive
              _ddblUploadProtocol
              (Just _ddblPp)
              _ddblAccessToken
              _ddblActionValue
              _ddblUploadType
              _ddblStripResults
              _ddblBearerToken
              _ddblIncludeAllUsers
              _ddblWaitToken
              _ddblCallback
              (Just AltJSON)
              debuggerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DebuggerDebuggeesBreakpointsListResource)
                      mempty
