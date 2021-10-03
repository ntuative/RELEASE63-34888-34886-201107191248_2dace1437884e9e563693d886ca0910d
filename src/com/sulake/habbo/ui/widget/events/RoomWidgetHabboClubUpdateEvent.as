package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_262:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_3032:int = 0;
      
      private var var_3031:int = 0;
      
      private var var_3034:int = 0;
      
      private var var_3033:Boolean = false;
      
      private var var_2102:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_262,param6,param7);
         this.var_3032 = param1;
         this.var_3031 = param2;
         this.var_3034 = param3;
         this.var_3033 = param4;
         this.var_2102 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_3032;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_3031;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_3034;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_3033;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2102;
      }
   }
}
