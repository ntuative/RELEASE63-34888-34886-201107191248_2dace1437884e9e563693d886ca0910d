package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
      
      private static var var_1406:int = 0;
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_957:int;
      
      private var var_835:Boolean;
      
      private var _allowFollow:Boolean;
      
      private var _figure:String;
      
      private var var_1627:int;
      
      private var var_2029:String;
      
      private var var_1990:String;
      
      private var var_1988:String;
      
      private var var_1123:Vector.<FriendNotification>;
      
      private var var_3035:int = -1;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1988 = param3;
         this.var_2029 = param4;
         this.var_957 = param5;
         this.var_835 = param6;
         this._allowFollow = param7;
         this._figure = param8;
         this.var_1627 = param9;
         this.var_1990 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_957;
      }
      
      public function get online() : Boolean
      {
         return this.var_835;
      }
      
      public function get allowFollow() : Boolean
      {
         return this._allowFollow;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get categoryId() : int
      {
         return this.var_1627;
      }
      
      public function get motto() : String
      {
         return this.var_2029;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1990;
      }
      
      public function get realName() : String
      {
         return this.var_1988;
      }
      
      public function get logEventId() : int
      {
         return this.var_3035;
      }
      
      public function get notifications() : Vector.<FriendNotification>
      {
         if(!this.var_1123)
         {
            this.var_1123 = new Vector.<FriendNotification>();
         }
         return this.var_1123;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_957 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_835 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this._allowFollow = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1627 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_2029 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1990 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1988 = param1;
      }
      
      public function set logEventId(param1:int) : void
      {
         this.var_3035 = param1;
      }
      
      public function getNextLogEventId() : int
      {
         return ++var_1406;
      }
   }
}
