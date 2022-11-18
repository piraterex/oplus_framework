.class public abstract Landroid/telephony/ims/aidl/IImsSmsListener$Stub;
.super Landroid/os/Binder;
.source "IImsSmsListener.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsSmsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsSmsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsSmsListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onSendSmsResult:I = 0x1

.field static final blacklist TRANSACTION_onSmsReceived:I = 0x3

.field static final blacklist TRANSACTION_onSmsStatusReportReceived:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.telephony.ims.aidl.IImsSmsListener"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsSmsListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    const-string v0, "android.telephony.ims.aidl.IImsSmsListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsSmsListener;

    if-eqz v1, :cond_1

    .line 47
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsSmsListener;

    return-object v1

    .line 49
    :cond_1
    new-instance v1, Landroid/telephony/ims/aidl/IImsSmsListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 58
    packed-switch p0, :pswitch_data_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 70
    :pswitch_0
    const-string/jumbo v0, "onSmsReceived"

    return-object v0

    .line 66
    :pswitch_1
    const-string/jumbo v0, "onSmsStatusReportReceived"

    return-object v0

    .line 62
    :pswitch_2
    const-string/jumbo v0, "onSendSmsResult"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 53
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 212
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 81
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 85
    move-object/from16 v6, p0

    move/from16 v7, p1

    const-string v8, "android.telephony.ims.aidl.IImsSmsListener"

    .line 86
    .local v8, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt v7, v9, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 87
    move-object/from16 v10, p2

    invoke-virtual {v10, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_0
    move-object/from16 v10, p2

    .line 89
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 97
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 141
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 93
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v9

    .line 130
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 135
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {v6, v0, v1, v2}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->onSmsReceived(ILjava/lang/String;[B)V

    .line 137
    goto :goto_1

    .line 118
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[B
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 123
    .restart local v2    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {v6, v0, v1, v2}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->onSmsStatusReportReceived(ILjava/lang/String;[B)V

    .line 125
    goto :goto_1

    .line 102
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":[B
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 104
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 106
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 108
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 110
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 111
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->onSendSmsResult(IIIII)V

    .line 113
    nop

    .line 144
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :goto_1
    return v9

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
