import QtQuick 1.1
import com.nokia.meego 1.0
import "utils.js" as Utils

Page {
    id: keyboard
    property int key_width: width / 10.5
    property int key_height: 60
    property int num_key_width: (width - (key_width * 1.1))/10
    property int num_key_height: 60

    property int mask: 0
    property int mode: 0

    function press_key(thekey)
    {
        var thekeysym = Utils.keysym[mode][thekey.keycode]
        if((thekey.keycode == Utils.keycode_shift_l)||
           (thekey.keycode == Utils.keycode_shift_r))
        {
            mask = Utils.keymask_shift
            connection.press_shift();
        }
        else if((thekey.keycode == Utils.keycode_alt_r)||
                (thekey.keycode == Utils.keycode_alt_r))
        {
            mask = Utils.keymask_alt
            connection.press_alt(false);
        }
        else if((thekey.keycode == Utils.keycode_alt_l)||
                (thekey.keycode == Utils.keycode_alt_l))
        {
            mask = Utils.keymask_alt
            connection.press_alt(true);
        }/*
        else if((thekey.keycode == Utils.keycode_ctrl)||
                (thekey.keycode == Utils.keycode_ctrl))
        {
            mask = Utils.keymask_ctrl
            connection.press_ctrl(true);
        }
        else if((thekey.keycode == Utils.keycode_meta)||
                (thekey.keycode == Utils.keycode_meta))
        {
            mask = Utils.keymask_meta
            connection.press_meta(true);
        }*/
        else
        {
            connection.press_key(thekey.keycode)
            if(!connection.is_connected())
            {
                mainPage.visible = true
                mousePage.visible = false
            }
        }
    }

    function release_key(thekey)
    {
        var thekeysym = Utils.keysym[mode][thekey.keycode]
        if((thekey.keycode == Utils.keycode_shift_l)||
           (thekey.keycode == Utils.keycode_shift_r))
        {
            if(mask == Utils.keymask_shift)
            {
                mask = 0;
            }
            connection.release_shift()
        }
        else if((thekey.keycode == Utils.keycode_alt_r)||
                (thekey.keycode == Utils.keycode_alt_r))
        {
            if(mask == Utils.keymask_alt)
            {
                mask = 0;
            }
            connection.release_alt(false);
        }
        else if((thekey.keycode == Utils.keycode_alt_l)||
                (thekey.keycode == Utils.keycode_alt_l))
        {
            if(mask == Utils.keymask_alt)
            {
                mask = 0;
            }
            connection.release_alt(true);
        }/*
        else if((thekey.keycode == Utils.keycode_ctrl)||
                (thekey.keycode == Utils.keycode_ctrl))
        {
            if(mask == Utils.keymask_ctrl)
            {
                mask = 0;
            }
            connection.release_ctrl(true);
        }
        else if((thekey.keycode == Utils.keycode_meta)||
                (thekey.keycode == Utils.keycode_meta))
        {
            if(mask == Utils.keymask_meta)
            {
                mask = 0;
            }
            connection.release_meta(true);
        }*/
        else
        {
            connection.release_key(thekey.keycode)
            if(!connection.is_connected())
            {
                mainPage.visible = true
                mousePage.visible = false
            }
        }
    }

    Button {
        id: mousebutton
        text: "mouse"
        width: 100
        anchors.right: parent.right
        anchors.rightMargin: 5
        anchors.top: parent.top
        anchors.topMargin: 45
        onClicked:
        {
            keyboardPage.visible = false
            mousePage.visible = true
        }
    }
    Column {
        anchors.centerIn: parent
            //Row {
            //    anchors.horizontalCenter : parent.horizontalCenter
            //    CandKey { id : key_1_2 ; keycode_l : Utils.keycode_1 ; keycode_r : Utils.keycode_2 ; width : num_key_width * 2.0 ; height : num_key_height }
            //    CandKey { id : key_3_4 ; keycode_l : Utils.keycode_3 ; keycode_r : Utils.keycode_4 ; width : num_key_width * 2.0 ; height : num_key_height }
            //    CandKey { id : key_5_6 ; keycode_l : Utils.keycode_5 ; keycode_r : Utils.keycode_6 ; width : num_key_width * 2.0 ; height : num_key_height }
            //    CandKey { id : key_7_8 ; keycode_l : Utils.keycode_7 ; keycode_r : Utils.keycode_8 ; width : num_key_width * 2.0 ; height : num_key_height }
            //    CandKey { id : key_9_0 ; keycode_l : Utils.keycode_9 ; keycode_r : Utils.keycode_0 ; width : num_key_width * 2.0 ; height : num_key_height }
            //    AutoRepeatKey { id : key_backspace ; keycode : Utils.keycode_backspace ; width : key_width * 1.1 ; height : num_key_height ; onRepeated : backspace() }
            //}
            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                /*Item { width : key_width * 0.25 ; height : key_height }*/
                //ProxyMouseArea { id : ikey_q ; width : key_width * 0.1 ; height : key_height }
                Key { id : key_q ; keycode : Utils.keycode_q ; width : key_width ; height : key_height }
                Key { id : key_w ; keycode : Utils.keycode_w ; width : key_width ; height : key_height }
                Key { id : key_e ; keycode : Utils.keycode_e ; width : key_width ; height : key_height }
                Key { id : key_r ; keycode : Utils.keycode_r ; width : key_width ; height : key_height }
                Key { id : key_t ; keycode : Utils.keycode_t ; width : key_width ; height : key_height }
                Key { id : key_y ; keycode : Utils.keycode_y ; width : key_width ; height : key_height }
                Key { id : key_u ; keycode : Utils.keycode_u ; width : key_width ; height : key_height }
                Key { id : key_i ; keycode : Utils.keycode_i ; width : key_width ; height : key_height }
                Key { id : key_o ; keycode : Utils.keycode_o ; width : key_width ; height : key_height }
                Key { id : key_p ; keycode : Utils.keycode_p ; width : key_width ; height : key_height }
                //ProxyMouseArea { id : ikey_p ; width : key_width * 0.5 ; height : key_height }
                /*ProxyMouseArea { id : ikey_backspace ; width : key_width ; height : key_height }*/
            }
            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                //ProxyMouseArea { id : ikey_a ; width : key_width * 0.3 ; height : key_height }
                Key { id : key_a ; keycode : Utils.keycode_a ; width : key_width ; height : key_height }
                Key { id : key_s ; keycode : Utils.keycode_s ; width : key_width ; height : key_height }
                Key { id : key_d ; keycode : Utils.keycode_d ; width : key_width ; height : key_height }
                Key { id : key_f ; keycode : Utils.keycode_f ; width : key_width ; height : key_height }
                Key { id : key_g ; keycode : Utils.keycode_g ; width : key_width ; height : key_height }
                Key { id : key_h ; keycode : Utils.keycode_h ; width : key_width ; height : key_height }
                Key { id : key_j ; keycode : Utils.keycode_j ; width : key_width ; height : key_height }
                Key { id : key_k ; keycode : Utils.keycode_k ; width : key_width ; height : key_height }
                Key { id : key_l ; keycode : Utils.keycode_l ; width : key_width ; height : key_height }
                Key { id : key_enter ; keycode : Utils.keycode_enter ; width : key_width * 1.2 ; height : key_height }
            }
            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                //ProxyMouseArea { id : ikey_shift_l ; width : key_width * 0.75 ; height : key_height }
                Key { id : key_z ; keycode : Utils.keycode_z ; width : key_width ; height : key_height }
                Key { id : key_x ; keycode : Utils.keycode_x ; width : key_width ; height : key_height }
                Key { id : key_c ; keycode : Utils.keycode_c ; width : key_width ; height : key_height }
                Key { id : key_v ; keycode : Utils.keycode_v ; width : key_width ; height : key_height }
                Key { id : key_b ; keycode : Utils.keycode_b ; width : key_width ; height : key_height }
                Key { id : key_n ; keycode : Utils.keycode_n ; width : key_width ; height : key_height }
                Key { id : key_m ; keycode : Utils.keycode_m ; width : key_width ; height : key_height }
                Key { id : key_comma ; keycode : Utils.keycode_comma ; width : key_width ; height : key_height }
                Key { id : key_dot ; keycode : Utils.keycode_dot ; width : key_width ; height : key_height }
                //ProxyMouseArea { id : ikey_shift_r ; width : key_width * 0.75 ; height : key_height }
            }
            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                Key { id : key_shift_l ; checkable: true; keycode : Utils.keycode_shift_l ; width : key_width * 1.75 ; height : key_height }
                //ProxyMouseArea { id : ikey_shift_l_2 ; width : key_width * 0.25 ; height : key_height }
                Key { id : key_alt_l ; checkable: true; keycode : Utils.keycode_alt_l ; width : key_width * 1.5 ; height : key_height }
                //ProxyMouseArea { id : ikey_alt_l ; width : key_width * 0.25 ; height : key_height }
                Key { id : key_space ; keycode : Utils.keycode_space ; width : key_width * 3.0 ; height : key_height }
                //ProxyMouseArea { id : ikey_alt_r ; width : key_width * 0.25 ; height : key_height }
                Key { id : key_alt_r ; checkable: true; keycode : Utils.keycode_alt_r ; width : key_width * 1.5 ; height : key_height }
                //ProxyMouseArea { id : ikey_shift_r_2 ; width : key_width * 0.25 ; height : key_height }
                Key { id : key_shift_r ; checkable: true; keycode : Utils.keycode_shift_r ; width : key_width * 1.75 ; height : key_height }
            }

    }
}
