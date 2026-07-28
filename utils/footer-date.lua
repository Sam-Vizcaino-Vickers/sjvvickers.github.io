
-- original function
-- function Meta(meta)
--	local formatted_date = os.date("%e %B, %Y")
--	meta.build_year = os.date("%Y")
-- 	meta.build_date = formatted_date:match("^%s*(.-)$")
--	return meta
-- end


-- curent function 

function Meta(meta)
  -- Use %d (day of month, zero-padded) for Windows compatibility
  local day   = os.date("%d")
  local month = os.date("%B")
  local year  = os.date("%Y")

  -- Remove leading zero from day
  day = tostring(tonumber(day))

  local formatted_date = day .. " " .. month .. ", " .. year
  meta.build_year = year
  meta.build_date = formatted_date

  return meta
end
