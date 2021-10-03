package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_434:String = "RWRQUE_VISITOR_QUEUE_STATUS";
      
      public static const const_577:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
       
      
      private var var_1181:int;
      
      private var var_2771:Boolean;
      
      private var var_532:Boolean;
      
      private var var_2007:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1181 = param2;
         this.var_2771 = param3;
         this.var_532 = param4;
         this.var_2007 = param5;
      }
      
      public function get position() : int
      {
         return this.var_1181;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return this.var_2771;
      }
      
      public function get isActive() : Boolean
      {
         return this.var_532;
      }
      
      public function get isClubQueue() : Boolean
      {
         return this.var_2007;
      }
   }
}
