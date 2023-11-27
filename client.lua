addEventHandler("onClientResourceStart", resourceRoot,
	function ()
		for hash, list in pairs(textures) do
			local shader = dxCreateShader("shader.fx")
			local texture = dxCreateTexture("files/" .. hash .. ".png")
			
			for _, name in ipairs(list) do
				if shader and texture then
					dxSetShaderValue(shader, "gTexture", texture)
					engineApplyShaderToWorldTexture(shader, name)
				end
			end
		end
	end
)