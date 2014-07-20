
require("config")
require("framework.init")

local MyApp = class("MyApp", cc.mvc.AppBase)

function MyApp:ctor()
    MyApp.super.ctor(self)
end

function MyApp:run()
    CCFileUtils:sharedFileUtils():addSearchPath("res/")
    -- self:enterScene("MainScene")
    self:enterScene("Hello")
end

-- 跳转到一个指定的场景
function MyApp:enterMyScene( scene,time )
	self:enterScene(scene,nil,"fade",time)
end

return MyApp
