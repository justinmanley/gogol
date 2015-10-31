{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BigQuery.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.BigQuery.Types
    (
    -- * Service Configuration
      bigQueryService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope
    , devstorageReadOnlyScope
    , bigqueryInsertdataScope
    , devstorageReadWriteScope
    , bigqueryScope
    , devstorageFullControlScope

    -- * JobReference
    , JobReference
    , jobReference
    , jrJobId
    , jrProjectId

    -- * TableList
    , TableList
    , tableList
    , tlTotalItems
    , tlEtag
    , tlNextPageToken
    , tlKind
    , tlTables

    -- * DataSetListDataSetsItem
    , DataSetListDataSetsItem
    , dataSetListDataSetsItem
    , dsldsiFriendlyName
    , dsldsiKind
    , dsldsiDataSetReference
    , dsldsiId

    -- * TableDataList
    , TableDataList
    , tableDataList
    , tdlEtag
    , tdlKind
    , tdlRows
    , tdlPageToken
    , tdlTotalRows

    -- * JobConfigurationTableCopy
    , JobConfigurationTableCopy
    , jobConfigurationTableCopy
    , jctcDestinationTable
    , jctcWriteDisPosition
    , jctcSourceTables
    , jctcCreateDisPosition
    , jctcSourceTable

    -- * TableListTablesItem
    , TableListTablesItem
    , tableListTablesItem
    , tltiTableReference
    , tltiFriendlyName
    , tltiKind
    , tltiId
    , tltiType

    -- * TableSchema
    , TableSchema
    , tableSchema
    , tsFields

    -- * ProjectList
    , ProjectList
    , projectList
    , plTotalItems
    , plEtag
    , plNextPageToken
    , plKind
    , plProjects

    -- * JobStatistics
    , JobStatistics
    , jobStatistics
    , jsCreationTime
    , jsStartTime
    , jsLoad
    , jsTotalBytesProcessed
    , jsEndTime
    , jsQuery
    , jsExtract

    -- * DataSet
    , DataSet
    , dataSet
    , dsCreationTime
    , dsAccess
    , dsEtag
    , dsLocation
    , dsFriendlyName
    , dsKind
    , dsLastModifiedTime
    , dsDataSetReference
    , dsSelfLink
    , dsId
    , dsDefaultTableExpirationMs
    , dsDescription

    -- * ExternalDataConfiguration
    , ExternalDataConfiguration
    , externalDataConfiguration
    , edcIgnoreUnknownValues
    , edcCompression
    , edcSourceFormat
    , edcSchema
    , edcMaxBadRecords
    , edcSourceURIs
    , edcCSVOptions

    -- * TableReference
    , TableReference
    , tableReference
    , trDataSetId
    , trProjectId
    , trTableId

    -- * TableFieldSchema
    , TableFieldSchema
    , tableFieldSchema
    , tfsMode
    , tfsName
    , tfsType
    , tfsDescription
    , tfsFields

    -- * GetQueryResultsResponse
    , GetQueryResultsResponse
    , getQueryResultsResponse
    , gqrrJobReference
    , gqrrEtag
    , gqrrKind
    , gqrrSchema
    , gqrrTotalBytesProcessed
    , gqrrRows
    , gqrrPageToken
    , gqrrTotalRows
    , gqrrErrors
    , gqrrJobComplete
    , gqrrCacheHit

    -- * DataSetList
    , DataSetList
    , dataSetList
    , dslEtag
    , dslNextPageToken
    , dslKind
    , dslDataSets

    -- * QueryRequest
    , QueryRequest
    , queryRequest
    , qrUseQueryCache
    , qrPreserveNulls
    , qrKind
    , qrQuery
    , qrTimeoutMs
    , qrDryRun
    , qrMaxResults
    , qrDefaultDataSet

    -- * JobsListProjection
    , JobsListProjection (..)

    -- * JobStatistics4
    , JobStatistics4
    , jobStatistics4
    , jsDestinationURIFileCounts

    -- * ProjectReference
    , ProjectReference
    , projectReference
    , prProjectId

    -- * JobConfigurationLoad
    , JobConfigurationLoad
    , jobConfigurationLoad
    , jclSkipLeadingRows
    , jclProjectionFields
    , jclDestinationTable
    , jclWriteDisPosition
    , jclAllowJaggedRows
    , jclSchemaInline
    , jclIgnoreUnknownValues
    , jclCreateDisPosition
    , jclSchemaInlineFormat
    , jclAllowQuotedNewlines
    , jclSourceFormat
    , jclSchema
    , jclQuote
    , jclMaxBadRecords
    , jclSourceURIs
    , jclEncoding
    , jclFieldDelimiter

    -- * JobsListStateFilter
    , JobsListStateFilter (..)

    -- * DataSetReference
    , DataSetReference
    , dataSetReference
    , dsrDataSetId
    , dsrProjectId

    -- * TableDataInsertAllRequest
    , TableDataInsertAllRequest
    , tableDataInsertAllRequest
    , tdiarKind
    , tdiarIgnoreUnknownValues
    , tdiarRows
    , tdiarSkipInvalidRows

    -- * ProjectListProjectsItem
    , ProjectListProjectsItem
    , projectListProjectsItem
    , plpiFriendlyName
    , plpiKind
    , plpiProjectReference
    , plpiId
    , plpiNumericId

    -- * Streamingbuffer
    , Streamingbuffer
    , streamingbuffer
    , sEstimatedBytes
    , sOldestEntryTime
    , sEstimatedRows

    -- * TableRow
    , TableRow
    , tableRow
    , trF

    -- * JobListJobsItem
    , JobListJobsItem
    , jobListJobsItem
    , jljiJobReference
    , jljiStatus
    , jljiState
    , jljiUserEmail
    , jljiKind
    , jljiErrorResult
    , jljiId
    , jljiStatistics
    , jljiConfiguration

    -- * JobConfiguration
    , JobConfiguration
    , jobConfiguration
    , jcCopy
    , jcLink
    , jcLoad
    , jcQuery
    , jcExtract
    , jcDryRun

    -- * Job
    , Job
    , job
    , jJobReference
    , jStatus
    , jEtag
    , jUserEmail
    , jKind
    , jSelfLink
    , jId
    , jStatistics
    , jConfiguration

    -- * JobConfigurationLink
    , JobConfigurationLink
    , jobConfigurationLink
    , jDestinationTable
    , jWriteDisPosition
    , jCreateDisPosition
    , jSourceURI

    -- * TableDataInsertAllResponseInsertErrorsItem
    , TableDataInsertAllResponseInsertErrorsItem
    , tableDataInsertAllResponseInsertErrorsItem
    , tdiarieiErrors
    , tdiarieiIndex

    -- * JobConfigurationExtract
    , JobConfigurationExtract
    , jobConfigurationExtract
    , jceDestinationFormat
    , jceSourceTable
    , jcePrintHeader
    , jceCompression
    , jceDestinationURIs
    , jceDestinationURI
    , jceFieldDelimiter

    -- * JobCancelResponse
    , JobCancelResponse
    , jobCancelResponse
    , jcrKind
    , jcrJob

    -- * JSONObject
    , JSONObject
    , jsonObject
    , joAddtional

    -- * JobConfigurationQuery
    , JobConfigurationQuery
    , jobConfigurationQuery
    , jcqDestinationTable
    , jcqWriteDisPosition
    , jcqPriority
    , jcqUseQueryCache
    , jcqPreserveNulls
    , jcqTableDefinitions
    , jcqCreateDisPosition
    , jcqUserDefinedFunctionResources
    , jcqAllowLargeResults
    , jcqQuery
    , jcqFlattenResults
    , jcqDefaultDataSet

    -- * TableDataInsertAllRequestRowsItem
    , TableDataInsertAllRequestRowsItem
    , tableDataInsertAllRequestRowsItem
    , tdiarriJSON
    , tdiarriInsertId

    -- * JobList
    , JobList
    , jobList
    , jlEtag
    , jlNextPageToken
    , jlKind
    , jlJobs

    -- * JobConfigurationQueryTableDefinitions
    , JobConfigurationQueryTableDefinitions
    , jobConfigurationQueryTableDefinitions
    , jcqtdAddtional

    -- * TableCell
    , TableCell
    , tableCell
    , tcV

    -- * ViewDefinition
    , ViewDefinition
    , viewDefinition
    , vdQuery

    -- * UserDefinedFunctionResource
    , UserDefinedFunctionResource
    , userDefinedFunctionResource
    , udfrResourceURI
    , udfrInlineCode

    -- * JobStatistics2
    , JobStatistics2
    , jobStatistics2
    , jTotalBytesProcessed
    , jBillingTier
    , jCacheHit
    , jTotalBytesBilled

    -- * JobStatus
    , JobStatus
    , jobStatus
    , jsState
    , jsErrorResult
    , jsErrors

    -- * DataSetAccessItem
    , DataSetAccessItem
    , dataSetAccessItem
    , dsaiGroupByEmail
    , dsaiDomain
    , dsaiSpecialGroup
    , dsaiRole
    , dsaiView
    , dsaiUserByEmail

    -- * TableDataInsertAllResponse
    , TableDataInsertAllResponse
    , tableDataInsertAllResponse
    , tKind
    , tInsertErrors

    -- * Table
    , Table
    , table
    , tabCreationTime
    , tabEtag
    , tabNumBytes
    , tabExternalDataConfiguration
    , tabLocation
    , tabTableReference
    , tabFriendlyName
    , tabKind
    , tabLastModifiedTime
    , tabSchema
    , tabStreamingBuffer
    , tabSelfLink
    , tabNumRows
    , tabView
    , tabId
    , tabType
    , tabExpirationTime
    , tabDescription

    -- * ErrorProto
    , ErrorProto
    , errorProto
    , epDebugInfo
    , epLocation
    , epReason
    , epMessage

    -- * CSVOptions
    , CSVOptions
    , csvOptions
    , coSkipLeadingRows
    , coAllowJaggedRows
    , coAllowQuotedNewlines
    , coQuote
    , coEncoding
    , coFieldDelimiter

    -- * JobStatistics3
    , JobStatistics3
    , jobStatistics3
    , jsInputFiles
    , jsOutputRows
    , jsOutputBytes
    , jsInputFileBytes

    -- * QueryResponse
    , QueryResponse
    , queryResponse
    , qJobReference
    , qKind
    , qSchema
    , qTotalBytesProcessed
    , qRows
    , qPageToken
    , qTotalRows
    , qErrors
    , qJobComplete
    , qCacheHit
    ) where

import           Network.Google.BigQuery.Types.Product
import           Network.Google.BigQuery.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v2' of the BigQuery API. This contains the host and root path used as a starting point for constructing service requests.
bigQueryService :: Service
bigQueryService
  = defaultService (ServiceId "bigquery:v2")
      "www.googleapis.com"

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy;

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;

-- | View your data in Google Cloud Storage
devstorageReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/devstorage.read_only"]
devstorageReadOnlyScope = Proxy;

-- | Insert data into Google BigQuery
bigqueryInsertdataScope :: Proxy '["https://www.googleapis.com/auth/bigquery.insertdata"]
bigqueryInsertdataScope = Proxy;

-- | Manage your data in Google Cloud Storage
devstorageReadWriteScope :: Proxy '["https://www.googleapis.com/auth/devstorage.read_write"]
devstorageReadWriteScope = Proxy;

-- | View and manage your data in Google BigQuery
bigqueryScope :: Proxy '["https://www.googleapis.com/auth/bigquery"]
bigqueryScope = Proxy;

-- | Manage your data and permissions in Google Cloud Storage
devstorageFullControlScope :: Proxy '["https://www.googleapis.com/auth/devstorage.full_control"]
devstorageFullControlScope = Proxy;
