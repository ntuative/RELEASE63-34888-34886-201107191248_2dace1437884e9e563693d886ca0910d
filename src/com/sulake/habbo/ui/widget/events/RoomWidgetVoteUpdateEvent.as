package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_146:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_174:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1256:String;
      
      private var var_1565:Array;
      
      private var var_1312:Array;
      
      private var var_1950:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1256 = param2;
         this.var_1565 = param3;
         this.var_1312 = param4;
         if(this.var_1312 == null)
         {
            this.var_1312 = [];
         }
         this.var_1950 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1256;
      }
      
      public function get choices() : Array
      {
         return this.var_1565.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1312.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1950;
      }
   }
}
