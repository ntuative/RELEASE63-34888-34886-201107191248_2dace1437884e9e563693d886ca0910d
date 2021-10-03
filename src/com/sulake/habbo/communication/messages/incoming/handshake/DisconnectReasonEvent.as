package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2322:int = 0;
      
      public static const const_1877:int = 1;
      
      public static const const_1831:int = 2;
      
      public static const const_2177:int = 3;
      
      public static const const_2221:int = 4;
      
      public static const const_2192:int = 5;
      
      public static const const_1791:int = 10;
      
      public static const const_2206:int = 11;
      
      public static const const_2130:int = 12;
      
      public static const const_2251:int = 13;
      
      public static const const_2178:int = 16;
      
      public static const const_2124:int = 17;
      
      public static const const_2231:int = 18;
      
      public static const const_2320:int = 19;
      
      public static const const_2116:int = 20;
      
      public static const const_2331:int = 22;
      
      public static const const_2287:int = 23;
      
      public static const const_2187:int = 24;
      
      public static const const_2138:int = 25;
      
      public static const const_2143:int = 26;
      
      public static const const_2163:int = 27;
      
      public static const const_2159:int = 28;
      
      public static const const_2240:int = 29;
      
      public static const const_2257:int = 100;
      
      public static const const_2111:int = 101;
      
      public static const const_2219:int = 102;
      
      public static const const_2148:int = 103;
      
      public static const const_2260:int = 104;
      
      public static const const_2335:int = 105;
      
      public static const const_2186:int = 106;
      
      public static const const_2300:int = 107;
      
      public static const const_2175:int = 108;
      
      public static const const_2121:int = 109;
      
      public static const const_2267:int = 110;
      
      public static const const_2288:int = 111;
      
      public static const const_2316:int = 112;
      
      public static const const_2233:int = 113;
      
      public static const const_2309:int = 114;
      
      public static const const_2200:int = 115;
      
      public static const const_2137:int = 116;
      
      public static const const_2268:int = 117;
      
      public static const const_2272:int = 118;
      
      public static const const_2310:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_9 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1877:
            case const_1791:
               return "banned";
            case const_1831:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
