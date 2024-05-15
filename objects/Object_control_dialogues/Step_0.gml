// NAvigate text and options

var _count = ChatterboxGetOptionCount(chatterbox);

if (ChatterboxIsWaiting(chatterbox) && mouse_check_button_pressed(mb_left))
{
    ChatterboxContinue(chatterbox);
    chatterbox_update();
}
else if (_count > 0) // Перевірка наявності опцій
{
    var _key = mouse_check_button_pressed(mb_left);
    
    repeat (1 + (!ChatterboxGetOptionConditionBool(chatterbox, wrap(option_index + _key, 0, _count - 1))))
    {
        option_index = wrap(option_index + _key, 0 , _count - 1);
    }
    
    if mouse_check_button_pressed(mb_right)
    {
        ChatterboxSelect(chatterbox, option_index);
        option_index = 0;
        
        chatterbox_update();
    }
}	

if (ChatterboxIsStopped(chatterbox))
{
    instance_destroy();
}