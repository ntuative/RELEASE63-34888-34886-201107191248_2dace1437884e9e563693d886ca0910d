package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChangeMottoMessage extends RoomWidgetMessage
   {
      
      public static const const_783:String = "RWVM_CHANGE_MOTTO_MESSAGE";
       
      
      private var var_2029:String;
      
      public function RoomWidgetChangeMottoMessage(param1:String)
      {
         super(const_783);
         this.var_2029 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_2029;
      }
   }
}
