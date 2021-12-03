/// @description Draw Minimap
if keyboard_check(vk_tab)
{
scr_minimap(wview/6,hview/6,25);
}
else
{scr_minimap(wview/1.4,hview/1.5,50);} //This means the position of it and lastly the size of it. Configure it to your needs!