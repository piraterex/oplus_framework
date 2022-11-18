.class public abstract Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;
.super Landroid/os/Binder;
.source "IRemotelyProvisionedComponent.java"

# interfaces
.implements Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_generateCertificateRequest:I = 0x3

.field static final blacklist TRANSACTION_generateEcdsaP256KeyPair:I = 0x2

.field static final blacklist TRANSACTION_getHardwareInfo:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->markVintfStability()V

    .line 51
    sget-object v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    sget-object v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    if-eqz v1, :cond_1

    .line 64
    move-object v1, v0

    check-cast v1, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    return-object v1

    .line 66
    :cond_1
    new-instance v1, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 70
    return-object p0
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

    .line 74
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    sget-object v3, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 75
    .local v3, "descriptor":Ljava/lang/String;
    const/4 v4, 0x1

    if-lt v0, v4, :cond_0

    const v5, 0xffffff

    if-gt v0, v5, :cond_0

    .line 76
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 98
    packed-switch v0, :pswitch_data_0

    .line 144
    move-object/from16 v6, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 82
    :sswitch_0
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return v4

    .line 87
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->getInterfaceVersion()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return v4

    .line 93
    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v4

    .line 123
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 125
    .local v5, "_arg0":Z
    sget-object v6, Landroid/hardware/security/keymint/MacedPublicKey;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, [Landroid/hardware/security/keymint/MacedPublicKey;

    .line 127
    .local v13, "_arg1":[Landroid/hardware/security/keymint/MacedPublicKey;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 129
    .local v14, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 131
    .local v15, "_arg3":[B
    new-instance v6, Landroid/hardware/security/keymint/DeviceInfo;

    invoke-direct {v6}, Landroid/hardware/security/keymint/DeviceInfo;-><init>()V

    move-object v12, v6

    .line 133
    .local v12, "_arg4":Landroid/hardware/security/keymint/DeviceInfo;
    new-instance v6, Landroid/hardware/security/keymint/ProtectedData;

    invoke-direct {v6}, Landroid/hardware/security/keymint/ProtectedData;-><init>()V

    move-object v11, v6

    .line 134
    .local v11, "_arg5":Landroid/hardware/security/keymint/ProtectedData;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    move-object/from16 v6, p0

    move v7, v5

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    move-object/from16 v16, v11

    .end local v11    # "_arg5":Landroid/hardware/security/keymint/ProtectedData;
    .local v16, "_arg5":Landroid/hardware/security/keymint/ProtectedData;
    move-object v11, v12

    move-object v0, v12

    .end local v12    # "_arg4":Landroid/hardware/security/keymint/DeviceInfo;
    .local v0, "_arg4":Landroid/hardware/security/keymint/DeviceInfo;
    move-object/from16 v12, v16

    invoke-virtual/range {v6 .. v12}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->generateCertificateRequest(Z[Landroid/hardware/security/keymint/MacedPublicKey;[B[BLandroid/hardware/security/keymint/DeviceInfo;Landroid/hardware/security/keymint/ProtectedData;)[B

    move-result-object v6

    .line 136
    .local v6, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 138
    invoke-virtual {v2, v0, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 139
    move-object/from16 v7, v16

    .end local v16    # "_arg5":Landroid/hardware/security/keymint/ProtectedData;
    .local v7, "_arg5":Landroid/hardware/security/keymint/ProtectedData;
    invoke-virtual {v2, v7, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 140
    move-object/from16 v6, p0

    goto :goto_0

    .line 110
    .end local v0    # "_arg4":Landroid/hardware/security/keymint/DeviceInfo;
    .end local v5    # "_arg0":Z
    .end local v6    # "_result":[B
    .end local v7    # "_arg5":Landroid/hardware/security/keymint/ProtectedData;
    .end local v13    # "_arg1":[Landroid/hardware/security/keymint/MacedPublicKey;
    .end local v14    # "_arg2":[B
    .end local v15    # "_arg3":[B
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 112
    .local v0, "_arg0":Z
    new-instance v5, Landroid/hardware/security/keymint/MacedPublicKey;

    invoke-direct {v5}, Landroid/hardware/security/keymint/MacedPublicKey;-><init>()V

    .line 113
    .local v5, "_arg1":Landroid/hardware/security/keymint/MacedPublicKey;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    move-object/from16 v6, p0

    invoke-virtual {v6, v0, v5}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->generateEcdsaP256KeyPair(ZLandroid/hardware/security/keymint/MacedPublicKey;)[B

    move-result-object v7

    .line 115
    .local v7, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 117
    invoke-virtual {v2, v5, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 118
    goto :goto_0

    .line 102
    .end local v0    # "_arg0":Z
    .end local v5    # "_arg1":Landroid/hardware/security/keymint/MacedPublicKey;
    .end local v7    # "_result":[B
    :pswitch_2
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->getHardwareInfo()Landroid/hardware/security/keymint/RpcHardwareInfo;

    move-result-object v0

    .line 103
    .local v0, "_result":Landroid/hardware/security/keymint/RpcHardwareInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {v2, v0, v4}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 105
    nop

    .line 147
    .end local v0    # "_result":Landroid/hardware/security/keymint/RpcHardwareInfo;
    :goto_0
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
