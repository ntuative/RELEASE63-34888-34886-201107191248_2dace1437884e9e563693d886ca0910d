package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_550:WallRasterizer;
      
      private var var_552:FloorRasterizer;
      
      private var var_817:WallAdRasterizer;
      
      private var var_551:LandscapeRasterizer;
      
      private var var_816:PlaneMaskManager;
      
      private var var_865:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_550 = new WallRasterizer();
         this.var_552 = new FloorRasterizer();
         this.var_817 = new WallAdRasterizer();
         this.var_551 = new LandscapeRasterizer();
         this.var_816 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_865;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_552;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_550;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_817;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_551;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_816;
      }
      
      public function dispose() : void
      {
         if(this.var_550 != null)
         {
            this.var_550.dispose();
            this.var_550 = null;
         }
         if(this.var_552 != null)
         {
            this.var_552.dispose();
            this.var_552 = null;
         }
         if(this.var_817 != null)
         {
            this.var_817.dispose();
            this.var_817 = null;
         }
         if(this.var_551 != null)
         {
            this.var_551.dispose();
            this.var_551 = null;
         }
         if(this.var_816 != null)
         {
            this.var_816.dispose();
            this.var_816 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_550 != null)
         {
            this.var_550.clearCache();
         }
         if(this.var_552 != null)
         {
            this.var_552.clearCache();
         }
         if(this.var_551 != null)
         {
            this.var_551.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_550.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_552.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_817.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_551.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_816.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_865)
         {
            return;
         }
         this.var_550.initializeAssetCollection(param1);
         this.var_552.initializeAssetCollection(param1);
         this.var_817.initializeAssetCollection(param1);
         this.var_551.initializeAssetCollection(param1);
         this.var_816.initializeAssetCollection(param1);
         this.var_865 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
