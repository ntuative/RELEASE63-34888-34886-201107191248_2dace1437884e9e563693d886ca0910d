package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1257:int = 0;
       
      
      private var var_441:BitmapData = null;
      
      private var var_2595:String = "";
      
      private var var_337:Boolean = true;
      
      private var var_2542:String = "";
      
      private var var_2513:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_2651:String = "normal";
      
      private var var_1638:Boolean = false;
      
      private var var_1639:Boolean = false;
      
      private var _offset:Point;
      
      private var var_230:int = 0;
      
      private var _height:int = 0;
      
      private var var_1350:Number = 0;
      
      private var var_2540:Boolean = false;
      
      private var var_2652:Boolean = true;
      
      private var var_2541:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var _instanceId:int = 0;
      
      private var var_2650:Array = null;
      
      public function RoomObjectSprite()
      {
         this._offset = new Point(0,0);
         super();
         this._instanceId = var_1257++;
      }
      
      public function dispose() : void
      {
         this.var_441 = null;
         this.var_230 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_441;
      }
      
      public function get assetName() : String
      {
         return this.var_2595;
      }
      
      public function get visible() : Boolean
      {
         return this.var_337;
      }
      
      public function get tag() : String
      {
         return this.var_2542;
      }
      
      public function get alpha() : int
      {
         return this.var_2513;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_2651;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1639;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1638;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_230;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1350;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2540;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2652;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2541;
      }
      
      public function get instanceId() : int
      {
         return this._instanceId;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_2650;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_230 = param1.width;
            this._height = param1.height;
         }
         this.var_441 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_2595 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_337 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2542 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2513 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_2651 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_2650 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1638 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1639 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1350 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2540 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2652 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2541 = param1;
         ++this._updateID;
      }
   }
}
