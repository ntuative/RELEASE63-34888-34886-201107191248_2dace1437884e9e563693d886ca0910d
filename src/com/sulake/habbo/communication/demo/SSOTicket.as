package com.sulake.habbo.communication.demo
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.habbo.communication.IHabboWebLogin;
   import com.sulake.habbo.communication.enum.HabboWeb;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class SSOTicket extends EventDispatcher
   {
      
      public static const const_396:String = "success";
      
      public static const const_346:String = "failure";
       
      
      private var var_44:URLLoader;
      
      private var var_1611:String;
      
      private var var_1610:IHabboWebLogin;
      
      private var var_3120:String;
      
      private var var_2061:String;
      
      private var var_1724:String;
      
      private var _assets:IAssetLibrary;
      
      private var var_2805:Boolean;
      
      public function SSOTicket(param1:IAssetLibrary, param2:IHabboWebLogin, param3:String, param4:Boolean = true)
      {
         super();
         this._assets = param1;
         this.var_1610 = param2;
         this.var_1611 = "http://" + param3 + "/client";
         if(!param4)
         {
            this.var_1610.init();
            this.var_1610.addEventListener(HabboWeb.const_286,this.requestClientURL);
         }
         else
         {
            this.requestClientURL();
         }
      }
      
      public function get ticket() : String
      {
         return this.var_2061;
      }
      
      public function get isFacebookUser() : Boolean
      {
         return this.var_2805;
      }
      
      public function get flashClientUrl() : String
      {
         return this.var_1724;
      }
      
      private function requestClientURL(param1:Event = null) : void
      {
         var _loc2_:String = this.var_1611;
         if(this._assets.hasAsset(_loc2_))
         {
            Logger.log("[CoreLocalizationManager] reload localization for url: " + this.var_1611);
         }
         var _loc3_:URLRequest = new URLRequest(this.var_1611);
         if(this._assets.hasAsset(_loc2_))
         {
            this._assets.removeAsset(this._assets.getAssetByName(_loc2_));
         }
         var _loc4_:AssetLoaderStruct = this._assets.loadAssetFromFile(_loc2_,_loc3_,"text/plain");
         _loc4_.addEventListener(AssetLoaderEvent.ASSET_LOADER_EVENT_COMPLETE,this.clientURLComplete);
      }
      
      private function clientURLComplete(param1:Event = null) : void
      {
         var facebookData:Object = null;
         var event:Event = param1;
         var loaderStruct:AssetLoaderStruct = event.target as AssetLoaderStruct;
         if(loaderStruct == null)
         {
            return;
         }
         var data:String = loaderStruct.assetLoader.content as String;
         if(data.indexOf("account/reauthenticate\"") > -1)
         {
            this.var_1610.requestReAuthenticate();
         }
         else
         {
            try
            {
               this.var_2061 = /\"sso.ticket\" : \"(.*?)\"/.exec(data)[1];
               this.var_1724 = /\"flash.client.url\" : \"(.*?)\"/.exec(data)[1];
               facebookData = /\"facebook.user\" : \"(.*?)\"/.exec(data);
               if(facebookData)
               {
                  this.var_2805 = Boolean(facebookData[1]);
               }
               if(this.var_2061.length > 0)
               {
                  dispatchEvent(new Event(const_396));
               }
               else
               {
                  dispatchEvent(new Event(const_346));
               }
            }
            catch(e:Error)
            {
               dispatchEvent(new Event(const_346));
            }
         }
      }
   }
}
