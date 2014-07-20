local Hello = class("Hello",function (  )
	return display.newScene("Hello")
	end)

function Hello:ctor(  )
	printInfo("进入Hello场景中的init方法")
	-- 将一个按钮添加到屏幕中间偏左下角150
	display.newSprite("Button.png", display.cx-150, display.cy-150):zorder(2):addTo(self)

	local function onButtonClicked(tag)
		printInfo "Button Clicked !!!"
	end

	local buttonItem = ui.newImageMenuItem({
		image = "close.png",
		imageSelected = "Cursor.png",
		-- listener = onButtonClicked
		listener = function (  )
			printInfo "Button Clicked !!!"
			-- 跳转到MainScene场景
			app:enterMyScene("MainScene", 0.5)
		end
		})

	local menu = ui.newMenu({
		buttonItem
		})

	-- 将这个按钮添加到屏幕中间
	menu:pos(display.cx, display.cy)
	self:addChild(menu,1)

end

function Hello:onEnter(  )
	printInfo("进入Hello场景中的onEnter方法")

end

function Hello:onExit(  )
	printInfo("进入Hello场景中的onExit方法")
end

return Hello