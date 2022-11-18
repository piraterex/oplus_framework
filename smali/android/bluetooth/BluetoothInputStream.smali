.class final Landroid/bluetooth/BluetoothInputStream;
.super Ljava/io/InputStream;
.source "BluetoothInputStream.java"


# instance fields
.field private blacklist mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 0
    .param p1, "s"    # Landroid/bluetooth/BluetoothSocket;

    .line 35
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/bluetooth/BluetoothInputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->available()I

    move-result v0

    return v0
.end method

.method public whitelist test-api close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 48
    return-void
.end method

.method public whitelist test-api read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 62
    .local v1, "b":[B
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/bluetooth/BluetoothSocket;->read([BII)I

    move-result v2

    .line 63
    .local v2, "ret":I
    if-ne v2, v0, :cond_0

    .line 64
    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 66
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    if-eqz p1, :cond_1

    .line 88
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_0

    .line 91
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothSocket;->read([BII)I

    move-result v0

    return v0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "invalid offset or length"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "byte array is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
