package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class FurnitureData
   {
       
      
      private var _id:int = 0;
      
      private var var_2414:int = 0;
      
      private var _type:String = null;
      
      private var var_106:Vector3d;
      
      private var var_476:Vector3d;
      
      private var _state:int = 0;
      
      private var _data:String = null;
      
      private var var_1493:Number = NaN;
      
      private var var_2372:int = -1;
      
      private var var_2415:Boolean = false;
      
      public function FurnitureData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int, param7:String, param8:Number = NaN, param9:int = -1, param10:Boolean = false)
      {
         this.var_106 = new Vector3d();
         this.var_476 = new Vector3d();
         super();
         this._id = param1;
         this.var_2414 = param2;
         this._type = param3;
         this.var_106.assign(param4);
         this.var_476.assign(param5);
         this._state = param6;
         this._data = param7;
         this.var_1493 = param8;
         this.var_2372 = param9;
         this.var_2415 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get typeId() : int
      {
         return this.var_2414;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get loc() : IVector3d
      {
         return this.var_106;
      }
      
      public function get dir() : IVector3d
      {
         return this.var_476;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get extra() : Number
      {
         return this.var_1493;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2372;
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2415;
      }
   }
}
