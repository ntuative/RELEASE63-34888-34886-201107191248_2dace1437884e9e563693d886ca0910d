package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2674:Number = 0.0;
      
      private var var_2673:Number = 0.0;
      
      private var var_3009:Number = 0.0;
      
      private var var_3008:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2674 = param1;
         this.var_2673 = param2;
         this.var_3009 = param3;
         this.var_3008 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2674;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2673;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_3009;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_3008;
      }
   }
}
