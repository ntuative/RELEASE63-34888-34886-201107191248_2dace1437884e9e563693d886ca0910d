package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_158:String = "ROE_MOUSE_CLICK";
      
      public static const const_181:String = "ROE_MOUSE_ENTER";
      
      public static const const_523:String = "ROE_MOUSE_MOVE";
      
      public static const const_192:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2180:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_649:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1843:String = "";
      
      private var var_2578:Boolean;
      
      private var var_2583:Boolean;
      
      private var var_2579:Boolean;
      
      private var var_2584:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1843 = param2;
         this.var_2578 = param5;
         this.var_2583 = param6;
         this.var_2579 = param7;
         this.var_2584 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1843;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2578;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2583;
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
