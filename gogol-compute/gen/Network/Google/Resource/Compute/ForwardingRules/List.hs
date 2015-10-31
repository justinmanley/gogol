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
-- Module      : Network.Google.Resource.Compute.ForwardingRules.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of ForwardingRule resources available to the
-- specified project and region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.forwardingRules.list@.
module Network.Google.Resource.Compute.ForwardingRules.List
    (
    -- * REST Resource
      ForwardingRulesListResource

    -- * Creating a Request
    , forwardingRulesList
    , ForwardingRulesList

    -- * Request Lenses
    , frlProject
    , frlFilter
    , frlRegion
    , frlPageToken
    , frlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.forwardingRules.list@ method which the
-- 'ForwardingRulesList' request conforms to.
type ForwardingRulesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "forwardingRules" :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ForwardingRuleList

-- | Retrieves the list of ForwardingRule resources available to the
-- specified project and region.
--
-- /See:/ 'forwardingRulesList' smart constructor.
data ForwardingRulesList = ForwardingRulesList
    { _frlProject    :: !Text
    , _frlFilter     :: !(Maybe Text)
    , _frlRegion     :: !Text
    , _frlPageToken  :: !(Maybe Text)
    , _frlMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ForwardingRulesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frlProject'
--
-- * 'frlFilter'
--
-- * 'frlRegion'
--
-- * 'frlPageToken'
--
-- * 'frlMaxResults'
forwardingRulesList
    :: Text -- ^ 'frlProject'
    -> Text -- ^ 'frlRegion'
    -> ForwardingRulesList
forwardingRulesList pFrlProject_ pFrlRegion_ =
    ForwardingRulesList
    { _frlProject = pFrlProject_
    , _frlFilter = Nothing
    , _frlRegion = pFrlRegion_
    , _frlPageToken = Nothing
    , _frlMaxResults = 500
    }

-- | Name of the project scoping this request.
frlProject :: Lens' ForwardingRulesList Text
frlProject
  = lens _frlProject (\ s a -> s{_frlProject = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
frlFilter :: Lens' ForwardingRulesList (Maybe Text)
frlFilter
  = lens _frlFilter (\ s a -> s{_frlFilter = a})

-- | Name of the region scoping this request.
frlRegion :: Lens' ForwardingRulesList Text
frlRegion
  = lens _frlRegion (\ s a -> s{_frlRegion = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
frlPageToken :: Lens' ForwardingRulesList (Maybe Text)
frlPageToken
  = lens _frlPageToken (\ s a -> s{_frlPageToken = a})

-- | Maximum count of results to be returned.
frlMaxResults :: Lens' ForwardingRulesList Word32
frlMaxResults
  = lens _frlMaxResults
      (\ s a -> s{_frlMaxResults = a})
      . _Coerce

instance GoogleRequest ForwardingRulesList where
        type Rs ForwardingRulesList = ForwardingRuleList
        type Scopes ForwardingRulesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ForwardingRulesList{..}
          = go _frlProject _frlRegion _frlFilter _frlPageToken
              (Just _frlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ForwardingRulesListResource)
                      mempty
