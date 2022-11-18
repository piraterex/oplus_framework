.class public abstract Landroid/service/trust/ITrustAgentServiceCallback$Stub;
.super Landroid/os/Binder;
.source "ITrustAgentServiceCallback.java"

# interfaces
.implements Landroid/service/trust/ITrustAgentServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/ITrustAgentServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/ITrustAgentServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.trust.ITrustAgentServiceCallback"

.field static final greylist-max-o TRANSACTION_addEscrowToken:I = 0x6

.field static final greylist-max-o TRANSACTION_grantTrust:I = 0x1

.field static final greylist-max-o TRANSACTION_isEscrowTokenActive:I = 0x7

.field static final blacklist TRANSACTION_lockUser:I = 0x3

.field static final greylist-max-o TRANSACTION_onConfigureCompleted:I = 0x5

.field static final greylist-max-o TRANSACTION_removeEscrowToken:I = 0x8

.field static final greylist-max-o TRANSACTION_revokeTrust:I = 0x2

.field static final greylist-max-o TRANSACTION_setManagingTrust:I = 0x4

.field static final greylist-max-o TRANSACTION_showKeyguardErrorMessage:I = 0xa

.field static final greylist-max-o TRANSACTION_unlockUserWithToken:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "android.service.trust.ITrustAgentServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentServiceCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 63
    if-nez p0, :cond_0

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_0
    const-string v0, "android.service.trust.ITrustAgentServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/trust/ITrustAgentServiceCallback;

    if-eqz v1, :cond_1

    .line 68
    move-object v1, v0

    check-cast v1, Landroid/service/trust/ITrustAgentServiceCallback;

    return-object v1

    .line 70
    :cond_1
    new-instance v1, Landroid/service/trust/ITrustAgentServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 79
    packed-switch p0, :pswitch_data_0

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 119
    :pswitch_0
    const-string/jumbo v0, "showKeyguardErrorMessage"

    return-object v0

    .line 115
    :pswitch_1
    const-string/jumbo v0, "unlockUserWithToken"

    return-object v0

    .line 111
    :pswitch_2
    const-string/jumbo v0, "removeEscrowToken"

    return-object v0

    .line 107
    :pswitch_3
    const-string/jumbo v0, "isEscrowTokenActive"

    return-object v0

    .line 103
    :pswitch_4
    const-string v0, "addEscrowToken"

    return-object v0

    .line 99
    :pswitch_5
    const-string/jumbo v0, "onConfigureCompleted"

    return-object v0

    .line 95
    :pswitch_6
    const-string/jumbo v0, "setManagingTrust"

    return-object v0

    .line 91
    :pswitch_7
    const-string/jumbo v0, "lockUser"

    return-object v0

    .line 87
    :pswitch_8
    const-string/jumbo v0, "revokeTrust"

    return-object v0

    .line 83
    :pswitch_9
    const-string/jumbo v0, "grantTrust"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 74
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 416
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 130
    invoke-static {p1}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 134
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "android.service.trust.ITrustAgentServiceCallback"

    .line 135
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 136
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 146
    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_1

    .line 242
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 142
    :pswitch_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v10

    .line 235
    :pswitch_1
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 236
    .local v0, "_arg0":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {v6, v0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->showKeyguardErrorMessage(Ljava/lang/CharSequence;)V

    .line 238
    goto/16 :goto_0

    .line 223
    .end local v0    # "_arg0":Ljava/lang/CharSequence;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 225
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 227
    .local v2, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 228
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->unlockUserWithToken(J[BI)V

    .line 230
    goto/16 :goto_0

    .line 213
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 215
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 216
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {v6, v0, v1, v2}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->removeEscrowToken(JI)V

    .line 218
    goto/16 :goto_0

    .line 203
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 205
    .restart local v0    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 206
    .restart local v2    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {v6, v0, v1, v2}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->isEscrowTokenActive(JI)V

    .line 208
    goto :goto_0

    .line 193
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 195
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 196
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {v6, v0, v1}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->addEscrowToken([BI)V

    .line 198
    goto :goto_0

    .line 183
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 185
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 186
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {v6, v0, v1}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->onConfigureCompleted(ZLandroid/os/IBinder;)V

    .line 188
    goto :goto_0

    .line 175
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 176
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {v6, v0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->setManagingTrust(Z)V

    .line 178
    goto :goto_0

    .line 169
    .end local v0    # "_arg0":Z
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->lockUser()V

    .line 170
    goto :goto_0

    .line 164
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->revokeTrust()V

    .line 165
    goto :goto_0

    .line 151
    :pswitch_a
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/CharSequence;

    .line 153
    .local v12, "_arg0":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 155
    .local v13, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 157
    .local v15, "_arg2":I
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/infra/AndroidFuture;

    .line 158
    .local v16, "_arg3":Lcom/android/internal/infra/AndroidFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v13

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->grantTrust(Ljava/lang/CharSequence;JILcom/android/internal/infra/AndroidFuture;)V

    .line 160
    nop

    .line 245
    .end local v12    # "_arg0":Ljava/lang/CharSequence;
    .end local v13    # "_arg1":J
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Lcom/android/internal/infra/AndroidFuture;
    :goto_0
    return v10

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
