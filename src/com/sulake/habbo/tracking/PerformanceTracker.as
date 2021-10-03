package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_131:IHabboConfigurationManager = null;
      
      private var var_612:int = 0;
      
      private var var_520:Number = 0;
      
      private var var_3070:Array;
      
      private var var_1445:String = "";
      
      private var var_1740:String = "";
      
      private var var_2312:String = "";
      
      private var var_2735:String = "";
      
      private var var_2009:Boolean = false;
      
      private var var_1741:GarbageMonitor = null;
      
      private var var_1444:int = 0;
      
      private var var_2314:Boolean;
      
      private var var_1742:int = 1000;
      
      private var var_1443:int = 0;
      
      private var _reportInterval:int = 60;
      
      private var var_1744:int = 0;
      
      private var var_1743:int = 10;
      
      private var var_1446:int = 0;
      
      private var var_2310:Number = 0.15;
      
      private var var_2311:Boolean = true;
      
      private var var_2313:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_3070 = [];
         super();
         this.var_1740 = Capabilities.version;
         this.var_2312 = Capabilities.os;
         this.var_2009 = Capabilities.isDebugger;
         this.var_1445 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1445 == null)
         {
            this.var_1445 = "unknown";
         }
         this.var_1741 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1744 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1740;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_520;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1742 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this._reportInterval = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1743 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_131 = param1;
         this._reportInterval = int(this.var_131.getKey("performancetest.interval","60"));
         this.var_1742 = int(this.var_131.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1743 = int(this.var_131.getKey("performancetest.reportlimit","10"));
         this.var_2310 = Number(this.var_131.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2311 = Boolean(int(this.var_131.getKey("performancetest.distribution.enabled","1")));
         this.var_2314 = Boolean(this.var_131.getKey("monitor.garbage.collection","0") == "1");
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1741.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1741.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         if(this.var_2314)
         {
            _loc4_ = this.updateGarbageMonitor();
            if(_loc4_ != null)
            {
               ++this.var_1444;
               Logger.log("Garbage collection");
            }
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1742)
         {
            ++this.var_1443;
            _loc3_ = true;
         }
         else
         {
            ++this.var_612;
            if(this.var_612 <= 1)
            {
               this.var_520 = param1;
            }
            else
            {
               _loc5_ = Number(this.var_612);
               this.var_520 = this.var_520 * (_loc5_ - 1) / _loc5_ + Number(param1) / _loc5_;
            }
         }
         if(param2 - this.var_1744 > this._reportInterval * 1000 && this.var_1446 < this.var_1743)
         {
            _loc6_ = 0;
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_520 + "/s, system memory usage : " + _loc6_ + " bytes");
            _loc7_ = true;
            if(this.var_2311 && this.var_1446 > 0)
            {
               _loc8_ = this.differenceInPercents(this.var_2313,this.var_520);
               if(_loc8_ < this.var_2310)
               {
                  _loc7_ = false;
               }
            }
            this.var_1744 = param2;
            if(_loc7_ || _loc3_)
            {
               this.var_2313 = this.var_520;
               if(this.sendReport(param2))
               {
                  ++this.var_1446;
               }
            }
         }
      }
      
      private function sendReport(param1:int) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this._connection != null)
         {
            _loc2_ = null;
            _loc3_ = param1 / 1000;
            _loc4_ = -1;
            _loc5_ = 0;
            _loc2_ = new PerformanceLogMessageComposer(_loc3_,this.var_1445,this.var_1740,this.var_2312,this.var_2735,this.var_2009,_loc5_,_loc4_,this.var_1444,this.var_520,this.var_1443);
            this._connection.send(_loc2_);
            this.var_1444 = 0;
            this.var_520 = 0;
            this.var_612 = 0;
            this.var_1443 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
