package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_175:Number = 0;
      
      private var var_176:Number = 0;
      
      private var var_2694:Number = 0;
      
      private var var_2693:Number = 0;
      
      private var var_2696:Number = 0;
      
      private var var_2698:Number = 0;
      
      private var var_476:int = 0;
      
      private var var_2695:int = 0;
      
      private var var_361:Array;
      
      private var var_2697:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_361 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_175 = param3;
         this.var_176 = param4;
         this.var_2694 = param5;
         this.var_476 = param6;
         this.var_2695 = param7;
         this.var_2693 = param8;
         this.var_2696 = param9;
         this.var_2698 = param10;
         this.var_2697 = param11;
         this.var_361 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_175;
      }
      
      public function get z() : Number
      {
         return this.var_176;
      }
      
      public function get localZ() : Number
      {
         return this.var_2694;
      }
      
      public function get targetX() : Number
      {
         return this.var_2693;
      }
      
      public function get targetY() : Number
      {
         return this.var_2696;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2698;
      }
      
      public function get dir() : int
      {
         return this.var_476;
      }
      
      public function get dirHead() : int
      {
         return this.var_2695;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2697;
      }
      
      public function get actions() : Array
      {
         return this.var_361.slice();
      }
   }
}
