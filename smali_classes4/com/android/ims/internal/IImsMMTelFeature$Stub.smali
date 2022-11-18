.class public abstract Lcom/android/ims/internal/IImsMMTelFeature$Stub;
.super Landroid/os/Binder;
.source "IImsMMTelFeature.java"

# interfaces
.implements Lcom/android/ims/internal/IImsMMTelFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsMMTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsMMTelFeature"

.field static final greylist-max-o TRANSACTION_addRegistrationListener:I = 0x6

.field static final greylist-max-o TRANSACTION_createCallProfile:I = 0x8

.field static final greylist-max-o TRANSACTION_createCallSession:I = 0x9

.field static final greylist-max-o TRANSACTION_endSession:I = 0x2

.field static final greylist-max-o TRANSACTION_getConfigInterface:I = 0xc

.field static final greylist-max-o TRANSACTION_getEcbmInterface:I = 0xf

.field static final greylist-max-o TRANSACTION_getFeatureStatus:I = 0x5

.field static final greylist-max-o TRANSACTION_getMultiEndpointInterface:I = 0x11

.field static final greylist-max-o TRANSACTION_getPendingCallSession:I = 0xa

.field static final greylist-max-o TRANSACTION_getUtInterface:I = 0xb

.field static final greylist-max-o TRANSACTION_isConnected:I = 0x3

.field static final greylist-max-o TRANSACTION_isOpened:I = 0x4

.field static final greylist-max-o TRANSACTION_removeRegistrationListener:I = 0x7

.field static final greylist-max-o TRANSACTION_setUiTTYMode:I = 0x10

.field static final greylist-max-o TRANSACTION_startSession:I = 0x1

.field static final greylist-max-o TRANSACTION_turnOffIms:I = 0xe

.field static final greylist-max-o TRANSACTION_turnOnIms:I = 0xd


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 87
    const-string v0, "com.android.ims.internal.IImsMMTelFeature"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 95
    if-nez p0, :cond_0

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_0
    const-string v0, "com.android.ims.internal.IImsMMTelFeature"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 99
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsMMTelFeature;

    if-eqz v1, :cond_1

    .line 100
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsMMTelFeature;

    return-object v1

    .line 102
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 111
    packed-switch p0, :pswitch_data_0

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 179
    :pswitch_0
    const-string v0, "getMultiEndpointInterface"

    return-object v0

    .line 175
    :pswitch_1
    const-string/jumbo v0, "setUiTTYMode"

    return-object v0

    .line 171
    :pswitch_2
    const-string v0, "getEcbmInterface"

    return-object v0

    .line 167
    :pswitch_3
    const-string/jumbo v0, "turnOffIms"

    return-object v0

    .line 163
    :pswitch_4
    const-string/jumbo v0, "turnOnIms"

    return-object v0

    .line 159
    :pswitch_5
    const-string v0, "getConfigInterface"

    return-object v0

    .line 155
    :pswitch_6
    const-string v0, "getUtInterface"

    return-object v0

    .line 151
    :pswitch_7
    const-string v0, "getPendingCallSession"

    return-object v0

    .line 147
    :pswitch_8
    const-string v0, "createCallSession"

    return-object v0

    .line 143
    :pswitch_9
    const-string v0, "createCallProfile"

    return-object v0

    .line 139
    :pswitch_a
    const-string/jumbo v0, "removeRegistrationListener"

    return-object v0

    .line 135
    :pswitch_b
    const-string v0, "addRegistrationListener"

    return-object v0

    .line 131
    :pswitch_c
    const-string v0, "getFeatureStatus"

    return-object v0

    .line 127
    :pswitch_d
    const-string v0, "isOpened"

    return-object v0

    .line 123
    :pswitch_e
    const-string v0, "isConnected"

    return-object v0

    .line 119
    :pswitch_f
    const-string v0, "endSession"

    return-object v0

    .line 115
    :pswitch_10
    const-string/jumbo v0, "startSession"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 106
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 693
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 190
    invoke-static {p1}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 194
    const-string v0, "com.android.ims.internal.IImsMMTelFeature"

    .line 195
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 196
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 206
    packed-switch p1, :pswitch_data_1

    .line 364
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 202
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    return v1

    .line 357
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v2

    .line 358
    .local v2, "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 360
    goto/16 :goto_0

    .line 347
    .end local v2    # "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 349
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 350
    .local v3, "_arg1":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->setUiTTYMode(ILandroid/os/Message;)V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    goto/16 :goto_0

    .line 339
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Message;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v2

    .line 340
    .local v2, "_result":Lcom/android/ims/internal/IImsEcbm;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 342
    goto/16 :goto_0

    .line 333
    .end local v2    # "_result":Lcom/android/ims/internal/IImsEcbm;
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->turnOffIms()V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    goto/16 :goto_0

    .line 327
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->turnOnIms()V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    goto/16 :goto_0

    .line 320
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;

    move-result-object v2

    .line 321
    .local v2, "_result":Lcom/android/ims/internal/IImsConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 323
    goto/16 :goto_0

    .line 313
    .end local v2    # "_result":Lcom/android/ims/internal/IImsConfig;
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v2

    .line 314
    .local v2, "_result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 316
    goto/16 :goto_0

    .line 302
    .end local v2    # "_result":Lcom/android/ims/internal/IImsUt;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v4

    .line 307
    .local v4, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 309
    goto/16 :goto_0

    .line 290
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 292
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsCallProfile;

    .line 293
    .local v3, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v4

    .line 295
    .restart local v4    # "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 297
    goto/16 :goto_0

    .line 276
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    .end local v4    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 278
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 280
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 281
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    .line 283
    .local v5, "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 285
    goto/16 :goto_0

    .line 267
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v2

    .line 268
    .local v2, "_arg0":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto :goto_0

    .line 258
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsRegistrationListener;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v2

    .line 259
    .restart local v2    # "_arg0":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    goto :goto_0

    .line 250
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsRegistrationListener;
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->getFeatureStatus()I

    move-result v2

    .line 251
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    goto :goto_0

    .line 243
    .end local v2    # "_result":I
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->isOpened()Z

    move-result v2

    .line 244
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 246
    goto :goto_0

    .line 232
    .end local v2    # "_result":Z
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 234
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 235
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->isConnected(II)Z

    move-result v4

    .line 237
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 239
    goto :goto_0

    .line 223
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 224
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->endSession(I)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    goto :goto_0

    .line 211
    .end local v2    # "_arg0":I
    :pswitch_11
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 213
    .local v2, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v3

    .line 214
    .local v3, "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2, v3}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v4

    .line 216
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    nop

    .line 367
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    .end local v3    # "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    .end local v4    # "_result":I
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
