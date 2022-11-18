.class public abstract Landroid/companion/virtual/IVirtualDeviceManager$Stub;
.super Landroid/os/Binder;
.source "IVirtualDeviceManager.java"

# interfaces
.implements Landroid/companion/virtual/IVirtualDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/IVirtualDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/IVirtualDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createVirtualDevice:I = 0x1

.field static final blacklist TRANSACTION_createVirtualDisplay:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "android.companion.virtual.IVirtualDeviceManager"

    invoke-virtual {p0, p0, v0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    const-string v0, "android.companion.virtual.IVirtualDeviceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/companion/virtual/IVirtualDeviceManager;

    if-eqz v1, :cond_1

    .line 67
    move-object v1, v0

    check-cast v1, Landroid/companion/virtual/IVirtualDeviceManager;

    return-object v1

    .line 69
    :cond_1
    new-instance v1, Landroid/companion/virtual/IVirtualDeviceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 78
    packed-switch p0, :pswitch_data_0

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 86
    :pswitch_0
    const-string v0, "createVirtualDisplay"

    return-object v0

    .line 82
    :pswitch_1
    const-string v0, "createVirtualDevice"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 73
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 97
    invoke-static {p1}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "android.companion.virtual.IVirtualDeviceManager"

    .line 102
    .local v3, "descriptor":Ljava/lang/String;
    const/4 v4, 0x1

    if-lt v0, v4, :cond_0

    const v5, 0xffffff

    if-gt v0, v5, :cond_0

    .line 103
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 113
    packed-switch v0, :pswitch_data_1

    .line 151
    move-object/from16 v15, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 109
    :pswitch_0
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return v4

    .line 136
    :pswitch_1
    sget-object v5, Landroid/hardware/display/VirtualDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/VirtualDisplayConfig;

    .line 138
    .local v5, "_arg0":Landroid/hardware/display/VirtualDisplayConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v6

    .line 140
    .local v6, "_arg1":Landroid/hardware/display/IVirtualDisplayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/companion/virtual/IVirtualDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDevice;

    move-result-object v7

    .line 142
    .local v7, "_arg2":Landroid/companion/virtual/IVirtualDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 143
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    move-object/from16 v15, p0

    invoke-virtual {v15, v5, v6, v7, v8}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/IVirtualDevice;Ljava/lang/String;)I

    move-result v9

    .line 145
    .local v9, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    goto :goto_0

    .line 118
    .end local v5    # "_arg0":Landroid/hardware/display/VirtualDisplayConfig;
    .end local v6    # "_arg1":Landroid/hardware/display/IVirtualDisplayCallback;
    .end local v7    # "_arg2":Landroid/companion/virtual/IVirtualDevice;
    .end local v8    # "_arg3":Ljava/lang/String;
    .end local v9    # "_result":I
    :pswitch_2
    move-object/from16 v15, p0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 120
    .local v5, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 124
    .local v7, "_arg2":I
    sget-object v8, Landroid/companion/virtual/VirtualDeviceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/companion/virtual/VirtualDeviceParams;

    .line 126
    .local v8, "_arg3":Landroid/companion/virtual/VirtualDeviceParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-result-object v16

    .line 127
    .local v16, "_arg4":Landroid/companion/virtual/IVirtualDeviceActivityListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    move-object/from16 v9, p0

    move-object v10, v5

    move-object v11, v6

    move v12, v7

    move-object v13, v8

    move-object/from16 v14, v16

    invoke-virtual/range {v9 .. v14}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->createVirtualDevice(Landroid/os/IBinder;Ljava/lang/String;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/IVirtualDeviceActivityListener;)Landroid/companion/virtual/IVirtualDevice;

    move-result-object v9

    .line 129
    .local v9, "_result":Landroid/companion/virtual/IVirtualDevice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 131
    nop

    .line 154
    .end local v5    # "_arg0":Landroid/os/IBinder;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":Landroid/companion/virtual/VirtualDeviceParams;
    .end local v9    # "_result":Landroid/companion/virtual/IVirtualDevice;
    .end local v16    # "_arg4":Landroid/companion/virtual/IVirtualDeviceActivityListener;
    :goto_0
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
