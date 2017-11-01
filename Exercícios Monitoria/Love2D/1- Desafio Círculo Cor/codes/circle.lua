function checaToqueC(toquex, toquey, centrox, centroy, r)
	

	if (centrox - toquex)^2 + (centroy - toquey)^2 < r^2 then
		return true
	else 
		return false	
	end
end




