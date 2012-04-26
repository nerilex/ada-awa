-----------------------------------------------------------------------
--  AWA.Users.Models -- AWA.Users.Models
-----------------------------------------------------------------------
--  File generated by ada-gen DO NOT MODIFY
--  Template used: templates/model/package-spec.xhtml
--  Ada Generator: https://ada-gen.googlecode.com/svn/trunk Revision 305
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
pragma Warnings (Off, "unit * is not referenced");
with ADO.Sessions;
with ADO.Objects;
with ADO.Statements;
with ADO.SQL;
with ADO.Schemas;
with Ada.Calendar;
with Ada.Containers.Vectors;
with Ada.Strings.Unbounded;
with Util.Beans.Objects;
with Util.Beans.Basic.Lists;
pragma Warnings (On, "unit * is not referenced");
package AWA.Users.Models is
   --  --------------------
   --  Email address
   --  --------------------
   --  Create an object key for Email.
   function Email_Key (Id : in ADO.Identifier) return ADO.Objects.Object_Key;
   --  Create an object key for Email from a string.
   --  Raises Constraint_Error if the string cannot be converted into the object key.
   function Email_Key (Id : in String) return ADO.Objects.Object_Key;

   type Email_Ref is new ADO.Objects.Object_Ref with null record;

   Null_Email : constant Email_Ref;
   function "=" (Left, Right : Email_Ref'Class) return Boolean;

   --  Set the email id
   procedure Set_Id (Object : in out Email_Ref;
                     Value  : in ADO.Identifier);

   --  Get the email id
   function Get_Id (Object : in Email_Ref)
                 return ADO.Identifier;
   --  Get the email version.
   function Get_Version (Object : in Email_Ref)
                 return Integer;

   --  Set the email address
   procedure Set_Email (Object : in out Email_Ref;
                        Value  : in Ada.Strings.Unbounded.Unbounded_String);
   procedure Set_Email (Object : in out Email_Ref;
                        Value : in String);

   --  Get the email address
   function Get_Email (Object : in Email_Ref)
                 return Ada.Strings.Unbounded.Unbounded_String;
   function Get_Email (Object : in Email_Ref)
                 return String;

   --  Set the user identifier
   procedure Set_User_Id (Object : in out Email_Ref;
                          Value  : in ADO.Identifier);

   --  Get the user identifier
   function Get_User_Id (Object : in Email_Ref)
                 return ADO.Identifier;

   --  Load the entity identified by 'Id'.
   --  Raises the NOT_FOUND exception if it does not exist.
   procedure Load (Object  : in out Email_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Id      : in ADO.Identifier);

   --  Load the entity identified by 'Id'.
   --  Returns True in <b>Found</b> if the object was found and False if it does not exist.
   procedure Load (Object  : in out Email_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Id      : in ADO.Identifier;
                   Found   : out Boolean);

   --  Find and load the entity.
   overriding
   procedure Find (Object  : in out Email_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class;
                   Found   : out Boolean);

   --  Save the entity.  If the entity does not have an identifier, an identifier is allocated
   --  and it is inserted in the table.  Otherwise, only data fields which have been changed
   --  are updated.
   overriding
   procedure Save (Object  : in out Email_Ref;
                   Session : in out ADO.Sessions.Master_Session'Class);

   --  Delete the entity.
   overriding
   procedure Delete (Object  : in out Email_Ref;
                     Session : in out ADO.Sessions.Master_Session'Class);

   overriding
   function Get_Value (Item : in Email_Ref;
                       Name : in String) return Util.Beans.Objects.Object;

   --  Table definition
   EMAIL_TABLE : aliased constant ADO.Schemas.Class_Mapping;

   --  Internal method to allocate the Object_Record instance
   overriding
   procedure Allocate (Object : in out Email_Ref);

   --  Copy of the object.
   procedure Copy (Object : in Email_Ref;
                   Into   : in out Email_Ref);

   package Email_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Natural,
                                  Element_Type => Email_Ref,
                                  "="          => "=");
   subtype Email_Vector is Email_Vectors.Vector;

   procedure List (Object  : in out Email_Vector;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class);
   --  --------------------
   --  Record representing a user
   --  --------------------
   --  Create an object key for User.
   function User_Key (Id : in ADO.Identifier) return ADO.Objects.Object_Key;
   --  Create an object key for User from a string.
   --  Raises Constraint_Error if the string cannot be converted into the object key.
   function User_Key (Id : in String) return ADO.Objects.Object_Key;

   type User_Ref is new ADO.Objects.Object_Ref with null record;

   Null_User : constant User_Ref;
   function "=" (Left, Right : User_Ref'Class) return Boolean;

   --  Set the user id
   procedure Set_Id (Object : in out User_Ref;
                     Value  : in ADO.Identifier);

   --  Get the user id
   function Get_Id (Object : in User_Ref)
                 return ADO.Identifier;
   --  Get the user version.
   function Get_Version (Object : in User_Ref)
                 return Integer;

   --  Set the open id
   procedure Set_Open_Id (Object : in out User_Ref;
                          Value  : in Ada.Strings.Unbounded.Unbounded_String);
   procedure Set_Open_Id (Object : in out User_Ref;
                          Value : in String);

   --  Get the open id
   function Get_Open_Id (Object : in User_Ref)
                 return Ada.Strings.Unbounded.Unbounded_String;
   function Get_Open_Id (Object : in User_Ref)
                 return String;

   --  Set the user name
   procedure Set_Name (Object : in out User_Ref;
                       Value  : in Ada.Strings.Unbounded.Unbounded_String);
   procedure Set_Name (Object : in out User_Ref;
                       Value : in String);

   --  Get the user name
   function Get_Name (Object : in User_Ref)
                 return Ada.Strings.Unbounded.Unbounded_String;
   function Get_Name (Object : in User_Ref)
                 return String;

   --  Set the user first name
   procedure Set_First_Name (Object : in out User_Ref;
                             Value  : in Ada.Strings.Unbounded.Unbounded_String);
   procedure Set_First_Name (Object : in out User_Ref;
                             Value : in String);

   --  Get the user first name
   function Get_First_Name (Object : in User_Ref)
                 return Ada.Strings.Unbounded.Unbounded_String;
   function Get_First_Name (Object : in User_Ref)
                 return String;

   --  Set the user last name
   procedure Set_Last_Name (Object : in out User_Ref;
                            Value  : in Ada.Strings.Unbounded.Unbounded_String);
   procedure Set_Last_Name (Object : in out User_Ref;
                            Value : in String);

   --  Get the user last name
   function Get_Last_Name (Object : in User_Ref)
                 return Ada.Strings.Unbounded.Unbounded_String;
   function Get_Last_Name (Object : in User_Ref)
                 return String;

   --  Set the user last name
   procedure Set_Password (Object : in out User_Ref;
                           Value  : in Ada.Strings.Unbounded.Unbounded_String);
   procedure Set_Password (Object : in out User_Ref;
                           Value : in String);

   --  Get the user last name
   function Get_Password (Object : in User_Ref)
                 return Ada.Strings.Unbounded.Unbounded_String;
   function Get_Password (Object : in User_Ref)
                 return String;

   --  Set the user country
   procedure Set_Country (Object : in out User_Ref;
                          Value  : in Ada.Strings.Unbounded.Unbounded_String);
   procedure Set_Country (Object : in out User_Ref;
                          Value : in String);

   --  Get the user country
   function Get_Country (Object : in User_Ref)
                 return Ada.Strings.Unbounded.Unbounded_String;
   function Get_Country (Object : in User_Ref)
                 return String;

   --  Set the user email address
   procedure Set_Email (Object : in out User_Ref;
                        Value  : in Email_Ref'Class);

   --  Get the user email address
   function Get_Email (Object : in User_Ref)
                 return Email_Ref'Class;

   --  Load the entity identified by 'Id'.
   --  Raises the NOT_FOUND exception if it does not exist.
   procedure Load (Object  : in out User_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Id      : in ADO.Identifier);

   --  Load the entity identified by 'Id'.
   --  Returns True in <b>Found</b> if the object was found and False if it does not exist.
   procedure Load (Object  : in out User_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Id      : in ADO.Identifier;
                   Found   : out Boolean);

   --  Find and load the entity.
   overriding
   procedure Find (Object  : in out User_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class;
                   Found   : out Boolean);

   --  Save the entity.  If the entity does not have an identifier, an identifier is allocated
   --  and it is inserted in the table.  Otherwise, only data fields which have been changed
   --  are updated.
   overriding
   procedure Save (Object  : in out User_Ref;
                   Session : in out ADO.Sessions.Master_Session'Class);

   --  Delete the entity.
   overriding
   procedure Delete (Object  : in out User_Ref;
                     Session : in out ADO.Sessions.Master_Session'Class);

   overriding
   function Get_Value (Item : in User_Ref;
                       Name : in String) return Util.Beans.Objects.Object;

   --  Table definition
   USER_TABLE : aliased constant ADO.Schemas.Class_Mapping;

   --  Internal method to allocate the Object_Record instance
   overriding
   procedure Allocate (Object : in out User_Ref);

   --  Copy of the object.
   procedure Copy (Object : in User_Ref;
                   Into   : in out User_Ref);

   package User_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Natural,
                                  Element_Type => User_Ref,
                                  "="          => "=");
   subtype User_Vector is User_Vectors.Vector;

   procedure List (Object  : in out User_Vector;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class);
   --  --------------------
   --  Defines an access key
   --  --------------------
   --  Create an object key for Access_Key.
   function Access_Key_Key (Id : in ADO.Identifier) return ADO.Objects.Object_Key;
   --  Create an object key for Access_Key from a string.
   --  Raises Constraint_Error if the string cannot be converted into the object key.
   function Access_Key_Key (Id : in String) return ADO.Objects.Object_Key;

   type Access_Key_Ref is new ADO.Objects.Object_Ref with null record;

   Null_Access_Key : constant Access_Key_Ref;
   function "=" (Left, Right : Access_Key_Ref'Class) return Boolean;

   --  Set the email id
   procedure Set_Id (Object : in out Access_Key_Ref;
                     Value  : in ADO.Identifier);

   --  Get the email id
   function Get_Id (Object : in Access_Key_Ref)
                 return ADO.Identifier;
   --  Get the access key version.
   function Get_Version (Object : in Access_Key_Ref)
                 return Integer;

   --  Set the access key
   procedure Set_Access_Key (Object : in out Access_Key_Ref;
                             Value  : in Ada.Strings.Unbounded.Unbounded_String);
   procedure Set_Access_Key (Object : in out Access_Key_Ref;
                             Value : in String);

   --  Get the access key
   function Get_Access_Key (Object : in Access_Key_Ref)
                 return Ada.Strings.Unbounded.Unbounded_String;
   function Get_Access_Key (Object : in Access_Key_Ref)
                 return String;

   --  Set the user identifier
   procedure Set_User_Id (Object : in out Access_Key_Ref;
                          Value  : in ADO.Identifier);

   --  Get the user identifier
   function Get_User_Id (Object : in Access_Key_Ref)
                 return ADO.Identifier;

   --  Load the entity identified by 'Id'.
   --  Raises the NOT_FOUND exception if it does not exist.
   procedure Load (Object  : in out Access_Key_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Id      : in ADO.Identifier);

   --  Load the entity identified by 'Id'.
   --  Returns True in <b>Found</b> if the object was found and False if it does not exist.
   procedure Load (Object  : in out Access_Key_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Id      : in ADO.Identifier;
                   Found   : out Boolean);

   --  Find and load the entity.
   overriding
   procedure Find (Object  : in out Access_Key_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class;
                   Found   : out Boolean);

   --  Save the entity.  If the entity does not have an identifier, an identifier is allocated
   --  and it is inserted in the table.  Otherwise, only data fields which have been changed
   --  are updated.
   overriding
   procedure Save (Object  : in out Access_Key_Ref;
                   Session : in out ADO.Sessions.Master_Session'Class);

   --  Delete the entity.
   overriding
   procedure Delete (Object  : in out Access_Key_Ref;
                     Session : in out ADO.Sessions.Master_Session'Class);

   overriding
   function Get_Value (Item : in Access_Key_Ref;
                       Name : in String) return Util.Beans.Objects.Object;

   --  Table definition
   ACCESS_KEY_TABLE : aliased constant ADO.Schemas.Class_Mapping;

   --  Internal method to allocate the Object_Record instance
   overriding
   procedure Allocate (Object : in out Access_Key_Ref);

   --  Copy of the object.
   procedure Copy (Object : in Access_Key_Ref;
                   Into   : in out Access_Key_Ref);

   package Access_Key_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Natural,
                                  Element_Type => Access_Key_Ref,
                                  "="          => "=");
   subtype Access_Key_Vector is Access_Key_Vectors.Vector;

   procedure List (Object  : in out Access_Key_Vector;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class);
   --  --------------------
   --  Defines an user session
   --  --------------------
   --  Create an object key for Session.
   function Session_Key (Id : in ADO.Identifier) return ADO.Objects.Object_Key;
   --  Create an object key for Session from a string.
   --  Raises Constraint_Error if the string cannot be converted into the object key.
   function Session_Key (Id : in String) return ADO.Objects.Object_Key;

   type Session_Ref is new ADO.Objects.Object_Ref with null record;

   Null_Session : constant Session_Ref;
   function "=" (Left, Right : Session_Ref'Class) return Boolean;

   --  Set the user session id
   procedure Set_Id (Object : in out Session_Ref;
                     Value  : in ADO.Identifier);

   --  Get the user session id
   function Get_Id (Object : in Session_Ref)
                 return ADO.Identifier;
   --  Get the user session version.
   function Get_Version (Object : in Session_Ref)
                 return Integer;

   --  Set the session start date
   procedure Set_Start_Date (Object : in out Session_Ref;
                             Value  : in ADO.Nullable_Time);

   --  Get the session start date
   function Get_Start_Date (Object : in Session_Ref)
                 return ADO.Nullable_Time;

   --  Set the session start date
   procedure Set_End_Date (Object : in out Session_Ref;
                           Value  : in ADO.Nullable_Time);

   --  Get the session start date
   function Get_End_Date (Object : in Session_Ref)
                 return ADO.Nullable_Time;

   --  Set the IP address
   procedure Set_Ip_Address (Object : in out Session_Ref;
                             Value  : in Ada.Strings.Unbounded.Unbounded_String);
   procedure Set_Ip_Address (Object : in out Session_Ref;
                             Value : in String);

   --  Get the IP address
   function Get_Ip_Address (Object : in Session_Ref)
                 return Ada.Strings.Unbounded.Unbounded_String;
   function Get_Ip_Address (Object : in Session_Ref)
                 return String;

   --  Set the user identifier
   procedure Set_User_Id (Object : in out Session_Ref;
                          Value  : in ADO.Identifier);

   --  Get the user identifier
   function Get_User_Id (Object : in Session_Ref)
                 return ADO.Identifier;

   --  Set the session type
   procedure Set_Session_Type (Object : in out Session_Ref;
                               Value  : in Integer);

   --  Get the session type
   function Get_Session_Type (Object : in Session_Ref)
                 return Integer;

   --  Set the server instance identifier that created this session
   procedure Set_Server_Id (Object : in out Session_Ref;
                            Value  : in Integer);

   --  Get the server instance identifier that created this session
   function Get_Server_Id (Object : in Session_Ref)
                 return Integer;

   --  Set the authentication session identifier
   procedure Set_Auth (Object : in out Session_Ref;
                       Value  : in Session_Ref'Class);

   --  Get the authentication session identifier
   function Get_Auth (Object : in Session_Ref)
                 return Session_Ref'Class;

   --  Load the entity identified by 'Id'.
   --  Raises the NOT_FOUND exception if it does not exist.
   procedure Load (Object  : in out Session_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Id      : in ADO.Identifier);

   --  Load the entity identified by 'Id'.
   --  Returns True in <b>Found</b> if the object was found and False if it does not exist.
   procedure Load (Object  : in out Session_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Id      : in ADO.Identifier;
                   Found   : out Boolean);

   --  Find and load the entity.
   overriding
   procedure Find (Object  : in out Session_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class;
                   Found   : out Boolean);

   --  Save the entity.  If the entity does not have an identifier, an identifier is allocated
   --  and it is inserted in the table.  Otherwise, only data fields which have been changed
   --  are updated.
   overriding
   procedure Save (Object  : in out Session_Ref;
                   Session : in out ADO.Sessions.Master_Session'Class);

   --  Delete the entity.
   overriding
   procedure Delete (Object  : in out Session_Ref;
                     Session : in out ADO.Sessions.Master_Session'Class);

   overriding
   function Get_Value (Item : in Session_Ref;
                       Name : in String) return Util.Beans.Objects.Object;

   --  Table definition
   SESSION_TABLE : aliased constant ADO.Schemas.Class_Mapping;

   --  Internal method to allocate the Object_Record instance
   overriding
   procedure Allocate (Object : in out Session_Ref);

   --  Copy of the object.
   procedure Copy (Object : in Session_Ref;
                   Into   : in out Session_Ref);

   package Session_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Natural,
                                  Element_Type => Session_Ref,
                                  "="          => "=");
   subtype Session_Vector is Session_Vectors.Vector;

   procedure List (Object  : in out Session_Vector;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class);


private
   EMAIL_NAME : aliased constant String := "email";
   COL_0_1_NAME : aliased constant String := "id";
   COL_1_1_NAME : aliased constant String := "version";
   COL_2_1_NAME : aliased constant String := "email";
   COL_3_1_NAME : aliased constant String := "user_id";
   EMAIL_TABLE : aliased constant ADO.Schemas.Class_Mapping :=
     (Count => 4,
      Table => EMAIL_NAME'Access,
      Members => (
         COL_0_1_NAME'Access,
         COL_1_1_NAME'Access,
         COL_2_1_NAME'Access,
         COL_3_1_NAME'Access
)
     );
   Null_Email : constant Email_Ref
      := Email_Ref'(ADO.Objects.Object_Ref with others => <>);
   type Email_Impl is
      new ADO.Objects.Object_Record (Key_Type => ADO.Objects.KEY_INTEGER,
                                     Of_Class => EMAIL_TABLE'Access)
   with record
       Version : Integer;
       Email : Ada.Strings.Unbounded.Unbounded_String;
       User_Id : ADO.Identifier;
   end record;
   type Email_Access is access all Email_Impl;
   overriding
   procedure Destroy (Object : access Email_Impl);
   overriding
   procedure Find (Object  : in out Email_Impl;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class;
                   Found   : out Boolean);
   overriding
   procedure Load (Object  : in out Email_Impl;
                   Session : in out ADO.Sessions.Session'Class);
   procedure Load (Object  : in out Email_Impl;
                   Stmt    : in out ADO.Statements.Query_Statement'Class;
                   Session : in out ADO.Sessions.Session'Class);
   overriding
   procedure Save (Object  : in out Email_Impl;
                   Session : in out ADO.Sessions.Master_Session'Class);
   procedure Create (Object  : in out Email_Impl;
                     Session : in out ADO.Sessions.Master_Session'Class);
   overriding
   procedure Delete (Object  : in out Email_Impl;
                     Session : in out ADO.Sessions.Master_Session'Class);
   procedure Set_Field (Object : in out Email_Ref'Class;
                        Impl   : out Email_Access);
   USER_NAME : aliased constant String := "user";
   COL_0_2_NAME : aliased constant String := "id";
   COL_1_2_NAME : aliased constant String := "version";
   COL_2_2_NAME : aliased constant String := "openid";
   COL_3_2_NAME : aliased constant String := "name";
   COL_4_2_NAME : aliased constant String := "first_name";
   COL_5_2_NAME : aliased constant String := "last_name";
   COL_6_2_NAME : aliased constant String := "password";
   COL_7_2_NAME : aliased constant String := "country";
   COL_8_2_NAME : aliased constant String := "email_id";
   USER_TABLE : aliased constant ADO.Schemas.Class_Mapping :=
     (Count => 9,
      Table => USER_NAME'Access,
      Members => (
         COL_0_2_NAME'Access,
         COL_1_2_NAME'Access,
         COL_2_2_NAME'Access,
         COL_3_2_NAME'Access,
         COL_4_2_NAME'Access,
         COL_5_2_NAME'Access,
         COL_6_2_NAME'Access,
         COL_7_2_NAME'Access,
         COL_8_2_NAME'Access
)
     );
   Null_User : constant User_Ref
      := User_Ref'(ADO.Objects.Object_Ref with others => <>);
   type User_Impl is
      new ADO.Objects.Object_Record (Key_Type => ADO.Objects.KEY_INTEGER,
                                     Of_Class => USER_TABLE'Access)
   with record
       Version : Integer;
       Open_Id : Ada.Strings.Unbounded.Unbounded_String;
       Name : Ada.Strings.Unbounded.Unbounded_String;
       First_Name : Ada.Strings.Unbounded.Unbounded_String;
       Last_Name : Ada.Strings.Unbounded.Unbounded_String;
       Password : Ada.Strings.Unbounded.Unbounded_String;
       Country : Ada.Strings.Unbounded.Unbounded_String;
       Email : Email_Ref;
   end record;
   type User_Access is access all User_Impl;
   overriding
   procedure Destroy (Object : access User_Impl);
   overriding
   procedure Find (Object  : in out User_Impl;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class;
                   Found   : out Boolean);
   overriding
   procedure Load (Object  : in out User_Impl;
                   Session : in out ADO.Sessions.Session'Class);
   procedure Load (Object  : in out User_Impl;
                   Stmt    : in out ADO.Statements.Query_Statement'Class;
                   Session : in out ADO.Sessions.Session'Class);
   overriding
   procedure Save (Object  : in out User_Impl;
                   Session : in out ADO.Sessions.Master_Session'Class);
   procedure Create (Object  : in out User_Impl;
                     Session : in out ADO.Sessions.Master_Session'Class);
   overriding
   procedure Delete (Object  : in out User_Impl;
                     Session : in out ADO.Sessions.Master_Session'Class);
   procedure Set_Field (Object : in out User_Ref'Class;
                        Impl   : out User_Access);
   ACCESS_KEY_NAME : aliased constant String := "access_key";
   COL_0_3_NAME : aliased constant String := "id";
   COL_1_3_NAME : aliased constant String := "version";
   COL_2_3_NAME : aliased constant String := "access_key";
   COL_3_3_NAME : aliased constant String := "user_id";
   ACCESS_KEY_TABLE : aliased constant ADO.Schemas.Class_Mapping :=
     (Count => 4,
      Table => ACCESS_KEY_NAME'Access,
      Members => (
         COL_0_3_NAME'Access,
         COL_1_3_NAME'Access,
         COL_2_3_NAME'Access,
         COL_3_3_NAME'Access
)
     );
   Null_Access_Key : constant Access_Key_Ref
      := Access_Key_Ref'(ADO.Objects.Object_Ref with others => <>);
   type Access_Key_Impl is
      new ADO.Objects.Object_Record (Key_Type => ADO.Objects.KEY_INTEGER,
                                     Of_Class => ACCESS_KEY_TABLE'Access)
   with record
       Version : Integer;
       Access_Key : Ada.Strings.Unbounded.Unbounded_String;
       User_Id : ADO.Identifier;
   end record;
   type Access_Key_Access is access all Access_Key_Impl;
   overriding
   procedure Destroy (Object : access Access_Key_Impl);
   overriding
   procedure Find (Object  : in out Access_Key_Impl;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class;
                   Found   : out Boolean);
   overriding
   procedure Load (Object  : in out Access_Key_Impl;
                   Session : in out ADO.Sessions.Session'Class);
   procedure Load (Object  : in out Access_Key_Impl;
                   Stmt    : in out ADO.Statements.Query_Statement'Class;
                   Session : in out ADO.Sessions.Session'Class);
   overriding
   procedure Save (Object  : in out Access_Key_Impl;
                   Session : in out ADO.Sessions.Master_Session'Class);
   procedure Create (Object  : in out Access_Key_Impl;
                     Session : in out ADO.Sessions.Master_Session'Class);
   overriding
   procedure Delete (Object  : in out Access_Key_Impl;
                     Session : in out ADO.Sessions.Master_Session'Class);
   procedure Set_Field (Object : in out Access_Key_Ref'Class;
                        Impl   : out Access_Key_Access);
   SESSION_NAME : aliased constant String := "session";
   COL_0_4_NAME : aliased constant String := "id";
   COL_1_4_NAME : aliased constant String := "version";
   COL_2_4_NAME : aliased constant String := "start_date";
   COL_3_4_NAME : aliased constant String := "end_date";
   COL_4_4_NAME : aliased constant String := "ip_address";
   COL_5_4_NAME : aliased constant String := "user_id";
   COL_6_4_NAME : aliased constant String := "type";
   COL_7_4_NAME : aliased constant String := "server_id";
   COL_8_4_NAME : aliased constant String := "auth_id";
   SESSION_TABLE : aliased constant ADO.Schemas.Class_Mapping :=
     (Count => 9,
      Table => SESSION_NAME'Access,
      Members => (
         COL_0_4_NAME'Access,
         COL_1_4_NAME'Access,
         COL_2_4_NAME'Access,
         COL_3_4_NAME'Access,
         COL_4_4_NAME'Access,
         COL_5_4_NAME'Access,
         COL_6_4_NAME'Access,
         COL_7_4_NAME'Access,
         COL_8_4_NAME'Access
)
     );
   Null_Session : constant Session_Ref
      := Session_Ref'(ADO.Objects.Object_Ref with others => <>);
   type Session_Impl is
      new ADO.Objects.Object_Record (Key_Type => ADO.Objects.KEY_INTEGER,
                                     Of_Class => SESSION_TABLE'Access)
   with record
       Version : Integer;
       Start_Date : ADO.Nullable_Time;
       End_Date : ADO.Nullable_Time;
       Ip_Address : Ada.Strings.Unbounded.Unbounded_String;
       User_Id : ADO.Identifier;
       Session_Type : Integer;
       Server_Id : Integer;
       Auth : Session_Ref;
   end record;
   type Session_Access is access all Session_Impl;
   overriding
   procedure Destroy (Object : access Session_Impl);
   overriding
   procedure Find (Object  : in out Session_Impl;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class;
                   Found   : out Boolean);
   overriding
   procedure Load (Object  : in out Session_Impl;
                   Session : in out ADO.Sessions.Session'Class);
   procedure Load (Object  : in out Session_Impl;
                   Stmt    : in out ADO.Statements.Query_Statement'Class;
                   Session : in out ADO.Sessions.Session'Class);
   overriding
   procedure Save (Object  : in out Session_Impl;
                   Session : in out ADO.Sessions.Master_Session'Class);
   procedure Create (Object  : in out Session_Impl;
                     Session : in out ADO.Sessions.Master_Session'Class);
   overriding
   procedure Delete (Object  : in out Session_Impl;
                     Session : in out ADO.Sessions.Master_Session'Class);
   procedure Set_Field (Object : in out Session_Ref'Class;
                        Impl   : out Session_Access);
end AWA.Users.Models;
