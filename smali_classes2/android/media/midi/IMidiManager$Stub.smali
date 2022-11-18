.class public abstract Landroid/media/midi/IMidiManager$Stub;
.super Landroid/os/Binder;
.source "IMidiManager.java"

# interfaces
.implements Landroid/media/midi/IMidiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/IMidiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/IMidiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.midi.IMidiManager"

.field static final greylist-max-o TRANSACTION_closeDevice:I = 0x7

.field static final greylist-max-o TRANSACTION_getDeviceStatus:I = 0xb

.field static final greylist-max-o TRANSACTION_getDevices:I = 0x1

.field static final blacklist TRANSACTION_getDevicesForTransport:I = 0x2

.field static final greylist-max-o TRANSACTION_getServiceDeviceInfo:I = 0xa

.field static final greylist-max-o TRANSACTION_openBluetoothDevice:I = 0x6

.field static final greylist-max-o TRANSACTION_openDevice:I = 0x5

.field static final greylist-max-o TRANSACTION_registerDeviceServer:I = 0x8

.field static final greylist-max-o TRANSACTION_registerListener:I = 0x3

.field static final greylist-max-o TRANSACTION_setDeviceStatus:I = 0xc

.field static final greylist-max-o TRANSACTION_unregisterDeviceServer:I = 0x9

