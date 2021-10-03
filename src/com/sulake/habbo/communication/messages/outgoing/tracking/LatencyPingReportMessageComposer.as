package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2939:int;
      
      private var var_2940:int;
      
      private var var_2941:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2939 = param1;
         this.var_2940 = param2;
         this.var_2941 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2939,this.var_2940,this.var_2941];
      }
      
      public function dispose() : void
      {
      }
   }
}
