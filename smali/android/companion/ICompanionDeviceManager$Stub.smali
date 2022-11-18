.class public abstract Landroid/companion/ICompanionDeviceManager$Stub;
.super Landroid/os/Binder;
.source "ICompanionDeviceManager.java"

# interfaces
.implements Landroid/companion/ICompanionDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ICompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/ICompanionDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.companion.ICompanionDeviceManager"

.field static final blacklist TRANSACTION_addOnAssociationsChangedListener:I = 0xe

.field static final greylist-max-o TRANSACTION_associate:I = 0x1

.field static final blacklist TRANSACTION_canPairWithoutPrompt:I = 0xb

.field static final blacklist TRANSACTION_createAssociation:I = 0xc

.field static final greylist-max-o TRANSACTION_disassociate:I = 0x5

.field static final blacklist TRANSACTION_dispatchMessage:I = 0xd

.field static final blacklist TRANSACTION_getAllAssociationsForUser:I = 0x3

.field static final greylist-max-o TRANSACTION_getAssociations:I = 0x2

.field static final greylist-max-o TRANSACTION_hasNotificationAccess:I = 0x6

.field static final blacklist TRANSACTION_isDeviceAssociatedForWifiConnection:I = 0x8

.field static final blacklist TRANSACTION_legacyDisassociate:I = 0x4

.field static final blacklist TRANSACTION_notifyDeviceAppeared:I = 0x10

.field static final blacklist TRANSACTION_notifyDeviceDisappeared:I = 0x11

.field static final blacklist TRANSACTION_registerDevicePresenceListenerService:I = 0x9

.field static final blacklist TRANSACTION_removeOnAssociationsChangedListener:I = 0xf

.field static final greylist-max-o TRANSACTION_requestNotificationAccess:I = 0x7

