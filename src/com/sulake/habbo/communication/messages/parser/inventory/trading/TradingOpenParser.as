package com.sulake.habbo.communication.messages.parser.inventory.trading
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TradingOpenParser implements IMessageParser
   {
       
      
      private var _userID:int;
      
      private var var_1839:Boolean;
      
      private var var_1837:int;
      
      private var var_1838:Boolean;
      
      public function TradingOpenParser()
      {
         super();
      }
      
      public function get userID() : int
      {
         return this._userID;
      }
      
      public function get userCanTrade() : Boolean
      {
         return this.var_1839;
      }
      
      public function get otherUserID() : int
      {
         return this.var_1837;
      }
      
      public function get otherUserCanTrade() : Boolean
      {
         return this.var_1838;
      }
      
      public function flush() : Boolean
      {
         this._userID = -1;
         this.var_1839 = false;
         this.var_1837 = -1;
         this.var_1838 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._userID = param1.readInteger();
         this.var_1839 = param1.readInteger() == 1;
         this.var_1837 = param1.readInteger();
         this.var_1838 = param1.readInteger() == 1;
         return true;
      }
   }
}
