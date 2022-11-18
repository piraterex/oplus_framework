.class public abstract Landroid/security/apc/IProtectedConfirmation$Stub;
.super Landroid/os/Binder;
.source "IProtectedConfirmation.java"

# interfaces
.implements Landroid/security/apc/IProtectedConfirmation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/apc/IProtectedConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/apc/IProtectedConfirmation$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelPrompt:I = 0x2

.field static final blacklist TRANSACTION_isSupported:I = 0x3

.field static final blacklist TRANSACTION_presentPrompt:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 60
    sget-object v0, Landroid/security/apc/IProtectedConfirmation$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/security/apc/IProtectedConfirmation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/security/apc/IProtectedConfirmation;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 68
    if-nez p0, :cond_0

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_0
    sget-object v0, Landroid/security/apc/IProtectedConfirmation$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/security/apc/IProtectedConfirmation;

    if-eqz v1, :cond_1

    .line 73
    move-object v1, v0

    check-cast v1, Landroid/security/apc/IProtectedConfirmation;

    return-object v1

    .line 75
    :cond_1
    new-instance v1, Landroid/security/apc/IProtectedConfirmation$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/apc/IProtectedConfirmation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 79
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

    .line 83
    move/from16 v0, p1

    move-object/from16 v1, p3

    sget-object v2, Landroid/security/apc/IProtectedConfirmation$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 84
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    const v4, 0xffffff

    if-gt v0, v4, :cond_0

    .line 85
    move-object/from16 v4, p2

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    move-object/from16 v4, p2

    .line 87
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 95
    packed-switch v0, :pswitch_data_1

    .line 132
    move-object/from16 v12, p0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 91
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return v3

    .line 125
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/security/apc/IProtectedConfirmation$Stub;->isSupported()Z

    move-result v5

    .line 126
    .local v5, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 128
    move-object/from16 v12, p0

    goto :goto_1

    .line 117
    .end local v5    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/security/apc/IConfirmationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/apc/IConfirmationCallback;

    move-result-object v5

    .line 118
    .local v5, "_arg0":Landroid/security/apc/IConfirmationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    move-object/from16 v12, p0

    invoke-virtual {v12, v5}, Landroid/security/apc/IProtectedConfirmation$Stub;->cancelPrompt(Landroid/security/apc/IConfirmationCallback;)V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    goto :goto_1

    .line 100
    .end local v5    # "_arg0":Landroid/security/apc/IConfirmationCallback;
    :pswitch_3
    move-object/from16 v12, p0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/security/apc/IConfirmationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/apc/IConfirmationCallback;

    move-result-object v5

    .line 102
    .restart local v5    # "_arg0":Landroid/security/apc/IConfirmationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 104
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 106
    .local v14, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 108
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 109
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    move-object/from16 v6, p0

    move-object v7, v5

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    move/from16 v11, v16

    invoke-virtual/range {v6 .. v11}, Landroid/security/apc/IProtectedConfirmation$Stub;->presentPrompt(Landroid/security/apc/IConfirmationCallback;Ljava/lang/String;[BLjava/lang/String;I)V

    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    nop

    .line 135
    .end local v5    # "_arg0":Landroid/security/apc/IConfirmationCallback;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":[B
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :goto_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
