{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Genomics.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Genomics.Types.Product where

import           Network.Google.Genomics.Types.Sum
import           Network.Google.Prelude

-- | A map of additional read alignment information. This must be of the form
-- map (string key mapping to a list of string values).
--
-- /See:/ 'readInfo' smart constructor.
newtype ReadInfo = ReadInfo
    { _riAddtional :: HashMap Text [JSONValue]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riAddtional'
readInfo
    :: HashMap Text [JSONValue] -- ^ 'riAddtional'
    -> ReadInfo
readInfo pRiAddtional_ =
    ReadInfo
    { _riAddtional = _Coerce # pRiAddtional_
    }

riAddtional :: Lens' ReadInfo (HashMap Text [JSONValue])
riAddtional
  = lens _riAddtional (\ s a -> s{_riAddtional = a}) .
      _Coerce

instance FromJSON ReadInfo where
        parseJSON
          = withObject "ReadInfo"
              (\ o -> ReadInfo <$> (parseJSONObject o))

instance ToJSON ReadInfo where
        toJSON = toJSON . _riAddtional

-- | The \`Status\` type defines a logical error model that is suitable for
-- different programming environments, including REST APIs and RPC APIs. It
-- is used by [gRPC](https:\/\/github.com\/grpc). The error model is
-- designed to be: - Simple to use and understand for most users - Flexible
-- enough to meet unexpected needs # Overview The \`Status\` message
-- contains three pieces of data: error code, error message, and error
-- details. The error code should be an enum value of google.rpc.Code, but
-- it may accept additional error codes if needed. The error message should
-- be a developer-facing English message that helps developers *understand*
-- and *resolve* the error. If a localized user-facing error message is
-- needed, put the localized message in the error details or localize it in
-- the client. The optional error details may contain arbitrary information
-- about the error. There is a predefined set of error detail types in the
-- package \`google.rpc\` which can be used for common error conditions. #
-- Language mapping The \`Status\` message is the logical representation of
-- the error model, but it is not necessarily the actual wire format. When
-- the \`Status\` message is exposed in different client libraries and
-- different wire protocols, it can be mapped differently. For example, it
-- will likely be mapped to some exceptions in Java, but more likely mapped
-- to some error codes in C. # Other uses The error model and the
-- \`Status\` message can be used in a variety of environments, either with
-- or without APIs, to provide a consistent developer experience across
-- different environments. Example uses of this error model include: -
-- Partial errors. If a service needs to return partial errors to the
-- client, it may embed the \`Status\` in the normal response to indicate
-- the partial errors. - Workflow errors. A typical workflow has multiple
-- steps. Each step may have a \`Status\` message for error reporting
-- purpose. - Batch operations. If a client uses batch request and batch
-- response, the \`Status\` message should be used directly inside batch
-- response, one for each error sub-response. - Asynchronous operations. If
-- an API call embeds asynchronous operation results in its response, the
-- status of those operations should be represented directly using the
-- \`Status\` message. - Logging. If some API errors are stored in logs,
-- the message \`Status\` could be used directly after any stripping needed
-- for security\/privacy reasons.
--
-- /See:/ 'status' smart constructor.
data Status = Status
    { _sDetails :: !(Maybe [StatusDetailsItem])
    , _sCode    :: !(Maybe (Textual Int32))
    , _sMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDetails'
--
-- * 'sCode'
--
-- * 'sMessage'
status
    :: Status
status =
    Status
    { _sDetails = Nothing
    , _sCode = Nothing
    , _sMessage = Nothing
    }

-- | A list of messages that carry the error details. There will be a common
-- set of message types for APIs to use.
sDetails :: Lens' Status [StatusDetailsItem]
sDetails
  = lens _sDetails (\ s a -> s{_sDetails = a}) .
      _Default
      . _Coerce

-- | The status code, which should be an enum value of google.rpc.Code.
sCode :: Lens' Status (Maybe Int32)
sCode
  = lens _sCode (\ s a -> s{_sCode = a}) .
      mapping _Coerce

-- | A developer-facing error message, which should be in English. Any
-- user-facing error message should be localized and sent in the
-- google.rpc.Status.details field, or localized by the client.
sMessage :: Lens' Status (Maybe Text)
sMessage = lens _sMessage (\ s a -> s{_sMessage = a})

instance FromJSON Status where
        parseJSON
          = withObject "Status"
              (\ o ->
                 Status <$>
                   (o .:? "details" .!= mempty) <*> (o .:? "code") <*>
                     (o .:? "message"))

instance ToJSON Status where
        toJSON Status{..}
          = object
              (catMaybes
                 [("details" .=) <$> _sDetails,
                  ("code" .=) <$> _sCode,
                  ("message" .=) <$> _sMessage])

-- | An OperationMetadata object. This will always be returned with the
-- Operation.
--
-- /See:/ 'operationSchema' smart constructor.
newtype OperationSchema = OperationSchema
    { _osAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationSchema' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osAddtional'
operationSchema
    :: HashMap Text JSONValue -- ^ 'osAddtional'
    -> OperationSchema
operationSchema pOsAddtional_ =
    OperationSchema
    { _osAddtional = _Coerce # pOsAddtional_
    }

-- | Properties of the object. Contains field \'ype with type URL.
osAddtional :: Lens' OperationSchema (HashMap Text JSONValue)
osAddtional
  = lens _osAddtional (\ s a -> s{_osAddtional = a}) .
      _Coerce

instance FromJSON OperationSchema where
        parseJSON
          = withObject "OperationSchema"
              (\ o -> OperationSchema <$> (parseJSONObject o))

instance ToJSON OperationSchema where
        toJSON = toJSON . _osAddtional

-- | A variant represents a change in DNA sequence relative to a reference
-- sequence. For example, a variant could represent a SNP or an insertion.
-- Variants belong to a variant set. Each of the calls on a variant
-- represent a determination of genotype with respect to that variant. For
-- example, a call might assign probability of 0.32 to the occurrence of a
-- SNP named rs1234 in a sample named NA12345. A call belongs to a call
-- set, which contains related calls typically from one sample.
--
-- /See:/ 'variant' smart constructor.
data Variant = Variant
    { _vVariantSetId   :: !(Maybe Text)
    , _vCreated        :: !(Maybe (Textual Int64))
    , _vStart          :: !(Maybe (Textual Int64))
    , _vAlternateBases :: !(Maybe [Text])
    , _vReferenceName  :: !(Maybe Text)
    , _vNames          :: !(Maybe [Text])
    , _vEnd            :: !(Maybe (Textual Int64))
    , _vReferenceBases :: !(Maybe Text)
    , _vId             :: !(Maybe Text)
    , _vQuality        :: !(Maybe (Textual Double))
    , _vFilter         :: !(Maybe [Text])
    , _vInfo           :: !(Maybe VariantInfo)
    , _vCalls          :: !(Maybe [VariantCall])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Variant' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vVariantSetId'
--
-- * 'vCreated'
--
-- * 'vStart'
--
-- * 'vAlternateBases'
--
-- * 'vReferenceName'
--
-- * 'vNames'
--
-- * 'vEnd'
--
-- * 'vReferenceBases'
--
-- * 'vId'
--
-- * 'vQuality'
--
-- * 'vFilter'
--
-- * 'vInfo'
--
-- * 'vCalls'
variant
    :: Variant
variant =
    Variant
    { _vVariantSetId = Nothing
    , _vCreated = Nothing
    , _vStart = Nothing
    , _vAlternateBases = Nothing
    , _vReferenceName = Nothing
    , _vNames = Nothing
    , _vEnd = Nothing
    , _vReferenceBases = Nothing
    , _vId = Nothing
    , _vQuality = Nothing
    , _vFilter = Nothing
    , _vInfo = Nothing
    , _vCalls = Nothing
    }

-- | The ID of the variant set this variant belongs to.
vVariantSetId :: Lens' Variant (Maybe Text)
vVariantSetId
  = lens _vVariantSetId
      (\ s a -> s{_vVariantSetId = a})

-- | The date this variant was created, in milliseconds from the epoch.
vCreated :: Lens' Variant (Maybe Int64)
vCreated
  = lens _vCreated (\ s a -> s{_vCreated = a}) .
      mapping _Coerce

-- | The position at which this variant occurs (0-based). This corresponds to
-- the first base of the string of reference bases.
vStart :: Lens' Variant (Maybe Int64)
vStart
  = lens _vStart (\ s a -> s{_vStart = a}) .
      mapping _Coerce

-- | The bases that appear instead of the reference bases.
vAlternateBases :: Lens' Variant [Text]
vAlternateBases
  = lens _vAlternateBases
      (\ s a -> s{_vAlternateBases = a})
      . _Default
      . _Coerce

-- | The reference on which this variant occurs. (such as \`chr20\` or \`X\`)
vReferenceName :: Lens' Variant (Maybe Text)
vReferenceName
  = lens _vReferenceName
      (\ s a -> s{_vReferenceName = a})

-- | Names for the variant, for example a RefSNP ID.
vNames :: Lens' Variant [Text]
vNames
  = lens _vNames (\ s a -> s{_vNames = a}) . _Default .
      _Coerce

-- | The end position (0-based) of this variant. This corresponds to the
-- first base after the last base in the reference allele. So, the length
-- of the reference allele is (end - start). This is useful for variants
-- that don\'t explicitly give alternate bases, for example large
-- deletions.
vEnd :: Lens' Variant (Maybe Int64)
vEnd
  = lens _vEnd (\ s a -> s{_vEnd = a}) .
      mapping _Coerce

-- | The reference bases for this variant. They start at the given position.
vReferenceBases :: Lens' Variant (Maybe Text)
vReferenceBases
  = lens _vReferenceBases
      (\ s a -> s{_vReferenceBases = a})

-- | The server-generated variant ID, unique across all variants.
vId :: Lens' Variant (Maybe Text)
vId = lens _vId (\ s a -> s{_vId = a})

-- | A measure of how likely this variant is to be real. A higher value is
-- better.
vQuality :: Lens' Variant (Maybe Double)
vQuality
  = lens _vQuality (\ s a -> s{_vQuality = a}) .
      mapping _Coerce

-- | A list of filters (normally quality filters) this variant has failed.
-- \`PASS\` indicates this variant has passed all filters.
vFilter :: Lens' Variant [Text]
vFilter
  = lens _vFilter (\ s a -> s{_vFilter = a}) . _Default
      . _Coerce

-- | A map of additional variant information. This must be of the form map
-- (string key mapping to a list of string values).
vInfo :: Lens' Variant (Maybe VariantInfo)
vInfo = lens _vInfo (\ s a -> s{_vInfo = a})

-- | The variant calls for this particular variant. Each one represents the
-- determination of genotype with respect to this variant.
vCalls :: Lens' Variant [VariantCall]
vCalls
  = lens _vCalls (\ s a -> s{_vCalls = a}) . _Default .
      _Coerce

instance FromJSON Variant where
        parseJSON
          = withObject "Variant"
              (\ o ->
                 Variant <$>
                   (o .:? "variantSetId") <*> (o .:? "created") <*>
                     (o .:? "start")
                     <*> (o .:? "alternateBases" .!= mempty)
                     <*> (o .:? "referenceName")
                     <*> (o .:? "names" .!= mempty)
                     <*> (o .:? "end")
                     <*> (o .:? "referenceBases")
                     <*> (o .:? "id")
                     <*> (o .:? "quality")
                     <*> (o .:? "filter" .!= mempty)
                     <*> (o .:? "info")
                     <*> (o .:? "calls" .!= mempty))

instance ToJSON Variant where
        toJSON Variant{..}
          = object
              (catMaybes
                 [("variantSetId" .=) <$> _vVariantSetId,
                  ("created" .=) <$> _vCreated,
                  ("start" .=) <$> _vStart,
                  ("alternateBases" .=) <$> _vAlternateBases,
                  ("referenceName" .=) <$> _vReferenceName,
                  ("names" .=) <$> _vNames, ("end" .=) <$> _vEnd,
                  ("referenceBases" .=) <$> _vReferenceBases,
                  ("id" .=) <$> _vId, ("quality" .=) <$> _vQuality,
                  ("filter" .=) <$> _vFilter, ("info" .=) <$> _vInfo,
                  ("calls" .=) <$> _vCalls])

--
-- /See:/ 'listBasesResponse' smart constructor.
data ListBasesResponse = ListBasesResponse
    { _lbrNextPageToken :: !(Maybe Text)
    , _lbrOffSet        :: !(Maybe (Textual Int64))
    , _lbrSequence      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListBasesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrNextPageToken'
--
-- * 'lbrOffSet'
--
-- * 'lbrSequence'
listBasesResponse
    :: ListBasesResponse
listBasesResponse =
    ListBasesResponse
    { _lbrNextPageToken = Nothing
    , _lbrOffSet = Nothing
    , _lbrSequence = Nothing
    }

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
lbrNextPageToken :: Lens' ListBasesResponse (Maybe Text)
lbrNextPageToken
  = lens _lbrNextPageToken
      (\ s a -> s{_lbrNextPageToken = a})

-- | The offset position (0-based) of the given \`sequence\` from the start
-- of this \`Reference\`. This value will differ for each page in a
-- paginated request.
lbrOffSet :: Lens' ListBasesResponse (Maybe Int64)
lbrOffSet
  = lens _lbrOffSet (\ s a -> s{_lbrOffSet = a}) .
      mapping _Coerce

-- | A substring of the bases that make up this reference.
lbrSequence :: Lens' ListBasesResponse (Maybe Text)
lbrSequence
  = lens _lbrSequence (\ s a -> s{_lbrSequence = a})

instance FromJSON ListBasesResponse where
        parseJSON
          = withObject "ListBasesResponse"
              (\ o ->
                 ListBasesResponse <$>
                   (o .:? "nextPageToken") <*> (o .:? "offset") <*>
                     (o .:? "sequence"))

instance ToJSON ListBasesResponse where
        toJSON ListBasesResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lbrNextPageToken,
                  ("offset" .=) <$> _lbrOffSet,
                  ("sequence" .=) <$> _lbrSequence])

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'listOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
    { _lorNextPageToken :: !(Maybe Text)
    , _lorOperations    :: !(Maybe [Operation])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lorNextPageToken'
--
-- * 'lorOperations'
listOperationsResponse
    :: ListOperationsResponse
listOperationsResponse =
    ListOperationsResponse
    { _lorNextPageToken = Nothing
    , _lorOperations = Nothing
    }

-- | The standard List next-page token.
lorNextPageToken :: Lens' ListOperationsResponse (Maybe Text)
lorNextPageToken
  = lens _lorNextPageToken
      (\ s a -> s{_lorNextPageToken = a})

-- | A list of operations that matches the specified filter in the request.
lorOperations :: Lens' ListOperationsResponse [Operation]
lorOperations
  = lens _lorOperations
      (\ s a -> s{_lorOperations = a})
      . _Default
      . _Coerce

instance FromJSON ListOperationsResponse where
        parseJSON
          = withObject "ListOperationsResponse"
              (\ o ->
                 ListOperationsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "operations" .!= mempty))

instance ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lorNextPageToken,
                  ("operations" .=) <$> _lorOperations])

-- | Request message for \`GetIamPolicy\` method.
--
-- /See:/ 'getIAMPolicyRequest' smart constructor.
data GetIAMPolicyRequest =
    GetIAMPolicyRequest
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetIAMPolicyRequest' with the minimum fields required to make a request.
--
getIAMPolicyRequest
    :: GetIAMPolicyRequest
getIAMPolicyRequest = GetIAMPolicyRequest

instance FromJSON GetIAMPolicyRequest where
        parseJSON
          = withObject "GetIAMPolicyRequest"
              (\ o -> pure GetIAMPolicyRequest)

instance ToJSON GetIAMPolicyRequest where
        toJSON = const emptyObject

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'cancelOperationRequest' smart constructor.
data CancelOperationRequest =
    CancelOperationRequest
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
--
cancelOperationRequest
    :: CancelOperationRequest
cancelOperationRequest = CancelOperationRequest

instance FromJSON CancelOperationRequest where
        parseJSON
          = withObject "CancelOperationRequest"
              (\ o -> pure CancelOperationRequest)

instance ToJSON CancelOperationRequest where
        toJSON = const emptyObject

-- | A Dataset is a collection of genomic data.
--
-- /See:/ 'dataSet' smart constructor.
data DataSet = DataSet
    { _dsName       :: !(Maybe Text)
    , _dsId         :: !(Maybe Text)
    , _dsProjectId  :: !(Maybe Text)
    , _dsCreateTime :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DataSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsName'
--
-- * 'dsId'
--
-- * 'dsProjectId'
--
-- * 'dsCreateTime'
dataSet
    :: DataSet
dataSet =
    DataSet
    { _dsName = Nothing
    , _dsId = Nothing
    , _dsProjectId = Nothing
    , _dsCreateTime = Nothing
    }

-- | The dataset name.
dsName :: Lens' DataSet (Maybe Text)
dsName = lens _dsName (\ s a -> s{_dsName = a})

-- | The server-generated dataset ID, unique across all datasets.
dsId :: Lens' DataSet (Maybe Text)
dsId = lens _dsId (\ s a -> s{_dsId = a})

-- | The Google Developers Console project ID that this dataset belongs to.
dsProjectId :: Lens' DataSet (Maybe Text)
dsProjectId
  = lens _dsProjectId (\ s a -> s{_dsProjectId = a})

-- | The time this dataset was created, in seconds from the epoch.
dsCreateTime :: Lens' DataSet (Maybe Text)
dsCreateTime
  = lens _dsCreateTime (\ s a -> s{_dsCreateTime = a})

instance FromJSON DataSet where
        parseJSON
          = withObject "DataSet"
              (\ o ->
                 DataSet <$>
                   (o .:? "name") <*> (o .:? "id") <*>
                     (o .:? "projectId")
                     <*> (o .:? "createTime"))

instance ToJSON DataSet where
        toJSON DataSet{..}
          = object
              (catMaybes
                 [("name" .=) <$> _dsName, ("id" .=) <$> _dsId,
                  ("projectId" .=) <$> _dsProjectId,
                  ("createTime" .=) <$> _dsCreateTime])

-- | A read alignment describes a linear alignment of a string of DNA to a
-- reference sequence, in addition to metadata about the fragment (the
-- molecule of DNA sequenced) and the read (the bases which were read by
-- the sequencer). A read is equivalent to a line in a SAM file. A read
-- belongs to exactly one read group and exactly one read group set. ###
-- Generating a reference-aligned sequence string When interacting with
-- mapped reads, it\'s often useful to produce a string representing the
-- local alignment of the read to reference. The following pseudocode
-- demonstrates one way of doing this: out = \"\" offset = 0 for c in
-- read.alignment.cigar { switch c.operation { case \"ALIGNMENT_MATCH\",
-- \"SEQUENCE_MATCH\", \"SEQUENCE_MISMATCH\": out +=
-- read.alignedSequence[offset:offset+c.operationLength] offset +=
-- c.operationLength break case \"CLIP_SOFT\", \"INSERT\": offset +=
-- c.operationLength break case \"PAD\": out += repeat(\"*\",
-- c.operationLength) break case \"DELETE\": out += repeat(\"-\",
-- c.operationLength) break case \"SKIP\": out += repeat(\" \",
-- c.operationLength) break case \"CLIP_HARD\": break } } return out ###
-- Converting to SAM\'s CIGAR string The following pseudocode generates a
-- SAM CIGAR string from the \`cigar\` field. Note that this is a lossy
-- conversion (\`cigar.referenceSequence\` is lost). cigarMap = {
-- \"ALIGNMENT_MATCH\": \"M\", \"INSERT\": \"I\", \"DELETE\": \"D\",
-- \"SKIP\": \"N\", \"CLIP_SOFT\": \"S\", \"CLIP_HARD\": \"H\", \"PAD\":
-- \"P\", \"SEQUENCE_MATCH\": \"=\", \"SEQUENCE_MISMATCH\": \"X\", }
-- cigarStr = \"\" for c in read.alignment.cigar { cigarStr +=
-- c.operationLength + cigarMap[c.operation] } return cigarStr
--
-- /See:/ 'read'' smart constructor.
data Read' = Read'
    { _rFragmentLength            :: !(Maybe (Textual Int32))
    , _rDuplicateFragment         :: !(Maybe Bool)
    , _rReadGroupSetId            :: !(Maybe Text)
    , _rNextMatePosition          :: !(Maybe Position)
    , _rFailedVendorQualityChecks :: !(Maybe Bool)
    , _rAlignment                 :: !(Maybe LinearAlignment)
    , _rFragmentName              :: !(Maybe Text)
    , _rNumberReads               :: !(Maybe (Textual Int32))
    , _rId                        :: !(Maybe Text)
    , _rSecondaryAlignment        :: !(Maybe Bool)
    , _rReadGroupId               :: !(Maybe Text)
    , _rSupplementaryAlignment    :: !(Maybe Bool)
    , _rAlignedSequence           :: !(Maybe Text)
    , _rProperPlacement           :: !(Maybe Bool)
    , _rInfo                      :: !(Maybe ReadInfo)
    , _rReadNumber                :: !(Maybe (Textual Int32))
    , _rAlignedQuality            :: !(Maybe [Textual Int32])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Read' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rFragmentLength'
--
-- * 'rDuplicateFragment'
--
-- * 'rReadGroupSetId'
--
-- * 'rNextMatePosition'
--
-- * 'rFailedVendorQualityChecks'
--
-- * 'rAlignment'
--
-- * 'rFragmentName'
--
-- * 'rNumberReads'
--
-- * 'rId'
--
-- * 'rSecondaryAlignment'
--
-- * 'rReadGroupId'
--
-- * 'rSupplementaryAlignment'
--
-- * 'rAlignedSequence'
--
-- * 'rProperPlacement'
--
-- * 'rInfo'
--
-- * 'rReadNumber'
--
-- * 'rAlignedQuality'
read'
    :: Read'
read' =
    Read'
    { _rFragmentLength = Nothing
    , _rDuplicateFragment = Nothing
    , _rReadGroupSetId = Nothing
    , _rNextMatePosition = Nothing
    , _rFailedVendorQualityChecks = Nothing
    , _rAlignment = Nothing
    , _rFragmentName = Nothing
    , _rNumberReads = Nothing
    , _rId = Nothing
    , _rSecondaryAlignment = Nothing
    , _rReadGroupId = Nothing
    , _rSupplementaryAlignment = Nothing
    , _rAlignedSequence = Nothing
    , _rProperPlacement = Nothing
    , _rInfo = Nothing
    , _rReadNumber = Nothing
    , _rAlignedQuality = Nothing
    }

-- | The observed length of the fragment, equivalent to TLEN in SAM.
rFragmentLength :: Lens' Read' (Maybe Int32)
rFragmentLength
  = lens _rFragmentLength
      (\ s a -> s{_rFragmentLength = a})
      . mapping _Coerce

-- | The fragment is a PCR or optical duplicate (SAM flag 0x400)
rDuplicateFragment :: Lens' Read' (Maybe Bool)
rDuplicateFragment
  = lens _rDuplicateFragment
      (\ s a -> s{_rDuplicateFragment = a})

-- | The ID of the read group set this read belongs to. (Every read must
-- belong to exactly one read group set.)
rReadGroupSetId :: Lens' Read' (Maybe Text)
rReadGroupSetId
  = lens _rReadGroupSetId
      (\ s a -> s{_rReadGroupSetId = a})

-- | The mapping of the primary alignment of the
-- \`(readNumber+1)%numberReads\` read in the fragment. It replaces mate
-- position and mate strand in SAM.
rNextMatePosition :: Lens' Read' (Maybe Position)
rNextMatePosition
  = lens _rNextMatePosition
      (\ s a -> s{_rNextMatePosition = a})

-- | SAM flag 0x200
rFailedVendorQualityChecks :: Lens' Read' (Maybe Bool)
rFailedVendorQualityChecks
  = lens _rFailedVendorQualityChecks
      (\ s a -> s{_rFailedVendorQualityChecks = a})

-- | The linear alignment for this alignment record. This field will be null
-- if the read is unmapped.
rAlignment :: Lens' Read' (Maybe LinearAlignment)
rAlignment
  = lens _rAlignment (\ s a -> s{_rAlignment = a})

-- | The fragment name. Equivalent to QNAME (query template name) in SAM.
rFragmentName :: Lens' Read' (Maybe Text)
rFragmentName
  = lens _rFragmentName
      (\ s a -> s{_rFragmentName = a})

-- | The number of reads in the fragment (extension to SAM flag 0x1).
rNumberReads :: Lens' Read' (Maybe Int32)
rNumberReads
  = lens _rNumberReads (\ s a -> s{_rNumberReads = a})
      . mapping _Coerce

-- | The server-generated read ID, unique across all reads. This is different
-- from the \`fragmentName\`.
rId :: Lens' Read' (Maybe Text)
rId = lens _rId (\ s a -> s{_rId = a})

-- | Whether this alignment is secondary. Equivalent to SAM flag 0x100. A
-- secondary alignment represents an alternative to the primary alignment
-- for this read. Aligners may return secondary alignments if a read can
-- map ambiguously to multiple coordinates in the genome. By convention,
-- each read has one and only one alignment where both
-- \`secondaryAlignment\` and \`supplementaryAlignment\` are false.
rSecondaryAlignment :: Lens' Read' (Maybe Bool)
rSecondaryAlignment
  = lens _rSecondaryAlignment
      (\ s a -> s{_rSecondaryAlignment = a})

-- | The ID of the read group this read belongs to. (Every read must belong
-- to exactly one read group.)
rReadGroupId :: Lens' Read' (Maybe Text)
rReadGroupId
  = lens _rReadGroupId (\ s a -> s{_rReadGroupId = a})

-- | Whether this alignment is supplementary. Equivalent to SAM flag 0x800.
-- Supplementary alignments are used in the representation of a chimeric
-- alignment. In a chimeric alignment, a read is split into multiple linear
-- alignments that map to different reference contigs. The first linear
-- alignment in the read will be designated as the representative
-- alignment; the remaining linear alignments will be designated as
-- supplementary alignments. These alignments may have different mapping
-- quality scores. In each linear alignment in a chimeric alignment, the
-- read will be hard clipped. The \`alignedSequence\` and
-- \`alignedQuality\` fields in the alignment record will only represent
-- the bases for its respective linear alignment.
rSupplementaryAlignment :: Lens' Read' (Maybe Bool)
rSupplementaryAlignment
  = lens _rSupplementaryAlignment
      (\ s a -> s{_rSupplementaryAlignment = a})

-- | The bases of the read sequence contained in this alignment record,
-- *without CIGAR operations applied*. \`alignedSequence\` and
-- \`alignedQuality\` may be shorter than the full read sequence and
-- quality. This will occur if the alignment is part of a chimeric
-- alignment, or if the read was trimmed. When this occurs, the CIGAR for
-- this read will begin\/end with a hard clip operator that will indicate
-- the length of the excised sequence.
rAlignedSequence :: Lens' Read' (Maybe Text)
rAlignedSequence
  = lens _rAlignedSequence
      (\ s a -> s{_rAlignedSequence = a})

-- | The orientation and the distance between reads from the fragment are
-- consistent with the sequencing protocol (SAM flag 0x2)
rProperPlacement :: Lens' Read' (Maybe Bool)
rProperPlacement
  = lens _rProperPlacement
      (\ s a -> s{_rProperPlacement = a})

-- | A map of additional read alignment information. This must be of the form
-- map (string key mapping to a list of string values).
rInfo :: Lens' Read' (Maybe ReadInfo)
rInfo = lens _rInfo (\ s a -> s{_rInfo = a})

-- | The read number in sequencing. 0-based and less than numberReads. This
-- field replaces SAM flag 0x40 and 0x80.
rReadNumber :: Lens' Read' (Maybe Int32)
rReadNumber
  = lens _rReadNumber (\ s a -> s{_rReadNumber = a}) .
      mapping _Coerce

-- | The quality of the read sequence contained in this alignment record.
-- \`alignedSequence\` and \`alignedQuality\` may be shorter than the full
-- read sequence and quality. This will occur if the alignment is part of a
-- chimeric alignment, or if the read was trimmed. When this occurs, the
-- CIGAR for this read will begin\/end with a hard clip operator that will
-- indicate the length of the excised sequence.
rAlignedQuality :: Lens' Read' [Int32]
rAlignedQuality
  = lens _rAlignedQuality
      (\ s a -> s{_rAlignedQuality = a})
      . _Default
      . _Coerce

instance FromJSON Read' where
        parseJSON
          = withObject "Read"
              (\ o ->
                 Read' <$>
                   (o .:? "fragmentLength") <*>
                     (o .:? "duplicateFragment")
                     <*> (o .:? "readGroupSetId")
                     <*> (o .:? "nextMatePosition")
                     <*> (o .:? "failedVendorQualityChecks")
                     <*> (o .:? "alignment")
                     <*> (o .:? "fragmentName")
                     <*> (o .:? "numberReads")
                     <*> (o .:? "id")
                     <*> (o .:? "secondaryAlignment")
                     <*> (o .:? "readGroupId")
                     <*> (o .:? "supplementaryAlignment")
                     <*> (o .:? "alignedSequence")
                     <*> (o .:? "properPlacement")
                     <*> (o .:? "info")
                     <*> (o .:? "readNumber")
                     <*> (o .:? "alignedQuality" .!= mempty))

instance ToJSON Read' where
        toJSON Read'{..}
          = object
              (catMaybes
                 [("fragmentLength" .=) <$> _rFragmentLength,
                  ("duplicateFragment" .=) <$> _rDuplicateFragment,
                  ("readGroupSetId" .=) <$> _rReadGroupSetId,
                  ("nextMatePosition" .=) <$> _rNextMatePosition,
                  ("failedVendorQualityChecks" .=) <$>
                    _rFailedVendorQualityChecks,
                  ("alignment" .=) <$> _rAlignment,
                  ("fragmentName" .=) <$> _rFragmentName,
                  ("numberReads" .=) <$> _rNumberReads,
                  ("id" .=) <$> _rId,
                  ("secondaryAlignment" .=) <$> _rSecondaryAlignment,
                  ("readGroupId" .=) <$> _rReadGroupId,
                  ("supplementaryAlignment" .=) <$>
                    _rSupplementaryAlignment,
                  ("alignedSequence" .=) <$> _rAlignedSequence,
                  ("properPlacement" .=) <$> _rProperPlacement,
                  ("info" .=) <$> _rInfo,
                  ("readNumber" .=) <$> _rReadNumber,
                  ("alignedQuality" .=) <$> _rAlignedQuality])

-- | A call represents the determination of genotype with respect to a
-- particular variant. It may include associated information such as
-- quality and phasing. For example, a call might assign a probability of
-- 0.32 to the occurrence of a SNP named rs1234 in a call set with the name
-- NA12345.
--
-- /See:/ 'variantCall' smart constructor.
data VariantCall = VariantCall
    { _vcGenotypeLikelihood :: !(Maybe [Textual Double])
    , _vcCallSetName        :: !(Maybe Text)
    , _vcPhaseset           :: !(Maybe Text)
    , _vcCallSetId          :: !(Maybe Text)
    , _vcGenotype           :: !(Maybe [Textual Int32])
    , _vcInfo               :: !(Maybe VariantCallInfo)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantCall' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcGenotypeLikelihood'
--
-- * 'vcCallSetName'
--
-- * 'vcPhaseset'
--
-- * 'vcCallSetId'
--
-- * 'vcGenotype'
--
-- * 'vcInfo'
variantCall
    :: VariantCall
variantCall =
    VariantCall
    { _vcGenotypeLikelihood = Nothing
    , _vcCallSetName = Nothing
    , _vcPhaseset = Nothing
    , _vcCallSetId = Nothing
    , _vcGenotype = Nothing
    , _vcInfo = Nothing
    }

-- | The genotype likelihoods for this variant call. Each array entry
-- represents how likely a specific genotype is for this call. The value
-- ordering is defined by the GL tag in the VCF spec. If Phred-scaled
-- genotype likelihood scores (PL) are available and log10(P) genotype
-- likelihood scores (GL) are not, PL scores are converted to GL scores. If
-- both are available, PL scores are stored in \`info\`.
vcGenotypeLikelihood :: Lens' VariantCall [Double]
vcGenotypeLikelihood
  = lens _vcGenotypeLikelihood
      (\ s a -> s{_vcGenotypeLikelihood = a})
      . _Default
      . _Coerce

-- | The name of the call set this variant call belongs to.
vcCallSetName :: Lens' VariantCall (Maybe Text)
vcCallSetName
  = lens _vcCallSetName
      (\ s a -> s{_vcCallSetName = a})

-- | If this field is present, this variant call\'s genotype ordering implies
-- the phase of the bases and is consistent with any other variant calls in
-- the same reference sequence which have the same phaseset value. When
-- importing data from VCF, if the genotype data was phased but no phase
-- set was specified this field will be set to \`*\`.
vcPhaseset :: Lens' VariantCall (Maybe Text)
vcPhaseset
  = lens _vcPhaseset (\ s a -> s{_vcPhaseset = a})

-- | The ID of the call set this variant call belongs to.
vcCallSetId :: Lens' VariantCall (Maybe Text)
vcCallSetId
  = lens _vcCallSetId (\ s a -> s{_vcCallSetId = a})

-- | The genotype of this variant call. Each value represents either the
-- value of the \`referenceBases\` field or a 1-based index into
-- \`alternateBases\`. If a variant had a \`referenceBases\` value of \`T\`
-- and an \`alternateBases\` value of \`[\"A\", \"C\"]\`, and the
-- \`genotype\` was \`[2, 1]\`, that would mean the call represented the
-- heterozygous value \`CA\` for this variant. If the \`genotype\` was
-- instead \`[0, 1]\`, the represented value would be \`TA\`. Ordering of
-- the genotype values is important if the \`phaseset\` is present. If a
-- genotype is not called (that is, a \`.\` is present in the GT string) -1
-- is returned.
vcGenotype :: Lens' VariantCall [Int32]
vcGenotype
  = lens _vcGenotype (\ s a -> s{_vcGenotype = a}) .
      _Default
      . _Coerce

-- | A map of additional variant call information. This must be of the form
-- map (string key mapping to a list of string values).
vcInfo :: Lens' VariantCall (Maybe VariantCallInfo)
vcInfo = lens _vcInfo (\ s a -> s{_vcInfo = a})

instance FromJSON VariantCall where
        parseJSON
          = withObject "VariantCall"
              (\ o ->
                 VariantCall <$>
                   (o .:? "genotypeLikelihood" .!= mempty) <*>
                     (o .:? "callSetName")
                     <*> (o .:? "phaseset")
                     <*> (o .:? "callSetId")
                     <*> (o .:? "genotype" .!= mempty)
                     <*> (o .:? "info"))

instance ToJSON VariantCall where
        toJSON VariantCall{..}
          = object
              (catMaybes
                 [("genotypeLikelihood" .=) <$> _vcGenotypeLikelihood,
                  ("callSetName" .=) <$> _vcCallSetName,
                  ("phaseset" .=) <$> _vcPhaseset,
                  ("callSetId" .=) <$> _vcCallSetId,
                  ("genotype" .=) <$> _vcGenotype,
                  ("info" .=) <$> _vcInfo])

-- | A read group is all the data that\'s processed the same way by the
-- sequencer.
--
-- /See:/ 'readGroup' smart constructor.
data ReadGroup = ReadGroup
    { _reaReferenceSetId      :: !(Maybe Text)
    , _reaPrograms            :: !(Maybe [Program])
    , _reaExperiment          :: !(Maybe Experiment)
    , _reaName                :: !(Maybe Text)
    , _reaDataSetId           :: !(Maybe Text)
    , _reaId                  :: !(Maybe Text)
    , _reaSampleId            :: !(Maybe Text)
    , _reaPredictedInsertSize :: !(Maybe (Textual Int32))
    , _reaDescription         :: !(Maybe Text)
    , _reaInfo                :: !(Maybe ReadGroupInfo)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reaReferenceSetId'
--
-- * 'reaPrograms'
--
-- * 'reaExperiment'
--
-- * 'reaName'
--
-- * 'reaDataSetId'
--
-- * 'reaId'
--
-- * 'reaSampleId'
--
-- * 'reaPredictedInsertSize'
--
-- * 'reaDescription'
--
-- * 'reaInfo'
readGroup
    :: ReadGroup
readGroup =
    ReadGroup
    { _reaReferenceSetId = Nothing
    , _reaPrograms = Nothing
    , _reaExperiment = Nothing
    , _reaName = Nothing
    , _reaDataSetId = Nothing
    , _reaId = Nothing
    , _reaSampleId = Nothing
    , _reaPredictedInsertSize = Nothing
    , _reaDescription = Nothing
    , _reaInfo = Nothing
    }

-- | The reference set the reads in this read group are aligned to. Required
-- if there are any read alignments.
reaReferenceSetId :: Lens' ReadGroup (Maybe Text)
reaReferenceSetId
  = lens _reaReferenceSetId
      (\ s a -> s{_reaReferenceSetId = a})

-- | The programs used to generate this read group. Programs are always
-- identical for all read groups within a read group set. For this reason,
-- only the first read group in a returned set will have this field
-- populated.
reaPrograms :: Lens' ReadGroup [Program]
reaPrograms
  = lens _reaPrograms (\ s a -> s{_reaPrograms = a}) .
      _Default
      . _Coerce

-- | The experiment used to generate this read group.
reaExperiment :: Lens' ReadGroup (Maybe Experiment)
reaExperiment
  = lens _reaExperiment
      (\ s a -> s{_reaExperiment = a})

-- | The read group name. This corresponds to the \'RG ID field in the SAM
-- spec.
reaName :: Lens' ReadGroup (Maybe Text)
reaName = lens _reaName (\ s a -> s{_reaName = a})

-- | The ID of the dataset this read group belongs to.
reaDataSetId :: Lens' ReadGroup (Maybe Text)
reaDataSetId
  = lens _reaDataSetId (\ s a -> s{_reaDataSetId = a})

-- | The server-generated read group ID, unique for all read groups. Note:
-- This is different than the \`\'RG ID\` field in the SAM spec. For that
-- value, see the \`name\` field.
reaId :: Lens' ReadGroup (Maybe Text)
reaId = lens _reaId (\ s a -> s{_reaId = a})

-- | The sample this read group\'s data was generated from. Note: This is not
-- an actual ID within this repository, but rather an identifier for a
-- sample which may be meaningful to some external system.
reaSampleId :: Lens' ReadGroup (Maybe Text)
reaSampleId
  = lens _reaSampleId (\ s a -> s{_reaSampleId = a})

-- | The predicted insert size of this read group. The insert size is the
-- length the sequenced DNA fragment from end-to-end, not including the
-- adapters.
reaPredictedInsertSize :: Lens' ReadGroup (Maybe Int32)
reaPredictedInsertSize
  = lens _reaPredictedInsertSize
      (\ s a -> s{_reaPredictedInsertSize = a})
      . mapping _Coerce

-- | A free-form text description of this read group.
reaDescription :: Lens' ReadGroup (Maybe Text)
reaDescription
  = lens _reaDescription
      (\ s a -> s{_reaDescription = a})

-- | A map of additional read group information. This must be of the form map
-- (string key mapping to a list of string values).
reaInfo :: Lens' ReadGroup (Maybe ReadGroupInfo)
reaInfo = lens _reaInfo (\ s a -> s{_reaInfo = a})

instance FromJSON ReadGroup where
        parseJSON
          = withObject "ReadGroup"
              (\ o ->
                 ReadGroup <$>
                   (o .:? "referenceSetId") <*>
                     (o .:? "programs" .!= mempty)
                     <*> (o .:? "experiment")
                     <*> (o .:? "name")
                     <*> (o .:? "datasetId")
                     <*> (o .:? "id")
                     <*> (o .:? "sampleId")
                     <*> (o .:? "predictedInsertSize")
                     <*> (o .:? "description")
                     <*> (o .:? "info"))

instance ToJSON ReadGroup where
        toJSON ReadGroup{..}
          = object
              (catMaybes
                 [("referenceSetId" .=) <$> _reaReferenceSetId,
                  ("programs" .=) <$> _reaPrograms,
                  ("experiment" .=) <$> _reaExperiment,
                  ("name" .=) <$> _reaName,
                  ("datasetId" .=) <$> _reaDataSetId,
                  ("id" .=) <$> _reaId,
                  ("sampleId" .=) <$> _reaSampleId,
                  ("predictedInsertSize" .=) <$>
                    _reaPredictedInsertSize,
                  ("description" .=) <$> _reaDescription,
                  ("info" .=) <$> _reaInfo])

-- | This resource represents a long-running operation that is the result of
-- a network API call.
--
-- /See:/ 'operation' smart constructor.
data Operation = Operation
    { _oDone     :: !(Maybe Bool)
    , _oError    :: !(Maybe Status)
    , _oResponse :: !(Maybe OperationResponse)
    , _oName     :: !(Maybe Text)
    , _oMetadata :: !(Maybe OperationSchema)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oDone'
--
-- * 'oError'
--
-- * 'oResponse'
--
-- * 'oName'
--
-- * 'oMetadata'
operation
    :: Operation
operation =
    Operation
    { _oDone = Nothing
    , _oError = Nothing
    , _oResponse = Nothing
    , _oName = Nothing
    , _oMetadata = Nothing
    }

-- | If the value is \`false\`, it means the operation is still in progress.
-- If true, the operation is completed, and either \`error\` or
-- \`response\` is available.
oDone :: Lens' Operation (Maybe Bool)
oDone = lens _oDone (\ s a -> s{_oDone = a})

-- | The error result of the operation in case of failure.
oError :: Lens' Operation (Maybe Status)
oError = lens _oError (\ s a -> s{_oError = a})

-- | If importing ReadGroupSets, an ImportReadGroupSetsResponse is returned.
-- If importing Variants, an ImportVariantsResponse is returned. For
-- exports, an empty response is returned.
oResponse :: Lens' Operation (Maybe OperationResponse)
oResponse
  = lens _oResponse (\ s a -> s{_oResponse = a})

-- | The server-assigned name, which is only unique within the same service
-- that originally returns it. For example:
-- \`operations\/CJHU7Oi_ChDrveSpBRjfuL-qzoWAgEw\`
oName :: Lens' Operation (Maybe Text)
oName = lens _oName (\ s a -> s{_oName = a})

-- | An OperationMetadata object. This will always be returned with the
-- Operation.
oMetadata :: Lens' Operation (Maybe OperationSchema)
oMetadata
  = lens _oMetadata (\ s a -> s{_oMetadata = a})

instance FromJSON Operation where
        parseJSON
          = withObject "Operation"
              (\ o ->
                 Operation <$>
                   (o .:? "done") <*> (o .:? "error") <*>
                     (o .:? "response")
                     <*> (o .:? "name")
                     <*> (o .:? "metadata"))

instance ToJSON Operation where
        toJSON Operation{..}
          = object
              (catMaybes
                 [("done" .=) <$> _oDone, ("error" .=) <$> _oError,
                  ("response" .=) <$> _oResponse,
                  ("name" .=) <$> _oName,
                  ("metadata" .=) <$> _oMetadata])

--
-- /See:/ 'searchReferenceSetsRequest' smart constructor.
data SearchReferenceSetsRequest = SearchReferenceSetsRequest
    { _srsrMD5checksums :: !(Maybe [Text])
    , _srsrAccessions   :: !(Maybe [Text])
    , _srsrPageToken    :: !(Maybe Text)
    , _srsrAssemblyId   :: !(Maybe Text)
    , _srsrPageSize     :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchReferenceSetsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsrMD5checksums'
--
-- * 'srsrAccessions'
--
-- * 'srsrPageToken'
--
-- * 'srsrAssemblyId'
--
-- * 'srsrPageSize'
searchReferenceSetsRequest
    :: SearchReferenceSetsRequest
searchReferenceSetsRequest =
    SearchReferenceSetsRequest
    { _srsrMD5checksums = Nothing
    , _srsrAccessions = Nothing
    , _srsrPageToken = Nothing
    , _srsrAssemblyId = Nothing
    , _srsrPageSize = Nothing
    }

-- | If present, return references for which the \`md5checksum\` matches. See
-- \`ReferenceSet.md5checksum\` for details.
srsrMD5checksums :: Lens' SearchReferenceSetsRequest [Text]
srsrMD5checksums
  = lens _srsrMD5checksums
      (\ s a -> s{_srsrMD5checksums = a})
      . _Default
      . _Coerce

-- | If present, return references for which the accession matches any of
-- these strings. Best to give a version number, for example
-- \`GCF_000001405.26\`. If only the main accession number is given then
-- all records with that main accession will be returned, whichever
-- version. Note that different versions will have different sequences.
srsrAccessions :: Lens' SearchReferenceSetsRequest [Text]
srsrAccessions
  = lens _srsrAccessions
      (\ s a -> s{_srsrAccessions = a})
      . _Default
      . _Coerce

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \`nextPageToken\` from the previous response.
srsrPageToken :: Lens' SearchReferenceSetsRequest (Maybe Text)
srsrPageToken
  = lens _srsrPageToken
      (\ s a -> s{_srsrPageToken = a})

-- | If present, return reference sets for which a substring of their
-- \`assemblyId\` matches this string (case insensitive).
srsrAssemblyId :: Lens' SearchReferenceSetsRequest (Maybe Text)
srsrAssemblyId
  = lens _srsrAssemblyId
      (\ s a -> s{_srsrAssemblyId = a})

-- | Specifies the maximum number of results to return in a single page.
srsrPageSize :: Lens' SearchReferenceSetsRequest (Maybe Int32)
srsrPageSize
  = lens _srsrPageSize (\ s a -> s{_srsrPageSize = a})
      . mapping _Coerce

instance FromJSON SearchReferenceSetsRequest where
        parseJSON
          = withObject "SearchReferenceSetsRequest"
              (\ o ->
                 SearchReferenceSetsRequest <$>
                   (o .:? "md5checksums" .!= mempty) <*>
                     (o .:? "accessions" .!= mempty)
                     <*> (o .:? "pageToken")
                     <*> (o .:? "assemblyId")
                     <*> (o .:? "pageSize"))

instance ToJSON SearchReferenceSetsRequest where
        toJSON SearchReferenceSetsRequest{..}
          = object
              (catMaybes
                 [("md5checksums" .=) <$> _srsrMD5checksums,
                  ("accessions" .=) <$> _srsrAccessions,
                  ("pageToken" .=) <$> _srsrPageToken,
                  ("assemblyId" .=) <$> _srsrAssemblyId,
                  ("pageSize" .=) <$> _srsrPageSize])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
    Empty
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty)

instance ToJSON Empty where
        toJSON = const emptyObject

--
-- /See:/ 'searchReferencesResponse' smart constructor.
data SearchReferencesResponse = SearchReferencesResponse
    { _srrNextPageToken :: !(Maybe Text)
    , _srrReferences    :: !(Maybe [Reference])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchReferencesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srrNextPageToken'
--
-- * 'srrReferences'
searchReferencesResponse
    :: SearchReferencesResponse
searchReferencesResponse =
    SearchReferencesResponse
    { _srrNextPageToken = Nothing
    , _srrReferences = Nothing
    }

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
srrNextPageToken :: Lens' SearchReferencesResponse (Maybe Text)
srrNextPageToken
  = lens _srrNextPageToken
      (\ s a -> s{_srrNextPageToken = a})

-- | The matching references.
srrReferences :: Lens' SearchReferencesResponse [Reference]
srrReferences
  = lens _srrReferences
      (\ s a -> s{_srrReferences = a})
      . _Default
      . _Coerce

instance FromJSON SearchReferencesResponse where
        parseJSON
          = withObject "SearchReferencesResponse"
              (\ o ->
                 SearchReferencesResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "references" .!= mempty))

instance ToJSON SearchReferencesResponse where
        toJSON SearchReferencesResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _srrNextPageToken,
                  ("references" .=) <$> _srrReferences])

-- | Metadata describes a single piece of variant call metadata. These data
-- include a top level key and either a single value string (value) or a
-- list of key-value pairs (info.) Value and info are mutually exclusive.
--
-- /See:/ 'variantSetMetadata' smart constructor.
data VariantSetMetadata = VariantSetMetadata
    { _vsmValue       :: !(Maybe Text)
    , _vsmKey         :: !(Maybe Text)
    , _vsmId          :: !(Maybe Text)
    , _vsmType        :: !(Maybe Text)
    , _vsmNumber      :: !(Maybe Text)
    , _vsmDescription :: !(Maybe Text)
    , _vsmInfo        :: !(Maybe VariantSetMetadataInfo)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantSetMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsmValue'
--
-- * 'vsmKey'
--
-- * 'vsmId'
--
-- * 'vsmType'
--
-- * 'vsmNumber'
--
-- * 'vsmDescription'
--
-- * 'vsmInfo'
variantSetMetadata
    :: VariantSetMetadata
variantSetMetadata =
    VariantSetMetadata
    { _vsmValue = Nothing
    , _vsmKey = Nothing
    , _vsmId = Nothing
    , _vsmType = Nothing
    , _vsmNumber = Nothing
    , _vsmDescription = Nothing
    , _vsmInfo = Nothing
    }

-- | The value field for simple metadata
vsmValue :: Lens' VariantSetMetadata (Maybe Text)
vsmValue = lens _vsmValue (\ s a -> s{_vsmValue = a})

-- | The top-level key.
vsmKey :: Lens' VariantSetMetadata (Maybe Text)
vsmKey = lens _vsmKey (\ s a -> s{_vsmKey = a})

-- | User-provided ID field, not enforced by this API. Two or more pieces of
-- structured metadata with identical id and key fields are considered
-- equivalent.
vsmId :: Lens' VariantSetMetadata (Maybe Text)
vsmId = lens _vsmId (\ s a -> s{_vsmId = a})

-- | The type of data. Possible types include: Integer, Float, Flag,
-- Character, and String.
vsmType :: Lens' VariantSetMetadata (Maybe Text)
vsmType = lens _vsmType (\ s a -> s{_vsmType = a})

-- | The number of values that can be included in a field described by this
-- metadata.
vsmNumber :: Lens' VariantSetMetadata (Maybe Text)
vsmNumber
  = lens _vsmNumber (\ s a -> s{_vsmNumber = a})

-- | A textual description of this metadata.
vsmDescription :: Lens' VariantSetMetadata (Maybe Text)
vsmDescription
  = lens _vsmDescription
      (\ s a -> s{_vsmDescription = a})

-- | Remaining structured metadata key-value pairs. This must be of the form
-- map (string key mapping to a list of string values).
vsmInfo :: Lens' VariantSetMetadata (Maybe VariantSetMetadataInfo)
vsmInfo = lens _vsmInfo (\ s a -> s{_vsmInfo = a})

instance FromJSON VariantSetMetadata where
        parseJSON
          = withObject "VariantSetMetadata"
              (\ o ->
                 VariantSetMetadata <$>
                   (o .:? "value") <*> (o .:? "key") <*> (o .:? "id")
                     <*> (o .:? "type")
                     <*> (o .:? "number")
                     <*> (o .:? "description")
                     <*> (o .:? "info"))

instance ToJSON VariantSetMetadata where
        toJSON VariantSetMetadata{..}
          = object
              (catMaybes
                 [("value" .=) <$> _vsmValue, ("key" .=) <$> _vsmKey,
                  ("id" .=) <$> _vsmId, ("type" .=) <$> _vsmType,
                  ("number" .=) <$> _vsmNumber,
                  ("description" .=) <$> _vsmDescription,
                  ("info" .=) <$> _vsmInfo])

-- | A call set is a collection of variant calls, typically for one sample.
-- It belongs to a variant set.
--
-- /See:/ 'callSet' smart constructor.
data CallSet = CallSet
    { _csCreated       :: !(Maybe (Textual Int64))
    , _csName          :: !(Maybe Text)
    , _csId            :: !(Maybe Text)
    , _csSampleId      :: !(Maybe Text)
    , _csVariantSetIds :: !(Maybe [Text])
    , _csInfo          :: !(Maybe CallSetInfo)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csCreated'
--
-- * 'csName'
--
-- * 'csId'
--
-- * 'csSampleId'
--
-- * 'csVariantSetIds'
--
-- * 'csInfo'
callSet
    :: CallSet
callSet =
    CallSet
    { _csCreated = Nothing
    , _csName = Nothing
    , _csId = Nothing
    , _csSampleId = Nothing
    , _csVariantSetIds = Nothing
    , _csInfo = Nothing
    }

-- | The date this call set was created in milliseconds from the epoch.
csCreated :: Lens' CallSet (Maybe Int64)
csCreated
  = lens _csCreated (\ s a -> s{_csCreated = a}) .
      mapping _Coerce

-- | The call set name.
csName :: Lens' CallSet (Maybe Text)
csName = lens _csName (\ s a -> s{_csName = a})

-- | The server-generated call set ID, unique across all call sets.
csId :: Lens' CallSet (Maybe Text)
csId = lens _csId (\ s a -> s{_csId = a})

-- | The sample ID this call set corresponds to.
csSampleId :: Lens' CallSet (Maybe Text)
csSampleId
  = lens _csSampleId (\ s a -> s{_csSampleId = a})

-- | The IDs of the variant sets this call set belongs to. This field must
-- have exactly length one, as a call set belongs to a single variant set.
-- This field is repeated for compatibility with the [GA4GH 0.5.1
-- API](https:\/\/github.com\/ga4gh\/schemas\/blob\/v0.5.1\/src\/main\/resources\/avro\/variants.avdl#L76).
csVariantSetIds :: Lens' CallSet [Text]
csVariantSetIds
  = lens _csVariantSetIds
      (\ s a -> s{_csVariantSetIds = a})
      . _Default
      . _Coerce

-- | A map of additional call set information. This must be of the form map
-- (string key mapping to a list of string values).
csInfo :: Lens' CallSet (Maybe CallSetInfo)
csInfo = lens _csInfo (\ s a -> s{_csInfo = a})

instance FromJSON CallSet where
        parseJSON
          = withObject "CallSet"
              (\ o ->
                 CallSet <$>
                   (o .:? "created") <*> (o .:? "name") <*> (o .:? "id")
                     <*> (o .:? "sampleId")
                     <*> (o .:? "variantSetIds" .!= mempty)
                     <*> (o .:? "info"))

instance ToJSON CallSet where
        toJSON CallSet{..}
          = object
              (catMaybes
                 [("created" .=) <$> _csCreated,
                  ("name" .=) <$> _csName, ("id" .=) <$> _csId,
                  ("sampleId" .=) <$> _csSampleId,
                  ("variantSetIds" .=) <$> _csVariantSetIds,
                  ("info" .=) <$> _csInfo])

-- | A bucket over which read coverage has been precomputed. A bucket
-- corresponds to a specific range of the reference sequence.
--
-- /See:/ 'coverageBucket' smart constructor.
data CoverageBucket = CoverageBucket
    { _cbRange        :: !(Maybe Range)
    , _cbMeanCoverage :: !(Maybe (Textual Double))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CoverageBucket' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cbRange'
--
-- * 'cbMeanCoverage'
coverageBucket
    :: CoverageBucket
coverageBucket =
    CoverageBucket
    { _cbRange = Nothing
    , _cbMeanCoverage = Nothing
    }

-- | The genomic coordinate range spanned by this bucket.
cbRange :: Lens' CoverageBucket (Maybe Range)
cbRange = lens _cbRange (\ s a -> s{_cbRange = a})

-- | The average number of reads which are aligned to each individual
-- reference base in this bucket.
cbMeanCoverage :: Lens' CoverageBucket (Maybe Double)
cbMeanCoverage
  = lens _cbMeanCoverage
      (\ s a -> s{_cbMeanCoverage = a})
      . mapping _Coerce

instance FromJSON CoverageBucket where
        parseJSON
          = withObject "CoverageBucket"
              (\ o ->
                 CoverageBucket <$>
                   (o .:? "range") <*> (o .:? "meanCoverage"))

instance ToJSON CoverageBucket where
        toJSON CoverageBucket{..}
          = object
              (catMaybes
                 [("range" .=) <$> _cbRange,
                  ("meanCoverage" .=) <$> _cbMeanCoverage])

-- | The read group set search request.
--
-- /See:/ 'searchReadGroupSetsRequest' smart constructor.
data SearchReadGroupSetsRequest = SearchReadGroupSetsRequest
    { _srgsrDataSetIds :: !(Maybe [Text])
    , _srgsrName       :: !(Maybe Text)
    , _srgsrPageToken  :: !(Maybe Text)
    , _srgsrPageSize   :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchReadGroupSetsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srgsrDataSetIds'
--
-- * 'srgsrName'
--
-- * 'srgsrPageToken'
--
-- * 'srgsrPageSize'
searchReadGroupSetsRequest
    :: SearchReadGroupSetsRequest
searchReadGroupSetsRequest =
    SearchReadGroupSetsRequest
    { _srgsrDataSetIds = Nothing
    , _srgsrName = Nothing
    , _srgsrPageToken = Nothing
    , _srgsrPageSize = Nothing
    }

-- | Restricts this query to read group sets within the given datasets. At
-- least one ID must be provided.
srgsrDataSetIds :: Lens' SearchReadGroupSetsRequest [Text]
srgsrDataSetIds
  = lens _srgsrDataSetIds
      (\ s a -> s{_srgsrDataSetIds = a})
      . _Default
      . _Coerce

-- | Only return read group sets for which a substring of the name matches
-- this string.
srgsrName :: Lens' SearchReadGroupSetsRequest (Maybe Text)
srgsrName
  = lens _srgsrName (\ s a -> s{_srgsrName = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \`nextPageToken\` from the previous response.
srgsrPageToken :: Lens' SearchReadGroupSetsRequest (Maybe Text)
srgsrPageToken
  = lens _srgsrPageToken
      (\ s a -> s{_srgsrPageToken = a})

-- | Specifies number of results to return in a single page. If unspecified,
-- it will default to 256. The maximum value is 1024.
srgsrPageSize :: Lens' SearchReadGroupSetsRequest (Maybe Int32)
srgsrPageSize
  = lens _srgsrPageSize
      (\ s a -> s{_srgsrPageSize = a})
      . mapping _Coerce

instance FromJSON SearchReadGroupSetsRequest where
        parseJSON
          = withObject "SearchReadGroupSetsRequest"
              (\ o ->
                 SearchReadGroupSetsRequest <$>
                   (o .:? "datasetIds" .!= mempty) <*> (o .:? "name")
                     <*> (o .:? "pageToken")
                     <*> (o .:? "pageSize"))

instance ToJSON SearchReadGroupSetsRequest where
        toJSON SearchReadGroupSetsRequest{..}
          = object
              (catMaybes
                 [("datasetIds" .=) <$> _srgsrDataSetIds,
                  ("name" .=) <$> _srgsrName,
                  ("pageToken" .=) <$> _srgsrPageToken,
                  ("pageSize" .=) <$> _srgsrPageSize])

-- | A reference is a canonical assembled DNA sequence, intended to act as a
-- reference coordinate space for other genomic annotations. A single
-- reference might represent the human chromosome 1 or mitochandrial DNA,
-- for instance. A reference belongs to one or more reference sets.
--
-- /See:/ 'reference' smart constructor.
data Reference = Reference
    { _refLength           :: !(Maybe (Textual Int64))
    , _refSourceAccessions :: !(Maybe [Text])
    , _refMD5checksum      :: !(Maybe Text)
    , _refName             :: !(Maybe Text)
    , _refNcbiTaxonId      :: !(Maybe (Textual Int32))
    , _refId               :: !(Maybe Text)
    , _refSourceURI        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Reference' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'refLength'
--
-- * 'refSourceAccessions'
--
-- * 'refMD5checksum'
--
-- * 'refName'
--
-- * 'refNcbiTaxonId'
--
-- * 'refId'
--
-- * 'refSourceURI'
reference
    :: Reference
reference =
    Reference
    { _refLength = Nothing
    , _refSourceAccessions = Nothing
    , _refMD5checksum = Nothing
    , _refName = Nothing
    , _refNcbiTaxonId = Nothing
    , _refId = Nothing
    , _refSourceURI = Nothing
    }

-- | The length of this reference\'s sequence.
refLength :: Lens' Reference (Maybe Int64)
refLength
  = lens _refLength (\ s a -> s{_refLength = a}) .
      mapping _Coerce

-- | All known corresponding accession IDs in INSDC (GenBank\/ENA\/DDBJ)
-- ideally with a version number, for example \`GCF_000001405.26\`.
refSourceAccessions :: Lens' Reference [Text]
refSourceAccessions
  = lens _refSourceAccessions
      (\ s a -> s{_refSourceAccessions = a})
      . _Default
      . _Coerce

-- | MD5 of the upper-case sequence excluding all whitespace characters (this
-- is equivalent to SQ:M5 in SAM). This value is represented in lower case
-- hexadecimal format.
refMD5checksum :: Lens' Reference (Maybe Text)
refMD5checksum
  = lens _refMD5checksum
      (\ s a -> s{_refMD5checksum = a})

-- | The name of this reference, for example \`22\`.
refName :: Lens' Reference (Maybe Text)
refName = lens _refName (\ s a -> s{_refName = a})

-- | ID from http:\/\/www.ncbi.nlm.nih.gov\/taxonomy (e.g. 9606->human) if
-- not specified by the containing reference set.
refNcbiTaxonId :: Lens' Reference (Maybe Int32)
refNcbiTaxonId
  = lens _refNcbiTaxonId
      (\ s a -> s{_refNcbiTaxonId = a})
      . mapping _Coerce

-- | The server-generated reference ID, unique across all references.
refId :: Lens' Reference (Maybe Text)
refId = lens _refId (\ s a -> s{_refId = a})

-- | The URI from which the sequence was obtained. Specifies a FASTA format
-- file\/string with one name, sequence pair.
refSourceURI :: Lens' Reference (Maybe Text)
refSourceURI
  = lens _refSourceURI (\ s a -> s{_refSourceURI = a})

instance FromJSON Reference where
        parseJSON
          = withObject "Reference"
              (\ o ->
                 Reference <$>
                   (o .:? "length") <*>
                     (o .:? "sourceAccessions" .!= mempty)
                     <*> (o .:? "md5checksum")
                     <*> (o .:? "name")
                     <*> (o .:? "ncbiTaxonId")
                     <*> (o .:? "id")
                     <*> (o .:? "sourceUri"))

instance ToJSON Reference where
        toJSON Reference{..}
          = object
              (catMaybes
                 [("length" .=) <$> _refLength,
                  ("sourceAccessions" .=) <$> _refSourceAccessions,
                  ("md5checksum" .=) <$> _refMD5checksum,
                  ("name" .=) <$> _refName,
                  ("ncbiTaxonId" .=) <$> _refNcbiTaxonId,
                  ("id" .=) <$> _refId,
                  ("sourceUri" .=) <$> _refSourceURI])

-- | A map of additional variant call information. This must be of the form
-- map (string key mapping to a list of string values).
--
-- /See:/ 'variantCallInfo' smart constructor.
newtype VariantCallInfo = VariantCallInfo
    { _vciAddtional :: HashMap Text [JSONValue]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantCallInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vciAddtional'
variantCallInfo
    :: HashMap Text [JSONValue] -- ^ 'vciAddtional'
    -> VariantCallInfo
variantCallInfo pVciAddtional_ =
    VariantCallInfo
    { _vciAddtional = _Coerce # pVciAddtional_
    }

vciAddtional :: Lens' VariantCallInfo (HashMap Text [JSONValue])
vciAddtional
  = lens _vciAddtional (\ s a -> s{_vciAddtional = a})
      . _Coerce

instance FromJSON VariantCallInfo where
        parseJSON
          = withObject "VariantCallInfo"
              (\ o -> VariantCallInfo <$> (parseJSONObject o))

instance ToJSON VariantCallInfo where
        toJSON = toJSON . _vciAddtional

-- | A map of additional read group information. This must be of the form map
-- (string key mapping to a list of string values).
--
-- /See:/ 'readGroupInfo' smart constructor.
newtype ReadGroupInfo = ReadGroupInfo
    { _rgiAddtional :: HashMap Text [JSONValue]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadGroupInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgiAddtional'
readGroupInfo
    :: HashMap Text [JSONValue] -- ^ 'rgiAddtional'
    -> ReadGroupInfo
readGroupInfo pRgiAddtional_ =
    ReadGroupInfo
    { _rgiAddtional = _Coerce # pRgiAddtional_
    }

rgiAddtional :: Lens' ReadGroupInfo (HashMap Text [JSONValue])
rgiAddtional
  = lens _rgiAddtional (\ s a -> s{_rgiAddtional = a})
      . _Coerce

instance FromJSON ReadGroupInfo where
        parseJSON
          = withObject "ReadGroupInfo"
              (\ o -> ReadGroupInfo <$> (parseJSONObject o))

instance ToJSON ReadGroupInfo where
        toJSON = toJSON . _rgiAddtional

--
-- /See:/ 'statusDetailsItem' smart constructor.
newtype StatusDetailsItem = StatusDetailsItem
    { _sdiAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatusDetailsItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdiAddtional'
statusDetailsItem
    :: HashMap Text JSONValue -- ^ 'sdiAddtional'
    -> StatusDetailsItem
statusDetailsItem pSdiAddtional_ =
    StatusDetailsItem
    { _sdiAddtional = _Coerce # pSdiAddtional_
    }

-- | Properties of the object. Contains field \'ype with type URL.
sdiAddtional :: Lens' StatusDetailsItem (HashMap Text JSONValue)
sdiAddtional
  = lens _sdiAddtional (\ s a -> s{_sdiAddtional = a})
      . _Coerce

instance FromJSON StatusDetailsItem where
        parseJSON
          = withObject "StatusDetailsItem"
              (\ o -> StatusDetailsItem <$> (parseJSONObject o))

instance ToJSON StatusDetailsItem where
        toJSON = toJSON . _sdiAddtional

-- | The call set search response.
--
-- /See:/ 'searchCallSetsResponse' smart constructor.
data SearchCallSetsResponse = SearchCallSetsResponse
    { _scsrNextPageToken :: !(Maybe Text)
    , _scsrCallSets      :: !(Maybe [CallSet])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchCallSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scsrNextPageToken'
--
-- * 'scsrCallSets'
searchCallSetsResponse
    :: SearchCallSetsResponse
searchCallSetsResponse =
    SearchCallSetsResponse
    { _scsrNextPageToken = Nothing
    , _scsrCallSets = Nothing
    }

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
scsrNextPageToken :: Lens' SearchCallSetsResponse (Maybe Text)
scsrNextPageToken
  = lens _scsrNextPageToken
      (\ s a -> s{_scsrNextPageToken = a})

-- | The list of matching call sets.
scsrCallSets :: Lens' SearchCallSetsResponse [CallSet]
scsrCallSets
  = lens _scsrCallSets (\ s a -> s{_scsrCallSets = a})
      . _Default
      . _Coerce

instance FromJSON SearchCallSetsResponse where
        parseJSON
          = withObject "SearchCallSetsResponse"
              (\ o ->
                 SearchCallSetsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "callSets" .!= mempty))

instance ToJSON SearchCallSetsResponse where
        toJSON SearchCallSetsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _scsrNextPageToken,
                  ("callSets" .=) <$> _scsrCallSets])

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
newtype SetIAMPolicyRequest = SetIAMPolicyRequest
    { _siprPolicy :: Maybe Policy
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siprPolicy'
setIAMPolicyRequest
    :: SetIAMPolicyRequest
setIAMPolicyRequest =
    SetIAMPolicyRequest
    { _siprPolicy = Nothing
    }

-- | REQUIRED: The complete policy to be applied to the \`resource\`. The
-- size of the policy is limited to a few 10s of KB. An empty policy is a
-- valid policy but certain Cloud Platform services (such as Projects)
-- might reject them.
siprPolicy :: Lens' SetIAMPolicyRequest (Maybe Policy)
siprPolicy
  = lens _siprPolicy (\ s a -> s{_siprPolicy = a})

instance FromJSON SetIAMPolicyRequest where
        parseJSON
          = withObject "SetIAMPolicyRequest"
              (\ o -> SetIAMPolicyRequest <$> (o .:? "policy"))

instance ToJSON SetIAMPolicyRequest where
        toJSON SetIAMPolicyRequest{..}
          = object (catMaybes [("policy" .=) <$> _siprPolicy])

-- | The read search request.
--
-- /See:/ 'searchReadsRequest' smart constructor.
data SearchReadsRequest = SearchReadsRequest
    { _srrStart           :: !(Maybe (Textual Int64))
    , _srrReadGroupIds    :: !(Maybe [Text])
    , _srrReferenceName   :: !(Maybe Text)
    , _srrEnd             :: !(Maybe (Textual Int64))
    , _srrPageToken       :: !(Maybe Text)
    , _srrPageSize        :: !(Maybe (Textual Int32))
    , _srrReadGroupSetIds :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchReadsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srrStart'
--
-- * 'srrReadGroupIds'
--
-- * 'srrReferenceName'
--
-- * 'srrEnd'
--
-- * 'srrPageToken'
--
-- * 'srrPageSize'
--
-- * 'srrReadGroupSetIds'
searchReadsRequest
    :: SearchReadsRequest
searchReadsRequest =
    SearchReadsRequest
    { _srrStart = Nothing
    , _srrReadGroupIds = Nothing
    , _srrReferenceName = Nothing
    , _srrEnd = Nothing
    , _srrPageToken = Nothing
    , _srrPageSize = Nothing
    , _srrReadGroupSetIds = Nothing
    }

-- | The start position of the range on the reference, 0-based inclusive. If
-- specified, \`referenceName\` must also be specified.
srrStart :: Lens' SearchReadsRequest (Maybe Int64)
srrStart
  = lens _srrStart (\ s a -> s{_srrStart = a}) .
      mapping _Coerce

-- | The IDs of the read groups within which to search for reads. All
-- specified read groups must belong to the same read group sets. Must
-- specify one of \`readGroupSetIds\` or \`readGroupIds\`.
srrReadGroupIds :: Lens' SearchReadsRequest [Text]
srrReadGroupIds
  = lens _srrReadGroupIds
      (\ s a -> s{_srrReadGroupIds = a})
      . _Default
      . _Coerce

-- | The reference sequence name, for example \`chr1\`, \`1\`, or \`chrX\`.
-- If set to *, only unmapped reads are returned.
srrReferenceName :: Lens' SearchReadsRequest (Maybe Text)
srrReferenceName
  = lens _srrReferenceName
      (\ s a -> s{_srrReferenceName = a})

-- | The end position of the range on the reference, 0-based exclusive. If
-- specified, \`referenceName\` must also be specified.
srrEnd :: Lens' SearchReadsRequest (Maybe Int64)
srrEnd
  = lens _srrEnd (\ s a -> s{_srrEnd = a}) .
      mapping _Coerce

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \`nextPageToken\` from the previous response.
srrPageToken :: Lens' SearchReadsRequest (Maybe Text)
srrPageToken
  = lens _srrPageToken (\ s a -> s{_srrPageToken = a})

-- | Specifies number of results to return in a single page. If unspecified,
-- it will default to 256. The maximum value is 2048.
srrPageSize :: Lens' SearchReadsRequest (Maybe Int32)
srrPageSize
  = lens _srrPageSize (\ s a -> s{_srrPageSize = a}) .
      mapping _Coerce

-- | The IDs of the read groups sets within which to search for reads. All
-- specified read group sets must be aligned against a common set of
-- reference sequences; this defines the genomic coordinates for the query.
-- Must specify one of \`readGroupSetIds\` or \`readGroupIds\`.
srrReadGroupSetIds :: Lens' SearchReadsRequest [Text]
srrReadGroupSetIds
  = lens _srrReadGroupSetIds
      (\ s a -> s{_srrReadGroupSetIds = a})
      . _Default
      . _Coerce

instance FromJSON SearchReadsRequest where
        parseJSON
          = withObject "SearchReadsRequest"
              (\ o ->
                 SearchReadsRequest <$>
                   (o .:? "start") <*> (o .:? "readGroupIds" .!= mempty)
                     <*> (o .:? "referenceName")
                     <*> (o .:? "end")
                     <*> (o .:? "pageToken")
                     <*> (o .:? "pageSize")
                     <*> (o .:? "readGroupSetIds" .!= mempty))

instance ToJSON SearchReadsRequest where
        toJSON SearchReadsRequest{..}
          = object
              (catMaybes
                 [("start" .=) <$> _srrStart,
                  ("readGroupIds" .=) <$> _srrReadGroupIds,
                  ("referenceName" .=) <$> _srrReferenceName,
                  ("end" .=) <$> _srrEnd,
                  ("pageToken" .=) <$> _srrPageToken,
                  ("pageSize" .=) <$> _srrPageSize,
                  ("readGroupSetIds" .=) <$> _srrReadGroupSetIds])

-- | The original request that started the operation. Note that this will be
-- in current version of the API. If the operation was started with v1beta2
-- API and a GetOperation is performed on v1 API, a v1 request will be
-- returned.
--
-- /See:/ 'operationMetadataRequest' smart constructor.
newtype OperationMetadataRequest = OperationMetadataRequest
    { _omrAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationMetadataRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omrAddtional'
operationMetadataRequest
    :: HashMap Text JSONValue -- ^ 'omrAddtional'
    -> OperationMetadataRequest
operationMetadataRequest pOmrAddtional_ =
    OperationMetadataRequest
    { _omrAddtional = _Coerce # pOmrAddtional_
    }

-- | Properties of the object. Contains field \'ype with type URL.
omrAddtional :: Lens' OperationMetadataRequest (HashMap Text JSONValue)
omrAddtional
  = lens _omrAddtional (\ s a -> s{_omrAddtional = a})
      . _Coerce

instance FromJSON OperationMetadataRequest where
        parseJSON
          = withObject "OperationMetadataRequest"
              (\ o ->
                 OperationMetadataRequest <$> (parseJSONObject o))

instance ToJSON OperationMetadataRequest where
        toJSON = toJSON . _omrAddtional

-- | A map of additional variant information. This must be of the form map
-- (string key mapping to a list of string values).
--
-- /See:/ 'variantInfo' smart constructor.
newtype VariantInfo = VariantInfo
    { _viAddtional :: HashMap Text [JSONValue]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'viAddtional'
variantInfo
    :: HashMap Text [JSONValue] -- ^ 'viAddtional'
    -> VariantInfo
variantInfo pViAddtional_ =
    VariantInfo
    { _viAddtional = _Coerce # pViAddtional_
    }

viAddtional :: Lens' VariantInfo (HashMap Text [JSONValue])
viAddtional
  = lens _viAddtional (\ s a -> s{_viAddtional = a}) .
      _Coerce

instance FromJSON VariantInfo where
        parseJSON
          = withObject "VariantInfo"
              (\ o -> VariantInfo <$> (parseJSONObject o))

instance ToJSON VariantInfo where
        toJSON = toJSON . _viAddtional

--
-- /See:/ 'experiment' smart constructor.
data Experiment = Experiment
    { _eInstrumentModel  :: !(Maybe Text)
    , _ePlatformUnit     :: !(Maybe Text)
    , _eSequencingCenter :: !(Maybe Text)
    , _eLibraryId        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Experiment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eInstrumentModel'
--
-- * 'ePlatformUnit'
--
-- * 'eSequencingCenter'
--
-- * 'eLibraryId'
experiment
    :: Experiment
experiment =
    Experiment
    { _eInstrumentModel = Nothing
    , _ePlatformUnit = Nothing
    , _eSequencingCenter = Nothing
    , _eLibraryId = Nothing
    }

-- | The instrument model used as part of this experiment. This maps to
-- sequencing technology in BAM.
eInstrumentModel :: Lens' Experiment (Maybe Text)
eInstrumentModel
  = lens _eInstrumentModel
      (\ s a -> s{_eInstrumentModel = a})

-- | The platform unit used as part of this experiment e.g.
-- flowcell-barcode.lane for Illumina or slide for SOLiD. Corresponds to
-- the \'RG PU field in the SAM spec.
ePlatformUnit :: Lens' Experiment (Maybe Text)
ePlatformUnit
  = lens _ePlatformUnit
      (\ s a -> s{_ePlatformUnit = a})

-- | The sequencing center used as part of this experiment.
eSequencingCenter :: Lens' Experiment (Maybe Text)
eSequencingCenter
  = lens _eSequencingCenter
      (\ s a -> s{_eSequencingCenter = a})

-- | The library used as part of this experiment. Note: This is not an actual
-- ID within this repository, but rather an identifier for a library which
-- may be meaningful to some external system.
eLibraryId :: Lens' Experiment (Maybe Text)
eLibraryId
  = lens _eLibraryId (\ s a -> s{_eLibraryId = a})

instance FromJSON Experiment where
        parseJSON
          = withObject "Experiment"
              (\ o ->
                 Experiment <$>
                   (o .:? "instrumentModel") <*> (o .:? "platformUnit")
                     <*> (o .:? "sequencingCenter")
                     <*> (o .:? "libraryId"))

instance ToJSON Experiment where
        toJSON Experiment{..}
          = object
              (catMaybes
                 [("instrumentModel" .=) <$> _eInstrumentModel,
                  ("platformUnit" .=) <$> _ePlatformUnit,
                  ("sequencingCenter" .=) <$> _eSequencingCenter,
                  ("libraryId" .=) <$> _eLibraryId])

-- | The search variant sets request.
--
-- /See:/ 'searchVariantSetsRequest' smart constructor.
data SearchVariantSetsRequest = SearchVariantSetsRequest
    { _svsrDataSetIds :: !(Maybe [Text])
    , _svsrPageToken  :: !(Maybe Text)
    , _svsrPageSize   :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchVariantSetsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svsrDataSetIds'
--
-- * 'svsrPageToken'
--
-- * 'svsrPageSize'
searchVariantSetsRequest
    :: SearchVariantSetsRequest
searchVariantSetsRequest =
    SearchVariantSetsRequest
    { _svsrDataSetIds = Nothing
    , _svsrPageToken = Nothing
    , _svsrPageSize = Nothing
    }

-- | Exactly one dataset ID must be provided here. Only variant sets which
-- belong to this dataset will be returned.
svsrDataSetIds :: Lens' SearchVariantSetsRequest [Text]
svsrDataSetIds
  = lens _svsrDataSetIds
      (\ s a -> s{_svsrDataSetIds = a})
      . _Default
      . _Coerce

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \`nextPageToken\` from the previous response.
svsrPageToken :: Lens' SearchVariantSetsRequest (Maybe Text)
svsrPageToken
  = lens _svsrPageToken
      (\ s a -> s{_svsrPageToken = a})

-- | The maximum number of variant sets to return in a request.
svsrPageSize :: Lens' SearchVariantSetsRequest (Maybe Int32)
svsrPageSize
  = lens _svsrPageSize (\ s a -> s{_svsrPageSize = a})
      . mapping _Coerce

instance FromJSON SearchVariantSetsRequest where
        parseJSON
          = withObject "SearchVariantSetsRequest"
              (\ o ->
                 SearchVariantSetsRequest <$>
                   (o .:? "datasetIds" .!= mempty) <*>
                     (o .:? "pageToken")
                     <*> (o .:? "pageSize"))

instance ToJSON SearchVariantSetsRequest where
        toJSON SearchVariantSetsRequest{..}
          = object
              (catMaybes
                 [("datasetIds" .=) <$> _svsrDataSetIds,
                  ("pageToken" .=) <$> _svsrPageToken,
                  ("pageSize" .=) <$> _svsrPageSize])

-- | The variant search response.
--
-- /See:/ 'searchVariantsResponse' smart constructor.
data SearchVariantsResponse = SearchVariantsResponse
    { _svrVariants      :: !(Maybe [Variant])
    , _svrNextPageToken :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchVariantsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svrVariants'
--
-- * 'svrNextPageToken'
searchVariantsResponse
    :: SearchVariantsResponse
searchVariantsResponse =
    SearchVariantsResponse
    { _svrVariants = Nothing
    , _svrNextPageToken = Nothing
    }

-- | The list of matching Variants.
svrVariants :: Lens' SearchVariantsResponse [Variant]
svrVariants
  = lens _svrVariants (\ s a -> s{_svrVariants = a}) .
      _Default
      . _Coerce

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
svrNextPageToken :: Lens' SearchVariantsResponse (Maybe Text)
svrNextPageToken
  = lens _svrNextPageToken
      (\ s a -> s{_svrNextPageToken = a})

instance FromJSON SearchVariantsResponse where
        parseJSON
          = withObject "SearchVariantsResponse"
              (\ o ->
                 SearchVariantsResponse <$>
                   (o .:? "variants" .!= mempty) <*>
                     (o .:? "nextPageToken"))

instance ToJSON SearchVariantsResponse where
        toJSON SearchVariantsResponse{..}
          = object
              (catMaybes
                 [("variants" .=) <$> _svrVariants,
                  ("nextPageToken" .=) <$> _svrNextPageToken])

-- | The call set search request.
--
-- /See:/ 'searchCallSetsRequest' smart constructor.
data SearchCallSetsRequest = SearchCallSetsRequest
    { _scsrName          :: !(Maybe Text)
    , _scsrPageToken     :: !(Maybe Text)
    , _scsrVariantSetIds :: !(Maybe [Text])
    , _scsrPageSize      :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchCallSetsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scsrName'
--
-- * 'scsrPageToken'
--
-- * 'scsrVariantSetIds'
--
-- * 'scsrPageSize'
searchCallSetsRequest
    :: SearchCallSetsRequest
searchCallSetsRequest =
    SearchCallSetsRequest
    { _scsrName = Nothing
    , _scsrPageToken = Nothing
    , _scsrVariantSetIds = Nothing
    , _scsrPageSize = Nothing
    }

-- | Only return call sets for which a substring of the name matches this
-- string.
scsrName :: Lens' SearchCallSetsRequest (Maybe Text)
scsrName = lens _scsrName (\ s a -> s{_scsrName = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \`nextPageToken\` from the previous response.
scsrPageToken :: Lens' SearchCallSetsRequest (Maybe Text)
scsrPageToken
  = lens _scsrPageToken
      (\ s a -> s{_scsrPageToken = a})

-- | Restrict the query to call sets within the given variant sets. At least
-- one ID must be provided.
scsrVariantSetIds :: Lens' SearchCallSetsRequest [Text]
scsrVariantSetIds
  = lens _scsrVariantSetIds
      (\ s a -> s{_scsrVariantSetIds = a})
      . _Default
      . _Coerce

-- | The maximum number of call sets to return. If unspecified, defaults to
-- 1000.
scsrPageSize :: Lens' SearchCallSetsRequest (Maybe Int32)
scsrPageSize
  = lens _scsrPageSize (\ s a -> s{_scsrPageSize = a})
      . mapping _Coerce

instance FromJSON SearchCallSetsRequest where
        parseJSON
          = withObject "SearchCallSetsRequest"
              (\ o ->
                 SearchCallSetsRequest <$>
                   (o .:? "name") <*> (o .:? "pageToken") <*>
                     (o .:? "variantSetIds" .!= mempty)
                     <*> (o .:? "pageSize"))

instance ToJSON SearchCallSetsRequest where
        toJSON SearchCallSetsRequest{..}
          = object
              (catMaybes
                 [("name" .=) <$> _scsrName,
                  ("pageToken" .=) <$> _scsrPageToken,
                  ("variantSetIds" .=) <$> _scsrVariantSetIds,
                  ("pageSize" .=) <$> _scsrPageSize])

-- | The read search response.
--
-- /See:/ 'searchReadsResponse' smart constructor.
data SearchReadsResponse = SearchReadsResponse
    { _sNextPageToken :: !(Maybe Text)
    , _sAlignments    :: !(Maybe [Read'])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchReadsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sNextPageToken'
--
-- * 'sAlignments'
searchReadsResponse
    :: SearchReadsResponse
searchReadsResponse =
    SearchReadsResponse
    { _sNextPageToken = Nothing
    , _sAlignments = Nothing
    }

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
sNextPageToken :: Lens' SearchReadsResponse (Maybe Text)
sNextPageToken
  = lens _sNextPageToken
      (\ s a -> s{_sNextPageToken = a})

-- | The list of matching alignments sorted by mapped genomic coordinate, if
-- any, ascending in position within the same reference. Unmapped reads,
-- which have no position, are returned contiguously and are sorted in
-- ascending lexicographic order by fragment name.
sAlignments :: Lens' SearchReadsResponse [Read']
sAlignments
  = lens _sAlignments (\ s a -> s{_sAlignments = a}) .
      _Default
      . _Coerce

instance FromJSON SearchReadsResponse where
        parseJSON
          = withObject "SearchReadsResponse"
              (\ o ->
                 SearchReadsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "alignments" .!= mempty))

instance ToJSON SearchReadsResponse where
        toJSON SearchReadsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _sNextPageToken,
                  ("alignments" .=) <$> _sAlignments])

--
-- /See:/ 'program' smart constructor.
data Program = Program
    { _pPrevProgramId :: !(Maybe Text)
    , _pName          :: !(Maybe Text)
    , _pVersion       :: !(Maybe Text)
    , _pId            :: !(Maybe Text)
    , _pCommandLine   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Program' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pPrevProgramId'
--
-- * 'pName'
--
-- * 'pVersion'
--
-- * 'pId'
--
-- * 'pCommandLine'
program
    :: Program
program =
    Program
    { _pPrevProgramId = Nothing
    , _pName = Nothing
    , _pVersion = Nothing
    , _pId = Nothing
    , _pCommandLine = Nothing
    }

-- | The ID of the program run before this one.
pPrevProgramId :: Lens' Program (Maybe Text)
pPrevProgramId
  = lens _pPrevProgramId
      (\ s a -> s{_pPrevProgramId = a})

-- | The name of the program.
pName :: Lens' Program (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | The version of the program run.
pVersion :: Lens' Program (Maybe Text)
pVersion = lens _pVersion (\ s a -> s{_pVersion = a})

-- | The user specified locally unique ID of the program. Used along with
-- \`prevProgramId\` to define an ordering between programs.
pId :: Lens' Program (Maybe Text)
pId = lens _pId (\ s a -> s{_pId = a})

-- | The command line used to run this program.
pCommandLine :: Lens' Program (Maybe Text)
pCommandLine
  = lens _pCommandLine (\ s a -> s{_pCommandLine = a})

instance FromJSON Program where
        parseJSON
          = withObject "Program"
              (\ o ->
                 Program <$>
                   (o .:? "prevProgramId") <*> (o .:? "name") <*>
                     (o .:? "version")
                     <*> (o .:? "id")
                     <*> (o .:? "commandLine"))

instance ToJSON Program where
        toJSON Program{..}
          = object
              (catMaybes
                 [("prevProgramId" .=) <$> _pPrevProgramId,
                  ("name" .=) <$> _pName, ("version" .=) <$> _pVersion,
                  ("id" .=) <$> _pId,
                  ("commandLine" .=) <$> _pCommandLine])

--
-- /See:/ 'searchReferencesRequest' smart constructor.
data SearchReferencesRequest = SearchReferencesRequest
    { _sReferenceSetId :: !(Maybe Text)
    , _sMD5checksums   :: !(Maybe [Text])
    , _sAccessions     :: !(Maybe [Text])
    , _sPageToken      :: !(Maybe Text)
    , _sPageSize       :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchReferencesRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sReferenceSetId'
--
-- * 'sMD5checksums'
--
-- * 'sAccessions'
--
-- * 'sPageToken'
--
-- * 'sPageSize'
searchReferencesRequest
    :: SearchReferencesRequest
searchReferencesRequest =
    SearchReferencesRequest
    { _sReferenceSetId = Nothing
    , _sMD5checksums = Nothing
    , _sAccessions = Nothing
    , _sPageToken = Nothing
    , _sPageSize = Nothing
    }

-- | If present, return only references which belong to this reference set.
sReferenceSetId :: Lens' SearchReferencesRequest (Maybe Text)
sReferenceSetId
  = lens _sReferenceSetId
      (\ s a -> s{_sReferenceSetId = a})

-- | If present, return references for which the \`md5checksum\` matches. See
-- \`Reference.md5checksum\` for construction details.
sMD5checksums :: Lens' SearchReferencesRequest [Text]
sMD5checksums
  = lens _sMD5checksums
      (\ s a -> s{_sMD5checksums = a})
      . _Default
      . _Coerce

-- | If present, return references for which the accession matches this
-- string. Best to give a version number, for example \`GCF_000001405.26\`.
-- If only the main accession number is given then all records with that
-- main accession will be returned, whichever version. Note that different
-- versions will have different sequences.
sAccessions :: Lens' SearchReferencesRequest [Text]
sAccessions
  = lens _sAccessions (\ s a -> s{_sAccessions = a}) .
      _Default
      . _Coerce

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \`nextPageToken\` from the previous response.
sPageToken :: Lens' SearchReferencesRequest (Maybe Text)
sPageToken
  = lens _sPageToken (\ s a -> s{_sPageToken = a})

-- | Specifies the maximum number of results to return in a single page.
sPageSize :: Lens' SearchReferencesRequest (Maybe Int32)
sPageSize
  = lens _sPageSize (\ s a -> s{_sPageSize = a}) .
      mapping _Coerce

instance FromJSON SearchReferencesRequest where
        parseJSON
          = withObject "SearchReferencesRequest"
              (\ o ->
                 SearchReferencesRequest <$>
                   (o .:? "referenceSetId") <*>
                     (o .:? "md5checksums" .!= mempty)
                     <*> (o .:? "accessions" .!= mempty)
                     <*> (o .:? "pageToken")
                     <*> (o .:? "pageSize"))

instance ToJSON SearchReferencesRequest where
        toJSON SearchReferencesRequest{..}
          = object
              (catMaybes
                 [("referenceSetId" .=) <$> _sReferenceSetId,
                  ("md5checksums" .=) <$> _sMD5checksums,
                  ("accessions" .=) <$> _sAccessions,
                  ("pageToken" .=) <$> _sPageToken,
                  ("pageSize" .=) <$> _sPageSize])

--
-- /See:/ 'searchReferenceSetsResponse' smart constructor.
data SearchReferenceSetsResponse = SearchReferenceSetsResponse
    { _srsrNextPageToken :: !(Maybe Text)
    , _srsrReferenceSets :: !(Maybe [ReferenceSet])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchReferenceSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsrNextPageToken'
--
-- * 'srsrReferenceSets'
searchReferenceSetsResponse
    :: SearchReferenceSetsResponse
searchReferenceSetsResponse =
    SearchReferenceSetsResponse
    { _srsrNextPageToken = Nothing
    , _srsrReferenceSets = Nothing
    }

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
srsrNextPageToken :: Lens' SearchReferenceSetsResponse (Maybe Text)
srsrNextPageToken
  = lens _srsrNextPageToken
      (\ s a -> s{_srsrNextPageToken = a})

-- | The matching references sets.
srsrReferenceSets :: Lens' SearchReferenceSetsResponse [ReferenceSet]
srsrReferenceSets
  = lens _srsrReferenceSets
      (\ s a -> s{_srsrReferenceSets = a})
      . _Default
      . _Coerce

instance FromJSON SearchReferenceSetsResponse where
        parseJSON
          = withObject "SearchReferenceSetsResponse"
              (\ o ->
                 SearchReferenceSetsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "referenceSets" .!= mempty))

instance ToJSON SearchReferenceSetsResponse where
        toJSON SearchReferenceSetsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _srsrNextPageToken,
                  ("referenceSets" .=) <$> _srsrReferenceSets])

-- | A 0-based half-open genomic coordinate range for search requests.
--
-- /See:/ 'range' smart constructor.
data Range = Range
    { _rStart         :: !(Maybe (Textual Int64))
    , _rReferenceName :: !(Maybe Text)
    , _rEnd           :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Range' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rStart'
--
-- * 'rReferenceName'
--
-- * 'rEnd'
range
    :: Range
range =
    Range
    { _rStart = Nothing
    , _rReferenceName = Nothing
    , _rEnd = Nothing
    }

-- | The start position of the range on the reference, 0-based inclusive.
rStart :: Lens' Range (Maybe Int64)
rStart
  = lens _rStart (\ s a -> s{_rStart = a}) .
      mapping _Coerce

-- | The reference sequence name, for example \`chr1\`, \`1\`, or \`chrX\`.
rReferenceName :: Lens' Range (Maybe Text)
rReferenceName
  = lens _rReferenceName
      (\ s a -> s{_rReferenceName = a})

-- | The end position of the range on the reference, 0-based exclusive.
rEnd :: Lens' Range (Maybe Int64)
rEnd
  = lens _rEnd (\ s a -> s{_rEnd = a}) .
      mapping _Coerce

instance FromJSON Range where
        parseJSON
          = withObject "Range"
              (\ o ->
                 Range <$>
                   (o .:? "start") <*> (o .:? "referenceName") <*>
                     (o .:? "end"))

instance ToJSON Range where
        toJSON Range{..}
          = object
              (catMaybes
                 [("start" .=) <$> _rStart,
                  ("referenceName" .=) <$> _rReferenceName,
                  ("end" .=) <$> _rEnd])

-- | A read group set is a logical collection of read groups, which are
-- collections of reads produced by a sequencer. A read group set typically
-- models reads corresponding to one sample, sequenced one way, and aligned
-- one way. * A read group set belongs to one dataset. * A read group
-- belongs to one read group set. * A read belongs to one read group.
--
-- /See:/ 'readGroupSet' smart constructor.
data ReadGroupSet = ReadGroupSet
    { _rgsReferenceSetId :: !(Maybe Text)
    , _rgsName           :: !(Maybe Text)
    , _rgsDataSetId      :: !(Maybe Text)
    , _rgsId             :: !(Maybe Text)
    , _rgsInfo           :: !(Maybe ReadGroupSetInfo)
    , _rgsReadGroups     :: !(Maybe [ReadGroup])
    , _rgsFilename       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadGroupSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgsReferenceSetId'
--
-- * 'rgsName'
--
-- * 'rgsDataSetId'
--
-- * 'rgsId'
--
-- * 'rgsInfo'
--
-- * 'rgsReadGroups'
--
-- * 'rgsFilename'
readGroupSet
    :: ReadGroupSet
readGroupSet =
    ReadGroupSet
    { _rgsReferenceSetId = Nothing
    , _rgsName = Nothing
    , _rgsDataSetId = Nothing
    , _rgsId = Nothing
    , _rgsInfo = Nothing
    , _rgsReadGroups = Nothing
    , _rgsFilename = Nothing
    }

-- | The reference set the reads in this read group set are aligned to.
rgsReferenceSetId :: Lens' ReadGroupSet (Maybe Text)
rgsReferenceSetId
  = lens _rgsReferenceSetId
      (\ s a -> s{_rgsReferenceSetId = a})

-- | The read group set name. By default this will be initialized to the
-- sample name of the sequenced data contained in this set.
rgsName :: Lens' ReadGroupSet (Maybe Text)
rgsName = lens _rgsName (\ s a -> s{_rgsName = a})

-- | The dataset ID.
rgsDataSetId :: Lens' ReadGroupSet (Maybe Text)
rgsDataSetId
  = lens _rgsDataSetId (\ s a -> s{_rgsDataSetId = a})

-- | The server-generated read group set ID, unique for all read group sets.
rgsId :: Lens' ReadGroupSet (Maybe Text)
rgsId = lens _rgsId (\ s a -> s{_rgsId = a})

-- | A map of additional read group set information.
rgsInfo :: Lens' ReadGroupSet (Maybe ReadGroupSetInfo)
rgsInfo = lens _rgsInfo (\ s a -> s{_rgsInfo = a})

-- | The read groups in this set. There are typically 1-10 read groups in a
-- read group set.
rgsReadGroups :: Lens' ReadGroupSet [ReadGroup]
rgsReadGroups
  = lens _rgsReadGroups
      (\ s a -> s{_rgsReadGroups = a})
      . _Default
      . _Coerce

-- | The filename of the original source file for this read group set, if
-- any.
rgsFilename :: Lens' ReadGroupSet (Maybe Text)
rgsFilename
  = lens _rgsFilename (\ s a -> s{_rgsFilename = a})

instance FromJSON ReadGroupSet where
        parseJSON
          = withObject "ReadGroupSet"
              (\ o ->
                 ReadGroupSet <$>
                   (o .:? "referenceSetId") <*> (o .:? "name") <*>
                     (o .:? "datasetId")
                     <*> (o .:? "id")
                     <*> (o .:? "info")
                     <*> (o .:? "readGroups" .!= mempty)
                     <*> (o .:? "filename"))

instance ToJSON ReadGroupSet where
        toJSON ReadGroupSet{..}
          = object
              (catMaybes
                 [("referenceSetId" .=) <$> _rgsReferenceSetId,
                  ("name" .=) <$> _rgsName,
                  ("datasetId" .=) <$> _rgsDataSetId,
                  ("id" .=) <$> _rgsId, ("info" .=) <$> _rgsInfo,
                  ("readGroups" .=) <$> _rgsReadGroups,
                  ("filename" .=) <$> _rgsFilename])

-- | The read group set export request.
--
-- /See:/ 'exportReadGroupSetRequest' smart constructor.
data ExportReadGroupSetRequest = ExportReadGroupSetRequest
    { _ergsrReferenceNames :: !(Maybe [Text])
    , _ergsrExportURI      :: !(Maybe Text)
    , _ergsrProjectId      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExportReadGroupSetRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ergsrReferenceNames'
--
-- * 'ergsrExportURI'
--
-- * 'ergsrProjectId'
exportReadGroupSetRequest
    :: ExportReadGroupSetRequest
exportReadGroupSetRequest =
    ExportReadGroupSetRequest
    { _ergsrReferenceNames = Nothing
    , _ergsrExportURI = Nothing
    , _ergsrProjectId = Nothing
    }

-- | The reference names to export. If this is not specified, all reference
-- sequences, including unmapped reads, are exported. Use \`*\` to export
-- only unmapped reads.
ergsrReferenceNames :: Lens' ExportReadGroupSetRequest [Text]
ergsrReferenceNames
  = lens _ergsrReferenceNames
      (\ s a -> s{_ergsrReferenceNames = a})
      . _Default
      . _Coerce

-- | Required. A Google Cloud Storage URI for the exported BAM file. The
-- currently authenticated user must have write access to the new file. An
-- error will be returned if the URI already contains data.
ergsrExportURI :: Lens' ExportReadGroupSetRequest (Maybe Text)
ergsrExportURI
  = lens _ergsrExportURI
      (\ s a -> s{_ergsrExportURI = a})

-- | Required. The Google Developers Console project ID that owns this
-- export.
ergsrProjectId :: Lens' ExportReadGroupSetRequest (Maybe Text)
ergsrProjectId
  = lens _ergsrProjectId
      (\ s a -> s{_ergsrProjectId = a})

instance FromJSON ExportReadGroupSetRequest where
        parseJSON
          = withObject "ExportReadGroupSetRequest"
              (\ o ->
                 ExportReadGroupSetRequest <$>
                   (o .:? "referenceNames" .!= mempty) <*>
                     (o .:? "exportUri")
                     <*> (o .:? "projectId"))

instance ToJSON ExportReadGroupSetRequest where
        toJSON ExportReadGroupSetRequest{..}
          = object
              (catMaybes
                 [("referenceNames" .=) <$> _ergsrReferenceNames,
                  ("exportUri" .=) <$> _ergsrExportURI,
                  ("projectId" .=) <$> _ergsrProjectId])

-- | The variant data import response.
--
-- /See:/ 'importVariantsResponse' smart constructor.
newtype ImportVariantsResponse = ImportVariantsResponse
    { _ivrCallSetIds :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImportVariantsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ivrCallSetIds'
importVariantsResponse
    :: ImportVariantsResponse
importVariantsResponse =
    ImportVariantsResponse
    { _ivrCallSetIds = Nothing
    }

-- | IDs of the call sets that were created.
ivrCallSetIds :: Lens' ImportVariantsResponse [Text]
ivrCallSetIds
  = lens _ivrCallSetIds
      (\ s a -> s{_ivrCallSetIds = a})
      . _Default
      . _Coerce

instance FromJSON ImportVariantsResponse where
        parseJSON
          = withObject "ImportVariantsResponse"
              (\ o ->
                 ImportVariantsResponse <$>
                   (o .:? "callSetIds" .!= mempty))

instance ToJSON ImportVariantsResponse where
        toJSON ImportVariantsResponse{..}
          = object
              (catMaybes [("callSetIds" .=) <$> _ivrCallSetIds])

--
-- /See:/ 'listCoverageBucketsResponse' smart constructor.
data ListCoverageBucketsResponse = ListCoverageBucketsResponse
    { _lcbrNextPageToken   :: !(Maybe Text)
    , _lcbrBucketWidth     :: !(Maybe (Textual Int64))
    , _lcbrCoverageBuckets :: !(Maybe [CoverageBucket])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListCoverageBucketsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcbrNextPageToken'
--
-- * 'lcbrBucketWidth'
--
-- * 'lcbrCoverageBuckets'
listCoverageBucketsResponse
    :: ListCoverageBucketsResponse
listCoverageBucketsResponse =
    ListCoverageBucketsResponse
    { _lcbrNextPageToken = Nothing
    , _lcbrBucketWidth = Nothing
    , _lcbrCoverageBuckets = Nothing
    }

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
lcbrNextPageToken :: Lens' ListCoverageBucketsResponse (Maybe Text)
lcbrNextPageToken
  = lens _lcbrNextPageToken
      (\ s a -> s{_lcbrNextPageToken = a})

-- | The length of each coverage bucket in base pairs. Note that buckets at
-- the end of a reference sequence may be shorter. This value is omitted if
-- the bucket width is infinity (the default behaviour, with no range or
-- \`targetBucketWidth\`).
lcbrBucketWidth :: Lens' ListCoverageBucketsResponse (Maybe Int64)
lcbrBucketWidth
  = lens _lcbrBucketWidth
      (\ s a -> s{_lcbrBucketWidth = a})
      . mapping _Coerce

-- | The coverage buckets. The list of buckets is sparse; a bucket with 0
-- overlapping reads is not returned. A bucket never crosses more than one
-- reference sequence. Each bucket has width \`bucketWidth\`, unless its
-- end is the end of the reference sequence.
lcbrCoverageBuckets :: Lens' ListCoverageBucketsResponse [CoverageBucket]
lcbrCoverageBuckets
  = lens _lcbrCoverageBuckets
      (\ s a -> s{_lcbrCoverageBuckets = a})
      . _Default
      . _Coerce

instance FromJSON ListCoverageBucketsResponse where
        parseJSON
          = withObject "ListCoverageBucketsResponse"
              (\ o ->
                 ListCoverageBucketsResponse <$>
                   (o .:? "nextPageToken") <*> (o .:? "bucketWidth") <*>
                     (o .:? "coverageBuckets" .!= mempty))

instance ToJSON ListCoverageBucketsResponse where
        toJSON ListCoverageBucketsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lcbrNextPageToken,
                  ("bucketWidth" .=) <$> _lcbrBucketWidth,
                  ("coverageBuckets" .=) <$> _lcbrCoverageBuckets])

-- | Request message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsRequest' smart constructor.
newtype TestIAMPermissionsRequest = TestIAMPermissionsRequest
    { _tiprPermissions :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiprPermissions'
testIAMPermissionsRequest
    :: TestIAMPermissionsRequest
testIAMPermissionsRequest =
    TestIAMPermissionsRequest
    { _tiprPermissions = Nothing
    }

-- | REQUIRED: The set of permissions to check for the \'resource\'.
-- Permissions with wildcards (such as \'*\' or \'storage.*\') are not
-- allowed. Allowed permissions are: * \`genomics.datasets.create\` *
-- \`genomics.datasets.delete\` * \`genomics.datasets.get\` *
-- \`genomics.datasets.list\` * \`genomics.datasets.update\` *
-- \`genomics.datasets.getIamPolicy\` * \`genomics.datasets.setIamPolicy\`
tiprPermissions :: Lens' TestIAMPermissionsRequest [Text]
tiprPermissions
  = lens _tiprPermissions
      (\ s a -> s{_tiprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsRequest where
        parseJSON
          = withObject "TestIAMPermissionsRequest"
              (\ o ->
                 TestIAMPermissionsRequest <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsRequest where
        toJSON TestIAMPermissionsRequest{..}
          = object
              (catMaybes [("permissions" .=) <$> _tiprPermissions])

-- | The read group set import response.
--
-- /See:/ 'importReadGroupSetsResponse' smart constructor.
newtype ImportReadGroupSetsResponse = ImportReadGroupSetsResponse
    { _irgsrReadGroupSetIds :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImportReadGroupSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irgsrReadGroupSetIds'
importReadGroupSetsResponse
    :: ImportReadGroupSetsResponse
importReadGroupSetsResponse =
    ImportReadGroupSetsResponse
    { _irgsrReadGroupSetIds = Nothing
    }

-- | IDs of the read group sets that were created.
irgsrReadGroupSetIds :: Lens' ImportReadGroupSetsResponse [Text]
irgsrReadGroupSetIds
  = lens _irgsrReadGroupSetIds
      (\ s a -> s{_irgsrReadGroupSetIds = a})
      . _Default
      . _Coerce

instance FromJSON ImportReadGroupSetsResponse where
        parseJSON
          = withObject "ImportReadGroupSetsResponse"
              (\ o ->
                 ImportReadGroupSetsResponse <$>
                   (o .:? "readGroupSetIds" .!= mempty))

instance ToJSON ImportReadGroupSetsResponse where
        toJSON ImportReadGroupSetsResponse{..}
          = object
              (catMaybes
                 [("readGroupSetIds" .=) <$> _irgsrReadGroupSetIds])

-- | A linear alignment can be represented by one CIGAR string. Describes the
-- mapped position and local alignment of the read to the reference.
--
-- /See:/ 'linearAlignment' smart constructor.
data LinearAlignment = LinearAlignment
    { _laCigar          :: !(Maybe [CigarUnit])
    , _laMAppingQuality :: !(Maybe (Textual Int32))
    , _laPosition       :: !(Maybe Position)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LinearAlignment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laCigar'
--
-- * 'laMAppingQuality'
--
-- * 'laPosition'
linearAlignment
    :: LinearAlignment
linearAlignment =
    LinearAlignment
    { _laCigar = Nothing
    , _laMAppingQuality = Nothing
    , _laPosition = Nothing
    }

-- | Represents the local alignment of this sequence (alignment matches,
-- indels, etc) against the reference.
laCigar :: Lens' LinearAlignment [CigarUnit]
laCigar
  = lens _laCigar (\ s a -> s{_laCigar = a}) . _Default
      . _Coerce

-- | The mapping quality of this alignment. Represents how likely the read
-- maps to this position as opposed to other locations.
laMAppingQuality :: Lens' LinearAlignment (Maybe Int32)
laMAppingQuality
  = lens _laMAppingQuality
      (\ s a -> s{_laMAppingQuality = a})
      . mapping _Coerce

-- | The position of this alignment.
laPosition :: Lens' LinearAlignment (Maybe Position)
laPosition
  = lens _laPosition (\ s a -> s{_laPosition = a})

instance FromJSON LinearAlignment where
        parseJSON
          = withObject "LinearAlignment"
              (\ o ->
                 LinearAlignment <$>
                   (o .:? "cigar" .!= mempty) <*>
                     (o .:? "mappingQuality")
                     <*> (o .:? "position"))

instance ToJSON LinearAlignment where
        toJSON LinearAlignment{..}
          = object
              (catMaybes
                 [("cigar" .=) <$> _laCigar,
                  ("mappingQuality" .=) <$> _laMAppingQuality,
                  ("position" .=) <$> _laPosition])

-- | A variant set is a collection of call sets and variants. It contains
-- summary statistics of those contents. A variant set belongs to a
-- dataset.
--
-- /See:/ 'variantSet' smart constructor.
data VariantSet = VariantSet
    { _vsDataSetId       :: !(Maybe Text)
    , _vsReferenceBounds :: !(Maybe [ReferenceBound])
    , _vsMetadata        :: !(Maybe [VariantSetMetadata])
    , _vsId              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsDataSetId'
--
-- * 'vsReferenceBounds'
--
-- * 'vsMetadata'
--
-- * 'vsId'
variantSet
    :: VariantSet
variantSet =
    VariantSet
    { _vsDataSetId = Nothing
    , _vsReferenceBounds = Nothing
    , _vsMetadata = Nothing
    , _vsId = Nothing
    }

-- | The dataset to which this variant set belongs.
vsDataSetId :: Lens' VariantSet (Maybe Text)
vsDataSetId
  = lens _vsDataSetId (\ s a -> s{_vsDataSetId = a})

-- | A list of all references used by the variants in a variant set with
-- associated coordinate upper bounds for each one.
vsReferenceBounds :: Lens' VariantSet [ReferenceBound]
vsReferenceBounds
  = lens _vsReferenceBounds
      (\ s a -> s{_vsReferenceBounds = a})
      . _Default
      . _Coerce

-- | The metadata associated with this variant set.
vsMetadata :: Lens' VariantSet [VariantSetMetadata]
vsMetadata
  = lens _vsMetadata (\ s a -> s{_vsMetadata = a}) .
      _Default
      . _Coerce

-- | The server-generated variant set ID, unique across all variant sets.
vsId :: Lens' VariantSet (Maybe Text)
vsId = lens _vsId (\ s a -> s{_vsId = a})

instance FromJSON VariantSet where
        parseJSON
          = withObject "VariantSet"
              (\ o ->
                 VariantSet <$>
                   (o .:? "datasetId") <*>
                     (o .:? "referenceBounds" .!= mempty)
                     <*> (o .:? "metadata" .!= mempty)
                     <*> (o .:? "id"))

instance ToJSON VariantSet where
        toJSON VariantSet{..}
          = object
              (catMaybes
                 [("datasetId" .=) <$> _vsDataSetId,
                  ("referenceBounds" .=) <$> _vsReferenceBounds,
                  ("metadata" .=) <$> _vsMetadata,
                  ("id" .=) <$> _vsId])

-- | Response message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsResponse' smart constructor.
newtype TestIAMPermissionsResponse = TestIAMPermissionsResponse
    { _tiamprPermissions :: Maybe [Text]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiamprPermissions'
testIAMPermissionsResponse
    :: TestIAMPermissionsResponse
testIAMPermissionsResponse =
    TestIAMPermissionsResponse
    { _tiamprPermissions = Nothing
    }

-- | A subset of \`TestPermissionsRequest.permissions\` that the caller is
-- allowed.
tiamprPermissions :: Lens' TestIAMPermissionsResponse [Text]
tiamprPermissions
  = lens _tiamprPermissions
      (\ s a -> s{_tiamprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsResponse where
        parseJSON
          = withObject "TestIAMPermissionsResponse"
              (\ o ->
                 TestIAMPermissionsResponse <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsResponse where
        toJSON TestIAMPermissionsResponse{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _tiamprPermissions])

-- | The dataset list response.
--
-- /See:/ 'listDataSetsResponse' smart constructor.
data ListDataSetsResponse = ListDataSetsResponse
    { _ldsrNextPageToken :: !(Maybe Text)
    , _ldsrDataSets      :: !(Maybe [DataSet])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListDataSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldsrNextPageToken'
--
-- * 'ldsrDataSets'
listDataSetsResponse
    :: ListDataSetsResponse
listDataSetsResponse =
    ListDataSetsResponse
    { _ldsrNextPageToken = Nothing
    , _ldsrDataSets = Nothing
    }

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
ldsrNextPageToken :: Lens' ListDataSetsResponse (Maybe Text)
ldsrNextPageToken
  = lens _ldsrNextPageToken
      (\ s a -> s{_ldsrNextPageToken = a})

-- | The list of matching Datasets.
ldsrDataSets :: Lens' ListDataSetsResponse [DataSet]
ldsrDataSets
  = lens _ldsrDataSets (\ s a -> s{_ldsrDataSets = a})
      . _Default
      . _Coerce

instance FromJSON ListDataSetsResponse where
        parseJSON
          = withObject "ListDataSetsResponse"
              (\ o ->
                 ListDataSetsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "datasets" .!= mempty))

instance ToJSON ListDataSetsResponse where
        toJSON ListDataSetsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _ldsrNextPageToken,
                  ("datasets" .=) <$> _ldsrDataSets])

-- | The read group set import request.
--
-- /See:/ 'importReadGroupSetsRequest' smart constructor.
data ImportReadGroupSetsRequest = ImportReadGroupSetsRequest
    { _irgsrReferenceSetId    :: !(Maybe Text)
    , _irgsrDataSetId         :: !(Maybe Text)
    , _irgsrSourceURIs        :: !(Maybe [Text])
    , _irgsrPartitionStrategy :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImportReadGroupSetsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irgsrReferenceSetId'
--
-- * 'irgsrDataSetId'
--
-- * 'irgsrSourceURIs'
--
-- * 'irgsrPartitionStrategy'
importReadGroupSetsRequest
    :: ImportReadGroupSetsRequest
importReadGroupSetsRequest =
    ImportReadGroupSetsRequest
    { _irgsrReferenceSetId = Nothing
    , _irgsrDataSetId = Nothing
    , _irgsrSourceURIs = Nothing
    , _irgsrPartitionStrategy = Nothing
    }

-- | The reference set to which the imported read group sets are aligned to,
-- if any. The reference names of this reference set must be a superset of
-- those found in the imported file headers. If no reference set id is
-- provided, a best effort is made to associate with a matching reference
-- set.
irgsrReferenceSetId :: Lens' ImportReadGroupSetsRequest (Maybe Text)
irgsrReferenceSetId
  = lens _irgsrReferenceSetId
      (\ s a -> s{_irgsrReferenceSetId = a})

-- | Required. The ID of the dataset these read group sets will belong to.
-- The caller must have WRITE permissions to this dataset.
irgsrDataSetId :: Lens' ImportReadGroupSetsRequest (Maybe Text)
irgsrDataSetId
  = lens _irgsrDataSetId
      (\ s a -> s{_irgsrDataSetId = a})

-- | A list of URIs pointing at [BAM
-- files](https:\/\/samtools.github.io\/hts-specs\/SAMv1.pdf) in Google
-- Cloud Storage.
irgsrSourceURIs :: Lens' ImportReadGroupSetsRequest [Text]
irgsrSourceURIs
  = lens _irgsrSourceURIs
      (\ s a -> s{_irgsrSourceURIs = a})
      . _Default
      . _Coerce

-- | The partition strategy describes how read groups are partitioned into
-- read group sets.
irgsrPartitionStrategy :: Lens' ImportReadGroupSetsRequest (Maybe Text)
irgsrPartitionStrategy
  = lens _irgsrPartitionStrategy
      (\ s a -> s{_irgsrPartitionStrategy = a})

instance FromJSON ImportReadGroupSetsRequest where
        parseJSON
          = withObject "ImportReadGroupSetsRequest"
              (\ o ->
                 ImportReadGroupSetsRequest <$>
                   (o .:? "referenceSetId") <*> (o .:? "datasetId") <*>
                     (o .:? "sourceUris" .!= mempty)
                     <*> (o .:? "partitionStrategy"))

instance ToJSON ImportReadGroupSetsRequest where
        toJSON ImportReadGroupSetsRequest{..}
          = object
              (catMaybes
                 [("referenceSetId" .=) <$> _irgsrReferenceSetId,
                  ("datasetId" .=) <$> _irgsrDataSetId,
                  ("sourceUris" .=) <$> _irgsrSourceURIs,
                  ("partitionStrategy" .=) <$>
                    _irgsrPartitionStrategy])

-- | The variant data import request.
--
-- /See:/ 'importVariantsRequest' smart constructor.
data ImportVariantsRequest = ImportVariantsRequest
    { _ivrVariantSetId            :: !(Maybe Text)
    , _ivrFormat                  :: !(Maybe Text)
    , _ivrNormalizeReferenceNames :: !(Maybe Bool)
    , _ivrSourceURIs              :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImportVariantsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ivrVariantSetId'
--
-- * 'ivrFormat'
--
-- * 'ivrNormalizeReferenceNames'
--
-- * 'ivrSourceURIs'
importVariantsRequest
    :: ImportVariantsRequest
importVariantsRequest =
    ImportVariantsRequest
    { _ivrVariantSetId = Nothing
    , _ivrFormat = Nothing
    , _ivrNormalizeReferenceNames = Nothing
    , _ivrSourceURIs = Nothing
    }

-- | Required. The variant set to which variant data should be imported.
ivrVariantSetId :: Lens' ImportVariantsRequest (Maybe Text)
ivrVariantSetId
  = lens _ivrVariantSetId
      (\ s a -> s{_ivrVariantSetId = a})

-- | The format of the variant data being imported. If unspecified, defaults
-- to to \`VCF\`.
ivrFormat :: Lens' ImportVariantsRequest (Maybe Text)
ivrFormat
  = lens _ivrFormat (\ s a -> s{_ivrFormat = a})

-- | Convert reference names to the canonical representation. hg19
-- haploytypes (those reference names containing \"_hap\") are not modified
-- in any way. All other reference names are modified according to the
-- following rules: The reference name is capitalized. The \"chr\" prefix
-- is dropped for all autosomes and sex chromsomes. For example \"chr17\"
-- becomes \"17\" and \"chrX\" becomes \"X\". All mitochondrial chromosomes
-- (\"chrM\", \"chrMT\", etc) become \"MT\".
ivrNormalizeReferenceNames :: Lens' ImportVariantsRequest (Maybe Bool)
ivrNormalizeReferenceNames
  = lens _ivrNormalizeReferenceNames
      (\ s a -> s{_ivrNormalizeReferenceNames = a})

-- | A list of URIs referencing variant files in Google Cloud Storage. URIs
-- can include wildcards [as described
-- here](https:\/\/cloud.google.com\/storage\/docs\/gsutil\/addlhelp\/WildcardNames).
-- Note that recursive wildcards (\'**\') are not supported.
ivrSourceURIs :: Lens' ImportVariantsRequest [Text]
ivrSourceURIs
  = lens _ivrSourceURIs
      (\ s a -> s{_ivrSourceURIs = a})
      . _Default
      . _Coerce

instance FromJSON ImportVariantsRequest where
        parseJSON
          = withObject "ImportVariantsRequest"
              (\ o ->
                 ImportVariantsRequest <$>
                   (o .:? "variantSetId") <*> (o .:? "format") <*>
                     (o .:? "normalizeReferenceNames")
                     <*> (o .:? "sourceUris" .!= mempty))

instance ToJSON ImportVariantsRequest where
        toJSON ImportVariantsRequest{..}
          = object
              (catMaybes
                 [("variantSetId" .=) <$> _ivrVariantSetId,
                  ("format" .=) <$> _ivrFormat,
                  ("normalizeReferenceNames" .=) <$>
                    _ivrNormalizeReferenceNames,
                  ("sourceUris" .=) <$> _ivrSourceURIs])

-- | A single CIGAR operation.
--
-- /See:/ 'cigarUnit' smart constructor.
data CigarUnit = CigarUnit
    { _cuOperation         :: !(Maybe Text)
    , _cuOperationLength   :: !(Maybe (Textual Int64))
    , _cuReferenceSequence :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CigarUnit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuOperation'
--
-- * 'cuOperationLength'
--
-- * 'cuReferenceSequence'
cigarUnit
    :: CigarUnit
cigarUnit =
    CigarUnit
    { _cuOperation = Nothing
    , _cuOperationLength = Nothing
    , _cuReferenceSequence = Nothing
    }

cuOperation :: Lens' CigarUnit (Maybe Text)
cuOperation
  = lens _cuOperation (\ s a -> s{_cuOperation = a})

-- | The number of genomic bases that the operation runs for. Required.
cuOperationLength :: Lens' CigarUnit (Maybe Int64)
cuOperationLength
  = lens _cuOperationLength
      (\ s a -> s{_cuOperationLength = a})
      . mapping _Coerce

-- | \`referenceSequence\` is only used at mismatches (\`SEQUENCE_MISMATCH\`)
-- and deletions (\`DELETE\`). Filling this field replaces SAM\'s MD tag.
-- If the relevant information is not available, this field is unset.
cuReferenceSequence :: Lens' CigarUnit (Maybe Text)
cuReferenceSequence
  = lens _cuReferenceSequence
      (\ s a -> s{_cuReferenceSequence = a})

instance FromJSON CigarUnit where
        parseJSON
          = withObject "CigarUnit"
              (\ o ->
                 CigarUnit <$>
                   (o .:? "operation") <*> (o .:? "operationLength") <*>
                     (o .:? "referenceSequence"))

instance ToJSON CigarUnit where
        toJSON CigarUnit{..}
          = object
              (catMaybes
                 [("operation" .=) <$> _cuOperation,
                  ("operationLength" .=) <$> _cuOperationLength,
                  ("referenceSequence" .=) <$> _cuReferenceSequence])

-- | Defines an Identity and Access Management (IAM) policy. It is used to
-- specify access control policies for Cloud Platform resources. A
-- \`Policy\` consists of a list of \`bindings\`. A \`Binding\` binds a
-- list of \`members\` to a \`role\`, where the members can be user
-- accounts, Google groups, Google domains, and service accounts. A
-- \`role\` is a named list of permissions defined by IAM. **Example** {
-- \"bindings\": [ { \"role\": \"roles\/owner\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-other-app\'appspot.gserviceaccount.com\"] }, {
-- \"role\": \"roles\/viewer\", \"members\": [\"user:sean\'example.com\"] }
-- ] } For a description of IAM and its features, see the [IAM developer\'s
-- guide](https:\/\/cloud.google.com\/iam).
--
-- /See:/ 'policy' smart constructor.
data Policy = Policy
    { _polEtag     :: !(Maybe (Textual Word8))
    , _polVersion  :: !(Maybe (Textual Int32))
    , _polBindings :: !(Maybe [Binding])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'polEtag'
--
-- * 'polVersion'
--
-- * 'polBindings'
policy
    :: Policy
policy =
    Policy
    { _polEtag = Nothing
    , _polVersion = Nothing
    , _polBindings = Nothing
    }

-- | Can be used to perform a read-modify-write.
polEtag :: Lens' Policy (Maybe Word8)
polEtag
  = lens _polEtag (\ s a -> s{_polEtag = a}) .
      mapping _Coerce

-- | Version of the \`Policy\`. The default version is 0.
polVersion :: Lens' Policy (Maybe Int32)
polVersion
  = lens _polVersion (\ s a -> s{_polVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. Multiple \`bindings\`
-- must not be specified for the same \`role\`. \`bindings\` with no
-- members will result in an error.
polBindings :: Lens' Policy [Binding]
polBindings
  = lens _polBindings (\ s a -> s{_polBindings = a}) .
      _Default
      . _Coerce

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy <$>
                   (o .:? "etag") <*> (o .:? "version") <*>
                     (o .:? "bindings" .!= mempty))

instance ToJSON Policy where
        toJSON Policy{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _polEtag,
                  ("version" .=) <$> _polVersion,
                  ("bindings" .=) <$> _polBindings])

-- | The variant data export request.
--
-- /See:/ 'exportVariantSetRequest' smart constructor.
data ExportVariantSetRequest = ExportVariantSetRequest
    { _evsrBigQueryDataSet :: !(Maybe Text)
    , _evsrBigQueryTable   :: !(Maybe Text)
    , _evsrFormat          :: !(Maybe Text)
    , _evsrCallSetIds      :: !(Maybe [Text])
    , _evsrProjectId       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExportVariantSetRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evsrBigQueryDataSet'
--
-- * 'evsrBigQueryTable'
--
-- * 'evsrFormat'
--
-- * 'evsrCallSetIds'
--
-- * 'evsrProjectId'
exportVariantSetRequest
    :: ExportVariantSetRequest
exportVariantSetRequest =
    ExportVariantSetRequest
    { _evsrBigQueryDataSet = Nothing
    , _evsrBigQueryTable = Nothing
    , _evsrFormat = Nothing
    , _evsrCallSetIds = Nothing
    , _evsrProjectId = Nothing
    }

-- | Required. The BigQuery dataset to export data to. This dataset must
-- already exist. Note that this is distinct from the Genomics concept of
-- \"dataset\".
evsrBigQueryDataSet :: Lens' ExportVariantSetRequest (Maybe Text)
evsrBigQueryDataSet
  = lens _evsrBigQueryDataSet
      (\ s a -> s{_evsrBigQueryDataSet = a})

-- | Required. The BigQuery table to export data to. If the table doesn\'t
-- exist, it will be created. If it already exists, it will be overwritten.
evsrBigQueryTable :: Lens' ExportVariantSetRequest (Maybe Text)
evsrBigQueryTable
  = lens _evsrBigQueryTable
      (\ s a -> s{_evsrBigQueryTable = a})

-- | The format for the exported data.
evsrFormat :: Lens' ExportVariantSetRequest (Maybe Text)
evsrFormat
  = lens _evsrFormat (\ s a -> s{_evsrFormat = a})

-- | If provided, only variant call information from the specified call sets
-- will be exported. By default all variant calls are exported.
evsrCallSetIds :: Lens' ExportVariantSetRequest [Text]
evsrCallSetIds
  = lens _evsrCallSetIds
      (\ s a -> s{_evsrCallSetIds = a})
      . _Default
      . _Coerce

-- | Required. The Google Cloud project ID that owns the destination BigQuery
-- dataset. The caller must have WRITE access to this project. This project
-- will also own the resulting export job.
evsrProjectId :: Lens' ExportVariantSetRequest (Maybe Text)
evsrProjectId
  = lens _evsrProjectId
      (\ s a -> s{_evsrProjectId = a})

instance FromJSON ExportVariantSetRequest where
        parseJSON
          = withObject "ExportVariantSetRequest"
              (\ o ->
                 ExportVariantSetRequest <$>
                   (o .:? "bigqueryDataset") <*> (o .:? "bigqueryTable")
                     <*> (o .:? "format")
                     <*> (o .:? "callSetIds" .!= mempty)
                     <*> (o .:? "projectId"))

instance ToJSON ExportVariantSetRequest where
        toJSON ExportVariantSetRequest{..}
          = object
              (catMaybes
                 [("bigqueryDataset" .=) <$> _evsrBigQueryDataSet,
                  ("bigqueryTable" .=) <$> _evsrBigQueryTable,
                  ("format" .=) <$> _evsrFormat,
                  ("callSetIds" .=) <$> _evsrCallSetIds,
                  ("projectId" .=) <$> _evsrProjectId])

-- | Metadata describing an Operation.
--
-- /See:/ 'operationMetadata' smart constructor.
data OperationMetadata = OperationMetadata
    { _omEvents     :: !(Maybe [OperationEvent])
    , _omProjectId  :: !(Maybe Text)
    , _omCreateTime :: !(Maybe Text)
    , _omRequest    :: !(Maybe OperationMetadataRequest)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'omEvents'
--
-- * 'omProjectId'
--
-- * 'omCreateTime'
--
-- * 'omRequest'
operationMetadata
    :: OperationMetadata
operationMetadata =
    OperationMetadata
    { _omEvents = Nothing
    , _omProjectId = Nothing
    , _omCreateTime = Nothing
    , _omRequest = Nothing
    }

-- | Optional event messages that were generated during the job\'s execution.
-- This also contains any warnings that were generated during import or
-- export.
omEvents :: Lens' OperationMetadata [OperationEvent]
omEvents
  = lens _omEvents (\ s a -> s{_omEvents = a}) .
      _Default
      . _Coerce

-- | The Google Cloud Project in which the job is scoped.
omProjectId :: Lens' OperationMetadata (Maybe Text)
omProjectId
  = lens _omProjectId (\ s a -> s{_omProjectId = a})

-- | The time at which the job was submitted to the Genomics service.
omCreateTime :: Lens' OperationMetadata (Maybe Text)
omCreateTime
  = lens _omCreateTime (\ s a -> s{_omCreateTime = a})

-- | The original request that started the operation. Note that this will be
-- in current version of the API. If the operation was started with v1beta2
-- API and a GetOperation is performed on v1 API, a v1 request will be
-- returned.
omRequest :: Lens' OperationMetadata (Maybe OperationMetadataRequest)
omRequest
  = lens _omRequest (\ s a -> s{_omRequest = a})

instance FromJSON OperationMetadata where
        parseJSON
          = withObject "OperationMetadata"
              (\ o ->
                 OperationMetadata <$>
                   (o .:? "events" .!= mempty) <*> (o .:? "projectId")
                     <*> (o .:? "createTime")
                     <*> (o .:? "request"))

instance ToJSON OperationMetadata where
        toJSON OperationMetadata{..}
          = object
              (catMaybes
                 [("events" .=) <$> _omEvents,
                  ("projectId" .=) <$> _omProjectId,
                  ("createTime" .=) <$> _omCreateTime,
                  ("request" .=) <$> _omRequest])

-- | The search variant sets response.
--
-- /See:/ 'searchVariantSetsResponse' smart constructor.
data SearchVariantSetsResponse = SearchVariantSetsResponse
    { _svsrNextPageToken :: !(Maybe Text)
    , _svsrVariantSets   :: !(Maybe [VariantSet])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchVariantSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svsrNextPageToken'
--
-- * 'svsrVariantSets'
searchVariantSetsResponse
    :: SearchVariantSetsResponse
searchVariantSetsResponse =
    SearchVariantSetsResponse
    { _svsrNextPageToken = Nothing
    , _svsrVariantSets = Nothing
    }

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
svsrNextPageToken :: Lens' SearchVariantSetsResponse (Maybe Text)
svsrNextPageToken
  = lens _svsrNextPageToken
      (\ s a -> s{_svsrNextPageToken = a})

-- | The variant sets belonging to the requested dataset.
svsrVariantSets :: Lens' SearchVariantSetsResponse [VariantSet]
svsrVariantSets
  = lens _svsrVariantSets
      (\ s a -> s{_svsrVariantSets = a})
      . _Default
      . _Coerce

instance FromJSON SearchVariantSetsResponse where
        parseJSON
          = withObject "SearchVariantSetsResponse"
              (\ o ->
                 SearchVariantSetsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "variantSets" .!= mempty))

instance ToJSON SearchVariantSetsResponse where
        toJSON SearchVariantSetsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _svsrNextPageToken,
                  ("variantSets" .=) <$> _svsrVariantSets])

-- | The variant search request.
--
-- /See:/ 'searchVariantsRequest' smart constructor.
data SearchVariantsRequest = SearchVariantsRequest
    { _svrStart         :: !(Maybe (Textual Int64))
    , _svrCallSetIds    :: !(Maybe [Text])
    , _svrReferenceName :: !(Maybe Text)
    , _svrEnd           :: !(Maybe (Textual Int64))
    , _svrMaxCalls      :: !(Maybe (Textual Int32))
    , _svrPageToken     :: !(Maybe Text)
    , _svrVariantName   :: !(Maybe Text)
    , _svrVariantSetIds :: !(Maybe [Text])
    , _svrPageSize      :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchVariantsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svrStart'
--
-- * 'svrCallSetIds'
--
-- * 'svrReferenceName'
--
-- * 'svrEnd'
--
-- * 'svrMaxCalls'
--
-- * 'svrPageToken'
--
-- * 'svrVariantName'
--
-- * 'svrVariantSetIds'
--
-- * 'svrPageSize'
searchVariantsRequest
    :: SearchVariantsRequest
searchVariantsRequest =
    SearchVariantsRequest
    { _svrStart = Nothing
    , _svrCallSetIds = Nothing
    , _svrReferenceName = Nothing
    , _svrEnd = Nothing
    , _svrMaxCalls = Nothing
    , _svrPageToken = Nothing
    , _svrVariantName = Nothing
    , _svrVariantSetIds = Nothing
    , _svrPageSize = Nothing
    }

-- | The beginning of the window (0-based, inclusive) for which overlapping
-- variants should be returned. If unspecified, defaults to 0.
svrStart :: Lens' SearchVariantsRequest (Maybe Int64)
svrStart
  = lens _svrStart (\ s a -> s{_svrStart = a}) .
      mapping _Coerce

-- | Only return variant calls which belong to call sets with these ids.
-- Leaving this blank returns all variant calls. If a variant has no calls
-- belonging to any of these call sets, it won\'t be returned at all.
-- Currently, variants with no calls from any call set will never be
-- returned.
svrCallSetIds :: Lens' SearchVariantsRequest [Text]
svrCallSetIds
  = lens _svrCallSetIds
      (\ s a -> s{_svrCallSetIds = a})
      . _Default
      . _Coerce

-- | Required. Only return variants in this reference sequence.
svrReferenceName :: Lens' SearchVariantsRequest (Maybe Text)
svrReferenceName
  = lens _svrReferenceName
      (\ s a -> s{_svrReferenceName = a})

-- | The end of the window, 0-based exclusive. If unspecified or 0, defaults
-- to the length of the reference.
svrEnd :: Lens' SearchVariantsRequest (Maybe Int64)
svrEnd
  = lens _svrEnd (\ s a -> s{_svrEnd = a}) .
      mapping _Coerce

-- | The maximum number of calls to return. However, at least one variant
-- will always be returned, even if it has more calls than this limit. If
-- unspecified, defaults to 5000.
svrMaxCalls :: Lens' SearchVariantsRequest (Maybe Int32)
svrMaxCalls
  = lens _svrMaxCalls (\ s a -> s{_svrMaxCalls = a}) .
      mapping _Coerce

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \`nextPageToken\` from the previous response.
svrPageToken :: Lens' SearchVariantsRequest (Maybe Text)
svrPageToken
  = lens _svrPageToken (\ s a -> s{_svrPageToken = a})

-- | Only return variants which have exactly this name.
svrVariantName :: Lens' SearchVariantsRequest (Maybe Text)
svrVariantName
  = lens _svrVariantName
      (\ s a -> s{_svrVariantName = a})

-- | At most one variant set ID must be provided. Only variants from this
-- variant set will be returned. If omitted, a call set id must be included
-- in the request.
svrVariantSetIds :: Lens' SearchVariantsRequest [Text]
svrVariantSetIds
  = lens _svrVariantSetIds
      (\ s a -> s{_svrVariantSetIds = a})
      . _Default
      . _Coerce

-- | The maximum number of variants to return. If unspecified, defaults to
-- 5000.
svrPageSize :: Lens' SearchVariantsRequest (Maybe Int32)
svrPageSize
  = lens _svrPageSize (\ s a -> s{_svrPageSize = a}) .
      mapping _Coerce

instance FromJSON SearchVariantsRequest where
        parseJSON
          = withObject "SearchVariantsRequest"
              (\ o ->
                 SearchVariantsRequest <$>
                   (o .:? "start") <*> (o .:? "callSetIds" .!= mempty)
                     <*> (o .:? "referenceName")
                     <*> (o .:? "end")
                     <*> (o .:? "maxCalls")
                     <*> (o .:? "pageToken")
                     <*> (o .:? "variantName")
                     <*> (o .:? "variantSetIds" .!= mempty)
                     <*> (o .:? "pageSize"))

instance ToJSON SearchVariantsRequest where
        toJSON SearchVariantsRequest{..}
          = object
              (catMaybes
                 [("start" .=) <$> _svrStart,
                  ("callSetIds" .=) <$> _svrCallSetIds,
                  ("referenceName" .=) <$> _svrReferenceName,
                  ("end" .=) <$> _svrEnd,
                  ("maxCalls" .=) <$> _svrMaxCalls,
                  ("pageToken" .=) <$> _svrPageToken,
                  ("variantName" .=) <$> _svrVariantName,
                  ("variantSetIds" .=) <$> _svrVariantSetIds,
                  ("pageSize" .=) <$> _svrPageSize])

-- | A map of additional call set information. This must be of the form map
-- (string key mapping to a list of string values).
--
-- /See:/ 'callSetInfo' smart constructor.
newtype CallSetInfo = CallSetInfo
    { _csiAddtional :: HashMap Text [JSONValue]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CallSetInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csiAddtional'
callSetInfo
    :: HashMap Text [JSONValue] -- ^ 'csiAddtional'
    -> CallSetInfo
callSetInfo pCsiAddtional_ =
    CallSetInfo
    { _csiAddtional = _Coerce # pCsiAddtional_
    }

csiAddtional :: Lens' CallSetInfo (HashMap Text [JSONValue])
csiAddtional
  = lens _csiAddtional (\ s a -> s{_csiAddtional = a})
      . _Coerce

instance FromJSON CallSetInfo where
        parseJSON
          = withObject "CallSetInfo"
              (\ o -> CallSetInfo <$> (parseJSONObject o))

instance ToJSON CallSetInfo where
        toJSON = toJSON . _csiAddtional

-- | Remaining structured metadata key-value pairs. This must be of the form
-- map (string key mapping to a list of string values).
--
-- /See:/ 'variantSetMetadataInfo' smart constructor.
newtype VariantSetMetadataInfo = VariantSetMetadataInfo
    { _vsmiAddtional :: HashMap Text [JSONValue]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantSetMetadataInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsmiAddtional'
variantSetMetadataInfo
    :: HashMap Text [JSONValue] -- ^ 'vsmiAddtional'
    -> VariantSetMetadataInfo
variantSetMetadataInfo pVsmiAddtional_ =
    VariantSetMetadataInfo
    { _vsmiAddtional = _Coerce # pVsmiAddtional_
    }

vsmiAddtional :: Lens' VariantSetMetadataInfo (HashMap Text [JSONValue])
vsmiAddtional
  = lens _vsmiAddtional
      (\ s a -> s{_vsmiAddtional = a})
      . _Coerce

instance FromJSON VariantSetMetadataInfo where
        parseJSON
          = withObject "VariantSetMetadataInfo"
              (\ o ->
                 VariantSetMetadataInfo <$> (parseJSONObject o))

instance ToJSON VariantSetMetadataInfo where
        toJSON = toJSON . _vsmiAddtional

-- | If importing ReadGroupSets, an ImportReadGroupSetsResponse is returned.
-- If importing Variants, an ImportVariantsResponse is returned. For
-- exports, an empty response is returned.
--
-- /See:/ 'operationResponse' smart constructor.
newtype OperationResponse = OperationResponse
    { _orAddtional :: HashMap Text JSONValue
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAddtional'
operationResponse
    :: HashMap Text JSONValue -- ^ 'orAddtional'
    -> OperationResponse
operationResponse pOrAddtional_ =
    OperationResponse
    { _orAddtional = _Coerce # pOrAddtional_
    }

-- | Properties of the object. Contains field \'ype with type URL.
orAddtional :: Lens' OperationResponse (HashMap Text JSONValue)
orAddtional
  = lens _orAddtional (\ s a -> s{_orAddtional = a}) .
      _Coerce

instance FromJSON OperationResponse where
        parseJSON
          = withObject "OperationResponse"
              (\ o -> OperationResponse <$> (parseJSONObject o))

instance ToJSON OperationResponse where
        toJSON = toJSON . _orAddtional

-- | An event that occurred during an Operation.
--
-- /See:/ 'operationEvent' smart constructor.
newtype OperationEvent = OperationEvent
    { _oeDescription :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OperationEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oeDescription'
operationEvent
    :: OperationEvent
operationEvent =
    OperationEvent
    { _oeDescription = Nothing
    }

-- | Required description of event.
oeDescription :: Lens' OperationEvent (Maybe Text)
oeDescription
  = lens _oeDescription
      (\ s a -> s{_oeDescription = a})

instance FromJSON OperationEvent where
        parseJSON
          = withObject "OperationEvent"
              (\ o -> OperationEvent <$> (o .:? "description"))

instance ToJSON OperationEvent where
        toJSON OperationEvent{..}
          = object
              (catMaybes [("description" .=) <$> _oeDescription])

-- | ReferenceBound records an upper bound for the starting coordinate of
-- variants in a particular reference.
--
-- /See:/ 'referenceBound' smart constructor.
data ReferenceBound = ReferenceBound
    { _rbUpperBound    :: !(Maybe (Textual Int64))
    , _rbReferenceName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferenceBound' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbUpperBound'
--
-- * 'rbReferenceName'
referenceBound
    :: ReferenceBound
referenceBound =
    ReferenceBound
    { _rbUpperBound = Nothing
    , _rbReferenceName = Nothing
    }

-- | An upper bound (inclusive) on the starting coordinate of any variant in
-- the reference sequence.
rbUpperBound :: Lens' ReferenceBound (Maybe Int64)
rbUpperBound
  = lens _rbUpperBound (\ s a -> s{_rbUpperBound = a})
      . mapping _Coerce

-- | The reference the bound is associate with.
rbReferenceName :: Lens' ReferenceBound (Maybe Text)
rbReferenceName
  = lens _rbReferenceName
      (\ s a -> s{_rbReferenceName = a})

instance FromJSON ReferenceBound where
        parseJSON
          = withObject "ReferenceBound"
              (\ o ->
                 ReferenceBound <$>
                   (o .:? "upperBound") <*> (o .:? "referenceName"))

instance ToJSON ReferenceBound where
        toJSON ReferenceBound{..}
          = object
              (catMaybes
                 [("upperBound" .=) <$> _rbUpperBound,
                  ("referenceName" .=) <$> _rbReferenceName])

--
-- /See:/ 'undeleteDataSetRequest' smart constructor.
data UndeleteDataSetRequest =
    UndeleteDataSetRequest
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UndeleteDataSetRequest' with the minimum fields required to make a request.
--
undeleteDataSetRequest
    :: UndeleteDataSetRequest
undeleteDataSetRequest = UndeleteDataSetRequest

instance FromJSON UndeleteDataSetRequest where
        parseJSON
          = withObject "UndeleteDataSetRequest"
              (\ o -> pure UndeleteDataSetRequest)

instance ToJSON UndeleteDataSetRequest where
        toJSON = const emptyObject

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding = Binding
    { _bMembers :: !(Maybe [Text])
    , _bRole    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMembers'
--
-- * 'bRole'
binding
    :: Binding
binding =
    Binding
    { _bMembers = Nothing
    , _bRole = Nothing
    }

-- | Specifies the identities requesting access for a Cloud Platform
-- resource. \`members\` can have the following formats: * \`allUsers\`: A
-- special identifier that represents anyone who is on the internet; with
-- or without a Google account. * \`allAuthenticatedUsers\`: A special
-- identifier that represents anyone who is authenticated with a Google
-- account or a service account. * \`user:{emailid}\`: An email address
-- that represents a specific Google account. For example,
-- \`alice\'gmail.com\` or \`joe\'example.com\`. *
-- \`serviceAccount:{emailid}\`: An email address that represents a service
-- account. For example, \`my-other-app\'appspot.gserviceaccount.com\`. *
-- \`group:{emailid}\`: An email address that represents a Google group.
-- For example, \`admins\'example.com\`. * \`domain:{domain}\`: A Google
-- Apps domain name that represents all the users of that domain. For
-- example, \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`. Required
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

instance FromJSON Binding where
        parseJSON
          = withObject "Binding"
              (\ o ->
                 Binding <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role"))

instance ToJSON Binding where
        toJSON Binding{..}
          = object
              (catMaybes
                 [("members" .=) <$> _bMembers,
                  ("role" .=) <$> _bRole])

-- | An abstraction for referring to a genomic position, in relation to some
-- already known reference. For now, represents a genomic position as a
-- reference name, a base number on that reference (0-based), and a
-- determination of forward or reverse strand.
--
-- /See:/ 'position' smart constructor.
data Position = Position
    { _pReverseStrand :: !(Maybe Bool)
    , _pReferenceName :: !(Maybe Text)
    , _pPosition      :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Position' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pReverseStrand'
--
-- * 'pReferenceName'
--
-- * 'pPosition'
position
    :: Position
position =
    Position
    { _pReverseStrand = Nothing
    , _pReferenceName = Nothing
    , _pPosition = Nothing
    }

-- | Whether this position is on the reverse strand, as opposed to the
-- forward strand.
pReverseStrand :: Lens' Position (Maybe Bool)
pReverseStrand
  = lens _pReverseStrand
      (\ s a -> s{_pReverseStrand = a})

-- | The name of the reference in whatever reference set is being used.
pReferenceName :: Lens' Position (Maybe Text)
pReferenceName
  = lens _pReferenceName
      (\ s a -> s{_pReferenceName = a})

-- | The 0-based offset from the start of the forward strand for that
-- reference.
pPosition :: Lens' Position (Maybe Int64)
pPosition
  = lens _pPosition (\ s a -> s{_pPosition = a}) .
      mapping _Coerce

instance FromJSON Position where
        parseJSON
          = withObject "Position"
              (\ o ->
                 Position <$>
                   (o .:? "reverseStrand") <*> (o .:? "referenceName")
                     <*> (o .:? "position"))

instance ToJSON Position where
        toJSON Position{..}
          = object
              (catMaybes
                 [("reverseStrand" .=) <$> _pReverseStrand,
                  ("referenceName" .=) <$> _pReferenceName,
                  ("position" .=) <$> _pPosition])

-- | The read group set search response.
--
-- /See:/ 'searchReadGroupSetsResponse' smart constructor.
data SearchReadGroupSetsResponse = SearchReadGroupSetsResponse
    { _srgsrNextPageToken :: !(Maybe Text)
    , _srgsrReadGroupSets :: !(Maybe [ReadGroupSet])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SearchReadGroupSetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srgsrNextPageToken'
--
-- * 'srgsrReadGroupSets'
searchReadGroupSetsResponse
    :: SearchReadGroupSetsResponse
searchReadGroupSetsResponse =
    SearchReadGroupSetsResponse
    { _srgsrNextPageToken = Nothing
    , _srgsrReadGroupSets = Nothing
    }

-- | The continuation token, which is used to page through large result sets.
-- Provide this value in a subsequent request to return the next page of
-- results. This field will be empty if there aren\'t any additional
-- results.
srgsrNextPageToken :: Lens' SearchReadGroupSetsResponse (Maybe Text)
srgsrNextPageToken
  = lens _srgsrNextPageToken
      (\ s a -> s{_srgsrNextPageToken = a})

-- | The list of matching read group sets.
srgsrReadGroupSets :: Lens' SearchReadGroupSetsResponse [ReadGroupSet]
srgsrReadGroupSets
  = lens _srgsrReadGroupSets
      (\ s a -> s{_srgsrReadGroupSets = a})
      . _Default
      . _Coerce

instance FromJSON SearchReadGroupSetsResponse where
        parseJSON
          = withObject "SearchReadGroupSetsResponse"
              (\ o ->
                 SearchReadGroupSetsResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "readGroupSets" .!= mempty))

instance ToJSON SearchReadGroupSetsResponse where
        toJSON SearchReadGroupSetsResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _srgsrNextPageToken,
                  ("readGroupSets" .=) <$> _srgsrReadGroupSets])

-- | A map of additional read group set information.
--
-- /See:/ 'readGroupSetInfo' smart constructor.
newtype ReadGroupSetInfo = ReadGroupSetInfo
    { _rgsiAddtional :: HashMap Text [JSONValue]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReadGroupSetInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgsiAddtional'
readGroupSetInfo
    :: HashMap Text [JSONValue] -- ^ 'rgsiAddtional'
    -> ReadGroupSetInfo
readGroupSetInfo pRgsiAddtional_ =
    ReadGroupSetInfo
    { _rgsiAddtional = _Coerce # pRgsiAddtional_
    }

rgsiAddtional :: Lens' ReadGroupSetInfo (HashMap Text [JSONValue])
rgsiAddtional
  = lens _rgsiAddtional
      (\ s a -> s{_rgsiAddtional = a})
      . _Coerce

instance FromJSON ReadGroupSetInfo where
        parseJSON
          = withObject "ReadGroupSetInfo"
              (\ o -> ReadGroupSetInfo <$> (parseJSONObject o))

instance ToJSON ReadGroupSetInfo where
        toJSON = toJSON . _rgsiAddtional

-- | A reference set is a set of references which typically comprise a
-- reference assembly for a species, such as \`GRCh38\` which is
-- representative of the human genome. A reference set defines a common
-- coordinate space for comparing reference-aligned experimental data. A
-- reference set contains 1 or more references.
--
-- /See:/ 'referenceSet' smart constructor.
data ReferenceSet = ReferenceSet
    { _rsSourceAccessions :: !(Maybe [Text])
    , _rsReferenceIds     :: !(Maybe [Text])
    , _rsMD5checksum      :: !(Maybe Text)
    , _rsNcbiTaxonId      :: !(Maybe (Textual Int32))
    , _rsId               :: !(Maybe Text)
    , _rsAssemblyId       :: !(Maybe Text)
    , _rsSourceURI        :: !(Maybe Text)
    , _rsDescription      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReferenceSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsSourceAccessions'
--
-- * 'rsReferenceIds'
--
-- * 'rsMD5checksum'
--
-- * 'rsNcbiTaxonId'
--
-- * 'rsId'
--
-- * 'rsAssemblyId'
--
-- * 'rsSourceURI'
--
-- * 'rsDescription'
referenceSet
    :: ReferenceSet
referenceSet =
    ReferenceSet
    { _rsSourceAccessions = Nothing
    , _rsReferenceIds = Nothing
    , _rsMD5checksum = Nothing
    , _rsNcbiTaxonId = Nothing
    , _rsId = Nothing
    , _rsAssemblyId = Nothing
    , _rsSourceURI = Nothing
    , _rsDescription = Nothing
    }

-- | All known corresponding accession IDs in INSDC (GenBank\/ENA\/DDBJ)
-- ideally with a version number, for example \`NC_000001.11\`.
rsSourceAccessions :: Lens' ReferenceSet [Text]
rsSourceAccessions
  = lens _rsSourceAccessions
      (\ s a -> s{_rsSourceAccessions = a})
      . _Default
      . _Coerce

-- | The IDs of the reference objects that are part of this set.
-- \`Reference.md5checksum\` must be unique within this set.
rsReferenceIds :: Lens' ReferenceSet [Text]
rsReferenceIds
  = lens _rsReferenceIds
      (\ s a -> s{_rsReferenceIds = a})
      . _Default
      . _Coerce

-- | Order-independent MD5 checksum which identifies this reference set. The
-- checksum is computed by sorting all lower case hexidecimal string
-- \`reference.md5checksum\` (for all reference in this set) in ascending
-- lexicographic order, concatenating, and taking the MD5 of that value.
-- The resulting value is represented in lower case hexadecimal format.
rsMD5checksum :: Lens' ReferenceSet (Maybe Text)
rsMD5checksum
  = lens _rsMD5checksum
      (\ s a -> s{_rsMD5checksum = a})

-- | ID from http:\/\/www.ncbi.nlm.nih.gov\/taxonomy (e.g. 9606->human)
-- indicating the species which this assembly is intended to model. Note
-- that contained references may specify a different \`ncbiTaxonId\`, as
-- assemblies may contain reference sequences which do not belong to the
-- modeled species, e.g. EBV in a human reference genome.
rsNcbiTaxonId :: Lens' ReferenceSet (Maybe Int32)
rsNcbiTaxonId
  = lens _rsNcbiTaxonId
      (\ s a -> s{_rsNcbiTaxonId = a})
      . mapping _Coerce

-- | The server-generated reference set ID, unique across all reference sets.
rsId :: Lens' ReferenceSet (Maybe Text)
rsId = lens _rsId (\ s a -> s{_rsId = a})

-- | Public id of this reference set, such as \`GRCh37\`.
rsAssemblyId :: Lens' ReferenceSet (Maybe Text)
rsAssemblyId
  = lens _rsAssemblyId (\ s a -> s{_rsAssemblyId = a})

-- | The URI from which the references were obtained.
rsSourceURI :: Lens' ReferenceSet (Maybe Text)
rsSourceURI
  = lens _rsSourceURI (\ s a -> s{_rsSourceURI = a})

-- | Free text description of this reference set.
rsDescription :: Lens' ReferenceSet (Maybe Text)
rsDescription
  = lens _rsDescription
      (\ s a -> s{_rsDescription = a})

instance FromJSON ReferenceSet where
        parseJSON
          = withObject "ReferenceSet"
              (\ o ->
                 ReferenceSet <$>
                   (o .:? "sourceAccessions" .!= mempty) <*>
                     (o .:? "referenceIds" .!= mempty)
                     <*> (o .:? "md5checksum")
                     <*> (o .:? "ncbiTaxonId")
                     <*> (o .:? "id")
                     <*> (o .:? "assemblyId")
                     <*> (o .:? "sourceUri")
                     <*> (o .:? "description"))

instance ToJSON ReferenceSet where
        toJSON ReferenceSet{..}
          = object
              (catMaybes
                 [("sourceAccessions" .=) <$> _rsSourceAccessions,
                  ("referenceIds" .=) <$> _rsReferenceIds,
                  ("md5checksum" .=) <$> _rsMD5checksum,
                  ("ncbiTaxonId" .=) <$> _rsNcbiTaxonId,
                  ("id" .=) <$> _rsId,
                  ("assemblyId" .=) <$> _rsAssemblyId,
                  ("sourceUri" .=) <$> _rsSourceURI,
                  ("description" .=) <$> _rsDescription])
