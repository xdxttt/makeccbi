

function makeccb(info_table)

local file_name = info_table['file_name']
local action_count = #info_table["frame_name"];
local frame_size = info_table["frame_size"];
local frame_time = info_table["frame_time"];
local frame_name = info_table["frame_name"];


local str = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n"
str = str.."<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">\r\n"
str = str.."<plist version=\"1.0\">\r\n"
str = str.."<dict>\r\n"
str = str.."	<key>centeredOrigin</key>\r\n"
str = str.."	<false/>\r\n"
str = str.."	<key>currentResolution</key>\r\n"
str = str.."	<integer>0</integer>\r\n"
str = str.."	<key>currentSequenceId</key>\r\n"
str = str.."	<integer>0</integer>\r\n"
str = str.."				<key>fileType</key>\r\n"
str = str.."				<string>CocosBuilder</string>\r\n"
str = str.."				<key>fileVersion</key>\r\n"
str = str.."				<integer>4</integer>\r\n"
str = str.."				<key>guides</key>\r\n"
str = str.."				<array/>\r\n"
str = str.."				<key>jsControlled</key>\r\n"
str = str.."				<true/>\r\n"
str = str.."				<key>nodeGraph</key>\r\n"
str = str.."	<dict>\r\n";
str = str.."		<key>animatedProperties</key>\r\n";
str = str.."		<dict>\r\n";

frame_index = 0
for i=1,action_count do
	local action_time = 0.0
str = str.."		<key>"..(i-1).."</key>\r\n"
str = str.."		<dict>\r\n"
str = str.."			<key>displayFrame</key>\r\n"
str = str.."				<dict>\r\n"
str = str.."					<key>keyframes</key>\r\n"
str = str.."					<array>\r\n"

	for j=1,frame_size[i] do

str = str.."					<dict>\r\n"
str = str.."						<key>easing</key>\r\n"
str = str.."						<dict>\r\n"
str = str.."							<key>type</key>\r\n"
str = str.."							<integer>0</integer>\r\n"
str = str.."						</dict>\r\n"
str = str.."						<key>name</key>\r\n"
str = str.."						<string>displayFrame</string>\r\n"
str = str.."						<key>time</key>\r\n"
str = str.."						<real>"..action_time.."</real>\r\n"
str = str.."						<key>type</key>\r\n"
str = str.."						<integer>7</integer>\r\n"
str = str.."						<key>value</key>\r\n"
str = str.."						<array>\r\n"
str = str.."							<string>"..file_name.."_"..frame_index..".png</string>\r\n"
str = str.."							<string>ccbResources/AnimSpr/Monster/"..file_name..".plist</string>\r\n"
str = str.."						</array>\r\n"
str = str.."					</dict>\r\n"

	frame_index = frame_index+1
	action_time = action_time + 0.05
	end

str = str.."					</array>\r\n"
str = str.."						<key>name</key>\r\n"
str = str.."						<string>displayFrame</string>\r\n"
str = str.."						<key>type</key>\r\n"
str = str.."						<integer>7</integer>\r\n"
str = str.."				</dict>\r\n"
str = str.."			</dict>\r\n"
	frame_time[i] = action_time - 0.05
