-----------------------------------------------------------------------
--  AWA.Images.Models -- AWA.Images.Models
-----------------------------------------------------------------------
--  File generated by ada-gen DO NOT MODIFY
--  Template used: templates/model/package-spec.xhtml
--  Ada Generator: https://ada-gen.googlecode.com/svn/trunk Revision 1095
-----------------------------------------------------------------------
--  Copyright (C) 2015 Stephane Carrez
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
with ADO.Queries;
with ADO.Queries.Loaders;
with Ada.Calendar;
with Ada.Containers.Vectors;
with Ada.Strings.Unbounded;
with Util.Beans.Objects;
with Util.Beans.Basic.Lists;
with AWA.Storages.Models;
pragma Warnings (On, "unit * is not referenced");
package AWA.Images.Models is
   type Image_Ref is new ADO.Objects.Object_Ref with null record;

   --  --------------------
   --  An image that was uploaded by a user in an image folder.
   --  --------------------
   --  Create an object key for Image.
   function Image_Key (Id : in ADO.Identifier) return ADO.Objects.Object_Key;
   --  Create an object key for Image from a string.
   --  Raises Constraint_Error if the string cannot be converted into the object key.
   function Image_Key (Id : in String) return ADO.Objects.Object_Key;

   Null_Image : constant Image_Ref;
   function "=" (Left, Right : Image_Ref'Class) return Boolean;

   --  Set the image identifier.
   procedure Set_Id (Object : in out Image_Ref;
                     Value  : in ADO.Identifier);

   --  Get the image identifier.
   function Get_Id (Object : in Image_Ref)
                 return ADO.Identifier;
   --  Get the image version.
   function Get_Version (Object : in Image_Ref)
                 return Integer;

   --  Set the image width.
   procedure Set_Width (Object : in out Image_Ref;
                        Value  : in Natural);

   --  Get the image width.
   function Get_Width (Object : in Image_Ref)
                 return Natural;

   --  Set the image height.
   procedure Set_Height (Object : in out Image_Ref;
                         Value  : in Natural);

   --  Get the image height.
   function Get_Height (Object : in Image_Ref)
                 return Natural;

   --  Set the image thumbnail height.
   procedure Set_Thumb_Height (Object : in out Image_Ref;
                               Value  : in Natural);

   --  Get the image thumbnail height.
   function Get_Thumb_Height (Object : in Image_Ref)
                 return Natural;

   --  Set the image thumbnail width.
   procedure Set_Thumb_Width (Object : in out Image_Ref;
                              Value  : in Natural);

   --  Get the image thumbnail width.
   function Get_Thumb_Width (Object : in Image_Ref)
                 return Natural;

   --  Set the thumbnail image to display the image is an image selector.
   procedure Set_Thumbnail (Object : in out Image_Ref;
                            Value  : in AWA.Storages.Models.Storage_Ref'Class);

   --  Get the thumbnail image to display the image is an image selector.
   function Get_Thumbnail (Object : in Image_Ref)
                 return AWA.Storages.Models.Storage_Ref'Class;

   --  Set the image storage file.
   procedure Set_Storage (Object : in out Image_Ref;
                          Value  : in AWA.Storages.Models.Storage_Ref'Class);

   --  Get the image storage file.
   function Get_Storage (Object : in Image_Ref)
                 return AWA.Storages.Models.Storage_Ref'Class;

   --  Load the entity identified by 'Id'.
   --  Raises the NOT_FOUND exception if it does not exist.
   procedure Load (Object  : in out Image_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Id      : in ADO.Identifier);

   --  Load the entity identified by 'Id'.
   --  Returns True in <b>Found</b> if the object was found and False if it does not exist.
   procedure Load (Object  : in out Image_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Id      : in ADO.Identifier;
                   Found   : out Boolean);

   --  Find and load the entity.
   overriding
   procedure Find (Object  : in out Image_Ref;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class;
                   Found   : out Boolean);

   --  Save the entity.  If the entity does not have an identifier, an identifier is allocated
   --  and it is inserted in the table.  Otherwise, only data fields which have been changed
   --  are updated.
   overriding
   procedure Save (Object  : in out Image_Ref;
                   Session : in out ADO.Sessions.Master_Session'Class);

   --  Delete the entity.
   overriding
   procedure Delete (Object  : in out Image_Ref;
                     Session : in out ADO.Sessions.Master_Session'Class);

   overriding
   function Get_Value (From : in Image_Ref;
                       Name : in String) return Util.Beans.Objects.Object;

   --  Table definition
   IMAGE_TABLE : constant ADO.Schemas.Class_Mapping_Access;

   --  Internal method to allocate the Object_Record instance
   overriding
   procedure Allocate (Object : in out Image_Ref);

   --  Copy of the object.
   procedure Copy (Object : in Image_Ref;
                   Into   : in out Image_Ref);

   package Image_Vectors is
      new Ada.Containers.Vectors (Index_Type   => Natural,
                                  Element_Type => Image_Ref,
                                  "="          => "=");
   subtype Image_Vector is Image_Vectors.Vector;

   procedure List (Object  : in out Image_Vector;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class);

   --  --------------------
   --    The list of images for a given folder.
   --  --------------------
   type Image_Info is
     new Util.Beans.Basic.Bean with  record

      --  the storage identifier which contains the image data.
      Id : ADO.Identifier;

      --  the image file name.
      Name : Ada.Strings.Unbounded.Unbounded_String;

      --  the image file creation date.
      Create_Date : Ada.Calendar.Time;

      --  the image file storage URI.
      Uri : Ada.Strings.Unbounded.Unbounded_String;

      --  the image file storage URI.
      Storage : Integer;

      --  the image file mime type.
      Mime_Type : Ada.Strings.Unbounded.Unbounded_String;

      --  the image file size.
      File_Size : Integer;

      --  the image width.
      Width : Integer;

      --  the image height.
      Height : Integer;

      --  the image thumbnail width.
      Thumb_Width : Integer;

      --  the image thumbnail height.
      Thumb_Height : Integer;

      --  the image thumbnail identifier.
      Thumbnail_Id : ADO.Identifier;
   end record;

   --  Get the bean attribute identified by the name.
   overriding
   function Get_Value (From : in Image_Info;
                       Name : in String) return Util.Beans.Objects.Object;

   --  Set the bean attribute identified by the name.
   overriding
   procedure Set_Value (Item  : in out Image_Info;
                        Name  : in String;
                        Value : in Util.Beans.Objects.Object);



   package Image_Info_Beans is
      new Util.Beans.Basic.Lists (Element_Type => Image_Info);
   package Image_Info_Vectors renames Image_Info_Beans.Vectors;
   subtype Image_Info_List_Bean is Image_Info_Beans.List_Bean;

   type Image_Info_List_Bean_Access is access all Image_Info_List_Bean;

   --  Run the query controlled by <b>Context</b> and append the list in <b>Object</b>.
   procedure List (Object  : in out Image_Info_List_Bean'Class;
                   Session : in out ADO.Sessions.Session'Class;
                   Context : in out ADO.Queries.Context'Class);

   subtype Image_Info_Vector is Image_Info_Vectors.Vector;

   --  Run the query controlled by <b>Context</b> and append the list in <b>Object</b>.
   procedure List (Object  : in out Image_Info_Vector;
                   Session : in out ADO.Sessions.Session'Class;
                   Context : in out ADO.Queries.Context'Class);

   Query_Image_List : constant ADO.Queries.Query_Definition_Access;



private
   IMAGE_NAME : aliased constant String := "awa_image";
   COL_0_1_NAME : aliased constant String := "id";
   COL_1_1_NAME : aliased constant String := "version";
   COL_2_1_NAME : aliased constant String := "width";
   COL_3_1_NAME : aliased constant String := "height";
   COL_4_1_NAME : aliased constant String := "thumb_height";
   COL_5_1_NAME : aliased constant String := "thumb_width";
   COL_6_1_NAME : aliased constant String := "thumbnail_id";
   COL_7_1_NAME : aliased constant String := "storage_id";

   IMAGE_DEF : aliased constant ADO.Schemas.Class_Mapping :=
     (Count => 8,
      Table => IMAGE_NAME'Access,
      Members => (
         1 => COL_0_1_NAME'Access,
         2 => COL_1_1_NAME'Access,
         3 => COL_2_1_NAME'Access,
         4 => COL_3_1_NAME'Access,
         5 => COL_4_1_NAME'Access,
         6 => COL_5_1_NAME'Access,
         7 => COL_6_1_NAME'Access,
         8 => COL_7_1_NAME'Access
)
     );
   IMAGE_TABLE : constant ADO.Schemas.Class_Mapping_Access
      := IMAGE_DEF'Access;

   Null_Image : constant Image_Ref
      := Image_Ref'(ADO.Objects.Object_Ref with others => <>);

   type Image_Impl is
      new ADO.Objects.Object_Record (Key_Type => ADO.Objects.KEY_INTEGER,
                                     Of_Class => IMAGE_DEF'Access)
   with record
       Version : Integer;
       Width : Natural;
       Height : Natural;
       Thumb_Height : Natural;
       Thumb_Width : Natural;
       Thumbnail : AWA.Storages.Models.Storage_Ref;
       Storage : AWA.Storages.Models.Storage_Ref;
   end record;

   type Image_Access is access all Image_Impl;

   overriding
   procedure Destroy (Object : access Image_Impl);

   overriding
   procedure Find (Object  : in out Image_Impl;
                   Session : in out ADO.Sessions.Session'Class;
                   Query   : in ADO.SQL.Query'Class;
                   Found   : out Boolean);

   overriding
   procedure Load (Object  : in out Image_Impl;
                   Session : in out ADO.Sessions.Session'Class);
   procedure Load (Object  : in out Image_Impl;
                   Stmt    : in out ADO.Statements.Query_Statement'Class;
                   Session : in out ADO.Sessions.Session'Class);

   overriding
   procedure Save (Object  : in out Image_Impl;
                   Session : in out ADO.Sessions.Master_Session'Class);

   procedure Create (Object  : in out Image_Impl;
                     Session : in out ADO.Sessions.Master_Session'Class);

   overriding
   procedure Delete (Object  : in out Image_Impl;
                     Session : in out ADO.Sessions.Master_Session'Class);

   procedure Set_Field (Object : in out Image_Ref'Class;
                        Impl   : out Image_Access);

   package File_1 is
      new ADO.Queries.Loaders.File (Path => "image-list.xml",
                                    Sha1 => "6A8E69BE2D48CAE5EEE4093D819F4015C272A10C");

   package Def_Imageinfo_Image_List is
      new ADO.Queries.Loaders.Query (Name => "image-list",
                                     File => File_1.File'Access);
   Query_Image_List : constant ADO.Queries.Query_Definition_Access
   := Def_Imageinfo_Image_List.Query'Access;
end AWA.Images.Models;
