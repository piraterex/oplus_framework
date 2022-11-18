.class public final Landroid/bluetooth/BluetoothServerSocket;
.super Ljava/lang/Object;
.source "BluetoothServerSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothServerSocket"


# instance fields
.field private blacklist mChannel:I

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mMessage:I

.field final greylist mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor blacklist <init>(IZZI)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "auth"    # Z
    .param p3, "encrypt"    # Z
    .param p4, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p4, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    .line 99
    new-instance v8, Landroid/bluetooth/BluetoothSocket;

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    iput-object v8, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 100
    const/4 v0, -0x2

    if-ne p4, v0, :cond_0

    .line 101
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/bluetooth/BluetoothSocket;->setExcludeSdp(Z)V

    .line 103
    :cond_0
    return-void
.end method

.method constructor blacklist <init>(IZZIZZ)V
    .locals 13
    .param p1, "type"    # I
    .param p2, "auth"    # Z
    .param p3, "encrypt"    # Z
    .param p4, "port"    # I
    .param p5, "mitm"    # Z
    .param p6, "min16DigitPin"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    move-object v0, p0

    move/from16 v11, p4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput v11, v0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    .line 121
    new-instance v12, Landroid/bluetooth/BluetoothSocket;

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v12

    move v2, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v7, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;ZZ)V

    iput-object v12, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 123
    const/4 v1, -0x2

    if-ne v11, v1, :cond_0

    .line 124
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/bluetooth/BluetoothSocket;->setExcludeSdp(Z)V

    .line 126
    :cond_0
    return-void
.end method

.method constructor blacklist <init>(IZZLandroid/os/ParcelUuid;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "auth"    # Z
    .param p3, "encrypt"    # Z
    .param p4, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v8, Landroid/bluetooth/BluetoothSocket;

    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, v8

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    iput-object v8, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 142
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    .line 143
    return-void
.end method


# virtual methods
.method public whitelist accept()Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothServerSocket;->accept(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist accept(I)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSocket;->accept(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 185
    iget v1, p0, Landroid/bluetooth/BluetoothServerSocket;->mMessage:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 187
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 189
    return-void

    .line 187
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist getChannel()I
    .locals 1

    .line 207
    iget v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    return v0
.end method

.method public whitelist getPsm()I
    .locals 1

    .line 220
    iget v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    return v0
.end method

.method blacklist setChannel(I)V
    .locals 2
    .param p1, "newChannel"    # I

    .line 232
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The port set is different that the underlying port. mSocket.getPort(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 235
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested newChannel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    const-string v1, "BluetoothServerSocket"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    iput p1, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    .line 239
    return-void
.end method

.method declared-synchronized blacklist setCloseHandler(Landroid/os/Handler;I)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    monitor-enter p0

    .line 193
    :try_start_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothServerSocket;->mHandler:Landroid/os/Handler;

    .line 194
    iput p2, p0, Landroid/bluetooth/BluetoothServerSocket;->mMessage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 192
    .end local p0    # "this":Landroid/bluetooth/BluetoothServerSocket;
    .end local p1    # "handler":Landroid/os/Handler;
    .end local p2    # "message":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method blacklist setServiceName(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 198
    iget-object v0, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothSocket;->setServiceName(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ServerSocket: Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v1, p0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getConnectionType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 255
    :pswitch_0
    const-string v1, "TYPE_L2CAP_LE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    goto :goto_0

    .line 251
    :pswitch_1
    const-string v1, "TYPE_L2CAP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    goto :goto_0

    .line 259
    :pswitch_2
    const-string v1, "TYPE_SCO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 247
    :pswitch_3
    const-string v1, "TYPE_RFCOMM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    nop

    .line 263
    :goto_0
    const-string v1, " Channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothServerSocket;->mChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
