package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2176:int;
      
      private var var_2984:int;
      
      private var var_1644:int;
      
      private var var_2985:int;
      
      private var var_140:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2176 = param1.readInteger();
         this.var_2984 = param1.readInteger();
         this.var_1644 = param1.readInteger();
         this.var_2985 = param1.readInteger();
         this.var_140 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_2176);
      }
      
      public function get callId() : int
      {
         return this.var_2176;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2984;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1644;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2985;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_140;
      }
   }
}
