#include "connection.h"

connection::connection()
{
    mouse_oldx = 0;
    mouse_oldy = 0;
    mouse_pressed = false;
    my_is_connected = false;
}

bool connection::connect(QString ipaddress, QString port)
{
    this->disconnect();
    my_is_connected = false;
    if(sf::Socket::Done == my_socket.connect(ipaddress.toAscii().data(),port.toInt()))
    {
        my_is_connected = true;
        return true;
    }
    return false;
}

bool connection::is_connected()
{
    return my_is_connected;
}

void connection::disconnect()
{
    if(my_is_connected)
    {
        my_socket.disconnect();
        my_is_connected = false;
    }
}

void connection::press_mouse_button(int x, int y)
{
    mouse_oldx = x;
    mouse_oldy = y;
    my_elapsedtimer.restart();
    mouse_pressed = true;
}

void connection::release_mouse_button(int x, int y)
{
    mouse_pressed = false;
    if(!my_elapsedtimer.hasExpired(200))
    {
        sf::Packet packet;
        packet << MOUSE;
        packet << LEFT;
        packet << BTN_DOWN;
        my_socket.send(packet);
        my_clicktimer.singleShot(200,this,SLOT(tapslot()));
    }
    else
    {
        sf::Packet packet;
        packet << MOUSE;
        packet << LEFT;
        packet << BTN_UP;
        my_socket.send(packet);
    }
}

void connection::move_mouse(int x, int y)
{
    sf::Packet packet;
    packet << MOUSE;
    packet << MOVE;
    packet << x-mouse_oldx;
    packet << y-mouse_oldy;
    mouse_oldx = x;
    mouse_oldy = y;
    my_socket.send(packet);
}

void connection::press_left()
{
    sf::Packet packet;
    packet << MOUSE;
    packet << LEFT;
    packet << BTN_DOWN;
    my_socket.send(packet);
}

void connection::release_left()
{
    sf::Packet packet;
    packet << MOUSE;
    packet << LEFT;
    packet << BTN_UP;
    my_socket.send(packet);
}

void connection::press_right()
{
    sf::Packet packet;
    packet << MOUSE;
    packet << RIGHT;
    packet << BTN_DOWN;
    my_socket.send(packet);
}

void connection::release_right()
{
    sf::Packet packet;
    packet << MOUSE;
    packet << RIGHT;
    packet << BTN_UP;
    my_socket.send(packet);
}

void connection::tapslot()
{
    if(!mouse_pressed)
    {
        sf::Packet packet;
        packet << MOUSE;
        packet << LEFT;
        packet << BTN_UP;
        my_socket.send(packet);
    }
    mouse_pressed = false;
}

void connection::press_key(int keycode)
{
    sf::Packet packet;
    packet << KEYBOARD;
    packet << PRESSED;
    packet << keycode;
    my_socket.send(packet);
}

void connection::release_key(int keycode)
{
    sf::Packet packet;
    packet << KEYBOARD;
    packet << RELEASED;
    packet << keycode;
    my_socket.send(packet);
}

void connection::press_shift()
{
    sf::Packet packet;
    packet << KEYBOARD_MODIFIER;
    packet << PRESSED;
    packet << SHIFT;
    my_socket.send(packet);
}

void connection::release_shift()
{
    sf::Packet packet;
    packet << KEYBOARD_MODIFIER;
    packet << RELEASED;
    packet << SHIFT;
    my_socket.send(packet);
}

void connection::press_ctrl()
{
    sf::Packet packet;
    packet << KEYBOARD_MODIFIER;
    packet << PRESSED;
    packet << CTRL;
    my_socket.send(packet);
}

void connection::release_ctrl()
{
    sf::Packet packet;
    packet << KEYBOARD_MODIFIER;
    packet << RELEASED;
    packet << CTRL;
    my_socket.send(packet);
}

void connection::press_alt(bool left)
{
    sf::Packet packet;
    packet << KEYBOARD_MODIFIER;
    packet << PRESSED;
    packet << ALT;
    if(left) packet << LEFT;
    else packet << RIGHT;
    my_socket.send(packet);
}

void connection::release_alt(bool left)
{
    sf::Packet packet;
    packet << KEYBOARD_MODIFIER;
    packet << RELEASED;
    packet << ALT;
    if(left) packet << LEFT;
    else packet << RIGHT;
    my_socket.send(packet);
}

void connection::press_meta()
{
    sf::Packet packet;
    packet << KEYBOARD_MODIFIER;
    packet << PRESSED;
    packet << META;
    my_socket.send(packet);
}

void connection::release_meta()
{
    sf::Packet packet;
    packet << KEYBOARD_MODIFIER;
    packet << RELEASED;
    packet << META;
    my_socket.send(packet);
}

connection::~connection()
{
    my_socket.disconnect();
}
