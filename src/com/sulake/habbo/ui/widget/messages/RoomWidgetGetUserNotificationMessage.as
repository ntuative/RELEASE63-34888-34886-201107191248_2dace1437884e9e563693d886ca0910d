package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetGetUserNotificationMessage extends RoomWidgetMessage
   {
      
      public static const const_1317:String = "RWGSM_GET_NOTIFICATIONS";
       
      
      public function RoomWidgetGetUserNotificationMessage(param1:String = null)
      {
         super(param1 != null ? param1 : const_1317);
      }
   }
}