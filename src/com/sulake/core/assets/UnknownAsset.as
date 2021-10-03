package com.sulake.core.assets
{
   import flash.utils.getQualifiedClassName;
   
   public class UnknownAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_196:Object = null;
      
      private var var_1764:AssetTypeDeclaration;
      
      private var var_1146:String;
      
      public function UnknownAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_1764 = param1;
         this.var_1146 = param2;
      }
      
      public function get url() : String
      {
         return this.var_1146;
      }
      
      public function get content() : Object
      {
         return this.var_196;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_1764;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_196 = null;
            this.var_1764 = null;
            this.var_1146 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         this.var_196 = param1;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         this.var_196 = param1.content as Object;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function toString() : String
      {
         return getQualifiedClassName(this) + ": " + this.var_196;
      }
   }
}
