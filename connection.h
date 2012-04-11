#ifndef CONNECTION_H
#define CONNECTION_H

#include <SFML/Network.hpp>

#include <QTimer>
#include <QElapsedTimer>

#include <vector>

#define KEYBOARD        1
#define MOUSE           2
#define KEYBOARD_MODIFIER   3

#define SHIFT           0
#define CTRL            1
#define ALT             2
#define META            3

#define LEFT            0
#define RIGHT           1
#define MOVE            2

#define RELEASED        0
#define PRESSED         1


enum MouseState {
            BTN_DOWN,
            BTN_UP,
        };

class connection : public QObject
{
    Q_OBJECT
private:
    sf::TcpSocket my_socket;

    int mouse_oldx, mouse_oldy;

    QElapsedTimer my_elapsedtimer;
    QTimer my_clicktimer;

    bool mouse_pressed;
    bool my_is_connected;
public:
    connection();

    Q_INVOKABLE bool connect(QString ipaddress, QString port);
    Q_INVOKABLE bool is_connected();
    Q_INVOKABLE void disconnect();
    Q_INVOKABLE void press_mouse_button(int x, int y);
    Q_INVOKABLE void release_mouse_button(int x, int y);
    Q_INVOKABLE void press_left();
    Q_INVOKABLE void release_left();
    Q_INVOKABLE void press_right();
    Q_INVOKABLE void release_right();
    Q_INVOKABLE void move_mouse(int x, int y);

    Q_INVOKABLE void press_key(int keycode);
    Q_INVOKABLE void release_key(int keycode);
    Q_INVOKABLE void press_shift();
    Q_INVOKABLE void release_shift();
    Q_INVOKABLE void press_ctrl();
    Q_INVOKABLE void release_ctrl();
    Q_INVOKABLE void press_alt(bool left);
    Q_INVOKABLE void release_alt(bool left);
    Q_INVOKABLE void press_meta();
    Q_INVOKABLE void release_meta();

    ~connection();
private slots:
    void tapslot();
};

#endif // CONNECTION_H
