import QtQuick 1.1
import com.nokia.meego 1.0
import "utils.js" as Utils

Button {
    id: key
    property int keycode: 0
    text: Utils.keysym[keyboard.mode][keycode][keyboard.mask]
    onPressedChanged:
    {
        if(!checkable)
        {
            if(pressed)
            {
                keyboard.press_key(key)
            }
            else
            {
                keyboard.release_key(key)
            }
        }
    }
    onCheckedChanged:
    {
        if(checkable)
        {
            if(checked)
            {
                keyboard.press_key(key)
            }
            else
            {
                keyboard.release_key(key)
            }
        }
    }
}
