package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      public static const const_1261:int = 1;
      
      public static const const_638:int = 2;
      
      private static const const_1146:int = 5;
      
      private static const const_1668:int = 250;
      
      private static const const_1670:int = 100;
      
      private static const const_1669:int = 180;
      
      private static const const_1671:int = 200;
       
      
      private var var_418:Timer;
      
      private var var_419:Timer;
      
      private var _assets:IAssetLibrary;
      
      private var var_95:IWindowContainer;
      
      private var _parent:IWindowContainer;
      
      private var var_2110:int = 2;
      
      private var var_890:BitmapData;
      
      private var var_1099:BitmapData;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         this.var_418 = new Timer(const_1668,1);
         this.var_419 = new Timer(const_1670,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         this.var_95 = param1;
         this.var_95.visible = false;
         this._assets = param2;
         this.var_418.addEventListener(TimerEvent.TIMER,this.onDisplayTimer);
         this.var_419.addEventListener(TimerEvent.TIMER,this.onHideTimer);
         var _loc3_:BitmapDataAsset = this._assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_1099 = _loc3_.content as BitmapData;
         }
         _loc3_ = this._assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_890 = _loc3_.content as BitmapData;
         }
      }
      
      public function dispose() : void
      {
         if(this.var_418 != null)
         {
            this.var_418.removeEventListener(TimerEvent.TIMER,this.onDisplayTimer);
            this.var_418.stop();
            this.var_418 = null;
         }
         if(this.var_419 != null)
         {
            this.var_419.removeEventListener(TimerEvent.TIMER,this.onHideTimer);
            this.var_419.stop();
            this.var_419 = null;
         }
         this._assets = null;
         this.var_95 = null;
         this._parent = null;
         this.var_890 = null;
         this.var_1099 = null;
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(this.var_95 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_95);
         }
         this._parent = param1;
         this.var_2110 = param4;
         var _loc5_:ITextWindow = ITextWindow(this.var_95.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = this.var_95.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1669,param3.width),Math.min(const_1671,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (this.var_95.width - _loc6_.width) / 2;
            this.var_95.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      public function show() : void
      {
         this.var_419.reset();
         this.var_418.reset();
         if(this._parent == null)
         {
            return;
         }
         this.var_95.visible = true;
         this._parent.addChild(this.var_95);
         this.refreshArrow(this.var_2110);
         switch(this.var_2110)
         {
            case const_1261:
               this.var_95.x = -1 * this.var_95.width - const_1146;
               break;
            case const_638:
               this.var_95.x = this._parent.width + const_1146;
         }
         this.var_95.y = (this._parent.height - this.var_95.height) / 2;
      }
      
      public function hide() : void
      {
         this.var_95.visible = false;
         this.var_419.reset();
         this.var_418.reset();
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_95);
         }
      }
      
      public function showDelayed() : void
      {
         this.var_419.reset();
         this.var_418.reset();
         this.var_418.start();
      }
      
      public function hideDelayed() : void
      {
         this.var_419.reset();
         this.var_418.reset();
         this.var_419.start();
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(this.var_95 == null || this.var_95.disposed)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this.var_95.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_1261:
               _loc2_.bitmap = this.var_1099.clone();
               _loc2_.width = this.var_1099.width;
               _loc2_.height = this.var_1099.height;
               _loc2_.y = (this.var_95.height - this.var_1099.height) / 2;
               _loc2_.x = this.var_95.width - 1;
               break;
            case const_638:
               _loc2_.bitmap = this.var_890.clone();
               _loc2_.width = this.var_890.width;
               _loc2_.height = this.var_890.height;
               _loc2_.y = (this.var_95.height - this.var_890.height) / 2;
               _loc2_.x = -1 * this.var_890.width + 1;
         }
         _loc2_.invalidate();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         this.show();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         this.hide();
      }
   }
}
