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
-- Module      : Network.Google.Resource.Tasks.Tasks.Move
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves the specified task to another position in the task list. This can
-- include putting it as a child task under a new parent and\/or move it to
-- a different position among its sibling tasks.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @tasks.tasks.move@.
module Network.Google.Resource.Tasks.Tasks.Move
    (
    -- * REST Resource
      TasksMoveResource

    -- * Creating a Request
    , tasksMove
    , TasksMove

    -- * Request Lenses
    , tmParent
    , tmTaskList
    , tmTask
    , tmPrevious
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @tasks.tasks.move@ method which the
-- 'TasksMove' request conforms to.
type TasksMoveResource =
     "tasks" :>
       "v1" :>
         "lists" :>
           Capture "tasklist" Text :>
             "tasks" :>
               Capture "task" Text :>
                 "move" :>
                   QueryParam "parent" Text :>
                     QueryParam "previous" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Task

-- | Moves the specified task to another position in the task list. This can
-- include putting it as a child task under a new parent and\/or move it to
-- a different position among its sibling tasks.
--
-- /See:/ 'tasksMove' smart constructor.
data TasksMove = TasksMove
    { _tmParent   :: !(Maybe Text)
    , _tmTaskList :: !Text
    , _tmTask     :: !Text
    , _tmPrevious :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksMove' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tmParent'
--
-- * 'tmTaskList'
--
-- * 'tmTask'
--
-- * 'tmPrevious'
tasksMove
    :: Text -- ^ 'tmTaskList'
    -> Text -- ^ 'tmTask'
    -> TasksMove
tasksMove pTmTaskList_ pTmTask_ =
    TasksMove
    { _tmParent = Nothing
    , _tmTaskList = pTmTaskList_
    , _tmTask = pTmTask_
    , _tmPrevious = Nothing
    }

-- | New parent task identifier. If the task is moved to the top level, this
-- parameter is omitted. Optional.
tmParent :: Lens' TasksMove (Maybe Text)
tmParent = lens _tmParent (\ s a -> s{_tmParent = a})

-- | Task list identifier.
tmTaskList :: Lens' TasksMove Text
tmTaskList
  = lens _tmTaskList (\ s a -> s{_tmTaskList = a})

-- | Task identifier.
tmTask :: Lens' TasksMove Text
tmTask = lens _tmTask (\ s a -> s{_tmTask = a})

-- | New previous sibling task identifier. If the task is moved to the first
-- position among its siblings, this parameter is omitted. Optional.
tmPrevious :: Lens' TasksMove (Maybe Text)
tmPrevious
  = lens _tmPrevious (\ s a -> s{_tmPrevious = a})

instance GoogleRequest TasksMove where
        type Rs TasksMove = Task
        requestClient TasksMove{..}
          = go _tmTaskList _tmTask _tmParent _tmPrevious
              (Just AltJSON)
              appsTasksService
          where go
                  = buildClient (Proxy :: Proxy TasksMoveResource)
                      mempty
