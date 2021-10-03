package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2276:int = 0;
      
      private var var_1445:String = "";
      
      private var var_1740:String = "";
      
      private var var_2312:String = "";
      
      private var var_2735:String = "";
      
      private var var_2009:int = 0;
      
      private var var_2734:int = 0;
      
      private var var_2736:int = 0;
      
      private var var_1444:int = 0;
      
      private var var_2737:int = 0;
      
      private var var_1443:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2276 = param1;
         this.var_1445 = param2;
         this.var_1740 = param3;
         this.var_2312 = param4;
         this.var_2735 = param5;
         if(param6)
         {
            this.var_2009 = 1;
         }
         else
         {
            this.var_2009 = 0;
         }
         this.var_2734 = param7;
         this.var_2736 = param8;
         this.var_1444 = param9;
         this.var_2737 = param10;
         this.var_1443 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2276,this.var_1445,this.var_1740,this.var_2312,this.var_2735,this.var_2009,this.var_2734,this.var_2736,this.var_1444,this.var_2737,this.var_1443];
      }
   }
}
