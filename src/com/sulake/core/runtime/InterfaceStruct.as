package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1607:IID;
      
      private var var_2051:String;
      
      private var var_124:IUnknown;
      
      private var var_869:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1607 = param1;
         this.var_2051 = getQualifiedClassName(this.var_1607);
         this.var_124 = param2;
         this.var_869 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1607;
      }
      
      public function get iis() : String
      {
         return this.var_2051;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_124;
      }
      
      public function get references() : uint
      {
         return this.var_869;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_124 == null;
      }
      
      public function dispose() : void
      {
         this.var_1607 = null;
         this.var_2051 = null;
         this.var_124 = null;
         this.var_869 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_869;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_869) : uint(0);
      }
   }
}
