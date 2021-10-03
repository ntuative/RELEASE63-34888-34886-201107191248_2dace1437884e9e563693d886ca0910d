package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1843:String = "";
      
      private var var_2088:String = "";
      
      private var var_2580:String = "";
      
      private var var_2581:Number = 0;
      
      private var var_2586:Number = 0;
      
      private var var_2582:Number = 0;
      
      private var var_2585:Number = 0;
      
      private var var_2583:Boolean = false;
      
      private var var_2578:Boolean = false;
      
      private var var_2579:Boolean = false;
      
      private var var_2584:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1843 = param2;
         this.var_2088 = param3;
         this.var_2580 = param4;
         this.var_2581 = param5;
         this.var_2586 = param6;
         this.var_2582 = param7;
         this.var_2585 = param8;
         this.var_2583 = param9;
         this.var_2578 = param10;
         this.var_2579 = param11;
         this.var_2584 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1843;
      }
      
      public function get canvasId() : String
      {
         return this.var_2088;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2580;
      }
      
      public function get screenX() : Number
      {
         return this.var_2581;
      }
      
      public function get screenY() : Number
      {
         return this.var_2586;
      }
      
      public function get localX() : Number
      {
         return this.var_2582;
      }
      
      public function get localY() : Number
      {
         return this.var_2585;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2583;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2578;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2579;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2584;
      }
   }
}
