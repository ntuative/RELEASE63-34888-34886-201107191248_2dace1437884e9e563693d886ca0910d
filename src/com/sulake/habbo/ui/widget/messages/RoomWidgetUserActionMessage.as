package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_571:String = "RWUAM_WHISPER_USER";
      
      public static const const_627:String = "RWUAM_IGNORE_USER";
      
      public static const const_658:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_460:String = "RWUAM_KICK_USER";
      
      public static const const_539:String = "RWUAM_BAN_USER";
      
      public static const const_648:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_677:String = "RWUAM_RESPECT_USER";
      
      public static const const_657:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_663:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_588:String = "RWUAM_START_TRADING";
      
      public static const const_911:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_528:String = "RWUAM_KICK_BOT";
      
      public static const const_634:String = "RWUAM_REPORT";
      
      public static const const_574:String = "RWUAM_PICKUP_PET";
      
      public static const const_1973:String = "RWUAM_TRAIN_PET";
      
      public static const const_600:String = " RWUAM_RESPECT_PET";
      
      public static const const_245:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_597:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
