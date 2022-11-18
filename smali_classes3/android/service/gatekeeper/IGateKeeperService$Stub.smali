.class public abstract Landroid/service/gatekeeper/IGateKeeperService$Stub;
.super Landroid/os/Binder;
.source "IGateKeeperService.java"

# interfaces
.implements Landroid/service/gatekeeper/IGateKeeperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gatekeeper/IGateKeeperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearSecureUserId:I = 0x5

.field static final blacklist TRANSACTION_enroll:I = 0x1

.field static final blacklist TRANSACTION_getSecureUserId:I = 0x4

.field static final blacklist TRANSACTION_reportDeviceSetupComplete:I = 0x6

.field static final blacklist TRANSACTION_verify:I = 0x2

.field static final blacklist TRANSACTION_verifyChallenge:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 95
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p0, p0, v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 103
    if-nez p0, :cond_0

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 107
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v1, :cond_1

    .line 108
    move-object v1, v0

    check-cast v1, Landroid/service/gatekeeper/IGateKeeperService;

    return-object v1

    .line 110
    :cond_1
    new-instance v1, Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 119
    packed-switch p0, :pswitch_data_0

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 143
    :pswitch_0
    const-string/jumbo v0, "reportDeviceSetupComplete"

    return-object v0

    .line 139
    :pswitch_1
    const-string v0, "clearSecureUserId"

    return-object v0

    .line 135
    :pswitch_2
    const-string v0, "getSecureUserId"

    return-object v0

    .line 131
    :pswitch_3
    const-string/jumbo v0, "verifyChallenge"

    return-object v0

    .line 127
    :pswitch_4
    const-string/jumbo v0, "verify"

    return-object v0

    .line 123
    :pswitch_5
    const-string v0, "enroll"

    return-object v0

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

    .line 114
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 433
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 154
    invoke-static {p1}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 158
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "android.service.gatekeeper.IGateKeeperService"

    .line 159
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 160
    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_0
    move-object/from16 v11, p2

    .line 162
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 170
    packed-switch v7, :pswitch_data_1

    .line 245
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 166
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    return v10

    .line 239
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->reportDeviceSetupComplete()V

    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    goto/16 :goto_1

    .line 231
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {v6, v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->clearSecureUserId(I)V

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    goto/16 :goto_1

    .line 221
    .end local v0    # "_arg0":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 222
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {v6, v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->getSecureUserId(I)J

    move-result-wide v1

    .line 224
    .local v1, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {v8, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 226
    goto :goto_1

    .line 205
    .end local v0    # "_arg0":I
    .end local v1    # "_result":J
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 207
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 209
    .local v13, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 211
    .local v15, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 212
    .local v16, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    move-object/from16 v0, p0

    move v1, v12

    move-wide v2, v13

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0

    .line 214
    .local v0, "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {v8, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 216
    goto :goto_1

    .line 191
    .end local v0    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":J
    .end local v15    # "_arg2":[B
    .end local v16    # "_arg3":[B
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 193
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 195
    .local v1, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 196
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {v6, v0, v1, v2}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v3

    .line 198
    .local v3, "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {v8, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 200
    goto :goto_1

    .line 175
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 179
    .restart local v1    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 181
    .restart local v2    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 182
    .local v3, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v4

    .line 184
    .local v4, "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {v8, v4, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 186
    nop

    .line 248
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":[B
    .end local v4    # "_result":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_1
    return v10

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
