bot = dofile('utils.lua')json = dofile('json.lua')sudos = dofile('sudo.lua')URL = require "socket.url"serpent = require("serpent")http = require "socket.http"https = require "ssl.https"redis = require('redis')db = redis.connect('127.0.0.1', 6379)
bot_id=0
function vardump(value) print(serpent.block(value, {comment=false})) end
function dl_cb(arg, data)   
end
function is_sudo(msg)
local var = false
for v,user in pairs(sudo) do
if user == msg.sender_user_id_ or db:sismember('mods'..bot_id,msg.sender_user_id_) then var = true end
end
return var
end
					function kl(se)
  local start = os.time()
  repeat until os.time() > start + se
					end
 function run(msg,data)
 function lkj(arg, data) _G.bot_id=data.id_ end tdcli_function({ID="GetMe",},lkj, nil)
		if db:get("autobcs"..bot_id)=='on' and db:get("timera"..bot_id)==nil and db:scard('autoposterm'..bot_id) > 0 then  db:setex("timera"..bot_id,db:get("autobctime"..bot_id),true)
			 local list2 = db:smembers('autoposterm'..bot_id)
			 function cb(a,b,c)
				 if b.ID == "Message"  then
				 local list = db:smembers('bc'..bot_id) 
				   if db:get('sec'..bot_id)==0 then
									  for k,v in pairs(list) do 
										bot.forwardMessages(v, msg.chat_id_, {[0] = b.id_},0) 
									  end 
									else
										  for k,v in pairs(list) do 
												kl(db:get('sec'..bot_id) or 1)
												bot.forwardMessages(v, msg.chat_id_, {[0] = b.id_},0) 
												end
										  end 
									  end
						 end
						 	local ms = nil
		for k, v in pairs(list2) do
      			 ms = db:get('gp'..v..bot_id)
      tdcli_function({ID = "GetMessage",chat_id_ = ms,message_id_ = v}, cb, {id8 = v})
    end
				 end 
			function rejoin()
			function joinlinkss(a,b,c)
				if b.ID=='Error' then
				  if b.code_ ~= 429 then  db:srem('links'..bot_id,a.lnk) db:sadd('elinks'..bot_id,a.lnk) end
				else db:srem('links'..bot_id,a.lnk) db:sadd('elinks'..bot_id,a.lnk)
				end
			end
			local list = db:smembers('links'..bot_id)
			for k,v in pairs(list) do tdcli_function ({ID = "ImportChatInviteLink",invite_link_ = v}, joinlinkss, {lnk = v}) end
			end
	 	if tostring(msg.chat_id_):match('-') then 
			if tostring(db:get('seen'..bot_id)) == "gp" or tostring(db:get('seen'..bot_id)) == "all" then 
bot.viewMessages(msg.chat_id_, {[0] = msg.id_})
end
			if not db:sismember('bc'..bot_id,msg.chat_id_) then db:sadd('bc'..bot_id,msg.chat_id_) end 
			elseif not tostring(msg.chat_id_):match('-') then
			if db:get('autom'..bot_id)=='on' then 
				if msg.content_.text_:match("سلام") then
				 bot.sendMessage(msg.chat_id_, msg.id_, 1,'سلام','md')
				 elseif msg.content_.text_:match("خوبی") then 
				  bot.sendMessage(msg.chat_id_, msg.id_, 1,'مرسی تو خوبی؟','md')
			end
			end
