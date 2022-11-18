.class public abstract Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub;
.super Landroid/os/Binder;
.source "IBluetoothLeBroadcastAssistant.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothLeBroadcastAssistant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addSource:I = 0xb

.field static final blacklist TRANSACTION_getAllSources:I = 0xe

.field static final blacklist TRANSACTION_getConnectedDevices:I = 0x3

.field static final blacklist TRANSACTION_getConnectionPolicy:I = 0x5

.field static final blacklist TRANSACTION_getConnectionState:I = 0x1

.field static final blacklist TRANSACTION_getDevicesMatchingConnectionStates:I = 0x2

.field static final blacklist TRANSACTION_getMaximumSourceCapacity:I = 0xf

.field static final blacklist TRANSACTION_isSearchInProgress:I = 0xa

.field static final blacklist TRANSACTION_modifySource:I = 0xc

.field static final blacklist TRANSACTION_registerCallback:I = 0x6

.field static final blacklist TRANSACTION_removeSource:I = 0xd

.field static final blacklist TRANSACTION_setConnectionPolicy:I = 0x4

.field static final blacklist TRANSACTION_startSearchingForSources:I = 0x8

.field static final blacklist TRANSACTION_stopSearchingForSources:I = 0x9

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 80
    const-string v0, "android.bluetooth.IBluetoothLeBroadcastAssistant"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 88
    if-nez p0, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothLeBroadcastAssistant"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 92
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    if-eqz v1, :cond_1

    .line 93
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothLeBroadcastAssistant;

    return-object v1

    .line 95
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 104
    packed-switch p0, :pswitch_data_0

    .line 168
    const/4 v0, 0x0

    return-object v0

    .line 164
    :pswitch_0
    const-string v0, "getMaximumSourceCapacity"

    return-object v0

    .line 160
    :pswitch_1
    const-string v0, "getAllSources"

    return-object v0

    .line 156
    :pswitch_2
    const-string/jumbo v0, "removeSource"

    return-object v0

    .line 152
    :pswitch_3
    const-string/jumbo v0, "modifySource"

    return-object v0

    .line 148
    :pswitch_4
    const-string v0, "addSource"

    return-object v0

    .line 144
    :pswitch_5
    const-string v0, "isSearchInProgress"

    return-object v0

    .line 140
    :pswitch_6
    const-string/jumbo v0, "stopSearchingForSources"

    return-object v0

    .line 136
    :pswitch_7
    const-string/jumbo v0, "startSearchingForSources"

    return-object v0

    .line 132
    :pswitch_8
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 128
    :pswitch_9
    const-string/jumbo v0, "registerCallback"

    return-object v0

    .line 124
    :pswitch_a
    const-string v0, "getConnectionPolicy"

    return-object v0

    .line 120
    :pswitch_b
    const-string/jumbo v0, "setConnectionPolicy"

    return-object v0

    .line 116
    :pswitch_c
    const-string v0, "getConnectedDevices"

    return-object v0

    .line 112
    :pswitch_d
    const-string v0, "getDevicesMatchingConnectionStates"

    return-object v0

    .line 108
    :pswitch_e
    const-string v0, "getConnectionState"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 99
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 633
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 175
    invoke-static {p1}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    const-string v0, "android.bluetooth.IBluetoothLeBroadcastAssistant"

    .line 180
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 181
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 191
    packed-switch p1, :pswitch_data_1

    .line 341
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 187
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    return v1

    .line 332
    :pswitch_1
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 333
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub;->getMaximumSourceCapacity(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 335
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    goto/16 :goto_0

    .line 322
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":I
    :pswitch_2
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 323
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub;->getAllSources(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v3

    .line 325
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeBroadcastReceiveState;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 327
    goto/16 :goto_0

    .line 311
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeBroadcastReceiveState;>;"
    :pswitch_3
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 313
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 314
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub;->removeSource(Landroid/bluetooth/BluetoothDevice;I)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    goto/16 :goto_0

    .line 298
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    :pswitch_4
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 300
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 302
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 303
    .local v4, "_arg2":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub;->modifySource(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    goto/16 :goto_0

    .line 285
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    :pswitch_5
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 287
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 289
    .local v3, "_arg1":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 290
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub;->addSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    goto/16 :goto_0

    .line 277
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .end local v4    # "_arg2":Z
    :pswitch_6
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub;->isSearchInProgress()Z

    move-result v2

    .line 278
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 280
    goto/16 :goto_0

    .line 271
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub;->stopSearchingForSources()V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    goto/16 :goto_0

    .line 263
    :pswitch_8
    sget-object v2, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 264
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub;->startSearchingForSources(Ljava/util/List;)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    goto/16 :goto_0

    .line 254
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;

    move-result-object v2

    .line 255
    .local v2, "_arg0":Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub;->unregisterCallback(Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;)V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    goto/16 :goto_0

    .line 245
    .end local v2    # "_arg0":Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;

    move-result-object v2

    .line 246
    .restart local v2    # "_arg0":Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub;->registerCallback(Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    goto :goto_0

    .line 235
    .end local v2    # "_arg0":Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;
    :pswitch_b
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 236
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 238
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    goto :goto_0

    .line 223
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":I
    :pswitch_c
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 225
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 226
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v4

    .line 228
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 230
    goto :goto_0

    .line 215
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_d
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 216
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 218
    goto :goto_0

    .line 206
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 207
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v3

    .line 209
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 211
    goto :goto_0

    .line 196
    .end local v2    # "_arg0":[I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_f
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 197
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 199
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    nop

    .line 344
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_result":I
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
