.class public abstract Landroid/bluetooth/IBluetoothHapClientCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHapClientCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHapClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHapClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHapClientCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onPresetInfoChanged:I = 0x4

.field static final blacklist TRANSACTION_onPresetSelected:I = 0x1

.field static final blacklist TRANSACTION_onPresetSelectionFailed:I = 0x2

.field static final blacklist TRANSACTION_onPresetSelectionForGroupFailed:I = 0x3

.field static final blacklist TRANSACTION_onSetPresetNameFailed:I = 0x5

.field static final blacklist TRANSACTION_onSetPresetNameForGroupFailed:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.bluetooth.IBluetoothHapClientCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHapClientCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHapClientCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    const-string v0, "android.bluetooth.IBluetoothHapClientCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHapClientCallback;

    if-eqz v1, :cond_1

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothHapClientCallback;

    return-object v1

    .line 59
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHapClientCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHapClientCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_0

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 92
    :pswitch_0
    const-string/jumbo v0, "onSetPresetNameForGroupFailed"

    return-object v0

    .line 88
    :pswitch_1
    const-string/jumbo v0, "onSetPresetNameFailed"

    return-object v0

    .line 84
    :pswitch_2
    const-string/jumbo v0, "onPresetInfoChanged"

    return-object v0

    .line 80
    :pswitch_3
    const-string/jumbo v0, "onPresetSelectionForGroupFailed"

    return-object v0

    .line 76
    :pswitch_4
    const-string/jumbo v0, "onPresetSelectionFailed"

    return-object v0

    .line 72
    :pswitch_5
    const-string/jumbo v0, "onPresetSelected"

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

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 297
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 103
    invoke-static {p1}, Landroid/bluetooth/IBluetoothHapClientCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 107
    const-string v0, "android.bluetooth.IBluetoothHapClientCallback"

    .line 108
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 119
    packed-switch p1, :pswitch_data_1

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 115
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    return v1

    .line 178
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 180
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 181
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothHapClientCallback$Stub;->onSetPresetNameForGroupFailed(II)V

    .line 183
    goto :goto_0

    .line 168
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 170
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 171
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothHapClientCallback$Stub;->onSetPresetNameFailed(Landroid/bluetooth/BluetoothDevice;I)V

    .line 173
    goto :goto_0

    .line 156
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    :pswitch_3
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 158
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/bluetooth/BluetoothHapPresetInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 160
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHapPresetInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 161
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothHapClientCallback$Stub;->onPresetInfoChanged(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;I)V

    .line 163
    goto :goto_0

    .line 146
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHapPresetInfo;>;"
    .end local v4    # "_arg2":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 149
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothHapClientCallback$Stub;->onPresetSelectionForGroupFailed(II)V

    .line 151
    goto :goto_0

    .line 136
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_5
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 138
    .local v2, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 139
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {p0, v2, v3}, Landroid/bluetooth/IBluetoothHapClientCallback$Stub;->onPresetSelectionFailed(Landroid/bluetooth/BluetoothDevice;I)V

    .line 141
    goto :goto_0

    .line 124
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    :pswitch_6
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 126
    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 128
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 129
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/IBluetoothHapClientCallback$Stub;->onPresetSelected(Landroid/bluetooth/BluetoothDevice;II)V

    .line 131
    nop

    .line 190
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :goto_0
    return v1

    nop

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