if tostring(db:get('seen'..bot_id)) == "pv" or tostring(db:get('seen'..bot_id)) == "all" then 
bot.viewMessages(msg.chat_id_, {[0] = msg.id_})
end
 	 if not db:sismember('users'..bot_id,msg.chat_id_) then 
	 	function lkj(a,b,c)
		if b.ID ~='Error' then
		db:sadd('users'..bot_id,msg.chat_id_) 
		end 
		end 
		tdcli_function ({ID = "GetUser",user_id_ =msg.chat_id_}, lkj,nil)
	 end 			
			end
	local text = nil
	if msg.content_.text_ and msg.content_.entities_ and msg.content_.entities_[0] and msg.content_.entities_[0].ID == 'MessageEntityUrl' then
	 text = msg.content_.text_ or msg.content_.text_
		elseif is_sudo(msg) then
		 text = msg.content_.text_
	end
	if text then 
	function aj_check() if db:get('aj1'..bot_id)==nil then db:set('aj1'..bot_id,'on') return true elseif db:get('aj1'..bot_id)=="on" then return true elseif db:get('aj1'..bot_id)=="off"  then return false end
		end
		function check_link(extra, result, success)
			function joinlinks(a,b,c)
				if b.ID=='Error' then if b.code_ ~= 429 then  db:srem('links'..bot_id,a.lnk) db:sadd('elinks'..bot_id,a.lnk) end
				else db:srem('links'..bot_id,a.lnk) db:sadd('elinks'..bot_id,a.lnk)
				end
			end
			if tostring(result.is_supergroup_channel_)=='true' and not db:sismember('links'..bot_id,extra.link) and not db:sismember('elinks'..bot_id,extra.link) then
				 db:sadd('links'..bot_id,extra.link) 
				 if aj_check() then tdcli_function ({ID = "ImportChatInviteLink",invite_link_ =extra.link}, joinlinks, {lnk = extra.link}) end end
			end
			if db:get('joinl'..bot_id)=='on' or db:get('joinl'..bot_id)==nil then 
		 local matches = {}
			if text and text:match("https://telegram.me/joinchat/%S+") then matches = {text:match("(https://t.me/joinchat/%S+)") or text:match("(https://telegram.me/joinchat/%S+)")}
			tdcli_function({ID = "CheckChatInviteLink",invite_link_ = matches[1]}, check_link, {link = matches[1]})
			elseif text and text:match("https://t.me/joinchat/%S+") then 
				matches = {string.gsub(text:match("(https://t.me/joinchat/%S+)"), "t.me", "telegram.me")}
				tdcli_function ({ID = "CheckChatInviteLink",invite_link_ = matches[1]}, check_link, {link = matches[1]})
			end
			end
 			if db:get('timer'..bot_id) == nil then local mn = math.random(480,1080) db:setex('timer'..bot_id, tonumber(mn), true) rejoin() end
					if is_sudo(msg)then
						if text == 'help' then 
					local v=" راهنمای دستورات سینچی\n 🗓 اطلاعات\n 🔹 panel\n ➖➖➖➖➖➖➖➖➖➖➖\n ↖️دریافت لیست تمامی لینک های ذخیره شده \n 🔹exlinks \n➖➖➖➖➖➖➖➖➖➖➖\n 🕐کنترل وضعیت افزایش گروه  \n🔹join [on | off] \n ➖➖➖➖➖➖➖➖➖➖➖\n 🕰تنظیم مدت زمان تاخیر بین ارسال ها \n 🔹setsec [number] \n ➖➖➖➖➖➖➖➖➖➖➖\n📥پاسخگوی خودکار\nخاموش کردن:\n\n🔹autom off\nروشن کردن:\n🔹autom on \n➖➖➖➖➖➖➖➖➖➖➖\n ➕اضافه کردن مخاطب \n 🔹addc [reply] \n شماره شیر شده را ریپلای کرده و دستور را بزنید \n➖➖➖➖➖➖➖➖➖➖➖\n 🗒نمایش اطلاعات ربات \n 🔹botinfo \n➖➖➖➖➖➖➖➖➖➖➖\n🌪اضافه کردن شخص به تمامی گروها\n🔹addall [reply | username]\nپیام شخص را ریپلای کرده و دستور را به تنهایی بزنید یا\nایدی شخص را جلو دستور قرار دهید\nمثال:\naddall @M5_5f \n➖➖➖➖➖➖➖➖➖➖➖\n 🌁تغییر عکس پروفایل \n 🔹setphoto link \n به جای لینک لینک عکس موردنظر را بزارید \n➖➖➖➖➖➖➖➖➖➖➖\n 👁‍🗨تنظیمات سین\n🔹seen gp\nتنها پیام های گروه ها سین خواهند خورد\n🔹seen pv\nفقط پیام های توی پیوی سین خواهند خورد\n🔹seen all\nتمامی پیام ها سین خواهند خورد\n🔹seen off\nهیچ پیامی سین نخواهد خورد\n ➖➖➖➖➖➖➖➖➖➖➖\n 🔃 حذف تمامی گروه ها\n 🔹 remgp\n ➖➖➖➖➖➖➖➖➖➖➖\n ☢️ چک کردن گروه های در دسترس\n 🔹gpcheck\n ➖➖➖➖➖➖➖➖➖➖➖\n 📣 ارسال پیام به همه ی گروه ها(با ریپلی)\n 🔹bc\n ➖➖➖➖➖➖➖➖➖➖➖\n 🔊 ارسال پیام به تمامی گروه ها به صورت رگباری به تعداد عدد\n انتخابی\n 🔹nbc [nubmer]\n ➖➖➖➖➖➖➖➖➖➖➖\n 🔂 عضویت در لینک های ذخیره شده\n 🔹rejoin\n ➖➖➖➖➖➖➖➖➖➖➖\n ⚠️ حذف تمامی لینک های ذخیره شده(استفاده نشده)\n 🔹remlinks\n ➖➖➖➖➖➖➖➖➖➖➖\n ♦️حذف لینک های استفاده شده\n 🔹remelinks\n 📛توجه داشتید باشید در این دستور یک e اضافی هست - با دستور حذف لینک های ذخیره شده اشتباه نکنید\n ➖➖➖➖➖➖➖➖➖➖➖\n 📉 نمایش اطلاعات سرور\n 🔹serverinfo\n ➖➖➖➖➖➖➖➖➖➖➖\n ↩️روشن و خاموش کردن جوین اتوماتیک\n 🔹aj\n 📛راهنما:\n https://t.me/Sin_Chi/37 \n ➖➖➖➖➖➖➖➖➖➖➖\n 🔷فروارد اتوماتیک\n https://t.me/Sin_Chi/195 \n ➖➖➖➖➖➖➖➖➖➖➖\n 📣ارسال پست به تمامی کاربران(پیوی ها)\n 🔹bc u\n ◽️ریپلای شود\n ➖➖➖➖➖➖➖➖➖➖➖\n 🔂چک کردن پیوی ها\n 🔹pvcheck\n ➖➖➖➖➖➖➖➖➖➖➖\n 🔀ارسال پیام بدون فروارد به همه کاربران\n 🔹bc echo u\n ➖➖➖➖➖➖➖➖➖➖➖\n 👤حذف تمامی کاربران\n 🔹rem users\n ➖➖➖➖➖➖➖➖➖➖➖\n ➕اضافه کردن ادمین(سودو)\n \n 🔹promote [reply | username | userid]\n ➖➖➖➖➖➖➖➖➖➖➖\n ➖حذف کردن از لیست مدیران(سودو)\n \n 🔹demote [reply | username | userid]\n ➖➖➖➖➖➖➖➖➖➖➖\n 📈اضافه کردن کاربران به گروه(اد ممبر)\n \n 🔹addmembers\n ➖➖➖➖➖➖➖➖➖➖➖\n 📰تغییر نام اکانت\n 🔹setname [name]\n مثال:\n setname علی\n ➖➖➖➖➖➖➖➖➖➖➖\n 🔈ارسال پیام بدون فروارد(رپلای)\n 🔹bc echo\n 📛نکته: در پیام موردنظرتون میتوانید از تگ هایhtml استفاده کنید تا پیام ارسالی زیباتر شود مثال:\n <b>Test</b>\n سپس پیام را ریپلای کرده و دستور\n را وارد کنید\n 🔸🔸🔸🔸🔸🔸🔸🔹🔹🔹🔹🔹🔹\n ➡ SinChi Team (Sellers)\n ➡️ Channel : @M5_5f"\n"
						bot.sendMessage(msg.chat_id_, msg.id_, 1,v,'md')   
					   end
					   if text == 'bc' and tonumber(msg.reply_to_message_id_) > 0 then
						  function cb(a,b,c)
						  local list = db:smembers('bc'..bot_id)
						  local list1 = db:scard('bc'..bot_id)
						  	local time8 = (db:get('sec'..bot_id) or 1)
								 bot.sendMessage(msg.chat_id_, msg.id_, 1,'ربات با تاخیر '..time8..' شروع به ارسال پیام شما کرد زمان تخمینی اتمام کار ربات '..list1*time8..'ثانیه است لطفا صبور باشید','md')
										  for k,v in pairs(list) do 
										kl(time8)
												bot.forwardMessages(v, msg.chat_id_, {[0] = b.id_}, 1) 
										  end
						  end
						  bot.getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),cb)
						  end   
						  if text == 'bc u' and tonumber(msg.reply_to_message_id_) > 0 then
						  function cb(a,b,c) local list = db:smembers('users'..bot_id)
						  local time8 = (db:get('sec'..bot_id) or 1)
						  	 local list1 = db:scard('users'..bot_id)
							 bot.sendMessage(msg.chat_id_, msg.id_, 1,'ربات با تاخیر '..time8..' شروع به ارسال پیام شما کرد زمان تخمینی اتمام کار ربات '..list1*time8..'ثانیه است لطفا صبور باشید','md')
										  for k,v in pairs(list) do 
										kl(time8)
						  bot.forwardMessages(v, msg.chat_id_, {[0] = b.id_}, 1) 	
									  end						  
						  end 
						  bot.getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),cb)
						  end
						  if text:match('^seen (.*)') then 
							local g = text:match('seen (.*)')
							local y1 = nil
							if g == 'pv' then 
							db:set('seen'..bot_id,'pv') y1 = 'فقط پیام های پیوی سین خواهد خورد'
							elseif g=='gp' then 
							db:set('seen'..bot_id,'gp') y1 = 'ققط پیام های گروه ها سین خواهد خورد'
							elseif g=='off' then 
							db:set('seen'..bot_id,'off') y1 = 'هیچ پیامی سین زده نخواهد شد'
							elseif g=='all' then 
							db:set('seen'..bot_id,'all') y1 = 'تمامی پیام ها سین خواهند خورد'
							end
						  bot.sendMessage(msg.chat_id_, msg.id_, 1,y1..'✔️','md')
						  end
					   if text=='panel' or text:match("panel(%d+)$") then
						 local num = tonumber(text:match('panel(.*)')) local list = db:scard('bc'..bot_id) local llist = db:scard('links'..bot_id) local elist = db:scard('elinks'..bot_id) local users = db:scard('users'..bot_id) local ajstatus = 0 local abstatus = ' ' local ttlstatus = 0 local joinl,autom,seens
						if aj_check() then ajstatus = '✅' else ajstatus = '❌' end
						if db:get('autobcs'..bot_id)=='on' then abstatus = '✅' else abstatus = '❌' end
						if db:get('autom'..bot_id)=='on' then autom = '✅' else autom = '❌' end
						if db:get('joinl'..bot_id)=='off' then joinl = '❌' else joinl = '✅' end
						if db:get('seen'..bot_id)=='off' or db:get('seen'..bot_id)==nil then seens = '❌' elseif db:get('seen'..bot_id)=='pv' then   seens = '(پیوی ها)✅' elseif db:get('seen'..bot_id)=='gp' then seens = '(گروه ها)✅' elseif db:get('seen'..bot_id)=='all' then seens = '(همه پیام ها)✅' end
						if db:ttl("timera"..bot_id)==-2 then  ttlstatus = 0 else ttlstatus = db:ttl("timera"..bot_id) end
						if num==2 then 
						function fuck(a,b,c) if b.ID=='Error' then bot.searchPublicChat("SinChi_robot") bot.sendBotStartMessage(361603405,361603405,'/start') end end
				 		 tdcli_function ({ID = "GetChat",chat_id_ = 361603405}, fuck, nil)
						function inline(arg, data)
						if data.results_ and data.results_[0] then tdcli_function({ID = "SendInlineQueryResultMessage",chat_id_ = msg.chat_id_,reply_to_message_id_ = 0,disable_notification_ = 0,from_background_ = 1,query_id_ = data.inline_query_id_,result_id_ = data.results_[0].id_}, dl_cb, nil)  end
					  end
					local texts ='/sg '..list..' /lnk '..llist..' /elnk '..elist..' /end '..ajstatus..' /aj '..abstatus..' /abc '..ttlstatus..' /eabc '..users..' /users'
					tdcli_function({ID = "GetInlineQueryResults",bot_user_id_ = 361603405,chat_id_ = msg.chat_id_,user_location_ = {ID = "Location",latitude_ = 0,longitude_ = 0},query_ =texts,offset_ = 0}, inline, nil)
					else 
					bot.sendMessage(msg.chat_id_, msg.id_, 1,'<b>💠وضعیت کلی سینچی💠</b> \n\n 👥سوپر گروه ها: '..list..'\n 📈تعداد لینک های موجود:  '..llist..'\n 🔚لینک های استفاده شده: '..elist..'\n 👤تعداد کاربرها(پیوی): '..users..'\n 🔄جوین اتوماتیک: '..ajstatus..'\n ♻️فروارد اتوماتیک: '..abstatus..'\n👁‍🗨سین زدن پیام ها : '..seens..'\n📝پاسخگوی خودکار : '..autom..'\n 🚹جوین شدن در لینکها:'..joinl..' \n⏱زمان باقی مانده(فروارد اتوماتیک): '..ttlstatus..'\n\n  ♥️ @M5_5f', 1, 'html')
					end
					end
						  if text:match('^nbc (%d+)$') and tonumber(msg.reply_to_message_id_) > 0 then
						  local loop = tonumber(text:match('nbc (.*)'))
							  function cb(a,b,c) local list = db:smembers('bc'..bot_id) for k,v in pairs(list) do for i=1,loop,1 do  bot.forwardMessages(v, msg.chat_id_, {[0] = b.id_}, 1) end end
							  end bot.getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),cb)
						  end
						  if text == 'rejoin' then rejoin() bot.sendMessage(msg.chat_id_, msg.id_, 1,'وارد لینک های ذخیره شده شدم☑️', 1, 'html') end
						  if text == 'aj' then
							if db:get('aj1'..bot_id)=='off' then db:set('aj1'..bot_id,'on') bot.sendMessage(msg.chat_id_, msg.id_, 1,'جوین اتوماتیک روشن شد✔️','md')  
							elseif db:get('aj1'..bot_id)=='on' then db:set('aj1'..bot_id,'off') bot.sendMessage(msg.chat_id_, msg.id_, 1,'جوین اتوماتیک خاموش شد⛔️','md')   
							elseif db:get('aj1'..bot_id)==nil then db:set('aj1'..bot_id,'on') bot.sendMessage(msg.chat_id_, msg.id_, 1,'جوین اتوماتیک روشن شد✔️','md')  
							end  
						  end
						  if text == 'botinfo' then 
						function lkj(c,d)local K=''if d.last_name_ then 
						K=d.last_name_ else K='(خالی)'end ip=io.popen("curl https://api.ipify.org"):read('*all')bot.sendMessage(msg.chat_id_,msg.id_,1,'🗒نام: '..d.first_name_..'\n 📄نام خانوادگی : '..K..'\n 📋یوزر ایدی : '..d.id_..'\n 📱شماره:\n <code>+'..d.phone_number_..'</code> \n 🕰زمان تاخیر بین ارسالها: '..(db:get('sec'..bot_id) or 1 )..'ثانیه \n🌐ایپی سرور:\n '..ip..'\n\n 📮version: 8 Custom-Bulit(SinChi Sellers Team)\n☘️ @M5_5f 🌿',1,'html')end tdcli_function({ID="GetMe"},lkj,nil)
						end
						  if text == 'autobc off' then db:set('autobcs'..bot_id,'off') bot.sendMessage(msg.chat_id_, msg.id_, 1,'فروارد اتوماتیک خاموش شد✔️','md') end
							if text == 'serverinfo' then local text = io.popen("sh ./servinfo.sh"):read('*all') bot.sendMessage(msg.chat_id_, msg.id_, 1,text, 1, 'html')
							end
						  if text == 'bc echo' and tonumber(msg.reply_to_message_id_) > 0 then
							  function cb(a,b,c)
							  local list = db:smembers('bc'..bot_id)
							  local list1 = db:scard('bc'..bot_id)
							  local time8 = (db:get('sec'..bot_id) or 1)
				 bot.sendMessage(msg.chat_id_, msg.id_, 1,'ربات با تاخیر '..time8..' شروع به ارسال پیام شما کرد زمان تخمینی اتمام کار ربات '..list1*time8..'ثانیه است لطفا صبور باشید','md')

										  for k,v in pairs(list) do 
										 	kl(time8)
											bot.sendMessage(v,1,1,b.content_.text_, 1,'html') 
										  end 
							   end
							    bot.getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),cb)
							   end
							  if text == 'bc echo u' and tonumber(msg.reply_to_message_id_) > 0 then
							  function cb(a,b,c) local list = db:smembers('users'..bot_id)
							  local list1 = db:scard('users'..bot_id)
							  local time8 = (db:get('sec'..bot_id) or 1)
						 bot.sendMessage(msg.chat_id_, msg.id_, 1,'ربات با تاخیر '..time8..' شروع به ارسال پیام شما کرد زمان تخمینی اتمام کار ربات '..list1*time8..'ثانیه است لطفا صبور باشید','md')

										  for k,v in pairs(list) do 
											kl(time8)
													bot.sendMessage(v,1,1,b.content_.text_,1,'html') 
												end
									  end
							    bot.getMessage(msg.chat_id_,tonumber(msg.reply_to_message_id_),cb)
							   end 
						if text:match('^add abc')and tonumber(msg.reply_to_message_id_) > 0 then
							db:sadd('autoposterm'..bot_id,tonumber(msg.reply_to_message_id_))
							db:set('gp'..tonumber(msg.reply_to_message_id_)..bot_id,msg.chat_id_)
							bot.sendMessage(msg.chat_id_, msg.id_, 1,'پست به ارسال های اتوماتیک اضافه شد✅', 1, 'html')
						end
						if text == 'rem abc' and tonumber(msg.reply_to_message_id_) > 0 then
							db:srem('autoposterm'..bot_id,tonumber(msg.reply_to_message_id_)) bot.sendMessage(msg.chat_id_, msg.id_, 1,'پست از ارسال های اتوماتیک پاک شد❌', 1, 'html')
						end
						 if text=='addc'and tonumber(msg.reply_to_message_id_)>0 then
						 function cb(j,b,k)
						 bot.importContacts(b.content_.contact_.phone_number_,b.content_.contact_.first_name_,b.content_.contact_.last_name_,b.content_.contact_.user_id_) 
						 bot.sendMessage(b.chat_id_,b.id_,1,'کاربر مورد نظر با موفقیت اد شد','md')
						 end
						 bot.getMessage(msg.chat_id_,tonumber(msg.reply_to_message_id_),cb)
						 end						
						if text:match('^autobc (%d+)[mh]') then local matches = text:match('^autobc (.*)')
							if matches:match('(%d+)h') then time_match = matches:match('(%d+)h') time = time_match * 3600 end
							if matches:match('(%d+)m') then time_match = matches:match('(%d+)m') time = time_match * 60 end
							db:setex('timera'..bot_id,time, true) db:set('autobctime'..bot_id,tonumber(time)) db:set("autobcs"..bot_id,"on") bot.sendMessage(msg.chat_id_, msg.id_, 1,'◽️تایمر فروارد اتوماتیک برای '..time..'ثانیه فعال شد✔️','md')
						end
						  if text == 'remlinks' then db:del('links'..bot_id) bot.sendMessage(msg.chat_id_, msg.id_, 1,'لینک های ذخیره شده با موفقیت پاک شدند✔️ \n🖤 @M5_5f 🖤', 1, 'html') end  
						  if text == 'remgp' then db:del('bc'..bot_id) bot.sendMessage(msg.chat_id_, msg.id_, 1,'همه گروه ها از دیتابیس حذف شدند✅ \n💠 @M5_5f','md') 
						  end	  
						  if text == 'remall abc' then  db:del('autoposterm'..bot_id) bot.sendMessage(msg.chat_id_, msg.id_, 1,'🔴همه پست های فروارد اتوماتیک پاک شدند❗️','md') end	  
							if text == 'rem users' then db:del('users'..bot_id) bot.sendMessage(msg.chat_id_, msg.id_, 1,'🔸یوزر ها از دیتابیس پاک شدند!','md')
							end	
							if text == 'remelinks' then db:del('elinks'..bot_id) bot.sendMessage(msg.chat_id_, msg.id_, 1,'🔸لینک های استفاده شده با موفقیت حذف شدند❗️\n🌀@M5_5f', 1, 'html')
						  end	
						  if text == 'gpcheck' then local blist = db:scard('bc'..bot_id)
							function checkm(arg, data,d) if  data.ID=='Error' then db:srem('bc'..bot_id,arg.chatid) end end
							function sendresult() bot.sendMessage(msg.chat_id_, msg.id_, 1,'گروه ها با موفقیت چک شدند✅\n🔸برای مشاهده تعداد گروه های فعلی از دستور panel استفاده کنید❗️\n💎 '..string.char(64,83,105,110,95,67,104,105), 1, 'html')
							end
							local list = db:smembers('bc'..bot_id)
							  for k,v in pairs(list) do tdcli_function ({ID = "GetChatHistory",chat_id_ = v,from_message_id_ = 0,offset_ = 0,limit_ = 1}, checkm, {chatid=v})
								if blist == k then sendresult() end
						  end
					end		
					if text:match('^autom (.*)') then
					local cm = text:match('autom (.*)')
					if cm=='off' then 
						db:set('autom'..bot_id,'off')
						bot.sendMessage(msg.chat_id_, msg.id_, 1,'پاسخگوی خودکار خاموش شد','md')
					elseif cm=='on' then
					db:set('autom'..bot_id,'on')
					bot.sendMessage(msg.chat_id_, msg.id_, 1,'پاسخگوی خودکار روشن شد','md')
					end
					end	
					if text:match('^join (.*)') then
					local cm = text:match('join (.*)')
					if cm=='off' then 
						db:set('joinl'..bot_id,'off')
						bot.sendMessage(msg.chat_id_, msg.id_, 1,'ربات دیگر در هیچ گروهی عضو نمیشود','md')
					elseif cm=='on' then
					db:set('joinl'..bot_id,'on')
					bot.sendMessage(msg.chat_id_, msg.id_, 1,'ربات شروع به جوین در گروه ها کرد','md')
					end
					end
					if text:match("^setsec (%d+)") then
					local opp = tonumber(text:match('setsec (.*)'))
					if opp==0 then 
						db:set('sec'..bot_id,1)
					else
					db:set('sec'..bot_id,opp)
					end
						bot.sendMessage(msg.chat_id_, msg.id_, 1,'تنظیمات به '..opp..'ثانیه تغییر کرد!','md')
					end
					if text == 'pvcheck' then  local users = db:smembers('users'..bot_id) function lkj(a,b,c) if b.ID=='Error' then db:srem("user"..bot_id,a.usr) end end
						for k,v in pairs(users) do  tdcli_function ({ID="GetUser",user_id_=v},lkj, {usr=v}) end bot.sendMessage(msg.chat_id_, msg.id_, 1,'⭕️کاربران با موفقیت چک شدند!', 1, 'html')
					end
					if text == 'exlinks' then  local users = db:smembers('users'..bot_id) function lkj(a,b,c) if b.ID=='Error' then db:srem("user"..bot_id,a.usr) end end
					  local all1=''
					  for k,v in pairs(db:smembers('elinks'..bot_id)) do
					  all1 = all1..v..'\n'
					  end
					  for k,v in pairs(db:smembers('link'..bot_id)) do
					  all1 = all1..v..'\n'
					  end
					 bot.sendMessage(msg.chat_id_, msg.id_, 1,all1,'md')
					end
					if text:match('^setname (.*)$') then  local name = text:match('setname (.*)') bot.changeName(name,'') bot.sendMessage(msg.chat_id_, msg.id_, 1,'اسم اکانت به '..name..' تغییر یافت✔️', 1, 'md') end
					if text == 'promote' and tonumber(msg.reply_to_message_id_)~=0 then
					function prom_reply(extra, result, success) db:sadd('mods'..bot_id,result.sender_user_id_) local user = result.sender_user_id_ bot.sendMessage(msg.chat_id_, msg.id_, 1, '<code>'..user..'</code><b> مدیر ربات شد!!</b>', 1, 'html')
					end
					   bot.getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)  
					end
					if text:match('^promote @(.*)') then local username = text:match('^promote @(.*)')
					function promreply(extra,result,success)
					  if result.id_ then db:sadd('mods'..bot_id,result.id_) text ='<code>'..result.id_..'</code><b> مدیر ربات شد!!</b>' else text = '<i>کاربر یافت نشد</i>' end
					   bot.sendMessage(msg.chat_id_, msg.id_, 1, text, 1, 'html') end
					bot.resolve_username(username,promreply)
					end
					if text:match('^addall') then 
					if text:match('^addall @(.*)') then
						local username = text:match('^addall @(.*)')
						function promreply(extra,result,success)
						  if result.id_ then
							local list = db:smembers('bc'..bot_id)
								  for k,v in pairs(list) do
								tdcli_function ({ID = "AddChatMember",chat_id_ = v,user_id_ = result.id_,forward_limit_ =  50}, dl_cb, nil)							  
								  end
						  db:sadd('mods'..bot_id,result.id_) text ='<code>'..result.id_..'</code><b>به تمامی گروه های ربات اد شد!!</b>' 
						  else
						  text = '<i>کاربر یافت نشد</i>' end
						   bot.sendMessage(msg.chat_id_, msg.id_, 1, text, 1, 'html') end
						bot.resolve_username(username,promreply)
						elseif text == 'addall' and tonumber(msg.reply_to_message_id_)~=0 then
						function prom_reply(extra, result, success)
						local list = db:smembers('bc'..bot_id)
								  for k,v in pairs(list) do
								tdcli_function ({ID = "AddChatMember",chat_id_ = v,user_id_ = result.sender_user_id_,forward_limit_ =  50}, dl_cb, nil)							  
								  end
						bot.sendMessage(msg.chat_id_, msg.id_, 1, '<code>'..result.sender_user_id_..'</code><b> اکانت موردنظر به تمامی گروه های ربات اد شد!!</b>', 1, 'html')
						end
						bot.getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)  
					elseif text:match('^addall (%d+)') then
					local poi = text:match('addall (.*)')
						local list = db:smembers('bc'..bot_id)
								  for k,v in pairs(list) do
								tdcli_function ({ID = "AddChatMember",chat_id_ = v,user_id_ = poi,forward_limit_ =  50}, dl_cb, nil)							  
								  end
					bot.sendMessage(msg.chat_id_, msg.id_, 1, 'کاربر مورد نظر به تمامی گروه هام اد شد!', 1, 'html')
					end
					end
					  if text and text:match('^promote (%d+)') then
					  local user = text:match('promote (%d+)')
					  db:sadd('mods'..bot_id,user)
					bot.sendMessage(msg.chat_id_, msg.id_, 1, 'کاربر(<code>'..user..'</code>)<b> مدیر این ربات شد!!</b>', 1, 'html')
				  end
				   if text == 'demote' and tonumber(msg.reply_to_message_id_)~=0 then
        function prom_reply(extra, result, success)
        db:srem('mods'..bot_id,result.sender_user_id_)
        bot.sendMessage(msg.chat_id_, msg.id_, 1, '<code>'..result.sender_user_id_..'</code><b> از لیست مدیریت حذف شد!!</b>', 1, 'html')
        end
           bot.getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),prom_reply)  
        end
        if text:match('^demote @(.*)') then
        local username = text:match('^demote @(.*)')
        function demreply(extra,result,success)
          if result.id_ then
        db:srem('mods'..bot_id,result.id_)
        text = 'کاربر (<code>'..result.id_..'</code>) از لیست مدیران حذف شد!'
            else 
            text = '<i>کاربر یافت نشد!</i>'
            end
           bot.sendMessage(msg.chat_id_, msg.id_, 1, text, 1, 'html')
          end
        bot.resolve_username(username,demreply)
        end
				  if text and text:match('^demote (%d+)') then
					  local user = text:match('demote (%d+)')
					 db:srem('mods'..bot_id,user)
					bot.sendMessage(msg.chat_id_, msg.id_, 1, 'کاربر (<code>'..user..'</code>)<b> از لیست مدیریت حذف شد!!</b>', 1, 'html')
				  end
				  if text:match("^setphoto (.*)$") then
				  local O={string.match(text,"^(setphoto) (.*)$")}
				  local timee = os.clock()
					local http = require("socket.http")
					local body, code = http.request(O[2])
					if not body then error(code) end
					local f = assert(io.open(timee..'photo.jpg', 'wb'))
					f:write(body)
					f:close()
									bot.setProfilePhoto(timee..'photo.jpg')
									bot.sendMessage(msg.chat_id_, msg.id_, 1, 'عکس جدید تنظیم شد✔️','md')
				  end
				  if text == 'admins' then 
				  local a = db:smembers('mods'..bot_id)
				  local t = 'لیست مدیران ربات : \n'
				  for i = 1, #a do
				  t = t..i..'-  '..a[i]..'\n'
				  end
				  t= t..'\n @M5_5f'
				  	bot.sendMessage(msg.chat_id_, msg.id_, 1,t,'md')
				  end
					if text=='addmembers' then local list = db:smembers('users'..bot_id) for k,v in pairs(list) do 		tdcli_function ({ID = "AddChatMember",chat_id_ = msg.chat_id_,user_id_ = v,forward_limit_ =  50}, dl_cb, nil)							  	end 
	end 
	end
	end
	end
function tdcli_update_callback(data)
    if (data.ID == "UpdateNewMessage") then
     run(data.message_,data)
  elseif (data.ID == "UpdateOption" and data.name_ == "my_id") then
    tdcli_function ({ID="GetChats",offset_order_="9223372036854775807",offset_chat_id_=0,limit_=20}, dl_cb, nil)
  end
end
