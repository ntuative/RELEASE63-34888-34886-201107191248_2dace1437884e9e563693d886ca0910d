package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_3016:String;
      
      private var var_1629:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         this.var_3016 = param1;
         this.var_1629 = param2;
      }
      
      public function get postureType() : String
      {
         return this.var_3016;
      }
      
      public function get parameter() : String
      {
         return this.var_1629;
      }
   }
}
