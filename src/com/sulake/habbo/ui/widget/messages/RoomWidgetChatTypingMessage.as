package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_906:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_685:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_906);
         this.var_685 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_685;
      }
   }
}
