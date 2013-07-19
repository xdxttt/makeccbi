ccb_list = {}

require("ccb_make_fun")
require("ccb_configs")

for i=1,#ccb_list do
	makeccb(ccb_list[i])
end
