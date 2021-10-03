package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_943:BigInteger;
      
      private var var_2553:BigInteger;
      
      private var var_1874:BigInteger;
      
      private var var_2554:BigInteger;
      
      private var var_1515:BigInteger;
      
      private var var_1873:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1515 = param1;
         this.var_1873 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1515.toString() + ",generator: " + this.var_1873.toString() + ",secret: " + param1);
         this.var_943 = new BigInteger();
         this.var_943.fromRadix(param1,param2);
         this.var_2553 = this.var_1873.modPow(this.var_943,this.var_1515);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1874 = new BigInteger();
         this.var_1874.fromRadix(param1,param2);
         this.var_2554 = this.var_1874.modPow(this.var_943,this.var_1515);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2553.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2554.toRadix(param1);
      }
   }
}
