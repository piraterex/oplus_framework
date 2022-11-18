.class public abstract Landroid/app/IWallpaperManager$Stub;
.super Landroid/os/Binder;
.source "IWallpaperManager.java"

# interfaces
.implements Landroid/app/IWallpaperManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IWallpaperManager"

.field static final blacklist TRANSACTION_addOnLocalColorsChangedListener:I = 0x16

.field static final greylist-max-o TRANSACTION_clearWallpaper:I = 0x8

.field static final greylist-max-o TRANSACTION_getHeightHint:I = 0xc

.field static final greylist-max-o TRANSACTION_getName:I = 0xe

.field static final greylist-max-o TRANSACTION_getWallpaper:I = 0x4

.field static final greylist-max-o TRANSACTION_getWallpaperColors:I = 0x14

.field static final blacklist TRANSACTION_getWallpaperDimAmount:I = 0x1d

.field static final greylist-max-o TRANSACTION_getWallpaperIdForUser:I = 0x6

.field static final greylist-max-o TRANSACTION_getWallpaperInfo:I = 0x7

.field static final blacklist TRANSACTION_getWallpaperWithFeature:I = 0x5

.field static final greylist-max-o TRANSACTION_getWidthHint:I = 0xb

.field static final greylist-max-o TRANSACTION_hasNamedWallpaper:I = 0x9

.field static final greylist-max-o TRANSACTION_isSetWallpaperAllowed:I = 0x11

.field static final greylist-max-o TRANSACTION_isWallpaperBackupEligible:I = 0x12

.field static final greylist-max-o TRANSACTION_isWallpaperSupported:I = 0x10

.field static final blacklist TRANSACTION_lockScreenWallpaperExists:I = 0x1e

.field static final blacklist TRANSACTION_notifyGoingToSleep:I = 0x1b

.field static final blacklist TRANSACTION_notifyWakingUp:I = 0x1a

.field static final greylist-max-o TRANSACTION_registerWallpaperColorsCallback:I = 0x17

.field static final blacklist TRANSACTION_removeOnLocalColorsChangedListener:I = 0x15

.field static final greylist-max-o TRANSACTION_setDimensionHints:I = 0xa

.field static final greylist-max-o TRANSACTION_setDisplayPadding:I = 0xd

.field static final greylist-max-o TRANSACTION_setInAmbientMode:I = 0x19

.field static final greylist-max-o TRANSACTION_setLockWallpaperCallback:I = 0x13

.field static final greylist-max-o TRANSACTION_setWallpaper:I = 0x1

.field static final greylist-max-o TRANSACTION_setWallpaperComponent:I = 0x3

.field static final greylist-max-o TRANSACTION_setWallpaperComponentChecked:I = 0x2

.field static final blacklist TRANSACTION_setWallpaperDimAmount:I = 0x1c

.field static final greylist-max-o TRANSACTION_settingsRestored:I = 0xf

