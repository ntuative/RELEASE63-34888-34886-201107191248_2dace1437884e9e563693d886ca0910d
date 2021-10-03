package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1256:String;
      
      private var var_1565:Array;
      
      private var var_1312:Array;
      
      private var var_1950:int;
      
      public function VoteResultMessageParser()
      {
         super();
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
      
      public function flush() : Boolean
      {
         this.var_1256 = "";
         this.var_1565 = [];
         this.var_1312 = [];
         this.var_1950 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1256 = param1.readString();
         this.var_1565 = [];
         this.var_1312 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1565.push(param1.readString());
            this.var_1312.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1950 = param1.readInteger();
         return true;
      }
   }
}
