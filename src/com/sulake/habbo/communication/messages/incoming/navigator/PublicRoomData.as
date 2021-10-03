package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2428:String;
      
      private var var_2343:int;
      
      private var var_2427:int;
      
      private var var_2344:String;
      
      private var var_2900:int;
      
      private var var_1765:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2428 = param1.readString();
         this.var_2343 = param1.readInteger();
         this.var_2427 = param1.readInteger();
         this.var_2344 = param1.readString();
         this.var_2900 = param1.readInteger();
         this.var_1765 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2428;
      }
      
      public function get unitPort() : int
      {
         return this.var_2343;
      }
      
      public function get worldId() : int
      {
         return this.var_2427;
      }
      
      public function get castLibs() : String
      {
         return this.var_2344;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2900;
      }
      
      public function get nodeId() : int
      {
         return this.var_1765;
      }
   }
}
