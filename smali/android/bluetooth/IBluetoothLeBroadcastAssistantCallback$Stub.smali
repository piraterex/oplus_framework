.class public abstract Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothLeBroadcastAssistantCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onReceiveStateChanged:I = 0xc

.field static final blacklist TRANSACTION_onSearchStartFailed:I = 0x2

.field static final blacklist TRANSACTION_onSearchStarted:I = 0x1

.field static final blacklist TRANSACTION_onSearchStopFailed:I = 0x4

.field static final blacklist TRANSACTION_onSearchStopped:I = 0x3

.field static final blacklist TRANSACTION_onSourceAddFailed:I = 0x7

.field static final blacklist TRANSACTION_onSourceAdded:I = 0x6

.field static final blacklist TRANSACTION_onSourceFound:I = 0x5

.field static final blacklist TRANSACTION_onSourceModified:I = 0x8

.field static final blacklist TRANSACTION_onSourceModifyFailed:I = 0x9

.field static final blacklist TRANSACTION_onSourceRemoveFailed:I = 0xb

.field static final blacklist TRANSACTION_onSourceRemoved:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "android.bluetooth.IBluetoothLeBroadcastAssistantCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothLeBroadcastAssistantCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;

    if-eqz v1, :cond_1

    .line 75
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;

    return-object v1

    .line 77
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 86
    packed-switch p0, :pswitch_data_0

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 134
    :pswitch_0
    const-string/jumbo v0, "onReceiveStateChanged"

    return-object v0

    .line 130
    :pswitch_1
    const-string/jumbo v0, "onSourceRemoveFailed"

    return-object v0

    .line 126
    :pswitch_2
    const-string/jumbo v0, "onSourceRemoved"

    return-object v0

    .line 122
    :pswitch_3
    const-string/jumbo v0, "onSourceModifyFailed"

    return-object v0

    .line 118
    :pswitch_4
    const-string/jumbo v0, "onSourceModified"

    return-object v0

    .line 114
    :pswitch_5
    const-string/jumbo v0, "onSourceAddFailed"

    return-object v0

    .line 110
    :pswitch_6
    const-string/jumbo v0, "onSourceAdded"

    return-object v0

    .line 106
    :pswitch_7
    const-string/jumbo v0, "onSourceFound"

    return-object v0

    .line 102
    :pswitch_8
    const-string/jumbo v0, "onSearchStopFailed"

    return-object v0

    .line 98
    :pswitch_9
    const-string/jumbo v0, "onSearchStopped"

    return-object v0

    .line 94
    :pswitch_a
    const-string/jumbo v0, "onSearchStartFailed"

    return-object v0

    .line 90
    :pswitch_b
    const-string/jumbo v0, "onSearchStarted"

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

    .line 81
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 531
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 145
    invoke-static {p1}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 149
    const-string v0, "android.bluetooth.IBluetoothLeBroadcastAssistantCallback"

    .line 150
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 151
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 161
    packed-switch p1, :pswitch_data_1

    .line 301
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 157
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    return v1

    .line 289
    :pswitch_1
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 291
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 293
    .local v3, "_arg1":I
    sget-object v4, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    .line 294
    .local v4, "_arg2":Landroid/bluetooth/BluetoothLeBroadcastReceiveState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    goto/16 :goto_0

    .line 276
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/bluetooth/BluetoothLeBroadcastReceiveState;
    :pswitch_2
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 278
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 280
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 281
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSourceRemoveFailed(Landroid/bluetooth/BluetoothDevice;II)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    goto/16 :goto_0

    .line 263
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_3
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 265
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 267
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 268
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto/16 :goto_0

    .line 250
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_4
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 252
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 254
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 255
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSourceModifyFailed(Landroid/bluetooth/BluetoothDevice;II)V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    goto/16 :goto_0

    .line 237
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_5
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 239
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 241
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 242
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSourceModified(Landroid/bluetooth/BluetoothDevice;II)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    goto/16 :goto_0

    .line 224
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_6
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 226
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 228
    .local v3, "_arg1":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 229
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSourceAddFailed(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    goto :goto_0

    .line 211
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .end local v4    # "_arg2":I
    :pswitch_7
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 213
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 215
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 216
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSourceAdded(Landroid/bluetooth/BluetoothDevice;II)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    goto :goto_0

    .line 202
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_8
    sget-object v2, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    .line 203
    .local v2, "_arg0":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSourceFound(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    goto :goto_0

    .line 193
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSearchStopFailed(I)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    goto :goto_0

    .line 184
    .end local v2    # "_arg0":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 185
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSearchStopped(I)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    goto :goto_0

    .line 175
    .end local v2    # "_arg0":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSearchStartFailed(I)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    goto :goto_0

    .line 166
    .end local v2    # "_arg0":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 167
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Stub;->onSearchStarted(I)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    nop

    .line 304
    .end local v2    # "_arg0":I
    :goto_0
    return v1

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
