package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_918:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         this.var_918 = new ByteArray();
         this.var_918.writeShort(param1);
         this.var_918.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         this.var_918.position = 0;
         if(this.var_918.bytesAvailable)
         {
            _loc1_ = this.var_918.readShort();
            this.var_918.position = 0;
         }
         return _loc1_;
      }
   }
}
