package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetLetUserInMessage extends RoomWidgetMessage
   {
      
      public static const const_812:String = "RWLUIM_LET_USER_IN";
       
      
      private var _userName:String;
      
      private var var_2561:Boolean;
      
      public function RoomWidgetLetUserInMessage(param1:String, param2:Boolean)
      {
         super(const_812);
         this._userName = param1;
         this.var_2561 = param2;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get canEnter() : Boolean
      {
         return this.var_2561;
      }
   }
}
