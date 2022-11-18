.class public abstract Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;
.super Landroid/os/Binder;
.source "IPeriodicAdvertisingCallback.java"

# interfaces
.implements Landroid/bluetooth/le/IPeriodicAdvertisingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.le.IPeriodicAdvertisingCallback"

.field static final blacklist TRANSACTION_onPeriodicAdvertisingReport:I = 0x2

.field static final blacklist TRANSACTION_onSyncEstablished:I = 0x1

.field static final blacklist TRANSACTION_onSyncLost:I = 0x3

.field static final blacklist TRANSACTION_onSyncTransferred:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.bluetooth.le.IPeriodicAdvertisingCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    const-string v0, "android.bluetooth.le.IPeriodicAdvertisingCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    if-eqz v1, :cond_1

    .line 50
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    return-object v1

    .line 52
    :cond_1
    new-instance v1, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_0

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 77
    :pswitch_0
    const-string/jumbo v0, "onSyncTransferred"

    return-object v0

    .line 73
    :pswitch_1
    const-string/jumbo v0, "onSyncLost"

    return-object v0

    .line 69
    :pswitch_2
    const-string/jumbo v0, "onPeriodicAdvertisingReport"

    return-object v0

    .line 65
    :pswitch_3
    const-string/jumbo v0, "onSyncEstablished"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 235
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 88
    invoke-static {p1}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "android.bluetooth.le.IPeriodicAdvertisingCallback"

    .line 93
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 94
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 104
    move-object/from16 v12, p3

    packed-switch v8, :pswitch_data_1

    .line 152
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 100
    :pswitch_0
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v11

    .line 143
    :pswitch_1
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 145
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->onSyncTransferred(Landroid/bluetooth/BluetoothDevice;I)V

    .line 148
    goto :goto_0

    .line 135
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 136
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {v7, v0}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->onSyncLost(I)V

    .line 138
    goto :goto_0

    .line 127
    .end local v0    # "_arg0":I
    :pswitch_3
    sget-object v0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/PeriodicAdvertisingReport;

    .line 128
    .local v0, "_arg0":Landroid/bluetooth/le/PeriodicAdvertisingReport;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {v7, v0}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->onPeriodicAdvertisingReport(Landroid/bluetooth/le/PeriodicAdvertisingReport;)V

    .line 130
    goto :goto_0

    .line 109
    .end local v0    # "_arg0":Landroid/bluetooth/le/PeriodicAdvertisingReport;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 111
    .local v13, "_arg0":I
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/bluetooth/BluetoothDevice;

    .line 113
    .local v14, "_arg1":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 115
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 117
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 119
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 120
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V

    .line 122
    nop

    .line 155
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
