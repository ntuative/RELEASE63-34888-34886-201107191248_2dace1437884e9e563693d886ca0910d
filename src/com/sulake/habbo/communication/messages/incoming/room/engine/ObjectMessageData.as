package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_175:Number = 0;
      
      private var var_176:Number = 0;
      
      private var var_476:int = 0;
      
      private var var_529:int = 0;
      
      private var var_633:int = 0;
      
      private var _type:int = 0;
      
      private var var_3123:String = "";
      
      private var var_1493:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2372:int = 0;
      
      private var var_2415:Boolean;
      
      private var var_2881:String = null;
      
      private var var_202:Boolean = false;
      
      public function ObjectMessageData(param1:int)
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
      
      public function get sizeX() : int
      {
         return this.var_529;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_202)
         {
            this.var_529 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_633;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_202)
         {
            this.var_633 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_202)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_202)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_202)
         {
            this._data = param1;
         }
      }
      
      public function get staticClass() : String
      {
         return this.var_2881;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_202)
         {
            this.var_2881 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_1493;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_202)
         {
            this.var_1493 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2372;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_202)
         {
            this.var_2372 = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2415;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         this.var_2415 = param1;
      }
   }
}
