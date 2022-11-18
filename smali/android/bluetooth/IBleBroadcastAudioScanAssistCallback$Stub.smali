.class public abstract Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Stub;
.super Landroid/os/Binder;
.source "IBleBroadcastAudioScanAssistCallback.java"

# interfaces
.implements Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onBleBroadcastAudioSourceAdded:I = 0x3

.field static final blacklist TRANSACTION_onBleBroadcastAudioSourceRemoved:I = 0x6

.field static final blacklist TRANSACTION_onBleBroadcastAudioSourceSelected:I = 0x2

.field static final blacklist TRANSACTION_onBleBroadcastAudioSourceUpdated:I = 0x4

.field static final blacklist TRANSACTION_onBleBroadcastPinUpdated:I = 0x5

.field static final blacklist TRANSACTION_onBleBroadcastSourceFound:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.bluetooth.IBleBroadcastAudioScanAssistCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    const-string v0, "android.bluetooth.IBleBroadcastAudioScanAssistCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;

    if-eqz v1, :cond_1

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;

    return-object v1

    .line 55
    :cond_1
    new-instance v1, Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_0

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 88
    :pswitch_0
    const-string/jumbo v0, "onBleBroadcastAudioSourceRemoved"

    return-object v0

    .line 84
    :pswitch_1
    const-string/jumbo v0, "onBleBroadcastPinUpdated"

    return-object v0

    .line 80
    :pswitch_2
    const-string/jumbo v0, "onBleBroadcastAudioSourceUpdated"

    return-object v0

    .line 76
    :pswitch_3
    const-string/jumbo v0, "onBleBroadcastAudioSourceAdded"

    return-object v0

    .line 72
    :pswitch_4
    const-string/jumbo v0, "onBleBroadcastAudioSourceSelected"

    return-object v0

    .line 68
    :pswitch_5
    const-string/jumbo v0, "onBleBroadcastSourceFound"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 323
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 99
    invoke-static {p1}, Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 103
    const-string v0, "android.bluetooth.IBleBroadcastAudioScanAssistCallback"

    .line 104
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 105
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 115
    packed-switch p1, :pswitch_data_1

    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 111
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v1

    .line 181
    :pswitch_1
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 183
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 185
    .local v3, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 186
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Stub;->onBleBroadcastAudioSourceRemoved(Landroid/bluetooth/BluetoothDevice;BI)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto/16 :goto_0

    .line 168
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":I
    :pswitch_2
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 170
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 172
    .restart local v3    # "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 173
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Stub;->onBleBroadcastPinUpdated(Landroid/bluetooth/BluetoothDevice;BI)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    goto :goto_0

    .line 155
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":I
    :pswitch_3
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 157
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 159
    .restart local v3    # "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 160
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 161
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Stub;->onBleBroadcastAudioSourceUpdated(Landroid/bluetooth/BluetoothDevice;BI)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_0

    .line 142
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":I
    :pswitch_4
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 144
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 146
    .restart local v3    # "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 147
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Stub;->onBleBroadcastAudioSourceAdded(Landroid/bluetooth/BluetoothDevice;BI)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    goto :goto_0

    .line 129
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":I
    :pswitch_5
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 131
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    .local v3, "_arg1":I
    sget-object v4, Landroid/bluetooth/BleBroadcastSourceChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 134
    .local v4, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceChannel;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Stub;->onBleBroadcastAudioSourceSelected(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    goto :goto_0

    .line 120
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceChannel;>;"
    :pswitch_6
    sget-object v2, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/ScanResult;

    .line 121
    .local v2, "_arg0":Landroid/bluetooth/le/ScanResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Stub;->onBleBroadcastSourceFound(Landroid/bluetooth/le/ScanResult;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    nop

    .line 196
    .end local v2    # "_arg0":Landroid/bluetooth/le/ScanResult;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
