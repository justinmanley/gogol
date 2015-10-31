{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Datastore.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Datastore.Types
    (
    -- * Service Configuration
      datastoreService

    -- * OAuth Scopes
    , userinfoEmailScope
    , cloudPlatformScope
    , datastoreScope

    -- * PropertyOrderDirection
    , PropertyOrderDirection (..)

    -- * RollbackRequest
    , RollbackRequest
    , rollbackRequest
    , rrTransaction

    -- * Property
    , Property
    , property
    , pKeyValue
    , pBlobKeyValue
    , pDateTimeValue
    , pIntegerValue
    , pEntityValue
    , pDoubleValue
    , pStringValue
    , pListValue
    , pIndexed
    , pBooleanValue
    , pMeaning
    , pBlobValue

    -- * PartitionId
    , PartitionId
    , partitionId
    , piNamespace
    , piDataSetId

    -- * QueryResultBatch
    , QueryResultBatch
    , queryResultBatch
    , qrbSkippedResults
    , qrbEntityResultType
    , qrbEntityResults
    , qrbMoreResults
    , qrbEndCursor

    -- * EntityProperties
    , EntityProperties
    , entityProperties
    , epAddtional

    -- * BeginTransactionRequest
    , BeginTransactionRequest
    , beginTransactionRequest
    , btrIsolationLevel

    -- * RunQueryRequest
    , RunQueryRequest
    , runQueryRequest
    , rqrPartitionId
    , rqrGqlQuery
    , rqrQuery
    , rqrReadOptions

    -- * AllocateIdsRequest
    , AllocateIdsRequest
    , allocateIdsRequest
    , airKeys

    -- * QueryResultBatchEntityResultType
    , QueryResultBatchEntityResultType (..)

    -- * CompositeFilter
    , CompositeFilter
    , compositeFilter
    , cfOperator
    , cfFilters

    -- * CompositeFilterOperator
    , CompositeFilterOperator (..)

    -- * QueryResultBatchMoreResults
    , QueryResultBatchMoreResults (..)

    -- * BeginTransactionResponse
    , BeginTransactionResponse
    , beginTransactionResponse
    , btrTransaction
    , btrHeader

    -- * MutationResult
    , MutationResult
    , mutationResult
    , mrInsertAutoIdKeys
    , mrIndexUpdates

    -- * AllocateIdsResponse
    , AllocateIdsResponse
    , allocateIdsResponse
    , aKeys
    , aHeader

    -- * GqlQuery
    , GqlQuery
    , gqlQuery
    , gqAllowLiteral
    , gqNumberArgs
    , gqQueryString
    , gqNameArgs

    -- * RunQueryResponse
    , RunQueryResponse
    , runQueryResponse
    , rqrBatch
    , rqrHeader

    -- * Value
    , Value
    , value
    , vKeyValue
    , vBlobKeyValue
    , vDateTimeValue
    , vIntegerValue
    , vEntityValue
    , vDoubleValue
    , vStringValue
    , vListValue
    , vIndexed
    , vBooleanValue
    , vMeaning
    , vBlobValue

    -- * LookupRequest
    , LookupRequest
    , lookupRequest
    , lrKeys
    , lrReadOptions

    -- * ReadOptionsReadConsistency
    , ReadOptionsReadConsistency (..)

    -- * Mutation
    , Mutation
    , mutation
    , mInsert
    , mForce
    , mInsertAutoId
    , mUpsert
    , mDelete
    , mUpdate

    -- * ResponseHeader
    , ResponseHeader
    , responseHeader
    , rhKind

    -- * KeyPathElement
    , KeyPathElement
    , keyPathElement
    , kpeKind
    , kpeName
    , kpeId

    -- * PropertyReference
    , PropertyReference
    , propertyReference
    , prName

    -- * GqlQueryArg
    , GqlQueryArg
    , gqlQueryArg
    , gqaCursor
    , gqaValue
    , gqaName

    -- * Key
    , Key
    , key
    , kPartitionId
    , kPath

    -- * PropertyFilterOperator
    , PropertyFilterOperator (..)

    -- * PropertyFilter
    , PropertyFilter
    , propertyFilter
    , pfProperty
    , pfOperator
    , pfValue

    -- * Query
    , Query
    , query
    , qGroupBy
    , qStartCursor
    , qOffSet
    , qEndCursor
    , qLimit
    , qProjection
    , qFilter
    , qKinds
    , qOrder

    -- * EntityResult
    , EntityResult
    , entityResult
    , erEntity

    -- * CommitResponse
    , CommitResponse
    , commitResponse
    , crMutationResult
    , crHeader

    -- * KindExpression
    , KindExpression
    , kindExpression
    , keName

    -- * ReadOptions
    , ReadOptions
    , readOptions
    , roReadConsistency
    , roTransaction

    -- * RollbackResponse
    , RollbackResponse
    , rollbackResponse
    , rrHeader

    -- * PropertyExpression
    , PropertyExpression
    , propertyExpression
    , peProperty
    , peAggregationFunction

    -- * Filter
    , Filter
    , filter'
    , fCompositeFilter
    , fPropertyFilter

    -- * BeginTransactionRequestIsolationLevel
    , BeginTransactionRequestIsolationLevel (..)

    -- * CommitRequest
    , CommitRequest
    , commitRequest
    , crMode
    , crMutation
    , crTransaction
    , crIgnoreReadOnly

    -- * CommitRequestMode
    , CommitRequestMode (..)

    -- * PropertyExpressionAggregationFunction
    , PropertyExpressionAggregationFunction (..)

    -- * Entity
    , Entity
    , entity
    , eKey
    , eProperties

    -- * LookupResponse
    , LookupResponse
    , lookupResponse
    , lrDeferred
    , lrFound
    , lrMissing
    , lrHeader

    -- * PropertyOrder
    , PropertyOrder
    , propertyOrder
    , poProperty
    , poDirection
    ) where

import           Network.Google.Datastore.Types.Product
import           Network.Google.Datastore.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1beta2' of the Google Cloud Datastore API. This contains the host and root path used as a starting point for constructing service requests.
datastoreService :: Service
datastoreService
  = defaultService (ServiceId "datastore:v1beta2")
      "www.googleapis.com"

-- | View your email address
userinfoEmailScope :: Proxy '["https://www.googleapis.com/auth/userinfo.email"]
userinfoEmailScope = Proxy;

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;

-- | View and manage your Google Cloud Datastore data
datastoreScope :: Proxy '["https://www.googleapis.com/auth/datastore"]
datastoreScope = Proxy;