.field static final greylist-max-o TRANSACTION_unregisterWallpaperColorsCallback:I = 0x18


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 214
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 215
    const-string v0, "android.app.IWallpaperManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IWallpaperManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 223
    if-nez p0, :cond_0

    .line 224
    const/4 v0, 0x0

    return-object v0

    .line 226
    :cond_0
    const-string v0, "android.app.IWallpaperManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 227
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IWallpaperManager;

    if-eqz v1, :cond_1

    .line 228
    move-object v1, v0

    check-cast v1, Landroid/app/IWallpaperManager;

    return-object v1

    .line 230
    :cond_1
    new-instance v1, Landroid/app/IWallpaperManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IWallpaperManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 239
    packed-switch p0, :pswitch_data_0

    .line 363
    const/4 v0, 0x0

    return-object v0

    .line 359
    :pswitch_0
    const-string v0, "lockScreenWallpaperExists"

    return-object v0

    .line 355
    :pswitch_1
    const-string v0, "getWallpaperDimAmount"

    return-object v0

    .line 351
    :pswitch_2
    const-string/jumbo v0, "setWallpaperDimAmount"

    return-object v0

    .line 347
    :pswitch_3
    const-string/jumbo v0, "notifyGoingToSleep"

    return-object v0

    .line 343
    :pswitch_4
    const-string/jumbo v0, "notifyWakingUp"

    return-object v0

    .line 339
    :pswitch_5
    const-string/jumbo v0, "setInAmbientMode"

    return-object v0

    .line 335
    :pswitch_6
    const-string/jumbo v0, "unregisterWallpaperColorsCallback"

    return-object v0

    .line 331
    :pswitch_7
    const-string/jumbo v0, "registerWallpaperColorsCallback"

    return-object v0

    .line 327
    :pswitch_8
    const-string v0, "addOnLocalColorsChangedListener"

    return-object v0

    .line 323
    :pswitch_9
    const-string/jumbo v0, "removeOnLocalColorsChangedListener"

    return-object v0

    .line 319
    :pswitch_a
    const-string v0, "getWallpaperColors"

    return-object v0

    .line 315
    :pswitch_b
    const-string/jumbo v0, "setLockWallpaperCallback"

    return-object v0

    .line 311
    :pswitch_c
    const-string v0, "isWallpaperBackupEligible"

    return-object v0

    .line 307
    :pswitch_d
    const-string v0, "isSetWallpaperAllowed"

    return-object v0

    .line 303
    :pswitch_e
    const-string v0, "isWallpaperSupported"

    return-object v0

    .line 299
    :pswitch_f
    const-string/jumbo v0, "settingsRestored"

    return-object v0

    .line 295
    :pswitch_10
    const-string v0, "getName"

    return-object v0

    .line 291
    :pswitch_11
    const-string/jumbo v0, "setDisplayPadding"

    return-object v0

    .line 287
    :pswitch_12
    const-string v0, "getHeightHint"

    return-object v0

    .line 283
    :pswitch_13
    const-string v0, "getWidthHint"

    return-object v0

    .line 279
    :pswitch_14
    const-string/jumbo v0, "setDimensionHints"

    return-object v0

    .line 275
    :pswitch_15
    const-string v0, "hasNamedWallpaper"

    return-object v0

    .line 271
    :pswitch_16
    const-string v0, "clearWallpaper"

    return-object v0

    .line 267
    :pswitch_17
    const-string v0, "getWallpaperInfo"

    return-object v0

    .line 263
    :pswitch_18
    const-string v0, "getWallpaperIdForUser"

    return-object v0

    .line 259
    :pswitch_19
    const-string v0, "getWallpaperWithFeature"

    return-object v0

    .line 255
    :pswitch_1a
    const-string v0, "getWallpaper"

    return-object v0

    .line 251
    :pswitch_1b
    const-string/jumbo v0, "setWallpaperComponent"

    return-object v0

    .line 247
    :pswitch_1c
    const-string/jumbo v0, "setWallpaperComponentChecked"

    return-object v0

    .line 243
    :pswitch_1d
    const-string/jumbo v0, "setWallpaper"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 234
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1435
    const/16 v0, 0x1d

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 370
    invoke-static {p1}, Landroid/app/IWallpaperManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.app.IWallpaperManager"

    .line 375
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v10, v14, :cond_0

    const v0, 0xffffff

    if-gt v10, v0, :cond_0

    .line 376
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    :cond_0
    packed-switch v10, :pswitch_data_0

    .line 386
    packed-switch v10, :pswitch_data_1

    .line 756
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 382
    :pswitch_0
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    return v14

    .line 749
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->lockScreenWallpaperExists()Z

    move-result v0

    .line 750
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 752
    goto/16 :goto_0

    .line 742
    .end local v0    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getWallpaperDimAmount()F

    move-result v0

    .line 743
    .local v0, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 745
    goto/16 :goto_0

    .line 735
    .end local v0    # "_result":F
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 736
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 737
    invoke-virtual {v9, v0}, Landroid/app/IWallpaperManager$Stub;->setWallpaperDimAmount(F)V

    .line 738
    goto/16 :goto_0

    .line 722
    .end local v0    # "_arg0":F
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 724
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 726
    .local v1, "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 727
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->notifyGoingToSleep(IILandroid/os/Bundle;)V

    .line 729
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    goto/16 :goto_0

    .line 710
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 712
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 714
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 715
    .restart local v2    # "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->notifyWakingUp(IILandroid/os/Bundle;)V

    .line 717
    goto/16 :goto_0

    .line 700
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 702
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 703
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 704
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->setInAmbientMode(ZJ)V

    .line 705
    goto/16 :goto_0

    .line 687
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":J
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    .line 689
    .local v0, "_arg0":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 691
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 692
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    goto/16 :goto_0

    .line 674
    .end local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    .line 676
    .restart local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 678
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 679
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V

    .line 681
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    goto/16 :goto_0

    .line 657
    .end local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ILocalWallpaperColorConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ILocalWallpaperColorConsumer;

    move-result-object v6

    .line 659
    .local v6, "_arg0":Landroid/app/ILocalWallpaperColorConsumer;
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 661
    .local v7, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 663
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 665
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 666
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 667
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->addOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V

    .line 668
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    goto/16 :goto_0

    .line 640
    .end local v6    # "_arg0":Landroid/app/ILocalWallpaperColorConsumer;
    .end local v7    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ILocalWallpaperColorConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ILocalWallpaperColorConsumer;

    move-result-object v6

    .line 642
    .restart local v6    # "_arg0":Landroid/app/ILocalWallpaperColorConsumer;
    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    .line 644
    .restart local v7    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 646
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 648
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 649
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 650
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->removeOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V

    .line 651
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    goto/16 :goto_0

    .line 626
    .end local v6    # "_arg0":Landroid/app/ILocalWallpaperColorConsumer;
    .end local v7    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 628
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 630
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 631
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->getWallpaperColors(III)Landroid/app/WallpaperColors;

    move-result-object v3

    .line 633
    .local v3, "_result":Landroid/app/WallpaperColors;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 635
    goto/16 :goto_0

    .line 616
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/app/WallpaperColors;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    .line 617
    .local v0, "_arg0":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {v9, v0}, Landroid/app/IWallpaperManager$Stub;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    move-result v1

    .line 619
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 621
    goto/16 :goto_0

    .line 604
    .end local v0    # "_arg0":Landroid/app/IWallpaperManagerCallback;
    .end local v1    # "_result":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 606
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 607
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 608
    invoke-virtual {v9, v0, v1}, Landroid/app/IWallpaperManager$Stub;->isWallpaperBackupEligible(II)Z

    move-result v2

    .line 609
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 611
    goto/16 :goto_0

    .line 594
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 596
    invoke-virtual {v9, v0}, Landroid/app/IWallpaperManager$Stub;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v1

    .line 597
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 599
    goto/16 :goto_0

    .line 584
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 585
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {v9, v0}, Landroid/app/IWallpaperManager$Stub;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v1

    .line 587
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 589
    goto/16 :goto_0

    .line 577
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->settingsRestored()V

    .line 578
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    goto/16 :goto_0

    .line 570
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getName()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 573
    goto/16 :goto_0

    .line 558
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_12
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 560
    .local v0, "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 563
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V

    .line 565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    goto/16 :goto_0

    .line 548
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 549
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {v9, v0}, Landroid/app/IWallpaperManager$Stub;->getHeightHint(I)I

    move-result v1

    .line 551
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    goto/16 :goto_0

    .line 538
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 539
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {v9, v0}, Landroid/app/IWallpaperManager$Stub;->getWidthHint(I)I

    move-result v1

    .line 541
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    goto/16 :goto_0

    .line 523
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 525
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 527
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 529
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 530
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/app/IWallpaperManager$Stub;->setDimensionHints(IILjava/lang/String;I)V

    .line 532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    goto/16 :goto_0

    .line 513
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 515
    invoke-virtual {v9, v0}, Landroid/app/IWallpaperManager$Stub;->hasNamedWallpaper(Ljava/lang/String;)Z

    move-result v1

    .line 516
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 518
    goto/16 :goto_0

    .line 500
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 502
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 504
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 505
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->clearWallpaper(Ljava/lang/String;II)V

    .line 507
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    goto/16 :goto_0

    .line 490
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 491
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {v9, v0}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 493
    .local v1, "_result":Landroid/app/WallpaperInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 495
    goto/16 :goto_0

    .line 478
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/app/WallpaperInfo;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 480
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 481
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {v9, v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperIdForUser(II)I

    move-result v2

    .line 483
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    goto/16 :goto_0

    .line 457
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 459
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 461
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v15

    .line 463
    .local v15, "_arg2":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 465
    .local v16, "_arg3":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v6, v0

    .line 467
    .local v6, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 468
    .local v17, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v15

    move/from16 v4, v16

    move-object v5, v6

    move-object/from16 v18, v6

    .end local v6    # "_arg4":Landroid/os/Bundle;
    .local v18, "_arg4":Landroid/os/Bundle;
    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/app/IWallpaperManager$Stub;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 470
    .local v0, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 472
    move-object/from16 v1, v18

    .end local v18    # "_arg4":Landroid/os/Bundle;
    .local v1, "_arg4":Landroid/os/Bundle;
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 473
    goto/16 :goto_0

    .line 438
    .end local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg4":Landroid/os/Bundle;
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Landroid/app/IWallpaperManagerCallback;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg5":I
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 440
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v7

    .line 442
    .local v7, "_arg1":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 444
    .local v8, "_arg2":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v15, v0

    .line 446
    .local v15, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 447
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 449
    .restart local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 451
    invoke-virtual {v12, v15, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 452
    goto/16 :goto_0

    .line 429
    .end local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Landroid/app/IWallpaperManagerCallback;
    .end local v8    # "_arg2":I
    .end local v15    # "_arg3":Landroid/os/Bundle;
    .end local v16    # "_arg4":I
    :pswitch_1c
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 430
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {v9, v0}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    goto :goto_0

    .line 416
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_1d
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 418
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 421
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {v9, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 423
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    goto :goto_0

    .line 391
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 393
    .local v15, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 395
    .local v16, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/graphics/Rect;

    .line 397
    .local v17, "_arg2":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 399
    .local v18, "_arg3":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v8, v0

    .line 401
    .local v8, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 403
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v20

    .line 405
    .local v20, "_arg6":Landroid/app/IWallpaperManagerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 406
    .local v21, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object v5, v8

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v22, v8

    .end local v8    # "_arg4":Landroid/os/Bundle;
    .local v22, "_arg4":Landroid/os/Bundle;
    move/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Landroid/app/IWallpaperManager$Stub;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 408
    .local v0, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 410
    move-object/from16 v1, v22

    .end local v22    # "_arg4":Landroid/os/Bundle;
    .local v1, "_arg4":Landroid/os/Bundle;
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 411
    nop

    .line 759
    .end local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg4":Landroid/os/Bundle;
    .end local v15    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Landroid/graphics/Rect;
    .end local v18    # "_arg3":Z
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":Landroid/app/IWallpaperManagerCallback;
    .end local v21    # "_arg7":I
    :goto_0
    return v14

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
