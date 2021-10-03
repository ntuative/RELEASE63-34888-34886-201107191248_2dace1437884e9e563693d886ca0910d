package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_863:int = 1;
      
      public static const const_999:int = 2;
      
      public static const const_952:int = 3;
      
      public static const const_1182:int = 4;
      
      public static const const_985:int = 5;
      
      public static const const_1408:int = 6;
       
      
      private var _type:int;
      
      private var var_1314:int;
      
      private var var_2317:String;
      
      private var var_2559:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1314 = param2;
         this.var_2317 = param3;
         this.var_2559 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2317;
      }
      
      public function get time() : String
      {
         return this.var_2559;
      }
      
      public function get senderId() : int
      {
         return this.var_1314;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
