.class public abstract Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;
.super Landroid/os/Binder;
.source "IPresenceListener.java"

# interfaces
.implements Lcom/android/ims/internal/uce/presence/IPresenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/IPresenceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.presence.IPresenceListener"

.field static final greylist-max-o TRANSACTION_capInfoReceived:I = 0x7

.field static final greylist-max-o TRANSACTION_cmdStatus:I = 0x5

.field static final greylist-max-o TRANSACTION_getVersionCb:I = 0x1

.field static final greylist-max-o TRANSACTION_listCapInfoReceived:I = 0x8

.field static final greylist-max-o TRANSACTION_publishTriggering:I = 0x4

.field static final greylist-max-o TRANSACTION_serviceAvailable:I = 0x2

.field static final greylist-max-o TRANSACTION_serviceUnAvailable:I = 0x3

.field static final greylist-max-o TRANSACTION_sipResponseReceived:I = 0x6

.field static final greylist-max-o TRANSACTION_unpublishMessageSent:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 96
    const-string v0, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 104
    if-nez p0, :cond_0

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_0
    const-string v0, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 108
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/uce/presence/IPresenceListener;

    if-eqz v1, :cond_1

    .line 109
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/uce/presence/IPresenceListener;

    return-object v1

    .line 111
    :cond_1
    new-instance v1, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 120
    packed-switch p0, :pswitch_data_0

    .line 160
    const/4 v0, 0x0

    return-object v0

    .line 156
    :pswitch_0
    const-string/jumbo v0, "unpublishMessageSent"

    return-object v0

    .line 152
    :pswitch_1
    const-string/jumbo v0, "listCapInfoReceived"

    return-object v0

    .line 148
    :pswitch_2
    const-string v0, "capInfoReceived"

    return-object v0

    .line 144
    :pswitch_3
    const-string/jumbo v0, "sipResponseReceived"

    return-object v0

    .line 140
    :pswitch_4
    const-string v0, "cmdStatus"

    return-object v0

    .line 136
    :pswitch_5
    const-string/jumbo v0, "publishTriggering"

    return-object v0

    .line 132
    :pswitch_6
    const-string/jumbo v0, "serviceUnAvailable"

    return-object v0

    .line 128
    :pswitch_7
    const-string/jumbo v0, "serviceAvailable"

    return-object v0

    .line 124
    :pswitch_8
    const-string v0, "getVersionCb"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 115
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 483
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 167
    invoke-static {p1}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    const-string v0, "com.android.ims.internal.uce.presence.IPresenceListener"

    .line 172
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 173
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 183
    packed-switch p1, :pswitch_data_1

    .line 269
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 179
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    return v1

    .line 263
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->unpublishMessageSent()V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    goto/16 :goto_0

    .line 253
    :pswitch_2
    sget-object v2, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/uce/presence/PresRlmiInfo;

    .line 255
    .local v2, "_arg0":Lcom/android/ims/internal/uce/presence/PresRlmiInfo;
    sget-object v3, Lcom/android/ims/internal/uce/presence/PresResInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/ims/internal/uce/presence/PresResInfo;

    .line 256
    .local v3, "_arg1":[Lcom/android/ims/internal/uce/presence/PresResInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->listCapInfoReceived(Lcom/android/ims/internal/uce/presence/PresRlmiInfo;[Lcom/android/ims/internal/uce/presence/PresResInfo;)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    goto/16 :goto_0

    .line 242
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/PresRlmiInfo;
    .end local v3    # "_arg1":[Lcom/android/ims/internal/uce/presence/PresResInfo;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    .line 245
    .local v3, "_arg1":[Lcom/android/ims/internal/uce/presence/PresTupleInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->capInfoReceived(Ljava/lang/String;[Lcom/android/ims/internal/uce/presence/PresTupleInfo;)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    goto :goto_0

    .line 233
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[Lcom/android/ims/internal/uce/presence/PresTupleInfo;
    :pswitch_4
    sget-object v2, Lcom/android/ims/internal/uce/presence/PresSipResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/uce/presence/PresSipResponse;

    .line 234
    .local v2, "_arg0":Lcom/android/ims/internal/uce/presence/PresSipResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->sipResponseReceived(Lcom/android/ims/internal/uce/presence/PresSipResponse;)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto :goto_0

    .line 224
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/PresSipResponse;
    :pswitch_5
    sget-object v2, Lcom/android/ims/internal/uce/presence/PresCmdStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/uce/presence/PresCmdStatus;

    .line 225
    .local v2, "_arg0":Lcom/android/ims/internal/uce/presence/PresCmdStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->cmdStatus(Lcom/android/ims/internal/uce/presence/PresCmdStatus;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    goto :goto_0

    .line 215
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/PresCmdStatus;
    :pswitch_6
    sget-object v2, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;

    .line 216
    .local v2, "_arg0":Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->publishTriggering(Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    goto :goto_0

    .line 206
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
    :pswitch_7
    sget-object v2, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/uce/common/StatusCode;

    .line 207
    .local v2, "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->serviceUnAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto :goto_0

    .line 197
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_8
    sget-object v2, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/uce/common/StatusCode;

    .line 198
    .restart local v2    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->serviceAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto :goto_0

    .line 188
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/common/StatusCode;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->getVersionCb(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    nop

    .line 272
    .end local v2    # "_arg0":Ljava/lang/String;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
