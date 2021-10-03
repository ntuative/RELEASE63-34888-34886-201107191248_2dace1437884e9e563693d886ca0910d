package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1437:Number = 12;
       
      
      private var var_2302:int = -1;
      
      private var var_2308:int = -2;
      
      private var var_212:Vector3d = null;
      
      private var var_1160:Number = 0;
      
      private var var_1440:Number = 0;
      
      private var var_1738:Boolean = false;
      
      private var var_194:Vector3d = null;
      
      private var var_1736:Vector3d;
      
      private var var_2306:Boolean = false;
      
      private var var_2304:Boolean = false;
      
      private var var_2307:Boolean = false;
      
      private var var_2305:Boolean = false;
      
      private var var_2301:int = 0;
      
      private var var_2299:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2300:int = 0;
      
      private var var_2303:int = 0;
      
      private var var_1735:int = -1;
      
      private var var_1739:int = 0;
      
      private var var_1737:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1736 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_194;
      }
      
      public function get targetId() : int
      {
         return this.var_2302;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2308;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1736;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2306;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2304;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2307;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2305;
      }
      
      public function get screenWd() : int
      {
         return this.var_2301;
      }
      
      public function get screenHt() : int
      {
         return this.var_2299;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2300;
      }
      
      public function get roomHt() : int
      {
         return this.var_2303;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1735;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_212 != null && this.var_194 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2302 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1736.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2308 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2306 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2304 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2307 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2305 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2301 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2299 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1737 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2300 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2303 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1735 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_212 == null)
         {
            this.var_212 = new Vector3d();
         }
         if(this.var_212.x != param1.x || this.var_212.y != param1.y || this.var_212.z != param1.z)
         {
            this.var_212.assign(param1);
            this.var_1739 = 0;
            _loc2_ = Vector3d.dif(this.var_212,this.var_194);
            this.var_1160 = _loc2_.length;
            this.var_1738 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_212 = null;
         this.var_194 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_194 != null)
         {
            return;
         }
         this.var_194 = new Vector3d();
         this.var_194.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_194 == null)
         {
            this.var_194 = new Vector3d();
         }
         this.var_194.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_212 != null && this.var_194 != null)
         {
            ++this.var_1739;
            if(this.var_1737)
            {
               this.var_1737 = false;
               this.var_194 = this.var_212;
               this.var_212 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_212,this.var_194);
            if(_loc3_.length > this.var_1160)
            {
               this.var_1160 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_194 = this.var_212;
               this.var_212 = null;
               this.var_1440 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1160);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1160 / const_1437;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_1738)
               {
                  if(_loc7_ < this.var_1440)
                  {
                     _loc7_ = this.var_1440;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_1738 = false;
                  }
               }
               this.var_1440 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_194 = Vector3d.sum(this.var_194,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1735 = -1;
      }
   }
}
