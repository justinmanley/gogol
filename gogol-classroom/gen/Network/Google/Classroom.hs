{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Classroom
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Google Classroom API
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference>
module Network.Google.Classroom
    (
    -- * Service Configuration
      classroomService

    -- * OAuth Scopes
    , classroomRostersReadonlyScope
    , classroomCoursesScope
    , classroomProfileEmailsScope
    , classroomProfilePhotosScope
    , classroomRostersScope
    , classroomCoursesReadonlyScope

    -- * API Declaration
    , ClassroomAPI

    -- * Resources

    -- ** classroom.courses.aliases.create
    , module Network.Google.Resource.Classroom.Courses.Aliases.Create

    -- ** classroom.courses.aliases.delete
    , module Network.Google.Resource.Classroom.Courses.Aliases.Delete

    -- ** classroom.courses.aliases.list
    , module Network.Google.Resource.Classroom.Courses.Aliases.List

    -- ** classroom.courses.create
    , module Network.Google.Resource.Classroom.Courses.Create

    -- ** classroom.courses.delete
    , module Network.Google.Resource.Classroom.Courses.Delete

    -- ** classroom.courses.get
    , module Network.Google.Resource.Classroom.Courses.Get

    -- ** classroom.courses.list
    , module Network.Google.Resource.Classroom.Courses.List

    -- ** classroom.courses.patch
    , module Network.Google.Resource.Classroom.Courses.Patch

    -- ** classroom.courses.students.create
    , module Network.Google.Resource.Classroom.Courses.Students.Create

    -- ** classroom.courses.students.delete
    , module Network.Google.Resource.Classroom.Courses.Students.Delete

    -- ** classroom.courses.students.get
    , module Network.Google.Resource.Classroom.Courses.Students.Get

    -- ** classroom.courses.students.list
    , module Network.Google.Resource.Classroom.Courses.Students.List

    -- ** classroom.courses.teachers.create
    , module Network.Google.Resource.Classroom.Courses.Teachers.Create

    -- ** classroom.courses.teachers.delete
    , module Network.Google.Resource.Classroom.Courses.Teachers.Delete

    -- ** classroom.courses.teachers.get
    , module Network.Google.Resource.Classroom.Courses.Teachers.Get

    -- ** classroom.courses.teachers.list
    , module Network.Google.Resource.Classroom.Courses.Teachers.List

    -- ** classroom.courses.update
    , module Network.Google.Resource.Classroom.Courses.Update

    -- ** classroom.invitations.accept
    , module Network.Google.Resource.Classroom.Invitations.Accept

    -- ** classroom.invitations.create
    , module Network.Google.Resource.Classroom.Invitations.Create

    -- ** classroom.invitations.delete
    , module Network.Google.Resource.Classroom.Invitations.Delete

    -- ** classroom.invitations.get
    , module Network.Google.Resource.Classroom.Invitations.Get

    -- ** classroom.invitations.list
    , module Network.Google.Resource.Classroom.Invitations.List

    -- ** classroom.userProfiles.get
    , module Network.Google.Resource.Classroom.UserProFiles.Get

    -- * Types

    -- ** ListCourseAliasesResponse
    , ListCourseAliasesResponse
    , listCourseAliasesResponse
    , lcarNextPageToken
    , lcarAliases

    -- ** Empty
    , Empty
    , empty

    -- ** GlobalPermission
    , GlobalPermission
    , globalPermission
    , gpPermission

    -- ** ListInvitationsResponse
    , ListInvitationsResponse
    , listInvitationsResponse
    , lirNextPageToken
    , lirInvitations

    -- ** Invitation
    , Invitation
    , invitation
    , iCourseId
    , iUserId
    , iRole
    , iId

    -- ** Teacher
    , Teacher
    , teacher
    , tCourseId
    , tProFile
    , tUserId

    -- ** Name
    , Name
    , name
    , nGivenName
    , nFullName
    , nFamilyName

    -- ** ListCoursesResponse
    , ListCoursesResponse
    , listCoursesResponse
    , lcrNextPageToken
    , lcrCourses

    -- ** UserProFile
    , UserProFile
    , userProFile
    , upfPhotoURL
    , upfName
    , upfEmailAddress
    , upfId
    , upfPermissions

    -- ** Course
    , Course
    , course
    , cCreationTime
    , cRoom
    , cCourseState
    , cEnrollmentCode
    , cUpdateTime
    , cOwnerId
    , cName
    , cId
    , cAlternateLink
    , cDescription
    , cDescriptionHeading
    , cSection

    -- ** ListStudentsResponse
    , ListStudentsResponse
    , listStudentsResponse
    , lsrNextPageToken
    , lsrStudents

    -- ** CourseAlias
    , CourseAlias
    , courseAlias
    , caAlias

    -- ** ListTeachersResponse
    , ListTeachersResponse
    , listTeachersResponse
    , ltrNextPageToken
    , ltrTeachers

    -- ** Student
    , Student
    , student
    , sCourseId
    , sProFile
    , sUserId
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Classroom.Courses.Aliases.Create
import           Network.Google.Resource.Classroom.Courses.Aliases.Delete
import           Network.Google.Resource.Classroom.Courses.Aliases.List
import           Network.Google.Resource.Classroom.Courses.Create
import           Network.Google.Resource.Classroom.Courses.Delete
import           Network.Google.Resource.Classroom.Courses.Get
import           Network.Google.Resource.Classroom.Courses.List
import           Network.Google.Resource.Classroom.Courses.Patch
import           Network.Google.Resource.Classroom.Courses.Students.Create
import           Network.Google.Resource.Classroom.Courses.Students.Delete
import           Network.Google.Resource.Classroom.Courses.Students.Get
import           Network.Google.Resource.Classroom.Courses.Students.List
import           Network.Google.Resource.Classroom.Courses.Teachers.Create
import           Network.Google.Resource.Classroom.Courses.Teachers.Delete
import           Network.Google.Resource.Classroom.Courses.Teachers.Get
import           Network.Google.Resource.Classroom.Courses.Teachers.List
import           Network.Google.Resource.Classroom.Courses.Update
import           Network.Google.Resource.Classroom.Invitations.Accept
import           Network.Google.Resource.Classroom.Invitations.Create
import           Network.Google.Resource.Classroom.Invitations.Delete
import           Network.Google.Resource.Classroom.Invitations.Get
import           Network.Google.Resource.Classroom.Invitations.List
import           Network.Google.Resource.Classroom.UserProFiles.Get

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Classroom API service.
type ClassroomAPI =
     InvitationsListResource :<|>
       InvitationsAcceptResource
       :<|> InvitationsGetResource
       :<|> InvitationsCreateResource
       :<|> InvitationsDeleteResource
       :<|> CoursesTeachersListResource
       :<|> CoursesTeachersGetResource
       :<|> CoursesTeachersCreateResource
       :<|> CoursesTeachersDeleteResource
       :<|> CoursesAliasesListResource
       :<|> CoursesAliasesCreateResource
       :<|> CoursesAliasesDeleteResource
       :<|> CoursesStudentsListResource
       :<|> CoursesStudentsGetResource
       :<|> CoursesStudentsCreateResource
       :<|> CoursesStudentsDeleteResource
       :<|> CoursesListResource
       :<|> CoursesPatchResource
       :<|> CoursesGetResource
       :<|> CoursesCreateResource
       :<|> CoursesDeleteResource
       :<|> CoursesUpdateResource
       :<|> UserProFilesGetResource
