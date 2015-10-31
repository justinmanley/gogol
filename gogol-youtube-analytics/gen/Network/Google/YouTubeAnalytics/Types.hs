{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.YouTubeAnalytics.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.YouTubeAnalytics.Types
    (
    -- * Service Configuration
      youTubeAnalyticsService

    -- * OAuth Scopes
    , youtubeScope
    , ytAnalyticsReadonlyScope
    , youtubepartnerScope
    , ytAnalyticsMonetaryReadonlyScope
    , youtubeReadonlyScope

    -- * GroupContentDetails
    , GroupContentDetails
    , groupContentDetails
    , gcdItemType
    , gcdItemCount

    -- * Group
    , Group
    , group'
    , gEtag
    , gSnippet
    , gKind
    , gContentDetails
    , gId

    -- * GroupItemResource
    , GroupItemResource
    , groupItemResource
    , girKind
    , girId

    -- * ResultTableColumnHeadersItem
    , ResultTableColumnHeadersItem
    , resultTableColumnHeadersItem
    , rtchiColumnType
    , rtchiName
    , rtchiDataType

    -- * ResultTable
    , ResultTable
    , resultTable
    , rtKind
    , rtRows
    , rtColumnHeaders

    -- * BatchReportDefinition
    , BatchReportDefinition
    , batchReportDefinition
    , brdStatus
    , brdKind
    , brdName
    , brdId
    , brdType

    -- * BatchReport
    , BatchReport
    , batchReport
    , brTimeUpdated
    , brKind
    , brReportId
    , brTimeSpan
    , brOutputs
    , brId

    -- * GroupSnippet
    , GroupSnippet
    , groupSnippet
    , gsPublishedAt
    , gsTitle

    -- * GroupItem
    , GroupItem
    , groupItem
    , giEtag
    , giKind
    , giResource
    , giGroupId
    , giId

    -- * BatchReportDefinitionList
    , BatchReportDefinitionList
    , batchReportDefinitionList
    , brdlKind
    , brdlItems

    -- * BatchReportList
    , BatchReportList
    , batchReportList
    , brlKind
    , brlItems

    -- * BatchReportOutputsItem
    , BatchReportOutputsItem
    , batchReportOutputsItem
    , broiFormat
    , broiDownloadURL
    , broiType

    -- * BatchReportTimeSpan
    , BatchReportTimeSpan
    , batchReportTimeSpan
    , brtsStartTime
    , brtsEndTime

    -- * GroupItemListResponse
    , GroupItemListResponse
    , groupItemListResponse
    , gilrEtag
    , gilrKind
    , gilrItems

    -- * GroupListResponse
    , GroupListResponse
    , groupListResponse
    , glrEtag
    , glrKind
    , glrItems
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeAnalytics.Types.Product
import           Network.Google.YouTubeAnalytics.Types.Sum

-- | Default request referring to version 'v1' of the YouTube Analytics API. This contains the host and root path used as a starting point for constructing service requests.
youTubeAnalyticsService :: Service
youTubeAnalyticsService
  = defaultService (ServiceId "youtubeAnalytics:v1")
      "www.googleapis.com"

-- | Manage your YouTube account
youtubeScope :: Proxy '["https://www.googleapis.com/auth/youtube"]
youtubeScope = Proxy;

-- | View YouTube Analytics reports for your YouTube content
ytAnalyticsReadonlyScope :: Proxy '["https://www.googleapis.com/auth/yt-analytics.readonly"]
ytAnalyticsReadonlyScope = Proxy;

-- | View and manage your assets and associated content on YouTube
youtubepartnerScope :: Proxy '["https://www.googleapis.com/auth/youtubepartner"]
youtubepartnerScope = Proxy;

-- | View monetary and non-monetary YouTube Analytics reports for your
-- YouTube content
ytAnalyticsMonetaryReadonlyScope :: Proxy '["https://www.googleapis.com/auth/yt-analytics-monetary.readonly"]
ytAnalyticsMonetaryReadonlyScope = Proxy;

-- | View your YouTube account
youtubeReadonlyScope :: Proxy '["https://www.googleapis.com/auth/youtube.readonly"]
youtubeReadonlyScope = Proxy;
