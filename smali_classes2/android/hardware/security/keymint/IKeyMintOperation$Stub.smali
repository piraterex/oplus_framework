.class public abstract Landroid/hardware/security/keymint/IKeyMintOperation$Stub;
.super Landroid/os/Binder;
.source "IKeyMintOperation.java"

# interfaces
.implements Landroid/hardware/security/keymint/IKeyMintOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/security/keymint/IKeyMintOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abort:I = 0x4

.field static final blacklist TRANSACTION_finish:I = 0x3

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_update:I = 0x2

.field static final blacklist TRANSACTION_updateAad:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    invoke-virtual {p0}, Landroid/hardware/security/keymint/IKeyMintOperation$Stub;->markVintfStability()V

    .line 53
    sget-object v0, Landroid/hardware/security/keymint/IKeyMintOperation$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/security/keymint/IKeyMintOperation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/security/keymint/IKeyMintOperation;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_0

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_0
    sget-object v0, Landroid/hardware/security/keymint/IKeyMintOperation$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/security/keymint/IKeyMintOperation;

    if-eqz v1, :cond_1

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/hardware/security/keymint/IKeyMintOperation;

    return-object v1

    .line 68
    :cond_1
    new-instance v1, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 72
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

    .line 76
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    sget-object v10, Landroid/hardware/security/keymint/IKeyMintOperation$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 77
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 78
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    :cond_0
    sparse-switch v7, :sswitch_data_0

    .line 100
    packed-switch v7, :pswitch_data_0

    .line 155
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 84
    :sswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v11

    .line 89
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IKeyMintOperation$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return v11

    .line 95
    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IKeyMintOperation$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v11

    .line 149
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/security/keymint/IKeyMintOperation$Stub;->abort()V

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    goto/16 :goto_0

    .line 132
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 134
    .local v12, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 136
    .local v13, "_arg1":[B
    sget-object v0, Landroid/hardware/security/keymint/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/hardware/security/keymint/HardwareAuthToken;

    .line 138
    .local v14, "_arg2":Landroid/hardware/security/keymint/HardwareAuthToken;
    sget-object v0, Landroid/hardware/security/secureclock/TimeStampToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/hardware/security/secureclock/TimeStampToken;

    .line 140
    .local v15, "_arg3":Landroid/hardware/security/secureclock/TimeStampToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 141
    .local v16, "_arg4":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/security/keymint/IKeyMintOperation$Stub;->finish([B[BLandroid/hardware/security/keymint/HardwareAuthToken;Landroid/hardware/security/secureclock/TimeStampToken;[B)[B

    move-result-object v0

    .line 143
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 145
    goto :goto_0

    .line 118
    .end local v0    # "_result":[B
    .end local v12    # "_arg0":[B
    .end local v13    # "_arg1":[B
    .end local v14    # "_arg2":Landroid/hardware/security/keymint/HardwareAuthToken;
    .end local v15    # "_arg3":Landroid/hardware/security/secureclock/TimeStampToken;
    .end local v16    # "_arg4":[B
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 120
    .local v0, "_arg0":[B
    sget-object v1, Landroid/hardware/security/keymint/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/security/keymint/HardwareAuthToken;

    .line 122
    .local v1, "_arg1":Landroid/hardware/security/keymint/HardwareAuthToken;
    sget-object v2, Landroid/hardware/security/secureclock/TimeStampToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/security/secureclock/TimeStampToken;

    .line 123
    .local v2, "_arg2":Landroid/hardware/security/secureclock/TimeStampToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/security/keymint/IKeyMintOperation$Stub;->update([BLandroid/hardware/security/keymint/HardwareAuthToken;Landroid/hardware/security/secureclock/TimeStampToken;)[B

    move-result-object v3

    .line 125
    .local v3, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 127
    goto :goto_0

    .line 105
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":Landroid/hardware/security/keymint/HardwareAuthToken;
    .end local v2    # "_arg2":Landroid/hardware/security/secureclock/TimeStampToken;
    .end local v3    # "_result":[B
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 107
    .restart local v0    # "_arg0":[B
    sget-object v1, Landroid/hardware/security/keymint/HardwareAuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/security/keymint/HardwareAuthToken;

    .line 109
    .restart local v1    # "_arg1":Landroid/hardware/security/keymint/HardwareAuthToken;
    sget-object v2, Landroid/hardware/security/secureclock/TimeStampToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/security/secureclock/TimeStampToken;

    .line 110
    .restart local v2    # "_arg2":Landroid/hardware/security/secureclock/TimeStampToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/security/keymint/IKeyMintOperation$Stub;->updateAad([BLandroid/hardware/security/keymint/HardwareAuthToken;Landroid/hardware/security/secureclock/TimeStampToken;)V

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    nop

    .line 158
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":Landroid/hardware/security/keymint/HardwareAuthToken;
    .end local v2    # "_arg2":Landroid/hardware/security/secureclock/TimeStampToken;
    :goto_0
    return v11

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
