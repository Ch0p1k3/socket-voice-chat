# Socket voice chat

This is simple voice chat on TCP socket

### Install dependencies for Linux/Debian
```bash
sudo make apt_get
```

### Install wheel
```bash
sudo make install
```
When you install wheel you can use binaries of client and server:
```bash
socket-voice-chat-client --host 0.0.0.0 --port 10080 --username name
```

```bash
socket-voice-chat-server --host 0.0.0.0 --port 10080
```
