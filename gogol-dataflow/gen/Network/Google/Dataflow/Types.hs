{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Dataflow.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Dataflow.Types
    (
    -- * Service Configuration
      dataflowService

    -- * OAuth Scopes
    , userinfoEmailScope
    , cloudPlatformScope

    -- * JobExecutionInfoStages
    , JobExecutionInfoStages
    , jobExecutionInfoStages
    , jeisAddtional

    -- * ComputationTopology
    , ComputationTopology
    , computationTopology
    , ctStateFamilies
    , ctUserStageName
    , ctInputs
    , ctKeyRanges
    , ctOutputs
    , ctComputationId
    , ctSystemStageName

    -- * SourceSplitResponse
    , SourceSplitResponse
    , sourceSplitResponse
    , ssrBundles
    , ssrShards
    , ssrOutcome

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * WorkItem
    , WorkItem
    , workItem
    , wiJobId
    , wiReportStatusInterval
    , wiShellTask
    , wiStreamingSetupTask
    , wiInitialReportIndex
    , wiMapTask
    , wiPackages
    , wiStreamingComputationTask
    , wiSourceOperationTask
    , wiId
    , wiProjectId
    , wiLeaseExpireTime
    , wiConfiguration
    , wiSeqMapTask

    -- * SourceSplitOptions
    , SourceSplitOptions
    , sourceSplitOptions
    , ssoDesiredShardSizeBytes
    , ssoDesiredBundleSizeBytes

    -- * WorkerPoolMetadata
    , WorkerPoolMetadata
    , workerPoolMetadata
    , wpmAddtional

    -- * AutoscalingSettings
    , AutoscalingSettings
    , autoscalingSettings
    , asMaxNumWorkers
    , asAlgorithm

    -- * JobExecutionStageInfo
    , JobExecutionStageInfo
    , jobExecutionStageInfo
    , jesiStepName

    -- * InstructionOutput
    , InstructionOutput
    , instructionOutput
    , ioCodec
    , ioName
    , ioSystemName

    -- * ReportWorkItemStatusRequest
    , ReportWorkItemStatusRequest
    , reportWorkItemStatusRequest
    , rwisrCurrentWorkerTime
    , rwisrWorkItemStatuses
    , rwisrWorkerId

    -- * EnvironmentVersion
    , EnvironmentVersion
    , environmentVersion
    , evAddtional

    -- * Sink
    , Sink
    , sink
    , sCodec
    , sSpec

    -- * MetricStructuredName
    , MetricStructuredName
    , metricStructuredName
    , msnOrigin
    , msnContext
    , msnName

    -- * WriteInstruction
    , WriteInstruction
    , writeInstruction
    , wiSink
    , wiInput

    -- * EnvironmentUserAgent
    , EnvironmentUserAgent
    , environmentUserAgent
    , euaAddtional

    -- * Disk
    , Disk
    , disk
    , dSizeGb
    , dDiskType
    , dMountPoint

    -- * MetricUpdate
    , MetricUpdate
    , metricUpdate
    , muMeanSum
    , muInternal
    , muSet
    , muCumulative
    , muKind
    , muUpdateTime
    , muMeanCount
    , muName
    , muScalar

    -- * SourceGetMetadataResponse
    , SourceGetMetadataResponse
    , sourceGetMetadataResponse
    , sgmrMetadata

    -- * Environment
    , Environment
    , environment
    , eDataSet
    , eExperiments
    , eWorkerPools
    , eClusterManagerAPIService
    , eVersion
    , eInternalExperiments
    , eTempStoragePrefix
    , eUserAgent
    , eSdkPipelineOptions

    -- * ConcatPosition
    , ConcatPosition
    , concatPosition
    , cpIndex
    , cpPosition

    -- * MetricStructuredNameContext
    , MetricStructuredNameContext
    , metricStructuredNameContext
    , msncAddtional

    -- * StreamingStageLocation
    , StreamingStageLocation
    , streamingStageLocation
    , sslStreamId

    -- * DerivedSource
    , DerivedSource
    , derivedSource
    , dsDerivationMode
    , dsSource

    -- * JobMetrics
    , JobMetrics
    , jobMetrics
    , jmMetrics
    , jmMetricTime

    -- * WorkItemStatus
    , WorkItemStatus
    , workItemStatus
    , wisProgress
    , wisSourceOperationResponse
    , wisStopPosition
    , wisDynamicSourceSplit
    , wisCompleted
    , wisSourceFork
    , wisReportIndex
    , wisRequestedLeaseDuration
    , wisErrors
    , wisMetricUpdates
    , wisWorkItemId

    -- * FlattenInstruction
    , FlattenInstruction
    , flattenInstruction
    , fiInputs

    -- * JobTransformNameMApping
    , JobTransformNameMApping
    , jobTransformNameMApping
    , jtnmaAddtional

    -- * SourceSpec
    , SourceSpec
    , sourceSpec
    , ssAddtional

    -- * SourceMetadata
    , SourceMetadata
    , sourceMetadata
    , smEstimatedSizeBytes
    , smProducesSortedKeys
    , smInfinite

    -- * EnvironmentInternalExperiments
    , EnvironmentInternalExperiments
    , environmentInternalExperiments
    , eieAddtional

    -- * TaskRunnerSettings
    , TaskRunnerSettings
    , taskRunnerSettings
    , trsContinueOnException
    , trsHarnessCommand
    , trsWorkflowFileName
    , trsTaskGroup
    , trsAlsologtostderr
    , trsDataflowAPIVersion
    , trsLogDir
    , trsCommandlinesFileName
    , trsVMId
    , trsBaseURL
    , trsOAuthScopes
    , trsTaskUser
    , trsStreamingWorkerMainClass
    , trsBaseTaskDir
    , trsLogUploadLocation
    , trsTempStoragePrefix
    , trsLogToSerialconsole
    , trsParallelWorkerSettings
    , trsLanguageHint

    -- * EnvironmentSdkPipelineOptions
    , EnvironmentSdkPipelineOptions
    , environmentSdkPipelineOptions
    , espoAddtional

    -- * LeaseWorkItemRequest
    , LeaseWorkItemRequest
    , leaseWorkItemRequest
    , lwirWorkItemTypes
    , lwirCurrentWorkerTime
    , lwirWorkerCapabilities
    , lwirRequestedLeaseDuration
    , lwirWorkerId

    -- * SourceOperationResponse
    , SourceOperationResponse
    , sourceOperationResponse
    , sorSplit
    , sorGetMetadata

    -- * TopologyConfigUserStageToComputationNameMap
    , TopologyConfigUserStageToComputationNameMap
    , topologyConfigUserStageToComputationNameMap
    , tcustcnmAddtional

    -- * ShellTask
    , ShellTask
    , shellTask
    , stCommand
    , stExitCode

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * StepProperties
    , StepProperties
    , stepProperties
    , spAddtional

    -- * TopologyConfig
    , TopologyConfig
    , topologyConfig
    , tcDataDiskAssignments
    , tcUserStageToComputationNameMap
    , tcComputations

    -- * WorkerSettings
    , WorkerSettings
    , workerSettings
    , wsServicePath
    , wsBaseURL
    , wsShuffleServicePath
    , wsTempStoragePrefix
    , wsReportingEnabled
    , wsWorkerId

    -- * WorkItemServiceStateHarnessData
    , WorkItemServiceStateHarnessData
    , workItemServiceStateHarnessData
    , wisshdAddtional

    -- * DataDiskAssignment
    , DataDiskAssignment
    , dataDiskAssignment
    , ddaVMInstance
    , ddaDataDisks

    -- * WorkItemServiceState
    , WorkItemServiceState
    , workItemServiceState
    , wissNextReportIndex
    , wissReportStatusInterval
    , wissHarnessData
    , wissSuggestedStopPoint
    , wissSuggestedStopPosition
    , wissLeaseExpireTime

    -- * StreamingSetupTask
    , StreamingSetupTask
    , streamingSetupTask
    , sstStreamingComputationTopology
    , sstReceiveWorkPort
    , sstWorkerHarnessPort

    -- * PartialGroupByKeyInstructionInputElementCodec
    , PartialGroupByKeyInstructionInputElementCodec
    , partialGroupByKeyInstructionInputElementCodec
    , pgbkiiecAddtional

    -- * MapTask
    , MapTask
    , mapTask
    , mtInstructions
    , mtSystemName
    , mtStageName

    -- * MountedDataDisk
    , MountedDataDisk
    , mountedDataDisk
    , mddDataDisk

    -- * SinkCodec
    , SinkCodec
    , sinkCodec
    , scAddtional

    -- * ParDoInstructionUserFn
    , ParDoInstructionUserFn
    , parDoInstructionUserFn
    , pdiufAddtional

    -- * InstructionOutputCodec
    , InstructionOutputCodec
    , instructionOutputCodec
    , iocAddtional

    -- * StreamLocation
    , StreamLocation
    , streamLocation
    , slStreamingStageLocation
    , slSideInputLocation
    , slCustomSourceLocation
    , slPubsubLocation

    -- * WorkerPoolPoolArgs
    , WorkerPoolPoolArgs
    , workerPoolPoolArgs
    , wppaAddtional

    -- * StreamingSideInputLocation
    , StreamingSideInputLocation
    , streamingSideInputLocation
    , ssilTag
    , ssilStateFamily

    -- * StreamingComputationTask
    , StreamingComputationTask
    , streamingComputationTask
    , sctTaskType
    , sctDataDisks
    , sctComputationRanges

    -- * JobMessage
    , JobMessage
    , jobMessage
    , jmTime
    , jmMessageText
    , jmMessageImportance
    , jmId

    -- * SeqMapTaskOutputInfo
    , SeqMapTaskOutputInfo
    , seqMapTaskOutputInfo
    , smtoiSink
    , smtoiTag

    -- * SourceGetMetadataRequest
    , SourceGetMetadataRequest
    , sourceGetMetadataRequest
    , sgmrSource

    -- * SeqMapTaskUserFn
    , SeqMapTaskUserFn
    , seqMapTaskUserFn
    , smtufAddtional

    -- * PartialGroupByKeyInstructionValueCombiningFn
    , PartialGroupByKeyInstructionValueCombiningFn
    , partialGroupByKeyInstructionValueCombiningFn
    , pgbkivcfAddtional

    -- * Job
    , Job
    , job
    , jRequestedState
    , jEnvironment
    , jClientRequestId
    , jCurrentState
    , jReplacedByJobId
    , jSteps
    , jExecutionInfo
    , jName
    , jTransformNameMApping
    , jId
    , jProjectId
    , jType
    , jCurrentStateTime
    , jReplaceJobId
    , jCreateTime

    -- * ReadInstruction
    , ReadInstruction
    , readInstruction
    , riSource

    -- * SinkSpec
    , SinkSpec
    , sinkSpec
    , sAddtional

    -- * WorkerPool
    , WorkerPool
    , workerPool
    , wpAutoscalingSettings
    , wpDiskSizeGb
    , wpKind
    , wpTaskrunnerSettings
    , wpNumWorkers
    , wpNetwork
    , wpZone
    , wpPackages
    , wpOnHostMaintenance
    , wpDiskSourceImage
    , wpMachineType
    , wpMetadata
    , wpDiskType
    , wpTeardownPolicy
    , wpDefaultPackageSet
    , wpPoolArgs
    , wpDataDisks

    -- * Step
    , Step
    , step
    , sKind
    , sName
    , sProperties

    -- * Package
    , Package
    , package
    , pLocation
    , pName

    -- * DynamicSourceSplit
    , DynamicSourceSplit
    , dynamicSourceSplit
    , dssResidual
    , dssPrimary

    -- * ReportWorkItemStatusResponse
    , ReportWorkItemStatusResponse
    , reportWorkItemStatusResponse
    , rwisrWorkItemServiceStates

    -- * SourceFork
    , SourceFork
    , sourceFork
    , sfResidual
    , sfPrimarySource
    , sfPrimary
    , sfResidualSource

    -- * StreamingComputationRanges
    , StreamingComputationRanges
    , streamingComputationRanges
    , scrRangeAssignments
    , scrComputationId

    -- * ListJobsResponse
    , ListJobsResponse
    , listJobsResponse
    , ljrNextPageToken
    , ljrJobs

    -- * Source
    , Source
    , source
    , souDoesNotNeedSplitting
    , souBaseSpecs
    , souCodec
    , souSpec
    , souMetadata

    -- * ApproximateProgress
    , ApproximateProgress
    , approximateProgress
    , apRemainingTime
    , apPercentComplete
    , apPosition

    -- * KeyRangeLocation
    , KeyRangeLocation
    , keyRangeLocation
    , krlPersistentDirectory
    , krlDataDisk
    , krlStart
    , krlDeliveryEndpoint
    , krlEnd

    -- * MultiOutputInfo
    , MultiOutputInfo
    , multiOutputInfo
    , moiTag

    -- * PartialGroupByKeyInstruction
    , PartialGroupByKeyInstruction
    , partialGroupByKeyInstruction
    , pgbkiValueCombiningFn
    , pgbkiInput
    , pgbkiInputElementCodec

    -- * ParDoInstruction
    , ParDoInstruction
    , parDoInstruction
    , pdiNumOutputs
    , pdiMultiOutputInfos
    , pdiSideInputs
    , pdiInput
    , pdiUserFn

    -- * CustomSourceLocation
    , CustomSourceLocation
    , customSourceLocation
    , cslStateful

    -- * SourceBaseSpecsItem
    , SourceBaseSpecsItem
    , sourceBaseSpecsItem
    , sbsiAddtional

    -- * ParallelInstruction
    , ParallelInstruction
    , parallelInstruction
    , piRead
    , piWrite
    , piParDo
    , piPartialGroupByKey
    , piOutputs
    , piName
    , piSystemName
    , piFlatten

    -- * SideInputInfoKind
    , SideInputInfoKind
    , sideInputInfoKind
    , siikAddtional

    -- * SourceSplitShard
    , SourceSplitShard
    , sourceSplitShard
    , sssDerivationMode
    , sssSource

    -- * SideInputInfo
    , SideInputInfo
    , sideInputInfo
    , siiTag
    , siiKind
    , siiSources

    -- * JobExecutionInfo
    , JobExecutionInfo
    , jobExecutionInfo
    , jeiStages

    -- * SourceCodec
    , SourceCodec
    , sourceCodec
    , souAddtional

    -- * StateFamilyConfig
    , StateFamilyConfig
    , stateFamilyConfig
    , sfcIsRead
    , sfcStateFamily

    -- * KeyRangeDataDiskAssignment
    , KeyRangeDataDiskAssignment
    , keyRangeDataDiskAssignment
    , krddaDataDisk
    , krddaStart
    , krddaEnd

    -- * SourceSplitRequest
    , SourceSplitRequest
    , sourceSplitRequest
    , ssrSource
    , ssrOptions

    -- * ListJobMessagesResponse
    , ListJobMessagesResponse
    , listJobMessagesResponse
    , ljmrJobMessages
    , ljmrNextPageToken

    -- * PubsubLocation
    , PubsubLocation
    , pubsubLocation
    , plTrackingSubscription
    , plDropLateData
    , plTimestampLabel
    , plIdLabel
    , plTopic
    , plSubscription

    -- * InstructionInput
    , InstructionInput
    , instructionInput
    , iiProducerInstructionIndex
    , iiOutputNum

    -- * SeqMapTask
    , SeqMapTask
    , seqMapTask
    , smtInputs
    , smtName
    , smtOutputInfos
    , smtSystemName
    , smtStageName
    , smtUserFn

    -- * SourceOperationRequest
    , SourceOperationRequest
    , sourceOperationRequest
    , sSplit
    , sGetMetadata

    -- * LeaseWorkItemResponse
    , LeaseWorkItemResponse
    , leaseWorkItemResponse
    , lwirWorkItems

    -- * Position
    , Position
    , position
    , pByteOffSet
    , pConcatPosition
    , pRecordIndex
    , pShufflePosition
    , pKey
    , pEnd
    ) where

import           Network.Google.Dataflow.Types.Product
import           Network.Google.Dataflow.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1b3' of the Google Dataflow API. This contains the host and root path used as a starting point for constructing service requests.
dataflowService :: Service
dataflowService
  = defaultService (ServiceId "dataflow:v1b3")
      "dataflow.googleapis.com"

-- | View your email address
userinfoEmailScope :: Proxy '["https://www.googleapis.com/auth/userinfo.email"]
userinfoEmailScope = Proxy;

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
