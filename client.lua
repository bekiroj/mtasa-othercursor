author = 'github.com/bekiroj'
dxDrawImage = dxDrawImage
sX, sY = guiGetScreenSize()

function renderCursor()
 if isCursorShowing() then
  local cX, cY = getCursorPosition()
  cX, cY = cX * sX, cY * sY
  if dxDrawImage(cX, cY, 32, 32,'components/cursor.png', 0, 0, 0, tocolor(255, 255, 255, 255), true) then
   setCursorAlpha(0)
  else
   setCursorAlpha(255)
  end
 end
end
addEventHandler("onClientRender", root, renderCursor, true, "low-9999999")