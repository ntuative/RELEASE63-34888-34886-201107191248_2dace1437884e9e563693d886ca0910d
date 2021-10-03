package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetUserBadgesUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_166:String = "RWUBUE_USER_BADGES";
       
      
      private var _userId:int;
      
      private var var_248:Array;
      
      public function RoomWidgetUserBadgesUpdateEvent(param1:int, param2:Array, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_166,param3,param4);
         this._userId = param1;
         this.var_248 = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get badges() : Array
      {
         return this.var_248;
      }
   }
}
