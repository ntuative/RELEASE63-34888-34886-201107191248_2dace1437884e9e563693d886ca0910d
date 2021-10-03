package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1318:String = "M";
      
      public static const const_1759:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_175:Number = 0;
      
      private var var_176:Number = 0;
      
      private var var_476:int = 0;
      
      private var _name:String = "";
      
      private var var_1708:int = 0;
      
      private var var_1080:String = "";
      
      private var _figure:String = "";
      
      private var var_2368:String = "";
      
      private var var_2366:int;
      
      private var var_2367:int = 0;
      
      private var var_2364:String = "";
      
      private var var_2363:int = 0;
      
      private var var_2365:int = 0;
      
      private var var_2593:String = "";
      
      private var var_202:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_202 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_202)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_175;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_202)
         {
            this.var_175 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_176;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_202)
         {
            this.var_176 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_476;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_202)
         {
            this.var_476 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_202)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1708;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_202)
         {
            this.var_1708 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1080;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_202)
         {
            this.var_1080 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_202)
         {
            this._figure = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2368;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_202)
         {
            this.var_2368 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2366;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_202)
         {
            this.var_2366 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2367;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_202)
         {
            this.var_2367 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2364;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_202)
         {
            this.var_2364 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2363;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_202)
         {
            this.var_2363 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2365;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_202)
         {
            this.var_2365 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2593;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_202)
         {
            this.var_2593 = param1;
         }
      }
   }
}
