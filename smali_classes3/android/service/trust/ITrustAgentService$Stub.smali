.class public abstract Landroid/service/trust/ITrustAgentService$Stub;
.super Landroid/os/Binder;
.source "ITrustAgentService.java"

# interfaces
.implements Landroid/service/trust/ITrustAgentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/ITrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/ITrustAgentService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.trust.ITrustAgentService"

.field static final greylist-max-o TRANSACTION_onConfigure:I = 0x8

.field static final greylist-max-o TRANSACTION_onDeviceLocked:I = 0x6

.field static final greylist-max-o TRANSACTION_onDeviceUnlocked:I = 0x7

.field static final greylist-max-o TRANSACTION_onEscrowTokenAdded:I = 0xa

.field static final greylist-max-o TRANSACTION_onEscrowTokenRemoved:I = 0xc

.field static final greylist-max-o TRANSACTION_onTokenStateReceived:I = 0xb

.field static final greylist-max-o TRANSACTION_onTrustTimeout:I = 0x5

.field static final greylist-max-o TRANSACTION_onUnlockAttempt:I = 0x1

.field static final greylist-max-o TRANSACTION_onUnlockLockout:I = 0x4

.field static final blacklist TRANSACTION_onUserMayRequestUnlock:I = 0x3

.field static final blacklist TRANSACTION_onUserRequestedUnlock:I = 0x2

.field static final greylist-max-o TRANSACTION_setCallback:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.service.trust.ITrustAgentService"

    invoke-virtual {p0, p0, v0}, Landroid/service/trust/ITrustAgentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    const-string v0, "android.service.trust.ITrustAgentService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_1

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/service/trust/ITrustAgentService;

    return-object v1

    .line 76
    :cond_1
    new-instance v1, Landroid/service/trust/ITrustAgentService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/trust/ITrustAgentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 85
    packed-switch p0, :pswitch_data_0

    .line 137
    const/4 v0, 0x0

    return-object v0

    .line 133
    :pswitch_0
    const-string/jumbo v0, "onEscrowTokenRemoved"

    return-object v0

    .line 129
    :pswitch_1
    const-string/jumbo v0, "onTokenStateReceived"

    return-object v0

    .line 125
    :pswitch_2
    const-string/jumbo v0, "onEscrowTokenAdded"

    return-object v0

    .line 121
    :pswitch_3
    const-string/jumbo v0, "setCallback"

    return-object v0

    .line 117
    :pswitch_4
    const-string/jumbo v0, "onConfigure"

    return-object v0

    .line 113
    :pswitch_5
    const-string/jumbo v0, "onDeviceUnlocked"

    return-object v0

    .line 109
    :pswitch_6
    const-string/jumbo v0, "onDeviceLocked"

    return-object v0

    .line 105
    :pswitch_7
    const-string/jumbo v0, "onTrustTimeout"

    return-object v0

    .line 101
    :pswitch_8
    const-string/jumbo v0, "onUnlockLockout"

    return-object v0

    .line 97
    :pswitch_9
    const-string/jumbo v0, "onUserMayRequestUnlock"

    return-object v0

    .line 93
    :pswitch_a
    const-string/jumbo v0, "onUserRequestedUnlock"

    return-object v0

    .line 89
    :pswitch_b
    const-string/jumbo v0, "onUnlockAttempt"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 440
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 144
    invoke-static {p1}, Landroid/service/trust/ITrustAgentService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    const-string v0, "android.service.trust.ITrustAgentService"

    .line 149
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 150
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 160
    packed-switch p1, :pswitch_data_1

    .line 258
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 156
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    return v1

    .line 249
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 251
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 252
    .local v4, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/trust/ITrustAgentService$Stub;->onEscrowTokenRemoved(JZ)V

    .line 254
    goto/16 :goto_0

    .line 239
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 241
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 242
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/trust/ITrustAgentService$Stub;->onTokenStateReceived(JI)V

    .line 244
    goto :goto_0

    .line 227
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 229
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 231
    .local v3, "_arg1":J
    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 232
    .local v5, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/service/trust/ITrustAgentService$Stub;->onEscrowTokenAdded([BJLandroid/os/UserHandle;)V

    .line 234
    goto :goto_0

    .line 219
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":J
    .end local v5    # "_arg2":Landroid/os/UserHandle;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v2

    .line 220
    .local v2, "_arg0":Landroid/service/trust/ITrustAgentServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v2}, Landroid/service/trust/ITrustAgentService$Stub;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V

    .line 222
    goto :goto_0

    .line 209
    .end local v2    # "_arg0":Landroid/service/trust/ITrustAgentServiceCallback;
    :pswitch_5
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 211
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 212
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2, v3}, Landroid/service/trust/ITrustAgentService$Stub;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V

    .line 214
    goto :goto_0

    .line 203
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_6
    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentService$Stub;->onDeviceUnlocked()V

    .line 204
    goto :goto_0

    .line 198
    :pswitch_7
    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentService$Stub;->onDeviceLocked()V

    .line 199
    goto :goto_0

    .line 193
    :pswitch_8
    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentService$Stub;->onTrustTimeout()V

    .line 194
    goto :goto_0

    .line 186
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 187
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {p0, v2}, Landroid/service/trust/ITrustAgentService$Stub;->onUnlockLockout(I)V

    .line 189
    goto :goto_0

    .line 180
    .end local v2    # "_arg0":I
    :pswitch_a
    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentService$Stub;->onUserMayRequestUnlock()V

    .line 181
    goto :goto_0

    .line 173
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 174
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2}, Landroid/service/trust/ITrustAgentService$Stub;->onUserRequestedUnlock(Z)V

    .line 176
    goto :goto_0

    .line 165
    .end local v2    # "_arg0":Z
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 166
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2}, Landroid/service/trust/ITrustAgentService$Stub;->onUnlockAttempt(Z)V

    .line 168
    nop

    .line 261
    .end local v2    # "_arg0":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
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
