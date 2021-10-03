package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_2117:IID;
      
      private var var_1145:Boolean;
      
      private var var_1352:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_2117 = param1;
         this.var_1352 = new Array();
         this.var_1145 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_2117;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1145;
      }
      
      public function get receivers() : Array
      {
         return this.var_1352;
      }
      
      public function dispose() : void
      {
         if(!this.var_1145)
         {
            this.var_1145 = true;
            this.var_2117 = null;
            while(this.var_1352.length > 0)
            {
               this.var_1352.pop();
            }
            this.var_1352 = null;
         }
      }
   }
}