.field static final greylist-max-o TRANSACTION_unregisterListener:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "android.media.midi.IMidiManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/midi/IMidiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 79
    if-nez p0, :cond_0

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    const-string v0, "android.media.midi.IMidiManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/midi/IMidiManager;

    if-eqz v1, :cond_1

    .line 84
    move-object v1, v0

    check-cast v1, Landroid/media/midi/IMidiManager;

    return-object v1

    .line 86
    :cond_1
    new-instance v1, Landroid/media/midi/IMidiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/midi/IMidiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 95
    packed-switch p0, :pswitch_data_0

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 143
    :pswitch_0
    const-string v0, "setDeviceStatus"

    return-object v0

    .line 139
    :pswitch_1
    const-string v0, "getDeviceStatus"

    return-object v0

    .line 135
    :pswitch_2
    const-string v0, "getServiceDeviceInfo"

    return-object v0

    .line 131
    :pswitch_3
    const-string/jumbo v0, "unregisterDeviceServer"

    return-object v0

    .line 127
    :pswitch_4
    const-string v0, "registerDeviceServer"

    return-object v0

    .line 123
    :pswitch_5
    const-string v0, "closeDevice"

    return-object v0

    .line 119
    :pswitch_6
    const-string v0, "openBluetoothDevice"

    return-object v0

    .line 115
    :pswitch_7
    const-string v0, "openDevice"

    return-object v0

    .line 111
    :pswitch_8
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    .line 107
    :pswitch_9
    const-string v0, "registerListener"

    return-object v0

    .line 103
    :pswitch_a
    const-string v0, "getDevicesForTransport"

    return-object v0

    .line 99
    :pswitch_b
    const-string v0, "getDevices"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

    .line 90
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 571
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 154
    invoke-static {p1}, Landroid/media/midi/IMidiManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.media.midi.IMidiManager"

    .line 159
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_0

    const v0, 0xffffff

    if-gt v10, v0, :cond_0

    .line 160
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    :cond_0
    packed-switch v10, :pswitch_data_0

    .line 170
    packed-switch v10, :pswitch_data_1

    .line 316
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 166
    :pswitch_0
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    return v14

    .line 306
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object v0

    .line 308
    .local v0, "_arg0":Landroid/media/midi/IMidiDeviceServer;
    sget-object v1, Landroid/media/midi/MidiDeviceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/midi/MidiDeviceStatus;

    .line 309
    .local v1, "_arg1":Landroid/media/midi/MidiDeviceStatus;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {v9, v0, v1}, Landroid/media/midi/IMidiManager$Stub;->setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V

    .line 311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto/16 :goto_0

    .line 296
    .end local v0    # "_arg0":Landroid/media/midi/IMidiDeviceServer;
    .end local v1    # "_arg1":Landroid/media/midi/MidiDeviceStatus;
    :pswitch_2
    sget-object v0, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiDeviceInfo;

    .line 297
    .local v0, "_arg0":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {v9, v0}, Landroid/media/midi/IMidiManager$Stub;->getDeviceStatus(Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceStatus;

    move-result-object v1

    .line 299
    .local v1, "_result":Landroid/media/midi/MidiDeviceStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 301
    goto/16 :goto_0

    .line 284
    .end local v0    # "_arg0":Landroid/media/midi/MidiDeviceInfo;
    .end local v1    # "_result":Landroid/media/midi/MidiDeviceStatus;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {v9, v0, v1}, Landroid/media/midi/IMidiManager$Stub;->getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v2

    .line 289
    .local v2, "_result":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 291
    goto/16 :goto_0

    .line 275
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/media/midi/MidiDeviceInfo;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object v0

    .line 276
    .local v0, "_arg0":Landroid/media/midi/IMidiDeviceServer;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {v9, v0}, Landroid/media/midi/IMidiManager$Stub;->unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V

    .line 278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    goto/16 :goto_0

    .line 251
    .end local v0    # "_arg0":Landroid/media/midi/IMidiDeviceServer;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object v15

    .line 253
    .local v15, "_arg0":Landroid/media/midi/IMidiDeviceServer;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 255
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 257
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v18

    .line 259
    .local v18, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v19

    .line 261
    .local v19, "_arg4":[Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Bundle;

    .line 263
    .local v20, "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 265
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 266
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/media/midi/IMidiManager$Stub;->registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;II)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    .line 268
    .local v0, "_result":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 270
    goto/16 :goto_0

    .line 240
    .end local v0    # "_result":Landroid/media/midi/MidiDeviceInfo;
    .end local v15    # "_arg0":Landroid/media/midi/IMidiDeviceServer;
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":[Ljava/lang/String;
    .end local v19    # "_arg4":[Ljava/lang/String;
    .end local v20    # "_arg5":Landroid/os/Bundle;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 242
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 243
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {v9, v0, v1}, Landroid/media/midi/IMidiManager$Stub;->closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    goto/16 :goto_0

    .line 227
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 229
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 231
    .local v1, "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/midi/IMidiDeviceOpenCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceOpenCallback;

    move-result-object v2

    .line 232
    .local v2, "_arg2":Landroid/media/midi/IMidiDeviceOpenCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {v9, v0, v1, v2}, Landroid/media/midi/IMidiManager$Stub;->openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    goto :goto_0

    .line 214
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg2":Landroid/media/midi/IMidiDeviceOpenCallback;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 216
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/midi/MidiDeviceInfo;

    .line 218
    .local v1, "_arg1":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/midi/IMidiDeviceOpenCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceOpenCallback;

    move-result-object v2

    .line 219
    .restart local v2    # "_arg2":Landroid/media/midi/IMidiDeviceOpenCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {v9, v0, v1, v2}, Landroid/media/midi/IMidiManager$Stub;->openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    goto :goto_0

    .line 203
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/media/midi/MidiDeviceInfo;
    .end local v2    # "_arg2":Landroid/media/midi/IMidiDeviceOpenCallback;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 205
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/midi/IMidiDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceListener;

    move-result-object v1

    .line 206
    .local v1, "_arg1":Landroid/media/midi/IMidiDeviceListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {v9, v0, v1}, Landroid/media/midi/IMidiManager$Stub;->unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    goto :goto_0

    .line 192
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/media/midi/IMidiDeviceListener;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 194
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/midi/IMidiDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceListener;

    move-result-object v1

    .line 195
    .restart local v1    # "_arg1":Landroid/media/midi/IMidiDeviceListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {v9, v0, v1}, Landroid/media/midi/IMidiManager$Stub;->registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V

    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto :goto_0

    .line 182
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/media/midi/IMidiDeviceListener;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 183
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {v9, v0}, Landroid/media/midi/IMidiManager$Stub;->getDevicesForTransport(I)[Landroid/media/midi/MidiDeviceInfo;

    move-result-object v1

    .line 185
    .local v1, "_result":[Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 187
    goto :goto_0

    .line 174
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[Landroid/media/midi/MidiDeviceInfo;
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/media/midi/IMidiManager$Stub;->getDevices()[Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    .line 175
    .local v0, "_result":[Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 177
    nop

    .line 319
    .end local v0    # "_result":[Landroid/media/midi/MidiDeviceInfo;
    :goto_0
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
