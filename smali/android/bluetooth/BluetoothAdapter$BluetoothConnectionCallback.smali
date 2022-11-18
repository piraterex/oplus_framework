.class public abstract Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BluetoothConnectionCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback$DisconnectReason;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 5255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist disconnectReasonToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "reason"    # I

    .line 5293
    sparse-switch p0, :sswitch_data_0

    .line 5317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized disconnect reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5295
    :sswitch_0
    const-string v0, "Reason unknown"

    return-object v0

    .line 5315
    :sswitch_1
    const-string v0, "Bad parameters"

    return-object v0

    .line 5313
    :sswitch_2
    const-string v0, "Connection already exists"

    return-object v0

    .line 5311
    :sswitch_3
    const-string v0, "Resource constrained"

    return-object v0

    .line 5309
    :sswitch_4
    const-string v0, "System policy"

    return-object v0

    .line 5307
    :sswitch_5
    const-string v0, "Security"

    return-object v0

    .line 5305
    :sswitch_6
    const-string v0, "Timeout"

    return-object v0

    .line 5303
    :sswitch_7
    const-string v0, "Remote error"

    return-object v0

    .line 5301
    :sswitch_8
    const-string v0, "Local error"

    return-object v0

    .line 5299
    :sswitch_9
    const-string v0, "Remote request"

    return-object v0

    .line 5297
    :sswitch_a
    const-string v0, "Local request"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x44c -> :sswitch_a
        0x44d -> :sswitch_9
        0x44e -> :sswitch_8
        0x44f -> :sswitch_7
        0x450 -> :sswitch_6
        0x451 -> :sswitch_5
        0x452 -> :sswitch_4
        0x453 -> :sswitch_3
        0x454 -> :sswitch_2
        0x455 -> :sswitch_1
        0x7fffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 5260
    return-void
.end method

.method public whitelist onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reason"    # I

    .line 5268
    return-void
.end method
