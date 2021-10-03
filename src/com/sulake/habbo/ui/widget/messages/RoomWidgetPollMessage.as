package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetPollMessage extends RoomWidgetMessage
   {
      
      public static const const_924:String = "RWPM_START";
      
      public static const const_633:String = "RWPM_REJECT";
      
      public static const ANSWER:String = "RWPM_ANSWER";
       
      
      private var _id:int = -1;
      
      private var var_1930:int = 0;
      
      private var var_2857:Array = null;
      
      public function RoomWidgetPollMessage(param1:String, param2:int)
      {
         this._id = param2;
         super(param1);
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get questionId() : int
      {
         return this.var_1930;
      }
      
      public function set questionId(param1:int) : void
      {
         this.var_1930 = param1;
      }
      
      public function get answers() : Array
      {
         return this.var_2857;
      }
      
      public function set answers(param1:Array) : void
      {
         this.var_2857 = param1;
      }
   }
}