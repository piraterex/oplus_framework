.class public abstract Landroid/bluetooth/IBluetoothA2dpSink$Stub;
.super Landroid/os/Binder;
.source "IBluetoothA2dpSink.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothA2dpSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothA2dpSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothA2dpSink$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothA2dpSink"

.field static final blacklist TRANSACTION_connect:I = 0x1

.field static final blacklist TRANSACTION_disconnect:I = 0x2

.field static final blacklist TRANSACTION_getAudioConfig:I = 0x6

.field static final blacklist TRANSACTION_getConnectedDevices:I = 0x3

.field static final blacklist TRANSACTION_getConnectionPolicy:I = 0x8

.field static final blacklist TRANSACTION_getConnectionState:I = 0x5

.field static final blacklist TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final blacklist TRANSACTION_isA2dpPlaying:I = 0x9

.field static final blacklist TRANSACTION_setConnectionPolicy:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "android.bluetooth.IBluetoothA2dpSink"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dpSink;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothA2dpSink"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v1, :cond_1

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothA2dpSink;

    return-object v1

    .line 68
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothA2dpSink$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 77
    packed-switch p0, :pswitch_data_0

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 113
    :pswitch_0
    const-string v0, "isA2dpPlaying"

    return-object v0

    .line 109
    :pswitch_1
    const-string v0, "getConnectionPolicy"

    return-object v0

    .line 105
    :pswitch_2
    const-string/jumbo v0, "setConnectionPolicy"

    return-object v0

    .line 101
    :pswitch_3
    const-string v0, "getAudioConfig"

    return-object v0

    .line 97
    :pswitch_4
    const-string v0, "getConnectionState"

    return-object v0

    .line 93
    :pswitch_5
    const-string v0, "getDevicesMatchingConnectionStates"

    return-object v0

    .line 89
    :pswitch_6
    const-string v0, "getConnectedDevices"

    return-object v0

    .line 85
    :pswitch_7
    const-string v0, "disconnect"

    return-object v0

    .line 81
    :pswitch_8
    const-string v0, "connect"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 72
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 412
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 124
    invoke-static {p1}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    const-string v0, "android.bluetooth.IBluetoothA2dpSink"

    .line 129
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 130
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 140
    packed-switch p1, :pswitch_data_1

    .line 252
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 136
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    return v1

    .line 241
    :pswitch_1
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 243
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 245
    .local v3, "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 246
    .local v4, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 248
    goto/16 :goto_0

    .line 229
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_2
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 231
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 233
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 234
    .restart local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 236
    goto/16 :goto_0

    .line 215
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_3
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 217
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 219
    .local v3, "_arg1":I
    sget-object v4, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSource;

    .line 221
    .local v4, "_arg2":Landroid/content/AttributionSource;
    sget-object v5, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 222
    .local v5, "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 224
    goto/16 :goto_0

    .line 203
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/content/AttributionSource;
    .end local v5    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_4
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 205
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 207
    .local v3, "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 208
    .local v4, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->getAudioConfig(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 210
    goto/16 :goto_0

    .line 191
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_5
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 193
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 195
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 196
    .restart local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 198
    goto :goto_0

    .line 179
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 181
    .local v2, "_arg0":[I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 183
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 184
    .restart local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 186
    goto :goto_0

    .line 169
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_7
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 171
    .local v2, "_arg0":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 172
    .local v3, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->getConnectedDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 174
    goto :goto_0

    .line 157
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_8
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 159
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 161
    .local v3, "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 162
    .restart local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 164
    goto :goto_0

    .line 145
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_9
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 147
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 149
    .restart local v3    # "_arg1":Landroid/content/AttributionSource;
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 150
    .restart local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 152
    nop

    .line 255
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/content/AttributionSource;
    .end local v4    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
