package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1760:Boolean;
      
      private var var_2334:int;
      
      private var var_2333:String;
      
      private var var_424:int;
      
      private var var_2332:int;
      
      private var var_1979:String;
      
      private var var_2330:String;
      
      private var var_2331:String;
      
      private var var_935:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_935 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1760 = false;
            return;
         }
         this.var_1760 = true;
         this.var_2334 = int(_loc2_);
         this.var_2333 = param1.readString();
         this.var_424 = int(param1.readString());
         this.var_2332 = param1.readInteger();
         this.var_1979 = param1.readString();
         this.var_2330 = param1.readString();
         this.var_2331 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_935.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_935 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2334;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2333;
      }
      
      public function get flatId() : int
      {
         return this.var_424;
      }
      
      public function get eventType() : int
      {
         return this.var_2332;
      }
      
      public function get eventName() : String
      {
         return this.var_1979;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2330;
      }
      
      public function get creationTime() : String
      {
         return this.var_2331;
      }
      
      public function get tags() : Array
      {
         return this.var_935;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1760;
      }
   }
}
