.class final Landroid/bluetooth/BluetoothOutputStream;
.super Ljava/io/OutputStream;
.source "BluetoothOutputStream.java"


# instance fields
.field private blacklist mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 0
    .param p1, "s"    # Landroid/bluetooth/BluetoothSocket;

    .line 35
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 44
    return-void
.end method

.method public whitelist test-api write(I)V
    .locals 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 56
    .local v1, "b":[B
    int-to-byte v2, p1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 57
    iget-object v2, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2, v1, v3, v0}, Landroid/bluetooth/BluetoothSocket;->write([BII)I

    .line 58
    return-void
.end method

.method public whitelist test-api write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    if-eqz p1, :cond_1

    .line 76
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    .line 79
    iget-object v0, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothSocket;->write([BII)I

    .line 80
    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "invalid offset or length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
