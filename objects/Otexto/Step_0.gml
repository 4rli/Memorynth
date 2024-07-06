var up_key = keyboard_check_pressed(vk_up);
var down_key = keyboard_check_pressed(vk_down);

pos += down_key-up_key;

if pos >= op_tamanho {pos = 0};
if pos < 0 {pos = op_tamanho-1};

