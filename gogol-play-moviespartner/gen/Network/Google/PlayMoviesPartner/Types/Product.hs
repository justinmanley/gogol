{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PlayMoviesPartner.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PlayMoviesPartner.Types.Product where

import           Network.Google.PlayMoviesPartner.Types.Sum
import           Network.Google.Prelude

-- | An Avail describes the Availability Window of a specific Edit in a given
-- country, which means the period Google is allowed to sell or rent the
-- Edit. Avails are exposed in EMA format Version 1.6b (available at
-- http:\/\/www.movielabs.com\/md\/avails\/) Studios can see the Avails for
-- the Titles they own. Post-production houses cannot see any Avails.
--
-- /See:/ 'avail' smart constructor.
data Avail = Avail
    { _aAltId                     :: !(Maybe Text)
    , _aPphNames                  :: !(Maybe [Text])
    , _aCaptionExemption          :: !(Maybe Text)
    , _aRatingSystem              :: !(Maybe Text)
    , _aSuppressionLiftDate       :: !(Maybe Text)
    , _aEpisodeNumber             :: !(Maybe Text)
    , _aPriceType                 :: !(Maybe Text)
    , _aStoreLanguage             :: !(Maybe Text)
    , _aEpisodeAltId              :: !(Maybe Text)
    , _aStart                     :: !(Maybe Text)
    , _aTerritory                 :: !(Maybe Text)
    , _aEpisodeTitleInternalAlias :: !(Maybe Text)
    , _aLicenseType               :: !(Maybe Text)
    , _aSeasonNumber              :: !(Maybe Text)
    , _aWorkType                  :: !(Maybe Text)
    , _aRatingValue               :: !(Maybe Text)
    , _aSeasonTitleInternalAlias  :: !(Maybe Text)
    , _aContentId                 :: !(Maybe Text)
    , _aVideoId                   :: !(Maybe Text)
    , _aSeriesAltId               :: !(Maybe Text)
    , _aEnd                       :: !(Maybe Text)
    , _aSeriesTitleInternalAlias  :: !(Maybe Text)
    , _aDisplayName               :: !(Maybe Text)
    , _aReleaseDate               :: !(Maybe Text)
    , _aFormatProFile             :: !(Maybe Text)
    , _aRatingReason              :: !(Maybe Text)
    , _aEncodeId                  :: !(Maybe Text)
    , _aPriceValue                :: !(Maybe Text)
    , _aCaptionIncluded           :: !(Maybe Bool)
    , _aProductId                 :: !(Maybe Text)
    , _aSeasonAltId               :: !(Maybe Text)
    , _aTitleInternalAlias        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Avail' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aAltId'
--
-- * 'aPphNames'
--
-- * 'aCaptionExemption'
--
-- * 'aRatingSystem'
--
-- * 'aSuppressionLiftDate'
--
-- * 'aEpisodeNumber'
--
-- * 'aPriceType'
--
-- * 'aStoreLanguage'
--
-- * 'aEpisodeAltId'
--
-- * 'aStart'
--
-- * 'aTerritory'
--
-- * 'aEpisodeTitleInternalAlias'
--
-- * 'aLicenseType'
--
-- * 'aSeasonNumber'
--
-- * 'aWorkType'
--
-- * 'aRatingValue'
--
-- * 'aSeasonTitleInternalAlias'
--
-- * 'aContentId'
--
-- * 'aVideoId'
--
-- * 'aSeriesAltId'
--
-- * 'aEnd'
--
-- * 'aSeriesTitleInternalAlias'
--
-- * 'aDisplayName'
--
-- * 'aReleaseDate'
--
-- * 'aFormatProFile'
--
-- * 'aRatingReason'
--
-- * 'aEncodeId'
--
-- * 'aPriceValue'
--
-- * 'aCaptionIncluded'
--
-- * 'aProductId'
--
-- * 'aSeasonAltId'
--
-- * 'aTitleInternalAlias'
avail
    :: Avail
avail =
    Avail
    { _aAltId = Nothing
    , _aPphNames = Nothing
    , _aCaptionExemption = Nothing
    , _aRatingSystem = Nothing
    , _aSuppressionLiftDate = Nothing
    , _aEpisodeNumber = Nothing
    , _aPriceType = Nothing
    , _aStoreLanguage = Nothing
    , _aEpisodeAltId = Nothing
    , _aStart = Nothing
    , _aTerritory = Nothing
    , _aEpisodeTitleInternalAlias = Nothing
    , _aLicenseType = Nothing
    , _aSeasonNumber = Nothing
    , _aWorkType = Nothing
    , _aRatingValue = Nothing
    , _aSeasonTitleInternalAlias = Nothing
    , _aContentId = Nothing
    , _aVideoId = Nothing
    , _aSeriesAltId = Nothing
    , _aEnd = Nothing
    , _aSeriesTitleInternalAlias = Nothing
    , _aDisplayName = Nothing
    , _aReleaseDate = Nothing
    , _aFormatProFile = Nothing
    , _aRatingReason = Nothing
    , _aEncodeId = Nothing
    , _aPriceValue = Nothing
    , _aCaptionIncluded = Nothing
    , _aProductId = Nothing
    , _aSeasonAltId = Nothing
    , _aTitleInternalAlias = Nothing
    }

-- | Other identifier referring to the Edit, as defined by partner. Example:
-- \"GOOGLER_2006\"
aAltId :: Lens' Avail (Maybe Text)
aAltId = lens _aAltId (\ s a -> s{_aAltId = a})

-- | Name of the post-production houses that manage the Avail. Not part of
-- EMA Specs.
aPphNames :: Lens' Avail [Text]
aPphNames
  = lens _aPphNames (\ s a -> s{_aPphNames = a}) .
      _Default
      . _Coerce

-- | Communicating an exempt category as defined by FCC regulations. It is
-- not required for non-US Avails. Example: \"1\"
aCaptionExemption :: Lens' Avail (Maybe Text)
aCaptionExemption
  = lens _aCaptionExemption
      (\ s a -> s{_aCaptionExemption = a})

-- | Rating system applied to the version of title within territory of Avail.
-- Rating systems should be formatted as per [EMA ratings
-- spec](http:\/\/www.movielabs.com\/md\/ratings\/) Example: \"MPAA\"
aRatingSystem :: Lens' Avail (Maybe Text)
aRatingSystem
  = lens _aRatingSystem
      (\ s a -> s{_aRatingSystem = a})

-- | First date an Edit could be publically announced as becoming available
-- at a specific future date in territory of Avail. *Not* the Avail start
-- date or pre-order start date. Format is YYYY-MM-DD. Only available for
-- pre-orders. Example: \"2012-12-10\"
aSuppressionLiftDate :: Lens' Avail (Maybe Text)
aSuppressionLiftDate
  = lens _aSuppressionLiftDate
      (\ s a -> s{_aSuppressionLiftDate = a})

-- | The number assigned to the episode within a season. Only available on TV
-- Avails. Example: \"3\".
aEpisodeNumber :: Lens' Avail (Maybe Text)
aEpisodeNumber
  = lens _aEpisodeNumber
      (\ s a -> s{_aEpisodeNumber = a})

-- | Type of pricing that should be applied to this Avail based on how the
-- partner classify them. Example: \"Tier\", \"WSP\", \"SRP\", or
-- \"Category\".
aPriceType :: Lens' Avail (Maybe Text)
aPriceType
  = lens _aPriceType (\ s a -> s{_aPriceType = a})

-- | Spoken language of the intended audience. Language shall be encoded in
-- accordance with RFC 5646. Example: \"fr\".
aStoreLanguage :: Lens' Avail (Maybe Text)
aStoreLanguage
  = lens _aStoreLanguage
      (\ s a -> s{_aStoreLanguage = a})

-- | Other identifier referring to the episode, as defined by partner. Only
-- available on TV avails. Example: \"rs_googlers_s1_3\".
aEpisodeAltId :: Lens' Avail (Maybe Text)
aEpisodeAltId
  = lens _aEpisodeAltId
      (\ s a -> s{_aEpisodeAltId = a})

-- | Start of term in YYYY-MM-DD format in the timezone of the country of the
-- Avail. Example: \"2013-05-14\".
aStart :: Lens' Avail (Maybe Text)
aStart = lens _aStart (\ s a -> s{_aStart = a})

-- | ISO 3166-1 alpha-2 country code for the country or territory of this
-- Avail. For Avails, we use Territory in lieu of Country to comply with
-- EMA specifications. But please note that Territory and Country identify
-- the same thing. Example: \"US\".
aTerritory :: Lens' Avail (Maybe Text)
aTerritory
  = lens _aTerritory (\ s a -> s{_aTerritory = a})

-- | OPTIONAL.TV Only. Title used by involved parties to refer to this
-- episode. Only available on TV Avails. Example: \"Coding at Google\".
aEpisodeTitleInternalAlias :: Lens' Avail (Maybe Text)
aEpisodeTitleInternalAlias
  = lens _aEpisodeTitleInternalAlias
      (\ s a -> s{_aEpisodeTitleInternalAlias = a})

-- | Type of transaction.
aLicenseType :: Lens' Avail (Maybe Text)
aLicenseType
  = lens _aLicenseType (\ s a -> s{_aLicenseType = a})

-- | The number assigned to the season within a series. Only available on TV
-- Avails. Example: \"1\".
aSeasonNumber :: Lens' Avail (Maybe Text)
aSeasonNumber
  = lens _aSeasonNumber
      (\ s a -> s{_aSeasonNumber = a})

-- | Work type as enumerated in EMA.
aWorkType :: Lens' Avail (Maybe Text)
aWorkType
  = lens _aWorkType (\ s a -> s{_aWorkType = a})

-- | Value representing the rating. Ratings should be formatted as per
-- http:\/\/www.movielabs.com\/md\/ratings\/ Example: \"PG\"
aRatingValue :: Lens' Avail (Maybe Text)
aRatingValue
  = lens _aRatingValue (\ s a -> s{_aRatingValue = a})

-- | Title used by involved parties to refer to this season. Only available
-- on TV Avails. Example: \"Googlers, The\".
aSeasonTitleInternalAlias :: Lens' Avail (Maybe Text)
aSeasonTitleInternalAlias
  = lens _aSeasonTitleInternalAlias
      (\ s a -> s{_aSeasonTitleInternalAlias = a})

-- | Title Identifier. This should be the Title Level EIDR. Example:
-- \"10.5240\/1489-49A2-3956-4B2D-FE16-5\".
aContentId :: Lens' Avail (Maybe Text)
aContentId
  = lens _aContentId (\ s a -> s{_aContentId = a})

-- | Google-generated ID identifying the video linked to this Avail, once
-- delivered. Not part of EMA Specs. Example: \'gtry456_xc\'
aVideoId :: Lens' Avail (Maybe Text)
aVideoId = lens _aVideoId (\ s a -> s{_aVideoId = a})

-- | Other identifier referring to the series, as defined by partner. Only
-- available on TV avails. Example: \"rs_googlers\".
aSeriesAltId :: Lens' Avail (Maybe Text)
aSeriesAltId
  = lens _aSeriesAltId (\ s a -> s{_aSeriesAltId = a})

-- | End of term in YYYY-MM-DD format in the timezone of the country of the
-- Avail. \"Open\" if no end date is available. Example: \"2019-02-17\"
aEnd :: Lens' Avail (Maybe Text)
aEnd = lens _aEnd (\ s a -> s{_aEnd = a})

-- | Title used by involved parties to refer to this series. Only available
-- on TV Avails. Example: \"Googlers, The\".
aSeriesTitleInternalAlias :: Lens' Avail (Maybe Text)
aSeriesTitleInternalAlias
  = lens _aSeriesTitleInternalAlias
      (\ s a -> s{_aSeriesTitleInternalAlias = a})

-- | The name of the studio that owns the Edit referred in the Avail. This is
-- the equivalent of \`studio_name\` in other resources, but it follows the
-- EMA nomenclature. Example: \"Google Films\".
aDisplayName :: Lens' Avail (Maybe Text)
aDisplayName
  = lens _aDisplayName (\ s a -> s{_aDisplayName = a})

-- | Release date of the Title in earliest released territory. Typically it
-- is just the year, but it is free-form as per EMA spec. Examples:
-- \"1979\", \"Oct 2014\"
aReleaseDate :: Lens' Avail (Maybe Text)
aReleaseDate
  = lens _aReleaseDate (\ s a -> s{_aReleaseDate = a})

-- | Indicates the format profile covered by the transaction.
aFormatProFile :: Lens' Avail (Maybe Text)
aFormatProFile
  = lens _aFormatProFile
      (\ s a -> s{_aFormatProFile = a})

-- | Value representing the rating reason. Rating reasons should be formatted
-- as per [EMA ratings spec](http:\/\/www.movielabs.com\/md\/ratings\/) and
-- comma-separated for inclusion of multiple reasons. Example: \"L, S, V\"
aRatingReason :: Lens' Avail (Maybe Text)
aRatingReason
  = lens _aRatingReason
      (\ s a -> s{_aRatingReason = a})

-- | Manifestation Identifier. This should be the Manifestation Level EIDR.
-- Example: \"10.2340\/1489-49A2-3956-4B2D-FE16-7\"
aEncodeId :: Lens' Avail (Maybe Text)
aEncodeId
  = lens _aEncodeId (\ s a -> s{_aEncodeId = a})

-- | Value to be applied to the pricing type. Example: \"4\" or \"2.99\"
aPriceValue :: Lens' Avail (Maybe Text)
aPriceValue
  = lens _aPriceValue (\ s a -> s{_aPriceValue = a})

-- | Communicating if caption file will be delivered.
aCaptionIncluded :: Lens' Avail (Maybe Bool)
aCaptionIncluded
  = lens _aCaptionIncluded
      (\ s a -> s{_aCaptionIncluded = a})

-- | Edit Identifier. This should be the Edit Level EIDR. Example:
-- \"10.2340\/1489-49A2-3956-4B2D-FE16-6\"
aProductId :: Lens' Avail (Maybe Text)
aProductId
  = lens _aProductId (\ s a -> s{_aProductId = a})

-- | Other identifier referring to the season, as defined by partner. Only
-- available on TV avails. Example: \"rs_googlers_s1\".
aSeasonAltId :: Lens' Avail (Maybe Text)
aSeasonAltId
  = lens _aSeasonAltId (\ s a -> s{_aSeasonAltId = a})

-- | Title used by involved parties to refer to this content. Example:
-- \"Googlers, The\". Only available on Movie Avails.
aTitleInternalAlias :: Lens' Avail (Maybe Text)
aTitleInternalAlias
  = lens _aTitleInternalAlias
      (\ s a -> s{_aTitleInternalAlias = a})

instance FromJSON Avail where
        parseJSON
          = withObject "Avail"
              (\ o ->
                 Avail <$>
                   (o .:? "altId") <*> (o .:? "pphNames" .!= mempty) <*>
                     (o .:? "captionExemption")
                     <*> (o .:? "ratingSystem")
                     <*> (o .:? "suppressionLiftDate")
                     <*> (o .:? "episodeNumber")
                     <*> (o .:? "priceType")
                     <*> (o .:? "storeLanguage")
                     <*> (o .:? "episodeAltId")
                     <*> (o .:? "start")
                     <*> (o .:? "territory")
                     <*> (o .:? "episodeTitleInternalAlias")
                     <*> (o .:? "licenseType")
                     <*> (o .:? "seasonNumber")
                     <*> (o .:? "workType")
                     <*> (o .:? "ratingValue")
                     <*> (o .:? "seasonTitleInternalAlias")
                     <*> (o .:? "contentId")
                     <*> (o .:? "videoId")
                     <*> (o .:? "seriesAltId")
                     <*> (o .:? "end")
                     <*> (o .:? "seriesTitleInternalAlias")
                     <*> (o .:? "displayName")
                     <*> (o .:? "releaseDate")
                     <*> (o .:? "formatProfile")
                     <*> (o .:? "ratingReason")
                     <*> (o .:? "encodeId")
                     <*> (o .:? "priceValue")
                     <*> (o .:? "captionIncluded")
                     <*> (o .:? "productId")
                     <*> (o .:? "seasonAltId")
                     <*> (o .:? "titleInternalAlias"))

instance ToJSON Avail where
        toJSON Avail{..}
          = object
              (catMaybes
                 [("altId" .=) <$> _aAltId,
                  ("pphNames" .=) <$> _aPphNames,
                  ("captionExemption" .=) <$> _aCaptionExemption,
                  ("ratingSystem" .=) <$> _aRatingSystem,
                  ("suppressionLiftDate" .=) <$> _aSuppressionLiftDate,
                  ("episodeNumber" .=) <$> _aEpisodeNumber,
                  ("priceType" .=) <$> _aPriceType,
                  ("storeLanguage" .=) <$> _aStoreLanguage,
                  ("episodeAltId" .=) <$> _aEpisodeAltId,
                  ("start" .=) <$> _aStart,
                  ("territory" .=) <$> _aTerritory,
                  ("episodeTitleInternalAlias" .=) <$>
                    _aEpisodeTitleInternalAlias,
                  ("licenseType" .=) <$> _aLicenseType,
                  ("seasonNumber" .=) <$> _aSeasonNumber,
                  ("workType" .=) <$> _aWorkType,
                  ("ratingValue" .=) <$> _aRatingValue,
                  ("seasonTitleInternalAlias" .=) <$>
                    _aSeasonTitleInternalAlias,
                  ("contentId" .=) <$> _aContentId,
                  ("videoId" .=) <$> _aVideoId,
                  ("seriesAltId" .=) <$> _aSeriesAltId,
                  ("end" .=) <$> _aEnd,
                  ("seriesTitleInternalAlias" .=) <$>
                    _aSeriesTitleInternalAlias,
                  ("displayName" .=) <$> _aDisplayName,
                  ("releaseDate" .=) <$> _aReleaseDate,
                  ("formatProfile" .=) <$> _aFormatProFile,
                  ("ratingReason" .=) <$> _aRatingReason,
                  ("encodeId" .=) <$> _aEncodeId,
                  ("priceValue" .=) <$> _aPriceValue,
                  ("captionIncluded" .=) <$> _aCaptionIncluded,
                  ("productId" .=) <$> _aProductId,
                  ("seasonAltId" .=) <$> _aSeasonAltId,
                  ("titleInternalAlias" .=) <$> _aTitleInternalAlias])

-- | Response to the \'ListAvails\' method.
--
-- /See:/ 'listAvailsResponse' smart constructor.
data ListAvailsResponse = ListAvailsResponse
    { _larNextPageToken :: !(Maybe Text)
    , _larAvails        :: !(Maybe [Avail])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListAvailsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larNextPageToken'
--
-- * 'larAvails'
listAvailsResponse
    :: ListAvailsResponse
listAvailsResponse =
    ListAvailsResponse
    { _larNextPageToken = Nothing
    , _larAvails = Nothing
    }

-- | See _List methods rules_ for info about this field.
larNextPageToken :: Lens' ListAvailsResponse (Maybe Text)
larNextPageToken
  = lens _larNextPageToken
      (\ s a -> s{_larNextPageToken = a})

-- | List of Avails that match the request criteria.
larAvails :: Lens' ListAvailsResponse [Avail]
larAvails
  = lens _larAvails (\ s a -> s{_larAvails = a}) .
      _Default
      . _Coerce

instance FromJSON ListAvailsResponse where
        parseJSON
          = withObject "ListAvailsResponse"
              (\ o ->
                 ListAvailsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "avails" .!= mempty))

instance ToJSON ListAvailsResponse where
        toJSON ListAvailsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _larNextPageToken,
                  ("avails" .=) <$> _larAvails])

-- | Response to the \'ListExperienceLocales\' method.
--
-- /See:/ 'listExperienceLocalesResponse' smart constructor.
data ListExperienceLocalesResponse = ListExperienceLocalesResponse
    { _lelrNextPageToken     :: !(Maybe Text)
    , _lelrExperienceLocales :: !(Maybe [ExperienceLocale])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListExperienceLocalesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lelrNextPageToken'
--
-- * 'lelrExperienceLocales'
listExperienceLocalesResponse
    :: ListExperienceLocalesResponse
listExperienceLocalesResponse =
    ListExperienceLocalesResponse
    { _lelrNextPageToken = Nothing
    , _lelrExperienceLocales = Nothing
    }

-- | See _List methods rules_ for info about this field.
lelrNextPageToken :: Lens' ListExperienceLocalesResponse (Maybe Text)
lelrNextPageToken
  = lens _lelrNextPageToken
      (\ s a -> s{_lelrNextPageToken = a})

-- | List of ExperienceLocales that match the request criteria.
lelrExperienceLocales :: Lens' ListExperienceLocalesResponse [ExperienceLocale]
lelrExperienceLocales
  = lens _lelrExperienceLocales
      (\ s a -> s{_lelrExperienceLocales = a})
      . _Default
      . _Coerce

instance FromJSON ListExperienceLocalesResponse where
        parseJSON
          = withObject "ListExperienceLocalesResponse"
              (\ o ->
                 ListExperienceLocalesResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "experienceLocales" .!= mempty))

instance ToJSON ListExperienceLocalesResponse where
        toJSON ListExperienceLocalesResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lelrNextPageToken,
                  ("experienceLocales" .=) <$> _lelrExperienceLocales])

-- | Response to the \'ListOrders\' method.
--
-- /See:/ 'listOrdersResponse' smart constructor.
data ListOrdersResponse = ListOrdersResponse
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOrders        :: !(Maybe [Order])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListOrdersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorNextPageToken'
--
-- * 'lorOrders'
listOrdersResponse
    :: ListOrdersResponse
listOrdersResponse =
    ListOrdersResponse
    { _lorNextPageToken = Nothing
    , _lorOrders = Nothing
    }

-- | See _List methods rules_ for info about this field.
lorNextPageToken :: Lens' ListOrdersResponse (Maybe Text)
lorNextPageToken
  = lens _lorNextPageToken
      (\ s a -> s{_lorNextPageToken = a})

-- | List of Orders that match the request criteria.
lorOrders :: Lens' ListOrdersResponse [Order]
lorOrders
  = lens _lorOrders (\ s a -> s{_lorOrders = a}) .
      _Default
      . _Coerce

instance FromJSON ListOrdersResponse where
        parseJSON
          = withObject "ListOrdersResponse"
              (\ o ->
                 ListOrdersResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "orders" .!= mempty))

instance ToJSON ListOrdersResponse where
        toJSON ListOrdersResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lorNextPageToken,
                  ("orders" .=) <$> _lorOrders])

-- | Response to the \'ListStoreInfos\' method.
--
-- /See:/ 'listStoreInfosResponse' smart constructor.
data ListStoreInfosResponse = ListStoreInfosResponse
    { _lsirNextPageToken :: !(Maybe Text)
    , _lsirStoreInfos    :: !(Maybe [StoreInfo])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListStoreInfosResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsirNextPageToken'
--
-- * 'lsirStoreInfos'
listStoreInfosResponse
    :: ListStoreInfosResponse
listStoreInfosResponse =
    ListStoreInfosResponse
    { _lsirNextPageToken = Nothing
    , _lsirStoreInfos = Nothing
    }

-- | See \'List methods rules\' for info about this field.
lsirNextPageToken :: Lens' ListStoreInfosResponse (Maybe Text)
lsirNextPageToken
  = lens _lsirNextPageToken
      (\ s a -> s{_lsirNextPageToken = a})

-- | List of StoreInfos that match the request criteria.
lsirStoreInfos :: Lens' ListStoreInfosResponse [StoreInfo]
lsirStoreInfos
  = lens _lsirStoreInfos
      (\ s a -> s{_lsirStoreInfos = a})
      . _Default
      . _Coerce

instance FromJSON ListStoreInfosResponse where
        parseJSON
          = withObject "ListStoreInfosResponse"
              (\ o ->
                 ListStoreInfosResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "storeInfos" .!= mempty))

instance ToJSON ListStoreInfosResponse where
        toJSON ListStoreInfosResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsirNextPageToken,
                  ("storeInfos" .=) <$> _lsirStoreInfos])

-- | An Order tracks the fulfillment of an Edit when delivered using the
-- legacy, non-component-based delivery. Each Order is uniquely identified
-- by an \`order_id\`, which is generated by Google. Externally, Orders can
-- also be identified by partners using its \`custom_id\` (when provided).
--
-- /See:/ 'order' smart constructor.
data Order = Order
    { _oStatus                 :: !(Maybe Text)
    , _oShowName               :: !(Maybe Text)
    , _oPphName                :: !(Maybe Text)
    , _oEarliestAvailStartTime :: !(Maybe Text)
    , _oStudioName             :: !(Maybe Text)
    , _oReceivedTime           :: !(Maybe Text)
    , _oPriority               :: !(Maybe (Textual Double))
    , _oChannelId              :: !(Maybe Text)
    , _oCustomId               :: !(Maybe Text)
    , _oApprovedTime           :: !(Maybe Text)
    , _oCountries              :: !(Maybe [Text])
    , _oChannelName            :: !(Maybe Text)
    , _oVideoId                :: !(Maybe Text)
    , _oLegacyPriority         :: !(Maybe Text)
    , _oName                   :: !(Maybe Text)
    , _oRejectionNote          :: !(Maybe Text)
    , _oOrderedTime            :: !(Maybe Text)
    , _oSeasonName             :: !(Maybe Text)
    , _oStatusDetail           :: !(Maybe Text)
    , _oType                   :: !(Maybe Text)
    , _oNormalizedPriority     :: !(Maybe Text)
    , _oOrderId                :: !(Maybe Text)
    , _oEpisodeName            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Order' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oStatus'
--
-- * 'oShowName'
--
-- * 'oPphName'
--
-- * 'oEarliestAvailStartTime'
--
-- * 'oStudioName'
--
-- * 'oReceivedTime'
--
-- * 'oPriority'
--
-- * 'oChannelId'
--
-- * 'oCustomId'
--
-- * 'oApprovedTime'
--
-- * 'oCountries'
--
-- * 'oChannelName'
--
-- * 'oVideoId'
--
-- * 'oLegacyPriority'
--
-- * 'oName'
--
-- * 'oRejectionNote'
--
-- * 'oOrderedTime'
--
-- * 'oSeasonName'
--
-- * 'oStatusDetail'
--
-- * 'oType'
--
-- * 'oNormalizedPriority'
--
-- * 'oOrderId'
--
-- * 'oEpisodeName'
order
    :: Order
order =
    Order
    { _oStatus = Nothing
    , _oShowName = Nothing
    , _oPphName = Nothing
    , _oEarliestAvailStartTime = Nothing
    , _oStudioName = Nothing
    , _oReceivedTime = Nothing
    , _oPriority = Nothing
    , _oChannelId = Nothing
    , _oCustomId = Nothing
    , _oApprovedTime = Nothing
    , _oCountries = Nothing
    , _oChannelName = Nothing
    , _oVideoId = Nothing
    , _oLegacyPriority = Nothing
    , _oName = Nothing
    , _oRejectionNote = Nothing
    , _oOrderedTime = Nothing
    , _oSeasonName = Nothing
    , _oStatusDetail = Nothing
    , _oType = Nothing
    , _oNormalizedPriority = Nothing
    , _oOrderId = Nothing
    , _oEpisodeName = Nothing
    }

-- | High-level status of the order.
oStatus :: Lens' Order (Maybe Text)
oStatus = lens _oStatus (\ s a -> s{_oStatus = a})

-- | Default Show name, usually in the language of the country of origin.
-- Only available for TV Edits Example: \"Googlers, The\".
oShowName :: Lens' Order (Maybe Text)
oShowName
  = lens _oShowName (\ s a -> s{_oShowName = a})

-- | Name of the post-production house that manages the Edit ordered.
oPphName :: Lens' Order (Maybe Text)
oPphName = lens _oPphName (\ s a -> s{_oPphName = a})

-- | Timestamp of the earliest start date of the Avails linked to this Order.
oEarliestAvailStartTime :: Lens' Order (Maybe Text)
oEarliestAvailStartTime
  = lens _oEarliestAvailStartTime
      (\ s a -> s{_oEarliestAvailStartTime = a})

-- | Name of the studio that owns the Edit ordered.
oStudioName :: Lens' Order (Maybe Text)
oStudioName
  = lens _oStudioName (\ s a -> s{_oStudioName = a})

-- | Timestamp when the Order was fulfilled.
oReceivedTime :: Lens' Order (Maybe Text)
oReceivedTime
  = lens _oReceivedTime
      (\ s a -> s{_oReceivedTime = a})

-- | Order priority, as defined by Google. The higher the value, the higher
-- the priority. Example: 90
oPriority :: Lens' Order (Maybe Double)
oPriority
  = lens _oPriority (\ s a -> s{_oPriority = a}) .
      mapping _Coerce

-- | YouTube Channel ID that should be used to fulfill the Order. Example:
-- \"UCRG64darCZhb\".
oChannelId :: Lens' Order (Maybe Text)
oChannelId
  = lens _oChannelId (\ s a -> s{_oChannelId = a})

-- | ID that can be used to externally identify an Order. This ID is provided
-- by partners when submitting the Avails. Example: \'GOOGLER_2006\'
oCustomId :: Lens' Order (Maybe Text)
oCustomId
  = lens _oCustomId (\ s a -> s{_oCustomId = a})

-- | Timestamp when the Order was approved.
oApprovedTime :: Lens' Order (Maybe Text)
oApprovedTime
  = lens _oApprovedTime
      (\ s a -> s{_oApprovedTime = a})

-- | Countries where the Order is available, using the \"ISO 3166-1 alpha-2\"
-- format (example: \"US\").
oCountries :: Lens' Order [Text]
oCountries
  = lens _oCountries (\ s a -> s{_oCountries = a}) .
      _Default
      . _Coerce

-- | YouTube Channel Name that should be used to fulfill the Order. Example:
-- \"Google_channel\".
oChannelName :: Lens' Order (Maybe Text)
oChannelName
  = lens _oChannelName (\ s a -> s{_oChannelName = a})

-- | Google-generated ID identifying the video linked to this Order, once
-- delivered. Example: \'gtry456_xc\'.
oVideoId :: Lens' Order (Maybe Text)
oVideoId = lens _oVideoId (\ s a -> s{_oVideoId = a})

-- | Legacy Order priority, as defined by Google. Example: \'P0\'
oLegacyPriority :: Lens' Order (Maybe Text)
oLegacyPriority
  = lens _oLegacyPriority
      (\ s a -> s{_oLegacyPriority = a})

-- | Default Edit name, usually in the language of the country of origin.
-- Example: \"Googlers, The\".
oName :: Lens' Order (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | Field explaining why an Order has been rejected. Example: \"Trailer
-- audio is 2ch mono, please re-deliver in stereo\".
oRejectionNote :: Lens' Order (Maybe Text)
oRejectionNote
  = lens _oRejectionNote
      (\ s a -> s{_oRejectionNote = a})

-- | Timestamp when the Order was created.
oOrderedTime :: Lens' Order (Maybe Text)
oOrderedTime
  = lens _oOrderedTime (\ s a -> s{_oOrderedTime = a})

-- | Default Season name, usually in the language of the country of origin.
-- Only available for TV Edits Example: \"Googlers, The - A Brave New
-- World\".
oSeasonName :: Lens' Order (Maybe Text)
oSeasonName
  = lens _oSeasonName (\ s a -> s{_oSeasonName = a})

-- | Detailed status of the order
oStatusDetail :: Lens' Order (Maybe Text)
oStatusDetail
  = lens _oStatusDetail
      (\ s a -> s{_oStatusDetail = a})

-- | Type of the Edit linked to the Order.
oType :: Lens' Order (Maybe Text)
oType = lens _oType (\ s a -> s{_oType = a})

-- | A simpler representation of the priority.
oNormalizedPriority :: Lens' Order (Maybe Text)
oNormalizedPriority
  = lens _oNormalizedPriority
      (\ s a -> s{_oNormalizedPriority = a})

-- | ID internally generated by Google to uniquely identify an Order.
-- Example: \'abcde12_x\'
oOrderId :: Lens' Order (Maybe Text)
oOrderId = lens _oOrderId (\ s a -> s{_oOrderId = a})

-- | Default Episode name, usually in the language of the country of origin.
-- Only available for TV Edits Example: \"Googlers, The - Pilot\".
oEpisodeName :: Lens' Order (Maybe Text)
oEpisodeName
  = lens _oEpisodeName (\ s a -> s{_oEpisodeName = a})

instance FromJSON Order where
        parseJSON
          = withObject "Order"
              (\ o ->
                 Order <$>
                   (o .:? "status") <*> (o .:? "showName") <*>
                     (o .:? "pphName")
                     <*> (o .:? "earliestAvailStartTime")
                     <*> (o .:? "studioName")
                     <*> (o .:? "receivedTime")
                     <*> (o .:? "priority")
                     <*> (o .:? "channelId")
                     <*> (o .:? "customId")
                     <*> (o .:? "approvedTime")
                     <*> (o .:? "countries" .!= mempty)
                     <*> (o .:? "channelName")
                     <*> (o .:? "videoId")
                     <*> (o .:? "legacyPriority")
                     <*> (o .:? "name")
                     <*> (o .:? "rejectionNote")
                     <*> (o .:? "orderedTime")
                     <*> (o .:? "seasonName")
                     <*> (o .:? "statusDetail")
                     <*> (o .:? "type")
                     <*> (o .:? "normalizedPriority")
                     <*> (o .:? "orderId")
                     <*> (o .:? "episodeName"))

instance ToJSON Order where
        toJSON Order{..}
          = object
              (catMaybes
                 [("status" .=) <$> _oStatus,
                  ("showName" .=) <$> _oShowName,
                  ("pphName" .=) <$> _oPphName,
                  ("earliestAvailStartTime" .=) <$>
                    _oEarliestAvailStartTime,
                  ("studioName" .=) <$> _oStudioName,
                  ("receivedTime" .=) <$> _oReceivedTime,
                  ("priority" .=) <$> _oPriority,
                  ("channelId" .=) <$> _oChannelId,
                  ("customId" .=) <$> _oCustomId,
                  ("approvedTime" .=) <$> _oApprovedTime,
                  ("countries" .=) <$> _oCountries,
                  ("channelName" .=) <$> _oChannelName,
                  ("videoId" .=) <$> _oVideoId,
                  ("legacyPriority" .=) <$> _oLegacyPriority,
                  ("name" .=) <$> _oName,
                  ("rejectionNote" .=) <$> _oRejectionNote,
                  ("orderedTime" .=) <$> _oOrderedTime,
                  ("seasonName" .=) <$> _oSeasonName,
                  ("statusDetail" .=) <$> _oStatusDetail,
                  ("type" .=) <$> _oType,
                  ("normalizedPriority" .=) <$> _oNormalizedPriority,
                  ("orderId" .=) <$> _oOrderId,
                  ("episodeName" .=) <$> _oEpisodeName])

-- | An ExperienceLocale tracks the fulfillment of a Title in a country using
-- a specific language, when delivered using component-based delivery. For
-- example, a Title in Switzerland might have 3 ExperienceLocales: they
-- both share the same country (\"CH\"), but each has different languages
-- (\"de\", \"fr\", and \"it\"). Each ExperienceLocale is uniquely
-- identified by an \`el_id\`, which is generated by Google. Externally, an
-- ExperienceLocale can also be identified by partners using its EIDR IDs,
-- AltCutID or \`custom_id\` (when provided).
--
-- /See:/ 'experienceLocale' smart constructor.
data ExperienceLocale = ExperienceLocale
    { _elTitleLevelEidr         :: !(Maybe Text)
    , _elStatus                 :: !(Maybe Text)
    , _elPphNames               :: !(Maybe [Text])
    , _elInventoryId            :: !(Maybe Text)
    , _elEarliestAvailStartTime :: !(Maybe Text)
    , _elStudioName             :: !(Maybe Text)
    , _elPriority               :: !(Maybe (Textual Double))
    , _elCustomIds              :: !(Maybe [Text])
    , _elCreatedTime            :: !(Maybe Text)
    , _elCountry                :: !(Maybe Text)
    , _elTrailerId              :: !(Maybe Text)
    , _elPresentationId         :: !(Maybe Text)
    , _elAltCutId               :: !(Maybe Text)
    , _elChannelId              :: !(Maybe Text)
    , _elApprovedTime           :: !(Maybe Text)
    , _elPlayableSequenceId     :: !(Maybe Text)
    , _elElId                   :: !(Maybe Text)
    , _elVideoId                :: !(Maybe Text)
    , _elName                   :: !(Maybe Text)
    , _elLanguage               :: !(Maybe Text)
    , _elEditLevelEidr          :: !(Maybe Text)
    , _elType                   :: !(Maybe Text)
    , _elNormalizedPriority     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExperienceLocale' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elTitleLevelEidr'
--
-- * 'elStatus'
--
-- * 'elPphNames'
--
-- * 'elInventoryId'
--
-- * 'elEarliestAvailStartTime'
--
-- * 'elStudioName'
--
-- * 'elPriority'
--
-- * 'elCustomIds'
--
-- * 'elCreatedTime'
--
-- * 'elCountry'
--
-- * 'elTrailerId'
--
-- * 'elPresentationId'
--
-- * 'elAltCutId'
--
-- * 'elChannelId'
--
-- * 'elApprovedTime'
--
-- * 'elPlayableSequenceId'
--
-- * 'elElId'
--
-- * 'elVideoId'
--
-- * 'elName'
--
-- * 'elLanguage'
--
-- * 'elEditLevelEidr'
--
-- * 'elType'
--
-- * 'elNormalizedPriority'
experienceLocale
    :: ExperienceLocale
experienceLocale =
    ExperienceLocale
    { _elTitleLevelEidr = Nothing
    , _elStatus = Nothing
    , _elPphNames = Nothing
    , _elInventoryId = Nothing
    , _elEarliestAvailStartTime = Nothing
    , _elStudioName = Nothing
    , _elPriority = Nothing
    , _elCustomIds = Nothing
    , _elCreatedTime = Nothing
    , _elCountry = Nothing
    , _elTrailerId = Nothing
    , _elPresentationId = Nothing
    , _elAltCutId = Nothing
    , _elChannelId = Nothing
    , _elApprovedTime = Nothing
    , _elPlayableSequenceId = Nothing
    , _elElId = Nothing
    , _elVideoId = Nothing
    , _elName = Nothing
    , _elLanguage = Nothing
    , _elEditLevelEidr = Nothing
    , _elType = Nothing
    , _elNormalizedPriority = Nothing
    }

-- | Title-level EIDR ID. Example: \"10.5240\/1489-49A2-3956-4B2D-FE16-5\".
elTitleLevelEidr :: Lens' ExperienceLocale (Maybe Text)
elTitleLevelEidr
  = lens _elTitleLevelEidr
      (\ s a -> s{_elTitleLevelEidr = a})

-- | High-level status of the ExperienceLocale.
elStatus :: Lens' ExperienceLocale (Maybe Text)
elStatus = lens _elStatus (\ s a -> s{_elStatus = a})

-- | Name of the post-production houses that manage the ExperienceLocale.
elPphNames :: Lens' ExperienceLocale [Text]
elPphNames
  = lens _elPphNames (\ s a -> s{_elPphNames = a}) .
      _Default
      . _Coerce

-- | InventoryID as defined in the EMA specs.
elInventoryId :: Lens' ExperienceLocale (Maybe Text)
elInventoryId
  = lens _elInventoryId
      (\ s a -> s{_elInventoryId = a})

-- | Timestamp of the earliest start date of the Avails linked to this
-- ExperienceLocale.
elEarliestAvailStartTime :: Lens' ExperienceLocale (Maybe Text)
elEarliestAvailStartTime
  = lens _elEarliestAvailStartTime
      (\ s a -> s{_elEarliestAvailStartTime = a})

-- | Name of the studio that owns the ExperienceLocale.
elStudioName :: Lens' ExperienceLocale (Maybe Text)
elStudioName
  = lens _elStudioName (\ s a -> s{_elStudioName = a})

-- | ExperienceLocale priority, as defined by Google. The higher the value,
-- the higher the priority. Example: 90
elPriority :: Lens' ExperienceLocale (Maybe Double)
elPriority
  = lens _elPriority (\ s a -> s{_elPriority = a}) .
      mapping _Coerce

-- | List of custom IDs (defined by the partner) linked to this
-- ExperienceLocale. Example: \"R86241\"
elCustomIds :: Lens' ExperienceLocale [Text]
elCustomIds
  = lens _elCustomIds (\ s a -> s{_elCustomIds = a}) .
      _Default
      . _Coerce

-- | Timestamp when the ExperienceLocale was created.
elCreatedTime :: Lens' ExperienceLocale (Maybe Text)
elCreatedTime
  = lens _elCreatedTime
      (\ s a -> s{_elCreatedTime = a})

-- | Country where the ExperienceLocale is available, using the \"ISO 3166-1
-- alpha-2\" format. Example: \"US\".
elCountry :: Lens' ExperienceLocale (Maybe Text)
elCountry
  = lens _elCountry (\ s a -> s{_elCountry = a})

-- | Trailer ID, as defined by Google, linked to the trailer video in the
-- ExperienceLocale. Example: \'gtry457_tr\'.
elTrailerId :: Lens' ExperienceLocale (Maybe Text)
elTrailerId
  = lens _elTrailerId (\ s a -> s{_elTrailerId = a})

-- | PresentationID as defined in the EMA specs.
elPresentationId :: Lens' ExperienceLocale (Maybe Text)
elPresentationId
  = lens _elPresentationId
      (\ s a -> s{_elPresentationId = a})

-- | Alternative Cut ID, sometimes available in lieu of the main Edit-level
-- EIDR ID. This is not an EIDR ID, but a Partner-provided ID. Example:
-- \"206346_79838\".
elAltCutId :: Lens' ExperienceLocale (Maybe Text)
elAltCutId
  = lens _elAltCutId (\ s a -> s{_elAltCutId = a})

-- | YouTube Channel ID linked to the ExperienceLocale. Example:
-- \"UCRG64darCZhb\".
elChannelId :: Lens' ExperienceLocale (Maybe Text)
elChannelId
  = lens _elChannelId (\ s a -> s{_elChannelId = a})

-- | Timestamp when the ExperienceLocale was approved.
elApprovedTime :: Lens' ExperienceLocale (Maybe Text)
elApprovedTime
  = lens _elApprovedTime
      (\ s a -> s{_elApprovedTime = a})

-- | PlayableSequenceID as defined in the EMA specs.
elPlayableSequenceId :: Lens' ExperienceLocale (Maybe Text)
elPlayableSequenceId
  = lens _elPlayableSequenceId
      (\ s a -> s{_elPlayableSequenceId = a})

-- | ID internally generated by Google to uniquely identify a
-- ExperienceLocale. Example: \'KRZiVjY9h7t\'
elElId :: Lens' ExperienceLocale (Maybe Text)
elElId = lens _elElId (\ s a -> s{_elElId = a})

-- | Video ID, as defined by Google, linked to the feature video in the
-- ExperienceLocale. Example: \'gtry456_xc\'.
elVideoId :: Lens' ExperienceLocale (Maybe Text)
elVideoId
  = lens _elVideoId (\ s a -> s{_elVideoId = a})

-- | Default Edit name, usually in the language of the country of origin.
-- Example: \"Googlers, The\".
elName :: Lens' ExperienceLocale (Maybe Text)
elName = lens _elName (\ s a -> s{_elName = a})

-- | Language of the ExperienceLocale, using the \"BCP 47\" format. Examples:
-- \"en\", \"en-US\", \"es\", \"es-419\".
elLanguage :: Lens' ExperienceLocale (Maybe Text)
elLanguage
  = lens _elLanguage (\ s a -> s{_elLanguage = a})

-- | Edit-level EIDR ID. Example: \"10.5240\/1489-49A2-3956-4B2D-FE16-6\".
elEditLevelEidr :: Lens' ExperienceLocale (Maybe Text)
elEditLevelEidr
  = lens _elEditLevelEidr
      (\ s a -> s{_elEditLevelEidr = a})

-- | Type of the Edit linked to the ExperienceLocale.
elType :: Lens' ExperienceLocale (Maybe Text)
elType = lens _elType (\ s a -> s{_elType = a})

-- | A simpler representation of the priority.
elNormalizedPriority :: Lens' ExperienceLocale (Maybe Text)
elNormalizedPriority
  = lens _elNormalizedPriority
      (\ s a -> s{_elNormalizedPriority = a})

instance FromJSON ExperienceLocale where
        parseJSON
          = withObject "ExperienceLocale"
              (\ o ->
                 ExperienceLocale <$>
                   (o .:? "titleLevelEidr") <*> (o .:? "status") <*>
                     (o .:? "pphNames" .!= mempty)
                     <*> (o .:? "inventoryId")
                     <*> (o .:? "earliestAvailStartTime")
                     <*> (o .:? "studioName")
                     <*> (o .:? "priority")
                     <*> (o .:? "customIds" .!= mempty)
                     <*> (o .:? "createdTime")
                     <*> (o .:? "country")
                     <*> (o .:? "trailerId")
                     <*> (o .:? "presentationId")
                     <*> (o .:? "altCutId")
                     <*> (o .:? "channelId")
                     <*> (o .:? "approvedTime")
                     <*> (o .:? "playableSequenceId")
                     <*> (o .:? "elId")
                     <*> (o .:? "videoId")
                     <*> (o .:? "name")
                     <*> (o .:? "language")
                     <*> (o .:? "editLevelEidr")
                     <*> (o .:? "type")
                     <*> (o .:? "normalizedPriority"))

instance ToJSON ExperienceLocale where
        toJSON ExperienceLocale{..}
          = object
              (catMaybes
                 [("titleLevelEidr" .=) <$> _elTitleLevelEidr,
                  ("status" .=) <$> _elStatus,
                  ("pphNames" .=) <$> _elPphNames,
                  ("inventoryId" .=) <$> _elInventoryId,
                  ("earliestAvailStartTime" .=) <$>
                    _elEarliestAvailStartTime,
                  ("studioName" .=) <$> _elStudioName,
                  ("priority" .=) <$> _elPriority,
                  ("customIds" .=) <$> _elCustomIds,
                  ("createdTime" .=) <$> _elCreatedTime,
                  ("country" .=) <$> _elCountry,
                  ("trailerId" .=) <$> _elTrailerId,
                  ("presentationId" .=) <$> _elPresentationId,
                  ("altCutId" .=) <$> _elAltCutId,
                  ("channelId" .=) <$> _elChannelId,
                  ("approvedTime" .=) <$> _elApprovedTime,
                  ("playableSequenceId" .=) <$> _elPlayableSequenceId,
                  ("elId" .=) <$> _elElId,
                  ("videoId" .=) <$> _elVideoId,
                  ("name" .=) <$> _elName,
                  ("language" .=) <$> _elLanguage,
                  ("editLevelEidr" .=) <$> _elEditLevelEidr,
                  ("type" .=) <$> _elType,
                  ("normalizedPriority" .=) <$> _elNormalizedPriority])

-- | Information about a playable sequence (video) associated with an Edit
-- and available at the Google Play Store. Internally, each StoreInfo is
-- uniquely identified by a \`video_id\` and \`country\`. Externally,
-- Title-level EIDR or Edit-level EIDR, if provided, can also be used to
-- identify a specific title or edit in a country.
--
-- /See:/ 'storeInfo' smart constructor.
data StoreInfo = StoreInfo
    { _siTitleLevelEidr :: !(Maybe Text)
    , _siPphNames       :: !(Maybe [Text])
    , _siShowName       :: !(Maybe Text)
    , _siSubtitles      :: !(Maybe [Text])
    , _siStudioName     :: !(Maybe Text)
    , _siAudioTracks    :: !(Maybe [Text])
    , _siEpisodeNumber  :: !(Maybe Text)
    , _siCountry        :: !(Maybe Text)
    , _siTrailerId      :: !(Maybe Text)
    , _siHasInfoCards   :: !(Maybe Bool)
    , _siLiveTime       :: !(Maybe Text)
    , _siSeasonNumber   :: !(Maybe Text)
    , _siHasHdOffer     :: !(Maybe Bool)
    , _siVideoId        :: !(Maybe Text)
    , _siName           :: !(Maybe Text)
    , _siHasVodOffer    :: !(Maybe Bool)
    , _siSeasonName     :: !(Maybe Text)
    , _siHasSdOffer     :: !(Maybe Bool)
    , _siMid            :: !(Maybe Text)
    , _siEditLevelEidr  :: !(Maybe Text)
    , _siType           :: !(Maybe Text)
    , _siHasEstOffer    :: !(Maybe Bool)
    , _siHasAudio51     :: !(Maybe Bool)
    , _siSeasonId       :: !(Maybe Text)
    , _siShowId         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StoreInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siTitleLevelEidr'
--
-- * 'siPphNames'
--
-- * 'siShowName'
--
-- * 'siSubtitles'
--
-- * 'siStudioName'
--
-- * 'siAudioTracks'
--
-- * 'siEpisodeNumber'
--
-- * 'siCountry'
--
-- * 'siTrailerId'
--
-- * 'siHasInfoCards'
--
-- * 'siLiveTime'
--
-- * 'siSeasonNumber'
--
-- * 'siHasHdOffer'
--
-- * 'siVideoId'
--
-- * 'siName'
--
-- * 'siHasVodOffer'
--
-- * 'siSeasonName'
--
-- * 'siHasSdOffer'
--
-- * 'siMid'
--
-- * 'siEditLevelEidr'
--
-- * 'siType'
--
-- * 'siHasEstOffer'
--
-- * 'siHasAudio51'
--
-- * 'siSeasonId'
--
-- * 'siShowId'
storeInfo
    :: StoreInfo
storeInfo =
    StoreInfo
    { _siTitleLevelEidr = Nothing
    , _siPphNames = Nothing
    , _siShowName = Nothing
    , _siSubtitles = Nothing
    , _siStudioName = Nothing
    , _siAudioTracks = Nothing
    , _siEpisodeNumber = Nothing
    , _siCountry = Nothing
    , _siTrailerId = Nothing
    , _siHasInfoCards = Nothing
    , _siLiveTime = Nothing
    , _siSeasonNumber = Nothing
    , _siHasHdOffer = Nothing
    , _siVideoId = Nothing
    , _siName = Nothing
    , _siHasVodOffer = Nothing
    , _siSeasonName = Nothing
    , _siHasSdOffer = Nothing
    , _siMid = Nothing
    , _siEditLevelEidr = Nothing
    , _siType = Nothing
    , _siHasEstOffer = Nothing
    , _siHasAudio51 = Nothing
    , _siSeasonId = Nothing
    , _siShowId = Nothing
    }

-- | Title-level EIDR ID. Example: \"10.5240\/1489-49A2-3956-4B2D-FE16-5\".
siTitleLevelEidr :: Lens' StoreInfo (Maybe Text)
siTitleLevelEidr
  = lens _siTitleLevelEidr
      (\ s a -> s{_siTitleLevelEidr = a})

-- | Name of the post-production houses that manage the Edit.
siPphNames :: Lens' StoreInfo [Text]
siPphNames
  = lens _siPphNames (\ s a -> s{_siPphNames = a}) .
      _Default
      . _Coerce

-- | Default Show name, usually in the language of the country of origin.
-- Only available for TV Edits Example: \"Googlers, The\".
siShowName :: Lens' StoreInfo (Maybe Text)
siShowName
  = lens _siShowName (\ s a -> s{_siShowName = a})

-- | Subtitles available for this Edit.
siSubtitles :: Lens' StoreInfo [Text]
siSubtitles
  = lens _siSubtitles (\ s a -> s{_siSubtitles = a}) .
      _Default
      . _Coerce

-- | Name of the studio that owns the Edit ordered.
siStudioName :: Lens' StoreInfo (Maybe Text)
siStudioName
  = lens _siStudioName (\ s a -> s{_siStudioName = a})

-- | Audio tracks available for this Edit.
siAudioTracks :: Lens' StoreInfo [Text]
siAudioTracks
  = lens _siAudioTracks
      (\ s a -> s{_siAudioTracks = a})
      . _Default
      . _Coerce

-- | The number assigned to the episode within a season. Only available on TV
-- Edits. Example: \"1\".
siEpisodeNumber :: Lens' StoreInfo (Maybe Text)
siEpisodeNumber
  = lens _siEpisodeNumber
      (\ s a -> s{_siEpisodeNumber = a})

-- | Country where Edit is available in ISO 3166-1 alpha-2 country code.
-- Example: \"US\".
siCountry :: Lens' StoreInfo (Maybe Text)
siCountry
  = lens _siCountry (\ s a -> s{_siCountry = a})

-- | Google-generated ID identifying the trailer linked to the Edit. Example:
-- \'bhd_4e_cx\'
siTrailerId :: Lens' StoreInfo (Maybe Text)
siTrailerId
  = lens _siTrailerId (\ s a -> s{_siTrailerId = a})

-- | Whether the Edit has info cards.
siHasInfoCards :: Lens' StoreInfo (Maybe Bool)
siHasInfoCards
  = lens _siHasInfoCards
      (\ s a -> s{_siHasInfoCards = a})

-- | Timestamp when the Edit went live on the Store.
siLiveTime :: Lens' StoreInfo (Maybe Text)
siLiveTime
  = lens _siLiveTime (\ s a -> s{_siLiveTime = a})

-- | The number assigned to the season within a show. Only available on TV
-- Edits. Example: \"1\".
siSeasonNumber :: Lens' StoreInfo (Maybe Text)
siSeasonNumber
  = lens _siSeasonNumber
      (\ s a -> s{_siSeasonNumber = a})

-- | Whether the Edit has a HD offer.
siHasHdOffer :: Lens' StoreInfo (Maybe Bool)
siHasHdOffer
  = lens _siHasHdOffer (\ s a -> s{_siHasHdOffer = a})

-- | Google-generated ID identifying the video linked to the Edit. Example:
-- \'gtry456_xc\'
siVideoId :: Lens' StoreInfo (Maybe Text)
siVideoId
  = lens _siVideoId (\ s a -> s{_siVideoId = a})

-- | Default Edit name, usually in the language of the country of origin.
-- Example: \"Googlers, The\".
siName :: Lens' StoreInfo (Maybe Text)
siName = lens _siName (\ s a -> s{_siName = a})

-- | Whether the Edit has a VOD offer.
siHasVodOffer :: Lens' StoreInfo (Maybe Bool)
siHasVodOffer
  = lens _siHasVodOffer
      (\ s a -> s{_siHasVodOffer = a})

-- | Default Season name, usually in the language of the country of origin.
-- Only available for TV Edits Example: \"Googlers, The - A Brave New
-- World\".
siSeasonName :: Lens' StoreInfo (Maybe Text)
siSeasonName
  = lens _siSeasonName (\ s a -> s{_siSeasonName = a})

-- | Whether the Edit has a SD offer.
siHasSdOffer :: Lens' StoreInfo (Maybe Bool)
siHasSdOffer
  = lens _siHasSdOffer (\ s a -> s{_siHasSdOffer = a})

-- | Knowledge Graph ID associated to this Edit, if available. This ID links
-- the Edit to its knowledge entity, externally accessible at
-- http:\/\/freebase.com. In the absense of Title EIDR or Edit EIDR, this
-- ID helps link together multiple Edits across countries. Example:
-- \'\/m\/0ffx29\'
siMid :: Lens' StoreInfo (Maybe Text)
siMid = lens _siMid (\ s a -> s{_siMid = a})

-- | Edit-level EIDR ID. Example: \"10.5240\/1489-49A2-3956-4B2D-FE16-6\".
siEditLevelEidr :: Lens' StoreInfo (Maybe Text)
siEditLevelEidr
  = lens _siEditLevelEidr
      (\ s a -> s{_siEditLevelEidr = a})

-- | Edit type, like Movie, Episode or Season.
siType :: Lens' StoreInfo (Maybe Text)
siType = lens _siType (\ s a -> s{_siType = a})

-- | Whether the Edit has a EST offer.
siHasEstOffer :: Lens' StoreInfo (Maybe Bool)
siHasEstOffer
  = lens _siHasEstOffer
      (\ s a -> s{_siHasEstOffer = a})

-- | Whether the Edit has a 5.1 channel audio track.
siHasAudio51 :: Lens' StoreInfo (Maybe Bool)
siHasAudio51
  = lens _siHasAudio51 (\ s a -> s{_siHasAudio51 = a})

-- | Google-generated ID identifying the season linked to the Edit. Only
-- available for TV Edits. Example: \'ster23ex\'
siSeasonId :: Lens' StoreInfo (Maybe Text)
siSeasonId
  = lens _siSeasonId (\ s a -> s{_siSeasonId = a})

-- | Google-generated ID identifying the show linked to the Edit. Only
-- available for TV Edits. Example: \'et2hsue_x\'
siShowId :: Lens' StoreInfo (Maybe Text)
siShowId = lens _siShowId (\ s a -> s{_siShowId = a})

instance FromJSON StoreInfo where
        parseJSON
          = withObject "StoreInfo"
              (\ o ->
                 StoreInfo <$>
                   (o .:? "titleLevelEidr") <*>
                     (o .:? "pphNames" .!= mempty)
                     <*> (o .:? "showName")
                     <*> (o .:? "subtitles" .!= mempty)
                     <*> (o .:? "studioName")
                     <*> (o .:? "audioTracks" .!= mempty)
                     <*> (o .:? "episodeNumber")
                     <*> (o .:? "country")
                     <*> (o .:? "trailerId")
                     <*> (o .:? "hasInfoCards")
                     <*> (o .:? "liveTime")
                     <*> (o .:? "seasonNumber")
                     <*> (o .:? "hasHdOffer")
                     <*> (o .:? "videoId")
                     <*> (o .:? "name")
                     <*> (o .:? "hasVodOffer")
                     <*> (o .:? "seasonName")
                     <*> (o .:? "hasSdOffer")
                     <*> (o .:? "mid")
                     <*> (o .:? "editLevelEidr")
                     <*> (o .:? "type")
                     <*> (o .:? "hasEstOffer")
                     <*> (o .:? "hasAudio51")
                     <*> (o .:? "seasonId")
                     <*> (o .:? "showId"))

instance ToJSON StoreInfo where
        toJSON StoreInfo{..}
          = object
              (catMaybes
                 [("titleLevelEidr" .=) <$> _siTitleLevelEidr,
                  ("pphNames" .=) <$> _siPphNames,
                  ("showName" .=) <$> _siShowName,
                  ("subtitles" .=) <$> _siSubtitles,
                  ("studioName" .=) <$> _siStudioName,
                  ("audioTracks" .=) <$> _siAudioTracks,
                  ("episodeNumber" .=) <$> _siEpisodeNumber,
                  ("country" .=) <$> _siCountry,
                  ("trailerId" .=) <$> _siTrailerId,
                  ("hasInfoCards" .=) <$> _siHasInfoCards,
                  ("liveTime" .=) <$> _siLiveTime,
                  ("seasonNumber" .=) <$> _siSeasonNumber,
                  ("hasHdOffer" .=) <$> _siHasHdOffer,
                  ("videoId" .=) <$> _siVideoId,
                  ("name" .=) <$> _siName,
                  ("hasVodOffer" .=) <$> _siHasVodOffer,
                  ("seasonName" .=) <$> _siSeasonName,
                  ("hasSdOffer" .=) <$> _siHasSdOffer,
                  ("mid" .=) <$> _siMid,
                  ("editLevelEidr" .=) <$> _siEditLevelEidr,
                  ("type" .=) <$> _siType,
                  ("hasEstOffer" .=) <$> _siHasEstOffer,
                  ("hasAudio51" .=) <$> _siHasAudio51,
                  ("seasonId" .=) <$> _siSeasonId,
                  ("showId" .=) <$> _siShowId])
