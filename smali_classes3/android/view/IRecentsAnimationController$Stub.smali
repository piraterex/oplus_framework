.class public abstract Landroid/view/IRecentsAnimationController$Stub;
.super Landroid/os/Binder;
.source "IRecentsAnimationController.java"

# interfaces
.implements Landroid/view/IRecentsAnimationController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IRecentsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IRecentsAnimationController$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IRecentsAnimationController"

.field static final blacklist TRANSACTION_animateNavigationBarToApp:I = 0xc

.field static final blacklist TRANSACTION_cleanupScreenshot:I = 0x7

.field static final blacklist TRANSACTION_detachNavigationBarFromApp:I = 0xb

.field static final greylist-max-o TRANSACTION_finish:I = 0x3

.field static final blacklist TRANSACTION_finishZoom:I = 0xd

.field static final greylist-max-o TRANSACTION_hideCurrentInputMethod:I = 0x6

.field static final blacklist TRANSACTION_removeTask:I = 0xa

.field static final greylist-max-o TRANSACTION_screenshotTask:I = 0x1

.field static final greylist-max-o TRANSACTION_setAnimationTargetsBehindSystemBars:I = 0x5

.field static final blacklist TRANSACTION_setDeferCancelUntilNextTransition:I = 0x8

.field static final blacklist TRANSACTION_setFinishTaskTransaction:I = 0x2

.field static final greylist-max-o TRANSACTION_setInputConsumerEnabled:I = 0x4

.field static final blacklist TRANSACTION_setWillFinishToHome:I = 0x9


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 173
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 174
    const-string v0, "android.view.IRecentsAnimationController"

    invoke-virtual {p0, p0, v0}, Landroid/view/IRecentsAnimationController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 182
    if-nez p0, :cond_0

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_0
    const-string v0, "android.view.IRecentsAnimationController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 186
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IRecentsAnimationController;

    if-eqz v1, :cond_1

    .line 187
    move-object v1, v0

    check-cast v1, Landroid/view/IRecentsAnimationController;

    return-object v1

    .line 189
    :cond_1
    new-instance v1, Landroid/view/IRecentsAnimationController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IRecentsAnimationController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 198
    packed-switch p0, :pswitch_data_0

    .line 254
    const/4 v0, 0x0

    return-object v0

    .line 250
    :pswitch_0
    const-string v0, "finishZoom"

    return-object v0

    .line 246
    :pswitch_1
    const-string v0, "animateNavigationBarToApp"

    return-object v0

    .line 242
    :pswitch_2
    const-string v0, "detachNavigationBarFromApp"

    return-object v0

    .line 238
    :pswitch_3
    const-string/jumbo v0, "removeTask"

    return-object v0

    .line 234
    :pswitch_4
    const-string/jumbo v0, "setWillFinishToHome"

    return-object v0

    .line 230
    :pswitch_5
    const-string/jumbo v0, "setDeferCancelUntilNextTransition"

    return-object v0

    .line 226
    :pswitch_6
    const-string v0, "cleanupScreenshot"

    return-object v0

    .line 222
    :pswitch_7
    const-string/jumbo v0, "hideCurrentInputMethod"

    return-object v0

    .line 218
    :pswitch_8
    const-string/jumbo v0, "setAnimationTargetsBehindSystemBars"

    return-object v0

    .line 214
    :pswitch_9
    const-string/jumbo v0, "setInputConsumerEnabled"

    return-object v0

    .line 210
    :pswitch_a
    const-string v0, "finish"

    return-object v0

    .line 206
    :pswitch_b
    const-string/jumbo v0, "setFinishTaskTransaction"

    return-object v0

    .line 202
    :pswitch_c
    const-string/jumbo v0, "screenshotTask"

    return-object v0

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 193
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 765
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 261
    invoke-static {p1}, Landroid/view/IRecentsAnimationController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.view.IRecentsAnimationController"

    .line 266
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 267
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 277
    packed-switch v9, :pswitch_data_1

    .line 414
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 273
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    return v13

    .line 394
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 396
    .local v14, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 398
    .local v15, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 400
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 402
    .local v17, "_arg3":I
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/graphics/Rect;

    .line 404
    .local v18, "_arg4":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 406
    .local v19, "_arg5":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Bundle;

    .line 407
    .local v20, "_arg6":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/view/IRecentsAnimationController$Stub;->finishZoom(ZZIILandroid/graphics/Rect;ILandroid/os/Bundle;)V

    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    goto/16 :goto_0

    .line 385
    .end local v14    # "_arg0":Z
    .end local v15    # "_arg1":Z
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Landroid/graphics/Rect;
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 386
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {v8, v0, v1}, Landroid/view/IRecentsAnimationController$Stub;->animateNavigationBarToApp(J)V

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    goto/16 :goto_0

    .line 376
    .end local v0    # "_arg0":J
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 377
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {v8, v0}, Landroid/view/IRecentsAnimationController$Stub;->detachNavigationBarFromApp(Z)V

    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    goto/16 :goto_0

    .line 366
    .end local v0    # "_arg0":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 367
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {v8, v0}, Landroid/view/IRecentsAnimationController$Stub;->removeTask(I)Z

    move-result v1

    .line 369
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 371
    goto/16 :goto_0

    .line 357
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 358
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {v8, v0}, Landroid/view/IRecentsAnimationController$Stub;->setWillFinishToHome(Z)V

    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    goto/16 :goto_0

    .line 346
    .end local v0    # "_arg0":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 348
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 349
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {v8, v0, v1}, Landroid/view/IRecentsAnimationController$Stub;->setDeferCancelUntilNextTransition(ZZ)V

    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    goto :goto_0

    .line 339
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/IRecentsAnimationController$Stub;->cleanupScreenshot()V

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    goto :goto_0

    .line 333
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/IRecentsAnimationController$Stub;->hideCurrentInputMethod()V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    goto :goto_0

    .line 325
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 326
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {v8, v0}, Landroid/view/IRecentsAnimationController$Stub;->setAnimationTargetsBehindSystemBars(Z)V

    .line 328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    goto :goto_0

    .line 316
    .end local v0    # "_arg0":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 317
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {v8, v0}, Landroid/view/IRecentsAnimationController$Stub;->setInputConsumerEnabled(Z)V

    .line 319
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    goto :goto_0

    .line 305
    .end local v0    # "_arg0":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 307
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 308
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {v8, v0, v1}, Landroid/view/IRecentsAnimationController$Stub;->finish(ZZ)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    goto :goto_0

    .line 292
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 294
    .local v0, "_arg0":I
    sget-object v1, Landroid/window/PictureInPictureSurfaceTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/PictureInPictureSurfaceTransaction;

    .line 296
    .local v1, "_arg1":Landroid/window/PictureInPictureSurfaceTransaction;
    sget-object v2, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    .line 297
    .local v2, "_arg2":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {v8, v0, v1, v2}, Landroid/view/IRecentsAnimationController$Stub;->setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    goto :goto_0

    .line 282
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/window/PictureInPictureSurfaceTransaction;
    .end local v2    # "_arg2":Landroid/view/SurfaceControl;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 283
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {v8, v0}, Landroid/view/IRecentsAnimationController$Stub;->screenshotTask(I)Landroid/window/TaskSnapshot;

    move-result-object v1

    .line 285
    .local v1, "_result":Landroid/window/TaskSnapshot;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 287
    nop

    .line 417
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/window/TaskSnapshot;
    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