end
str = str.."		</dict>\r\n"
str = str.."		<key>baseClass</key>\r\n"
str = str.."		<string>CCSprite</string>\r\n"
str = str.."		<key>children</key>\r\n"
str = str.."		<array/>\r\n"
str = str.."			<key>customClass</key>\r\n"
str = str.."			<string></string>\r\n"
str = str.."			<key>displayName</key>\r\n"
str = str.."			<string>CCSprite</string>\r\n"
str = str.."			<key>memberVarAssignmentName</key>\r\n"
str = str.."			<string></string>\r\n"
str = str.."			<key>memberVarAssignmentType</key>\r\n"
str = str.."			<integer>0</integer>\r\n"
str = str.."			<key>properties</key>\r\n"
str = str.."			<array>\r\n"
str = str.."				<dict>\r\n"
str = str.."					<key>name</key>\r\n"
str = str.."					<string>anchorPoint</string>\r\n"
str = str.."					<key>type</key>\r\n"
str = str.."					<string>Point</string>\r\n"
str = str.."					<key>value</key>\r\n"
str = str.."					<array>\r\n"
str = str.."						<real>0.5</real>\r\n"
str = str.."						<real>0.5</real>\r\n"
str = str.."					</array>\r\n"
str = str.."				</dict>\r\n"
str = str.."			<dict>\r\n"
str = str.."				<key>name</key>\r\n"
str = str.."				<string>scale</string>\r\n"
str = str.."				<key>type</key>\r\n"
str = str.."				<string>ScaleLock</string>\r\n"
str = str.."				<key>value</key>\r\n"
str = str.."				<array>\r\n"
str = str.."					<real>1</real>\r\n"
str = str.."					<real>1</real>\r\n"
str = str.."					<false/>\r\n"
str = str.."					<integer>0</integer>\r\n"
str = str.."				</array>\r\n"
str = str.."			</dict>\r\n"
str = str.."			<dict>\r\n"
str = str.."				<key>name</key>\r\n"
str = str.."				<string>ignoreAnchorPointForPosition</string>\r\n"
str = str.."				<key>type</key>\r\n"
str = str.."				<string>Check</string>\r\n"
str = str.."				<key>value</key>\r\n"
str = str.."				<false/>\r\n"
str = str.."			</dict>\r\n"
str = str.."			<dict>\r\n"
str = str.."				<key>baseValue</key>\r\n"
str = str.."				<array>\r\n"
str = str.."					<string>"..file_name..".png</string>\r\n"
str = str.."					<string>ccbResources/AnimSpr/Monster/"..file_name..".plist</string>\r\n"
str = str.."				</array>\r\n"
str = str.."				<key>name</key>\r\n"
str = str.."				<string>displayFrame</string>\r\n"
str = str.."				<key>type</key>\r\n"
str = str.."				<string>SpriteFrame</string>\r\n"
str = str.."				<key>value</key>\r\n"
str = str.."				<array>\r\n"
str = str.."					<string>ccbResources/AnimSpr/Monster/"..file_name..".plist</string>\r\n"
str = str.."					<string>"..file_name..".png</string>\r\n"
str = str.."				</array>\r\n"
str = str.."			</dict>\r\n"
str = str.."		</array>\r\n"
str = str.."		<key>seqExpanded</key>\r\n"
str = str.."					<true/>\r\n"
str = str.."				</dict>\r\n"
str = str.."				<key>notes</key>\r\n"
str = str.."				<array/>\r\n"
str = str.."				<key>resolutions</key>\r\n"
str = str.."				<array>\r\n"
str = str.."					<dict>\r\n"
str = str.."						<key>centeredOrigin</key>\r\n"
str = str.."						<false/>\r\n"
str = str.."						<key>ext</key>\r\n"
str = str.."						<string> </string>\r\n"
str = str.."						<key>height</key>\r\n"
str = str.."						<integer>0</integer>\r\n"
str = str.."						<key>name</key>\r\n"
str = str.."						<string>iPhone</string>\r\n"
str = str.."						<key>scale</key>\r\n"
str = str.."						<real>1</real>\r\n"
str = str.."						<key>width</key>\r\n"
str = str.."						<integer>0</integer>\r\n"
str = str.."					</dict>\r\n"
str = str.."				</array>\r\n"
str=str.."		<key>sequences</key>\r\n"
str=str.."		<array>\r\n"

	for i=1,action_count do
str=str.."			<dict>\r\n"
str = str.."			<key>autoPlay</key>\r\n"
str = str.."			<true/>\r\n"
str = str.."			<key>chainedSequenceId</key>\r\n"
str = str.."			<integer>-1</integer>\r\n"
str = str.."			<key>length</key>\r\n"
str = str.."			<real>"..frame_time[i].."</real>\r\n"
str = str.."			<key>name</key>\r\n"
str = str.."			<string>"..frame_name[i].."</string>\r\n"
str = str.."			<key>offset</key>\r\n"
str = str.."			<real>0.13398438692092896</real>\r\n"
str = str.."			<key>position</key>\r\n"
str = str.."			<real>0.80000001192092896</real>\r\n"
str = str.."			<key>resolution</key>\r\n"
str = str.."			<real>30</real>\r\n"
str = str.."			<key>scale</key>\r\n"
str = str.."			<real>512</real>\r\n"
str = str.."			<key>sequenceId</key>\r\n"
str = str.."			<integer>"..(i-1).."</integer>\r\n"
str = str.."		</dict>\r\n"
	end

str = str.."	</array>\r\n"
str = str.."	<key>stageBorder</key>\r\n"
str = str.."	<integer>3</integer>\r\n"
str = str.."</dict>\r\n"
str = str.."</plist>\r\n"


local file=io.open(file_name..".ccb","w")
print(file_name);
file:write(str)
io.close()

end
