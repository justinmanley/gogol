{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.GamesManagement.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.GamesManagement.Types
    (
    -- * Service Configuration
      gamesManagementService

    -- * OAuth Scopes
    , plusLoginScope
    , gamesScope

    -- * GamesPlayerExperienceInfoResource
    , GamesPlayerExperienceInfoResource
    , gamesPlayerExperienceInfoResource
    , gpeirCurrentExperiencePoints
    , gpeirCurrentLevel
    , gpeirNextLevel
    , gpeirLastLevelUpTimestampMillis

    -- * PlayerName
    , PlayerName
    , playerName
    , pnGivenName
    , pnFamilyName

    -- * PlayerScoreResetAllResponse
    , PlayerScoreResetAllResponse
    , playerScoreResetAllResponse
    , psrarResults
    , psrarKind

    -- * GamesPlayedResource
    , GamesPlayedResource
    , gamesPlayedResource
    , gprAutoMatched
    , gprTimeMillis

    -- * GamesPlayerLevelResource
    , GamesPlayerLevelResource
    , gamesPlayerLevelResource
    , gplrMaxExperiencePoints
    , gplrMinExperiencePoints
    , gplrLevel

    -- * PlayerScoreResetResponse
    , PlayerScoreResetResponse
    , playerScoreResetResponse
    , psrrKind
    , psrrResetScoreTimeSpans
    , psrrDefinitionId

    -- * ScoresResetMultipleForAllRequest
    , ScoresResetMultipleForAllRequest
    , scoresResetMultipleForAllRequest
    , srmfarKind
    , srmfarLeaderboardIds

    -- * QuestsResetMultipleForAllRequest
    , QuestsResetMultipleForAllRequest
    , questsResetMultipleForAllRequest
    , qrmfarKind
    , qrmfarQuestIds

    -- * HiddenPlayerList
    , HiddenPlayerList
    , hiddenPlayerList
    , hplNextPageToken
    , hplKind
    , hplItems

    -- * EventsResetMultipleForAllRequest
    , EventsResetMultipleForAllRequest
    , eventsResetMultipleForAllRequest
    , ermfarKind
    , ermfarEventIds

    -- * AchievementResetMultipleForAllRequest
    , AchievementResetMultipleForAllRequest
    , achievementResetMultipleForAllRequest
    , armfarKind
    , armfarAchievementIds

    -- * HiddenPlayer
    , HiddenPlayer
    , hiddenPlayer
    , hpKind
    , hpHiddenTimeMillis
    , hpPlayer

    -- * AchievementResetAllResponse
    , AchievementResetAllResponse
    , achievementResetAllResponse
    , ararResults
    , ararKind

    -- * Player
    , Player
    , player
    , pLastPlayedWith
    , pAvatarImageURL
    , pKind
    , pExperienceInfo
    , pName
    , pDisplayName
    , pTitle
    , pPlayerId

    -- * AchievementResetResponse
    , AchievementResetResponse
    , achievementResetResponse
    , arrUpdateOccurred
    , arrKind
    , arrCurrentState
    , arrDefinitionId
    ) where

import           Network.Google.GamesManagement.Types.Product
import           Network.Google.GamesManagement.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1management' of the Google Play Game Services Management API. This contains the host and root path used as a starting point for constructing service requests.
gamesManagementService :: Service
gamesManagementService
  = defaultService
      (ServiceId "gamesManagement:v1management")
      "www.googleapis.com"

-- | Know your basic profile info and list of people in your circles.
plusLoginScope :: OAuthScope
plusLoginScope = "https://www.googleapis.com/auth/plus.login";

-- | Share your Google+ profile information and view and manage your game
-- activity
gamesScope :: OAuthScope
gamesScope = "https://www.googleapis.com/auth/games";