.field static final blacklist TRANSACTION_unregisterDevicePresenceListenerService:I = 0xa


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 88
    const-string v0, "android.companion.ICompanionDeviceManager"

    invoke-virtual {p0, p0, v0}, Landroid/companion/ICompanionDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 96
    if-nez p0, :cond_0

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_0
    const-string v0, "android.companion.ICompanionDeviceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 100
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/companion/ICompanionDeviceManager;

    if-eqz v1, :cond_1

    .line 101
    move-object v1, v0

    check-cast v1, Landroid/companion/ICompanionDeviceManager;

    return-object v1

    .line 103
    :cond_1
    new-instance v1, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 112
    packed-switch p0, :pswitch_data_0

    .line 184
    const/4 v0, 0x0

    return-object v0

    .line 180
    :pswitch_0
    const-string/jumbo v0, "notifyDeviceDisappeared"

    return-object v0

    .line 176
    :pswitch_1
    const-string/jumbo v0, "notifyDeviceAppeared"

    return-object v0

    .line 172
    :pswitch_2
    const-string/jumbo v0, "removeOnAssociationsChangedListener"

    return-object v0

    .line 168
    :pswitch_3
    const-string v0, "addOnAssociationsChangedListener"

    return-object v0

    .line 164
    :pswitch_4
    const-string v0, "dispatchMessage"

    return-object v0

    .line 160
    :pswitch_5
    const-string v0, "createAssociation"

    return-object v0

    .line 156
    :pswitch_6
    const-string v0, "canPairWithoutPrompt"

    return-object v0

    .line 152
    :pswitch_7
    const-string/jumbo v0, "unregisterDevicePresenceListenerService"

    return-object v0

    .line 148
    :pswitch_8
    const-string/jumbo v0, "registerDevicePresenceListenerService"

    return-object v0

    .line 144
    :pswitch_9
    const-string v0, "isDeviceAssociatedForWifiConnection"

    return-object v0

    .line 140
    :pswitch_a
    const-string/jumbo v0, "requestNotificationAccess"

    return-object v0

    .line 136
    :pswitch_b
    const-string v0, "hasNotificationAccess"

    return-object v0

    .line 132
    :pswitch_c
    const-string v0, "disassociate"

    return-object v0

    .line 128
    :pswitch_d
    const-string v0, "legacyDisassociate"

    return-object v0

    .line 124
    :pswitch_e
    const-string v0, "getAllAssociationsForUser"

    return-object v0

    .line 120
    :pswitch_f
    const-string v0, "getAssociations"

    return-object v0

    .line 116
    :pswitch_10
    const-string v0, "associate"

    return-object v0

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

    .line 107
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 756
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 191
    invoke-static {p1}, Landroid/companion/ICompanionDeviceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 195
    const-string v0, "android.companion.ICompanionDeviceManager"

    .line 196
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 197
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 207
    packed-switch p1, :pswitch_data_1

    .line 414
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 203
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    return v1

    .line 406
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 407
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->notifyDeviceDisappeared(I)V

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    goto/16 :goto_0

    .line 397
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 398
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->notifyDeviceAppeared(I)V

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    goto/16 :goto_0

    .line 386
    .end local v2    # "_arg0":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/IOnAssociationsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnAssociationsChangedListener;

    move-result-object v2

    .line 388
    .local v2, "_arg0":Landroid/companion/IOnAssociationsChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 389
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    goto/16 :goto_0

    .line 375
    .end local v2    # "_arg0":Landroid/companion/IOnAssociationsChangedListener;
    .end local v3    # "_arg1":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/IOnAssociationsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IOnAssociationsChangedListener;

    move-result-object v2

    .line 377
    .restart local v2    # "_arg0":Landroid/companion/IOnAssociationsChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 378
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    goto/16 :goto_0

    .line 362
    .end local v2    # "_arg0":Landroid/companion/IOnAssociationsChangedListener;
    .end local v3    # "_arg1":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 364
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 366
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 367
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->dispatchMessage(II[B)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    goto/16 :goto_0

    .line 347
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 353
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 354
    .local v5, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/companion/ICompanionDeviceManager$Stub;->createAssociation(Ljava/lang/String;Ljava/lang/String;I[B)V

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    goto/16 :goto_0

    .line 333
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":[B
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 335
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 337
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 338
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->canPairWithoutPrompt(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 340
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 342
    goto/16 :goto_0

    .line 320
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 322
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 324
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 325
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->unregisterDevicePresenceListenerService(Ljava/lang/String;Ljava/lang/String;I)V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    goto/16 :goto_0

    .line 307
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 309
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 311
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 312
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->registerDevicePresenceListenerService(Ljava/lang/String;Ljava/lang/String;I)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    goto/16 :goto_0

    .line 293
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 295
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 297
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 298
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->isDeviceAssociatedForWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 300
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 302
    goto/16 :goto_0

    .line 281
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_b
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 283
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 284
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->requestNotificationAccess(Landroid/content/ComponentName;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 286
    .local v4, "_result":Landroid/app/PendingIntent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 288
    goto/16 :goto_0

    .line 271
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/app/PendingIntent;
    :pswitch_c
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 272
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->hasNotificationAccess(Landroid/content/ComponentName;)Z

    move-result v3

    .line 274
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 276
    goto :goto_0

    .line 262
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 263
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->disassociate(I)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    goto :goto_0

    .line 249
    .end local v2    # "_arg0":I
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 254
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2, v3, v4}, Landroid/companion/ICompanionDeviceManager$Stub;->legacyDisassociate(Ljava/lang/String;Ljava/lang/String;I)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    goto :goto_0

    .line 239
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 240
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v2}, Landroid/companion/ICompanionDeviceManager$Stub;->getAllAssociationsForUser(I)Ljava/util/List;

    move-result-object v3

    .line 242
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 244
    goto :goto_0

    .line 227
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 230
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 232
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 234
    goto :goto_0

    .line 212
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    :pswitch_11
    sget-object v2, Landroid/companion/AssociationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationRequest;

    .line 214
    .local v2, "_arg0":Landroid/companion/AssociationRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/companion/IAssociationRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IAssociationRequestCallback;

    move-result-object v3

    .line 216
    .local v3, "_arg1":Landroid/companion/IAssociationRequestCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 219
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/companion/ICompanionDeviceManager$Stub;->associate(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Ljava/lang/String;I)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    nop

    .line 417
    .end local v2    # "_arg0":Landroid/companion/AssociationRequest;
    .end local v3    # "_arg1":Landroid/companion/IAssociationRequestCallback;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    :goto_0
    return v1

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
