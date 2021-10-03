package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2717:int;
      
      private var var_2715:int;
      
      private var var_2718:int;
      
      private var var_2716:String;
      
      private var var_1782:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2717 = param1.readInteger();
         this.var_2715 = param1.readInteger();
         this.var_2718 = param1.readInteger();
         this.var_2716 = param1.readString();
         this.var_1782 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2717;
      }
      
      public function get minute() : int
      {
         return this.var_2715;
      }
      
      public function get chatterId() : int
      {
         return this.var_2718;
      }
      
      public function get chatterName() : String
      {
         return this.var_2716;
      }
      
      public function get msg() : String
      {
         return this.var_1782;
      }
   }
}
