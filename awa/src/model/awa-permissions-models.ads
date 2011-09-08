-----------------------------------------------------------------------
--  AWA.Permissions.Models -- AWA.Permissions.Models
-----------------------------------------------------------------------
--  File generated by ada-gen DO NOT MODIFY
--  Template used: templates/model/package-spec.xhtml
--  Ada Generator: https://ada-gen.googlecode.com/svn/trunk Revision 166
-----------------------------------------------------------------------
--  Copyright (C) 2011 Stephane Carrez
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
with ADO.Sessions;
with ADO.Objects;
with ADO.Statements;
with ADO.SQL;
with ADO.Schemas;
with ADO.Queries;
with ADO.Queries.Loaders;
with Ada.Containers.Vectors;
with Ada.Strings.Unbounded;
with Util.Beans.Objects;
package AWA.Permissions.Models is
   --  --------------------
   --  Access control
   --  --------------------
   --  Create an object key for ACL.
   function ACL_Key (Id : in ADO.Identifier) return ADO.Objects.Object_Key;
   --  Create an object key for ACL from a string.
   --  Raises Constraint_Error if the string cannot be converted into the object key.
   function ACL_Key (Id : in String) return ADO.Objects.Object_Key;

   type ACL_Ref is new ADO.Objects.Object_Ref with null record;

   Null_ACL : constant ACL_Ref;
   function "=" (Left, Right : ACL_Ref'Class) return Boolean;

   --  Set the unique ACL id
   procedure Set_Id (Object : in out Acl_Ref;
                     Value  : in ADO.Identifier);

   --  Get the unique ACL id
   function Get_Id (Object : in Acl_Ref)
                 return ADO.Identifier;

   --  Set the entity type
   procedure Set_Entity_Type (Object : in out Acl_Ref;
                              Value  : in ADO.Entity_Type);

   --  Get the entity type
   function Get_Entity_Type (Object : in Acl_Ref)
                 return ADO.Entity_Type;

   --  Set the user identifier
   procedure Set_User_Id (Object : in out Acl_Ref;
                          Value  : in ADO.Identifier);

   --  Get the user identifier
   function Get_User_Id (Object : in Acl_Ref)
                 return ADO.Identifier;

   --  Set the entity identifier
   procedure Set_Entity_Id (Object : in out Acl_Ref;
                            Value  : in ADO.Identifier);

   --  Get the entity identifier
   function Get_Entity_Id (Object : in Acl_Ref)
                 return ADO.Identifier;

   --  Set whether the entity is writeable
   procedure Set_Writeable (Object : in out Acl_Ref;
                            Value  : in Boolean);

   --  Get whether the entity is writeable
   function Get_Writeable (Object : in Acl_Ref)
                 return Boolean;

   --  Load the entity identified by 'Id'.
   --  Raises the NOT_FOUND exception if it does not exist.
   procedure Load (Object  : in out Acl_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Id      : in ADO.Identifier);

   --  Load the entity identified by 'Id'.
   --  Returns True in <b>Found</b> if the object was found and False if it does not exist.
   procedure Load (Object  : in out Acl_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Id      : in ADO.Identifier;
                   Found   : out Boolean);

   --  Find and load the entity.
   overriding
   procedure Find (Object  : in out Acl_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class;
                   Found   : out Boolean);

   --  Save the entity.  If the entity does not have an identifier, an identifier is allocated
   --  and it is inserted in the table.  Otherwise, only data fields which have been changed
   --  are updated.
   overriding
   procedure Save (Object  : in out Acl_Ref;
                   Session : in out ADO.Sessions.Master_Session'Class);

   --  Delete the entity.
   overriding
   procedure Delete (Object  : in out Acl_Ref;
                     Session : in out ADO.Sessions.Master_Session'Class);

   overriding
   function Get_Value (Item : in Acl_Ref;
                       Name : in String) return Util.Beans.Objects.Object;

   --  Table definition
   ACL_TABLE : aliased constant ADO.Schemas.Class_Mapping;

   --  Internal method to allocate the Object_Record instance
   overriding
   procedure Allocate (Object : in out Acl_Ref);

   --  Copy of the object.
   function Copy (Object : Acl_Ref) return Acl_Ref;

   package Acl_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Natural,
                                  Element_Type => Acl_Ref,
                                  "="          => "=");
   subtype Acl_Vector is Acl_Vectors.Vector;

   procedure List (Object  : in out Acl_Vector;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class);


   Query_Check_Entity_Permission : constant ADO.Queries.Query_Definition_Access;

   Query_Remove_Permission : constant ADO.Queries.Query_Definition_Access;

   Query_Remove_Entity_Permission : constant ADO.Queries.Query_Definition_Access;

   Query_Remove_User_Permission : constant ADO.Queries.Query_Definition_Access;


private
   ACL_NAME : aliased constant String := "ACL";
   COL_0_1_NAME : aliased constant String := "id";
   COL_1_1_NAME : aliased constant String := "entity_type";
   COL_2_1_NAME : aliased constant String := "user_id";
   COL_3_1_NAME : aliased constant String := "entity_id";
   COL_4_1_NAME : aliased constant String := "writeable";
   ACL_TABLE : aliased constant ADO.Schemas.Class_Mapping :=
     (Count => 5,
      Table => ACL_NAME'Access,
      Members => (
         COL_0_1_NAME'Access,
         COL_1_1_NAME'Access,
         COL_2_1_NAME'Access,
         COL_3_1_NAME'Access,
         COL_4_1_NAME'Access
)
     );
   Null_ACL : constant ACL_Ref
      := ACL_Ref'(ADO.Objects.Object_Ref with others => <>);
   type Acl_Impl is
      new ADO.Objects.Object_Record (Key_Type => ADO.Objects.KEY_INTEGER,
                                     Of_Class => ACL_TABLE'Access)
   with record
       Entity_Type : ADO.Entity_Type;
       User_Id : ADO.Identifier;
       Entity_Id : ADO.Identifier;
       Writeable : Boolean;
   end record;
   type Acl_Access is access all Acl_Impl;
   overriding
   procedure Destroy (Object : access Acl_Impl);
   overriding
   procedure Find (Object  : in out Acl_Impl;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class;
                   Found   : out Boolean);
   overriding
   procedure Load (Object  : in out Acl_Impl;
                   Session : in out ADO.Sessions.Session'Class);
   procedure Load (Object  : in out Acl_Impl;
                   Stmt    : in out ADO.Statements.Query_Statement'Class;
                   Session : in out ADO.Sessions.Session'Class);
   overriding
   procedure Save (Object  : in out Acl_Impl;
                   Session : in out ADO.Sessions.Master_Session'Class);
   procedure Create (Object  : in out Acl_Impl;
                     Session : in out ADO.Sessions.Master_Session'Class);
   overriding
   procedure Delete (Object  : in out Acl_Impl;
                     Session : in out ADO.Sessions.Master_Session'Class);
   procedure Set_Field (Object : in out Acl_Ref'Class;
                        Impl   : out Acl_Access;
                        Field  : in Positive);

   package File is
      new ADO.Queries.Loaders.File (Path => "permissions.xml",
                                    Sha1 => "9B2B599473F75F92CB5AB5045675E4CCEF926543");

   package Def_Check_Entity_Permission is
      new ADO.Queries.Loaders.Query (Name => "check-entity-permission",
                                     File => File.File'Access);
   Query_Check_Entity_Permission : constant ADO.Queries.Query_Definition_Access
   := Def_Check_Entity_Permission.Query'Access;

   package Def_Remove_Permission is
      new ADO.Queries.Loaders.Query (Name => "remove-permission",
                                     File => File.File'Access);
   Query_Remove_Permission : constant ADO.Queries.Query_Definition_Access
   := Def_Remove_Permission.Query'Access;

   package Def_Remove_Entity_Permission is
      new ADO.Queries.Loaders.Query (Name => "remove-entity-permission",
                                     File => File.File'Access);
   Query_Remove_Entity_Permission : constant ADO.Queries.Query_Definition_Access
   := Def_Remove_Entity_Permission.Query'Access;

   package Def_Remove_User_Permission is
      new ADO.Queries.Loaders.Query (Name => "remove-user-permission",
                                     File => File.File'Access);
   Query_Remove_User_Permission : constant ADO.Queries.Query_Definition_Access
   := Def_Remove_User_Permission.Query'Access;
end AWA.Permissions.Models;
