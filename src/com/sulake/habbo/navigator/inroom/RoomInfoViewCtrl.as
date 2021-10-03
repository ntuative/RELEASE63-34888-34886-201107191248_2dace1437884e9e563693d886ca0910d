package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboNavigatorEvent;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_196:IWindowContainer;
      
      private var var_3091:int;
      
      private var var_393:RoomEventViewCtrl;
      
      private var var_395:Timer;
      
      private var var_159:RoomSettingsCtrl;
      
      private var var_292:RoomThumbnailCtrl;
      
      private var var_1049:TagRenderer;
      
      private var var_396:IWindowContainer;
      
      private var var_394:IWindowContainer;
      
      private var var_682:IWindowContainer;
      
      private var var_1980:IWindowContainer;
      
      private var var_1981:IWindowContainer;
      
      private var var_1297:IWindowContainer;
      
      private var var_991:ITextWindow;
      
      private var var_1052:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_830:ITextWindow;
      
      private var var_1296:ITextWindow;
      
      private var var_1051:ITextWindow;
      
      private var var_828:ITextWindow;
      
      private var var_1579:ITextWindow;
      
      private var var_291:IWindowContainer;
      
      private var var_831:IWindowContainer;
      
      private var var_1577:IWindowContainer;
      
      private var var_1979:ITextWindow;
      
      private var var_681:ITextWindow;
      
      private var var_1982:IWindow;
      
      private var var_1292:IContainerButtonWindow;
      
      private var var_1294:IContainerButtonWindow;
      
      private var var_1291:IContainerButtonWindow;
      
      private var _remFavouriteButton:IContainerButtonWindow;
      
      private var var_1295:IContainerButtonWindow;
      
      private var var_1580:IButtonWindow;
      
      private var var_1575:IButtonWindow;
      
      private var var_1578:IButtonWindow;
      
      private var var_827:IWindowContainer;
      
      private var var_1293:ITextWindow;
      
      private var var_1050:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_829:IButtonWindow;
      
      private var var_1576:Boolean = false;
      
      private const const_817:int = 75;
      
      private const const_846:int = 3;
      
      private const const_827:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_393 = new RoomEventViewCtrl(this._navigator);
         this.var_159 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_292 = new RoomThumbnailCtrl(this._navigator);
         this.var_1049 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_159);
         this.var_395 = new Timer(6000,1);
         this.var_395.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this.var_395)
         {
            this.var_395.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_395.reset();
            this.var_395 = null;
         }
         this._navigator = null;
         this.var_393 = null;
         this.var_159 = null;
         this.var_292 = null;
         if(this.var_1049)
         {
            this.var_1049.dispose();
            this.var_1049 = null;
         }
         this.var_196 = null;
         this.var_396 = null;
         this.var_394 = null;
         this.var_682 = null;
         this.var_1980 = null;
         this.var_1981 = null;
         this.var_1297 = null;
         this.var_991 = null;
         this.var_1052 = null;
         this._ownerName = null;
         this.var_830 = null;
         this.var_1296 = null;
         this.var_1051 = null;
         this.var_828 = null;
         this.var_1579 = null;
         this.var_291 = null;
         this.var_831 = null;
         this.var_1577 = null;
         this.var_1979 = null;
         this.var_681 = null;
         this.var_1982 = null;
         this.var_1292 = null;
         this.var_1294 = null;
         this.var_1291 = null;
         this._remFavouriteButton = null;
         this.var_1295 = null;
         this.var_1580 = null;
         this.var_1575 = null;
         this.var_1578 = null;
         this.var_827 = null;
         this.var_1293 = null;
         this.var_1050 = null;
         this._buttons = null;
         this.var_829 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_395.reset();
         this.var_393.active = true;
         this.var_159.active = false;
         this.var_292.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_395.reset();
         this.var_159.load(param1);
         this.var_159.active = true;
         this.var_393.active = false;
         this.var_292.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_159.active = true;
         this.var_393.active = false;
         this.var_292.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_395.reset();
         this.var_159.active = false;
         this.var_393.active = false;
         this.var_292.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this.var_1576 = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function toggle() : void
      {
         this.var_395.reset();
         this.var_393.active = false;
         this.var_159.active = false;
         this.var_292.active = false;
         this.refresh();
         this._window.visible = !this._window.visible;
         this._window.x = this._window.desktop.width - this._window.width - this.const_846;
         this._window.y = this.const_817;
         if(this._navigator.configuration.getBoolean("club.membership.extend.promotion.enabled",false))
         {
            this._window.y = 91;
         }
         if(this._window.visible)
         {
            this._window.activate();
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this.var_196,["room_info","event_info","embed_info","buttons_container"],0,2);
         this.var_196.height = Util.getLowestPoint(this.var_196);
         var _loc1_:int = this._window.desktop.height - this._window.height - this.const_827;
         if(this._window.y > _loc1_)
         {
            this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_396);
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_159.refresh(this.var_396);
         this.var_292.refresh(this.var_396);
         Util.moveChildrenToColumn(this.var_396,["room_details","room_buttons"],0,2);
         this.var_396.height = Util.getLowestPoint(this.var_396);
         this.var_396.visible = true;
         Logger.log("XORP: " + this.var_394.visible + ", " + this.var_1297.visible + ", " + this.var_682.visible + ", " + this.var_682.rectangle + ", " + this.var_396.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_291);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_393.refresh(this.var_291);
         if(Util.hasVisibleChildren(this.var_291) && !(this.var_159.active || this.var_292.active))
         {
            Util.moveChildrenToColumn(this.var_291,["event_details","event_buttons"],0,2);
            this.var_291.height = Util.getLowestPoint(this.var_291);
            this.var_291.visible = true;
         }
         else
         {
            this.var_291.visible = false;
         }
         Logger.log("EVENT: " + this.var_291.visible + ", " + this.var_291.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_159.active && !this.var_292.active && !this.var_393.active)
         {
            this.var_827.visible = true;
            this.var_1050.text = this.getEmbedData();
         }
         else
         {
            this.var_827.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_159.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_829)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_829.visible = _loc1_;
            if(this.var_1576)
            {
               this.var_829.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_829.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_159.active || this.var_292.active)
         {
            return;
         }
         this.var_991.text = param1.roomName;
         this.var_991.height = this.var_991.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_830.text = param1.description;
         this.var_1049.refreshTags(this.var_394,param1.tags);
         this.var_830.visible = false;
         if(param1.description != "")
         {
            this.var_830.height = this.var_830.textHeight + 5;
            this.var_830.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1294,"facebook_logo_small",_loc3_,null,0);
         this.var_1294.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1292,"thumb_up",_loc4_,null,0);
         this.var_1292.visible = _loc4_;
         this.var_828.visible = !_loc4_;
         this.var_1579.visible = !_loc4_;
         this.var_1579.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_394,"home",param2,null,0);
         this._navigator.refreshButton(this.var_394,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_394,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_991.y,0);
         this.var_394.visible = true;
         this.var_394.height = Util.getLowestPoint(this.var_394);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_394.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_159.active || this.var_292.active)
         {
            return;
         }
         this.var_1052.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1052.height = this.var_1052.textHeight + 5;
         this.var_1296.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1296.height = this.var_1296.textHeight + 5;
         Util.moveChildrenToColumn(this.var_682,["public_space_name","public_space_desc"],this.var_1052.y,0);
         this.var_682.visible = true;
         this.var_682.height = Math.max(86,Util.getLowestPoint(this.var_682));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_393.active)
         {
            return;
         }
         this.var_1979.text = param1.eventName;
         this.var_681.text = param1.eventDescription;
         this.var_1049.refreshTags(this.var_831,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_681.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_681.height = this.var_681.textHeight + 5;
            this.var_681.y = Util.getLowestPoint(this.var_831) + 2;
            this.var_681.visible = true;
         }
         this.var_831.visible = true;
         this.var_831.height = Util.getLowestPoint(this.var_831);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_159.active || this.var_292.active)
         {
            return;
         }
         this.var_1580.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1291.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this._remFavouriteButton.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1295.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1297.visible = Util.hasVisibleChildren(this.var_1297);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_393.active)
         {
            return;
         }
         this.var_1575.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1578.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1577.visible = Util.hasVisibleChildren(this.var_1577);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
         this.var_196 = this._window.findChildByName("content") as IWindowContainer;
         this._window.visible = false;
         this.var_396 = IWindowContainer(this.find("room_info"));
         this.var_394 = IWindowContainer(this.find("room_details"));
         this.var_682 = IWindowContainer(this.find("public_space_details"));
         this.var_1980 = IWindowContainer(this.find("owner_name_cont"));
         this.var_1981 = IWindowContainer(this.find("rating_cont"));
         this.var_1297 = IWindowContainer(this.find("room_buttons"));
         this.var_991 = ITextWindow(this.find("room_name"));
         this.var_1052 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_830 = ITextWindow(this.find("room_desc"));
         this.var_1296 = ITextWindow(this.find("public_space_desc"));
         this.var_1051 = ITextWindow(this.find("owner_caption"));
         this.var_828 = ITextWindow(this.find("rating_caption"));
         this.var_1579 = ITextWindow(this.find("rating_txt"));
         this.var_291 = IWindowContainer(this.find("event_info"));
         this.var_831 = IWindowContainer(this.find("event_details"));
         this.var_1577 = IWindowContainer(this.find("event_buttons"));
         this.var_1979 = ITextWindow(this.find("event_name"));
         this.var_681 = ITextWindow(this.find("event_desc"));
         this.var_1294 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1292 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_1982 = this.find("staff_pick_button");
         this.var_1291 = IContainerButtonWindow(this.find("add_favourite_button"));
         this._remFavouriteButton = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1295 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1580 = IButtonWindow(this.find("room_settings_button"));
         this.var_1575 = IButtonWindow(this.find("create_event_button"));
         this.var_1578 = IButtonWindow(this.find("edit_event_button"));
         this.var_827 = IWindowContainer(this.find("embed_info"));
         this.var_1293 = ITextWindow(this.find("embed_info_txt"));
         this.var_1050 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_829 = IButtonWindow(this.find("zoom_button"));
         this.addMouseClickListener(this.var_1291,this.onAddFavouriteClick);
         this.addMouseClickListener(this._remFavouriteButton,this.onRemoveFavouriteClick);
         this.addMouseClickListener(this.var_1580,this.onRoomSettingsClick);
         this.addMouseClickListener(this.var_1295,this.onMakeHomeClick);
         this.addMouseClickListener(this.var_1575,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1578,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1050,this.onEmbedSrcClick);
         this.addMouseClickListener(this.var_1292,this.onThumbUp);
         this.addMouseClickListener(this.var_1982,this.onStaffPick);
         this.addMouseClickListener(this.var_1294,this.onFacebookLike);
         this.addMouseClickListener(this.var_829,this.onZoomClick);
         this._navigator.refreshButton(this.var_1291,"favourite",true,null,0);
         this._navigator.refreshButton(this._remFavouriteButton,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1295,"home",true,null,0);
         this.addMouseClickListener(this._window.findChildByTag("close"),this.onCloseButtonClick);
         this.addMouseOverListener(this.var_396,this.onHover);
         this.addMouseOverListener(this.var_291,this.onHover);
         this.var_1051.width = this.var_1051.textWidth;
         Util.moveChildrenToRow(this.var_1980,["owner_caption","owner_name"],this.var_1051.x,this.var_1051.y,3);
         this.var_828.width = this.var_828.textWidth;
         Util.moveChildrenToRow(this.var_1981,["rating_caption","rating_txt"],this.var_828.x,this.var_828.y,3);
         this.var_1293.height = this.var_1293.textHeight + 5;
         Util.moveChildrenToColumn(this.var_827,["embed_info_txt","embed_src_txt"],this.var_1293.y,2);
         this.var_827.height = Util.getLowestPoint(this.var_827) + 5;
         this.var_3091 = this._window.y + this._window.height;
      }
      
      private function addMouseClickListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      private function addMouseOverListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,param2);
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc2_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc2_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc2_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc2_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc2_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent) : void
      {
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent) : void
      {
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent) : void
      {
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onFacebookLike(param1:WindowEvent) : void
      {
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent) : void
      {
         this.var_1050.setSelection(0,this.var_1050.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent) : void
      {
         this._navigator.events.dispatchEvent(new HabboNavigatorEvent(HabboNavigatorEvent.const_359));
         this.var_1576 = !this.var_1576;
         this.refreshButtons();
      }
      
      private function onHover(param1:WindowEvent) : void
      {
         this.var_395.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._window.visible = false;
         if(this.var_159 != null)
         {
            this.var_159.resetView();
         }
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
   }
}
