-----------------------------------------------------------------------
--  awa-tags-modules-tests -- Unit tests for tags service
--  Copyright (C) 2013 Stephane Carrez
--  Written by Stephane Carrez (Stephane.Carrez@gmail.com)
--
--  Licensed under the Apache License, Version 2.0 (the "License");
--  you may not use this file except in compliance with the License.
--  You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
--  Unless required by applicable law or agreed to in writing, software
--  distributed under the License is distributed on an "AS IS" BASIS,
--  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--  See the License for the specific language governing permissions and
--  limitations under the License.
-----------------------------------------------------------------------

with Util.Tests;
with AWA.Tests;

package AWA.Tags.Modules.Tests is

   procedure Add_Tests (Suite : in Util.Tests.Access_Test_Suite);

   type Test is new AWA.Tests.Test with record
      Manager : AWA.Tags.Modules.Tag_Module_Access;
   end record;

   --  Test tag creation.
   procedure Test_Add_Tag (T : in out Test);

   --  Test tag removal.
   procedure Test_Remove_Tag (T : in out Test);

   --  Test tag creation and removal.
   procedure Test_Update_Tag (T : in out Test);

end AWA.Tags.Modules.Tests;
