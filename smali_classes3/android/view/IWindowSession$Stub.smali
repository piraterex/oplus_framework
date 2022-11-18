.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final greylist-max-o TRANSACTION_addToDisplay:I = 0x1

.field static final blacklist TRANSACTION_addToDisplayAsUser:I = 0x2

.field static final greylist-max-o TRANSACTION_addToDisplayWithoutInputChannel:I = 0x3

.field static final greylist-max-o TRANSACTION_cancelDragAndDrop:I = 0x12

.field static final blacklist TRANSACTION_clearTouchableRegion:I = 0x2b

.field static final greylist-max-o TRANSACTION_dragRecipientEntered:I = 0x13

.field static final greylist-max-o TRANSACTION_dragRecipientExited:I = 0x14

.field static final blacklist TRANSACTION_dropForAccessibility:I = 0x10

.field static final greylist-max-o TRANSACTION_finishDrawing:I = 0xb

.field static final blacklist TRANSACTION_finishMovingTask:I = 0x20

.field static final blacklist TRANSACTION_generateDisplayHash:I = 0x29

.field static final greylist-max-o TRANSACTION_getInTouchMode:I = 0xd

.field static final greylist-max-o TRANSACTION_getWindowId:I = 0x1d

.field static final blacklist TRANSACTION_grantEmbeddedWindowFocus:I = 0x28

.field static final blacklist TRANSACTION_grantInputChannel:I = 0x26

.field static final greylist-max-o TRANSACTION_onRectangleOnScreenRequested:I = 0x1c

.field static final greylist-max-o TRANSACTION_outOfMemory:I = 0x9

.field static final greylist-max-o TRANSACTION_performDrag:I = 0xf

.field static final greylist-max-o TRANSACTION_performHapticFeedback:I = 0xe

.field static final greylist-max-o TRANSACTION_pokeDrawLock:I = 0x1e

.field static final greylist-max-o TRANSACTION_prepareToReplaceWindows:I = 0x8

.field static final greylist-max-o TRANSACTION_relayout:I = 0x5

.field static final greylist-max-o TRANSACTION_remove:I = 0x4

.field static final greylist-max-o TRANSACTION_reportDropResult:I = 0x11

.field static final blacklist TRANSACTION_reportKeepClearAreasChanged:I = 0x25

.field static final blacklist TRANSACTION_reportSystemGestureExclusionChanged:I = 0x24

.field static final greylist-max-o TRANSACTION_sendWallpaperCommand:I = 0x1a

.field static final greylist-max-o TRANSACTION_setInTouchMode:I = 0xc

.field static final greylist-max-o TRANSACTION_setInsets:I = 0xa

.field static final blacklist TRANSACTION_setOnBackInvokedCallbackInfo:I = 0x2a

.field static final blacklist TRANSACTION_setRefreshRate:I = 0x2c

.field static final blacklist TRANSACTION_setShouldZoomOutWallpaper:I = 0x17

.field static final greylist-max-o TRANSACTION_setWallpaperDisplayOffset:I = 0x19

.field static final greylist-max-o TRANSACTION_setWallpaperPosition:I = 0x15

.field static final blacklist TRANSACTION_setWallpaperZoomOut:I = 0x16

.field static final greylist-max-o TRANSACTION_startMovingTask:I = 0x1f

.field static final blacklist TRANSACTION_updateInputChannel:I = 0x27

.field static final blacklist TRANSACTION_updateLayout:I = 0x7

.field static final greylist-max-o TRANSACTION_updatePointerIcon:I = 0x21

.field static final blacklist TRANSACTION_updateRequestedVisibilities:I = 0x23

.field static final greylist-max-o TRANSACTION_updateTapExcludeRegion:I = 0x22

.field static final blacklist TRANSACTION_updateVisibility:I = 0x6

.field static final greylist-max-o TRANSACTION_wallpaperCommandComplete:I = 0x1b

.field static final greylist-max-o TRANSACTION_wallpaperOffsetsComplete:I = 0x18


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 373
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 374
    const-string v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 382
    if-nez p0, :cond_0

    .line 383
    const/4 v0, 0x0

    return-object v0

    .line 385
    :cond_0
    const-string v0, "android.view.IWindowSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 386
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_1

    .line 387
    move-object v1, v0

    check-cast v1, Landroid/view/IWindowSession;

    return-object v1

    .line 389
    :cond_1
    new-instance v1, Landroid/view/IWindowSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 398
    packed-switch p0, :pswitch_data_0

    .line 578
    const/4 v0, 0x0

    return-object v0

    .line 574
    :pswitch_0
    const-string/jumbo v0, "setRefreshRate"

    return-object v0

    .line 570
    :pswitch_1
    const-string v0, "clearTouchableRegion"

    return-object v0

    .line 566
    :pswitch_2
    const-string/jumbo v0, "setOnBackInvokedCallbackInfo"

    return-object v0

    .line 562
    :pswitch_3
    const-string v0, "generateDisplayHash"

    return-object v0

    .line 558
    :pswitch_4
    const-string/jumbo v0, "grantEmbeddedWindowFocus"

    return-object v0

    .line 554
    :pswitch_5
    const-string/jumbo v0, "updateInputChannel"

    return-object v0

    .line 550
    :pswitch_6
    const-string/jumbo v0, "grantInputChannel"

    return-object v0

    .line 546
    :pswitch_7
    const-string/jumbo v0, "reportKeepClearAreasChanged"

    return-object v0

    .line 542
    :pswitch_8
    const-string/jumbo v0, "reportSystemGestureExclusionChanged"

    return-object v0

    .line 538
    :pswitch_9
    const-string/jumbo v0, "updateRequestedVisibilities"

    return-object v0

    .line 534
    :pswitch_a
    const-string/jumbo v0, "updateTapExcludeRegion"

    return-object v0

    .line 530
    :pswitch_b
    const-string/jumbo v0, "updatePointerIcon"

    return-object v0

    .line 526
    :pswitch_c
    const-string v0, "finishMovingTask"

    return-object v0

    .line 522
    :pswitch_d
    const-string/jumbo v0, "startMovingTask"

    return-object v0

    .line 518
    :pswitch_e
    const-string/jumbo v0, "pokeDrawLock"

    return-object v0

    .line 514
    :pswitch_f
    const-string/jumbo v0, "getWindowId"

    return-object v0

    .line 510
    :pswitch_10
    const-string/jumbo v0, "onRectangleOnScreenRequested"

    return-object v0

    .line 506
    :pswitch_11
    const-string/jumbo v0, "wallpaperCommandComplete"

    return-object v0

    .line 502
    :pswitch_12
    const-string/jumbo v0, "sendWallpaperCommand"

    return-object v0

    .line 498
    :pswitch_13
    const-string/jumbo v0, "setWallpaperDisplayOffset"

    return-object v0

    .line 494
    :pswitch_14
    const-string/jumbo v0, "wallpaperOffsetsComplete"

    return-object v0

    .line 490
    :pswitch_15
    const-string/jumbo v0, "setShouldZoomOutWallpaper"

    return-object v0

    .line 486
    :pswitch_16
    const-string/jumbo v0, "setWallpaperZoomOut"

    return-object v0

    .line 482
    :pswitch_17
    const-string/jumbo v0, "setWallpaperPosition"

    return-object v0

    .line 478
    :pswitch_18
    const-string v0, "dragRecipientExited"

    return-object v0

    .line 474
    :pswitch_19
    const-string v0, "dragRecipientEntered"

    return-object v0

    .line 470
    :pswitch_1a
    const-string v0, "cancelDragAndDrop"

    return-object v0

    .line 466
    :pswitch_1b
    const-string/jumbo v0, "reportDropResult"

    return-object v0

    .line 462
    :pswitch_1c
    const-string v0, "dropForAccessibility"

    return-object v0

    .line 458
    :pswitch_1d
    const-string/jumbo v0, "performDrag"

    return-object v0

    .line 454
    :pswitch_1e
    const-string/jumbo v0, "performHapticFeedback"

    return-object v0

    .line 450
    :pswitch_1f
    const-string v0, "getInTouchMode"

    return-object v0

    .line 446
    :pswitch_20
    const-string/jumbo v0, "setInTouchMode"

    return-object v0

    .line 442
    :pswitch_21
    const-string v0, "finishDrawing"

    return-object v0

    .line 438
    :pswitch_22
    const-string/jumbo v0, "setInsets"

    return-object v0

    .line 434
    :pswitch_23
    const-string/jumbo v0, "outOfMemory"

    return-object v0

    .line 430
    :pswitch_24
    const-string/jumbo v0, "prepareToReplaceWindows"

    return-object v0

    .line 426
    :pswitch_25
    const-string/jumbo v0, "updateLayout"

    return-object v0

    .line 422
    :pswitch_26
    const-string/jumbo v0, "updateVisibility"

    return-object v0

    .line 418
    :pswitch_27
    const-string/jumbo v0, "relayout"

    return-object v0

    .line 414
    :pswitch_28
    const-string/jumbo v0, "remove"

    return-object v0

    .line 410
    :pswitch_29
    const-string v0, "addToDisplayWithoutInputChannel"

    return-object v0

    .line 406
    :pswitch_2a
    const-string v0, "addToDisplayAsUser"

    return-object v0

    .line 402
    :pswitch_2b
    const-string v0, "addToDisplay"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 393
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2294
    const/16 v0, 0x2b

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 585
    invoke-static {p1}, Landroid/view/IWindowSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v11, "android.view.IWindowSession"

    .line 590
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 591
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 601
    packed-switch v14, :pswitch_data_1

    .line 1241
    move-object v14, v12

    move-object v10, v15

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 597
    :pswitch_0
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 598
    return v10

    .line 1224
    :pswitch_1
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/SurfaceControl;

    .line 1226
    .local v7, "_arg0":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 1228
    .local v8, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1230
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1232
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1234
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1235
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1236
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindowSession$Stub;->setRefreshRate(Landroid/view/SurfaceControl;FIILjava/lang/String;Ljava/lang/String;)V

    .line 1237
    move v1, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_4

    .line 1215
    .end local v7    # "_arg0":Landroid/view/SurfaceControl;
    .end local v8    # "_arg1":F
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1216
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1217
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->clearTouchableRegion(Landroid/view/IWindow;)V

    .line 1218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    move v1, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_4

    .line 1205
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1207
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/window/OnBackInvokedCallbackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/OnBackInvokedCallbackInfo;

    .line 1208
    .local v1, "_arg1":Landroid/window/OnBackInvokedCallbackInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1209
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V

    .line 1210
    move v1, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_4

    .line 1191
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/window/OnBackInvokedCallbackInfo;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1193
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1195
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1197
    .local v2, "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 1198
    .local v3, "_arg3":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1199
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/view/IWindowSession$Stub;->generateDisplayHash(Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 1200
    move v1, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_4

    .line 1178
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/os/RemoteCallback;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1180
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1182
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1183
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1184
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V

    .line 1185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    move v1, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_4

    .line 1160
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1162
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1164
    .local v8, "_arg1":I
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/SurfaceControl;

    .line 1166
    .local v9, "_arg2":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1168
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1170
    .local v17, "_arg4":I
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/graphics/Region;

    .line 1171
    .local v18, "_arg5":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1172
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindowSession$Stub;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IILandroid/graphics/Region;)V

    .line 1173
    move v1, v10

    move-object/from16 v28, v11

    move-object v14, v12

    move-object v10, v15

    goto/16 :goto_4

    .line 1132
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Landroid/view/SurfaceControl;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Landroid/graphics/Region;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1134
    .local v16, "_arg0":I
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/SurfaceControl;

    .line 1136
    .local v17, "_arg1":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v18

    .line 1138
    .local v18, "_arg2":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    .line 1140
    .local v19, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1142
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1144
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1146
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    .line 1148
    .local v23, "_arg7":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1150
    .local v24, "_arg8":Ljava/lang/String;
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v9, v0

    .line 1151
    .local v9, "_arg9":Landroid/view/InputChannel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1152
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v25, v9

    .end local v9    # "_arg9":Landroid/view/InputChannel;
    .local v25, "_arg9":Landroid/view/InputChannel;
    move-object/from16 v9, v24

    move v14, v10

    move-object/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Landroid/view/IWindowSession$Stub;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIILandroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V

    .line 1153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    move-object/from16 v0, v25

    .end local v25    # "_arg9":Landroid/view/InputChannel;
    .local v0, "_arg9":Landroid/view/InputChannel;
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1155
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1120
    .end local v0    # "_arg9":Landroid/view/InputChannel;
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Landroid/view/SurfaceControl;
    .end local v18    # "_arg2":Landroid/view/IWindow;
    .end local v19    # "_arg3":Landroid/os/IBinder;
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":Landroid/os/IBinder;
    .end local v24    # "_arg8":Ljava/lang/String;
    :pswitch_8
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1122
    .local v0, "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1124
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1125
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1126
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V

    .line 1127
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1110
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    :pswitch_9
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1112
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1113
    .restart local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1114
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V

    .line 1115
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1100
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    :pswitch_a
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1102
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsVisibilities;

    .line 1103
    .local v1, "_arg1":Landroid/view/InsetsVisibilities;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1104
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->updateRequestedVisibilities(Landroid/view/IWindow;Landroid/view/InsetsVisibilities;)V

    .line 1105
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1090
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/view/InsetsVisibilities;
    :pswitch_b
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1092
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    .line 1093
    .local v1, "_arg1":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1094
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 1095
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1082
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/graphics/Region;
    :pswitch_c
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1083
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1084
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->updatePointerIcon(Landroid/view/IWindow;)V

    .line 1085
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1074
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_d
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1075
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1076
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->finishMovingTask(Landroid/view/IWindow;)V

    .line 1077
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1060
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_e
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 1062
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1064
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 1065
    .local v2, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1066
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->startMovingTask(Landroid/view/IWindow;FF)Z

    move-result v3

    .line 1067
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1069
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1051
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":F
    .end local v2    # "_arg2":F
    .end local v3    # "_result":Z
    :pswitch_f
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1052
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->pokeDrawLock(Landroid/os/IBinder;)V

    .line 1054
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1055
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1041
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_10
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1042
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v1

    .line 1044
    .local v1, "_result":Landroid/view/IWindowId;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1046
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1031
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Landroid/view/IWindowId;
    :pswitch_11
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1033
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1034
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1035
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 1036
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 1021
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    :pswitch_12
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1023
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1024
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1025
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 1026
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 999
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_13
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 1001
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1003
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1005
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1007
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1009
    .local v17, "_arg4":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 1011
    .local v18, "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 1012
    .local v19, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move v3, v10

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 1014
    .local v0, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    invoke-virtual {v12, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1016
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 987
    .end local v0    # "_result":Landroid/os/Bundle;
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v9    # "_arg1":Ljava/lang/String;
    .end local v10    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Landroid/os/Bundle;
    .end local v19    # "_arg6":Z
    :pswitch_14
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 989
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 991
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 992
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 993
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V

    .line 994
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 979
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_15
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 980
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 981
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    .line 982
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 969
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_16
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 971
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 972
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 973
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V

    .line 974
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 959
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_17
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 961
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 962
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->setWallpaperZoomOut(Landroid/os/IBinder;F)V

    .line 964
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 943
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":F
    :pswitch_18
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 945
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 947
    .local v7, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 949
    .local v8, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 951
    .local v9, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 952
    .local v10, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 953
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    .line 954
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 935
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":F
    .end local v8    # "_arg2":F
    .end local v9    # "_arg3":F
    .end local v10    # "_arg4":F
    :pswitch_19
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 936
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 937
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 938
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 927
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_1a
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 928
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 929
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->dragRecipientEntered(Landroid/view/IWindow;)V

    .line 930
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 917
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_1b
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 919
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 920
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 921
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->cancelDragAndDrop(Landroid/os/IBinder;Z)V

    .line 922
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 907
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_1c
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 909
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 910
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 911
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    .line 912
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 893
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Z
    :pswitch_1d
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 895
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 897
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 898
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 899
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->dropForAccessibility(Landroid/view/IWindow;II)Z

    move-result v3

    .line 900
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 902
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 867
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_1e
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v10

    .line 869
    .local v10, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 871
    .local v16, "_arg1":I
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/SurfaceControl;

    .line 873
    .local v17, "_arg2":Landroid/view/SurfaceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 875
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    .line 877
    .local v19, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v20

    .line 879
    .local v20, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v21

    .line 881
    .local v21, "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v22

    .line 883
    .local v22, "_arg7":F
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/content/ClipData;

    .line 884
    .local v23, "_arg8":Landroid/content/ClipData;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 885
    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v9, v23

    invoke-virtual/range {v0 .. v9}, Landroid/view/IWindowSession$Stub;->performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;

    move-result-object v0

    .line 886
    .local v0, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 888
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 855
    .end local v0    # "_result":Landroid/os/IBinder;
    .end local v10    # "_arg0":Landroid/view/IWindow;
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":Landroid/view/SurfaceControl;
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":F
    .end local v20    # "_arg5":F
    .end local v21    # "_arg6":F
    .end local v22    # "_arg7":F
    .end local v23    # "_arg8":Landroid/content/ClipData;
    :pswitch_1f
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 857
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 858
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 859
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->performHapticFeedback(IZ)Z

    move-result v2

    .line 860
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 862
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 847
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_20
    move v14, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getInTouchMode()Z

    move-result v0

    .line 848
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 850
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 840
    .end local v0    # "_result":Z
    :pswitch_21
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 841
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 842
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->setInTouchMode(Z)V

    .line 843
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 828
    .end local v0    # "_arg0":Z
    :pswitch_22
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 830
    .local v0, "_arg0":Landroid/view/IWindow;
    sget-object v1, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    .line 832
    .local v1, "_arg1":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 833
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 834
    invoke-virtual {v13, v0, v1, v2}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    .line 835
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 812
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_arg1":Landroid/view/SurfaceControl$Transaction;
    .end local v2    # "_arg2":I
    :pswitch_23
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 814
    .local v6, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 816
    .local v7, "_arg1":I
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/graphics/Rect;

    .line 818
    .local v8, "_arg2":Landroid/graphics/Rect;
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/graphics/Rect;

    .line 820
    .local v9, "_arg3":Landroid/graphics/Rect;
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/graphics/Region;

    .line 821
    .local v10, "_arg4":Landroid/graphics/Region;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 823
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 802
    .end local v6    # "_arg0":Landroid/view/IWindow;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Landroid/graphics/Rect;
    .end local v9    # "_arg3":Landroid/graphics/Rect;
    .end local v10    # "_arg4":Landroid/graphics/Region;
    :pswitch_24
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 803
    .restart local v0    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 804
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v1

    .line 805
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 807
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 792
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v1    # "_result":Z
    :pswitch_25
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 794
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 795
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 796
    invoke-virtual {v13, v0, v1}, Landroid/view/IWindowSession$Stub;->prepareToReplaceWindows(Landroid/os/IBinder;Z)V

    .line 797
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 774
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_26
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v7

    .line 776
    .local v7, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    .line 778
    .local v8, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 780
    .local v9, "_arg2":I
    sget-object v0, Landroid/window/ClientWindowFrames;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/window/ClientWindowFrames;

    .line 782
    .local v10, "_arg3":Landroid/window/ClientWindowFrames;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 784
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 785
    .local v17, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move-object v4, v10

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindowSession$Stub;->updateLayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/window/ClientWindowFrames;II)V

    .line 787
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 743
    .end local v7    # "_arg0":Landroid/view/IWindow;
    .end local v8    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":Landroid/window/ClientWindowFrames;
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":I
    :pswitch_27
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v8

    .line 745
    .local v8, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/WindowManager$LayoutParams;

    .line 747
    .local v9, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 749
    .local v10, "_arg2":I
    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    move-object v7, v0

    .line 751
    .local v7, "_arg3":Landroid/util/MergedConfiguration;
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    move-object v6, v0

    .line 753
    .local v6, "_arg4":Landroid/view/SurfaceControl;
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v5, v0

    .line 755
    .local v5, "_arg5":Landroid/view/InsetsState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 756
    .local v4, "_arg6_length":I
    if-gez v4, :cond_1

    .line 757
    const/4 v0, 0x0

    move-object v3, v0

    .local v0, "_arg6":[Landroid/view/InsetsSourceControl;
    goto :goto_0

    .line 759
    .end local v0    # "_arg6":[Landroid/view/InsetsSourceControl;
    :cond_1
    new-array v0, v4, [Landroid/view/InsetsSourceControl;

    move-object v3, v0

    .line 761
    .local v3, "_arg6":[Landroid/view/InsetsSourceControl;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v16, v3

    .end local v3    # "_arg6":[Landroid/view/InsetsSourceControl;
    .local v16, "_arg6":[Landroid/view/InsetsSourceControl;
    move v3, v10

    move/from16 v17, v4

    .end local v4    # "_arg6_length":I
    .local v17, "_arg6_length":I
    move-object v4, v7

    move-object/from16 v18, v5

    .end local v5    # "_arg5":Landroid/view/InsetsState;
    .local v18, "_arg5":Landroid/view/InsetsState;
    move-object v5, v6

    move-object/from16 v26, v6

    .end local v6    # "_arg4":Landroid/view/SurfaceControl;
    .local v26, "_arg4":Landroid/view/SurfaceControl;
    move-object/from16 v6, v18

    move-object/from16 v19, v8

    move-object v8, v7

    .end local v7    # "_arg3":Landroid/util/MergedConfiguration;
    .local v8, "_arg3":Landroid/util/MergedConfiguration;
    .local v19, "_arg0":Landroid/view/IWindow;
    move-object/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Landroid/view/IWindowSession$Stub;->updateVisibility(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    .line 763
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    invoke-virtual {v12, v8, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 766
    move-object/from16 v1, v26

    .end local v26    # "_arg4":Landroid/view/SurfaceControl;
    .local v1, "_arg4":Landroid/view/SurfaceControl;
    invoke-virtual {v12, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 767
    move-object/from16 v2, v18

    .end local v18    # "_arg5":Landroid/view/InsetsState;
    .local v2, "_arg5":Landroid/view/InsetsState;
    invoke-virtual {v12, v2, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 768
    move-object/from16 v3, v16

    .end local v16    # "_arg6":[Landroid/view/InsetsSourceControl;
    .restart local v3    # "_arg6":[Landroid/view/InsetsSourceControl;
    invoke-virtual {v12, v3, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 769
    move-object/from16 v28, v11

    move v1, v14

    move-object v10, v15

    move-object v14, v12

    goto/16 :goto_4

    .line 700
    .end local v0    # "_result":I
    .end local v1    # "_arg4":Landroid/view/SurfaceControl;
    .end local v2    # "_arg5":Landroid/view/InsetsState;
    .end local v3    # "_arg6":[Landroid/view/InsetsSourceControl;
    .end local v8    # "_arg3":Landroid/util/MergedConfiguration;
    .end local v9    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v10    # "_arg2":I
    .end local v17    # "_arg6_length":I
    .end local v19    # "_arg0":Landroid/view/IWindow;
    :pswitch_28
    move v14, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v16

    .line 702
    .local v16, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    .line 704
    .local v17, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 706
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 708
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 710
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 712
    .local v21, "_arg5":I
    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    move-object v10, v0

    .line 714
    .local v10, "_arg6":Landroid/window/ClientWindowFrames;
    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    move-object v9, v0

    .line 716
    .local v9, "_arg7":Landroid/util/MergedConfiguration;
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    move-object v8, v0

    .line 718
    .local v8, "_arg8":Landroid/view/SurfaceControl;
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v7, v0

    .line 720
    .local v7, "_arg9":Landroid/view/InsetsState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 721
    .local v6, "_arg10_length":I
    if-gez v6, :cond_2

    .line 722
    const/4 v0, 0x0

    move-object v5, v0

    .local v0, "_arg10":[Landroid/view/InsetsSourceControl;
    goto :goto_1

    .line 724
    .end local v0    # "_arg10":[Landroid/view/InsetsSourceControl;
    :cond_2
    new-array v0, v6, [Landroid/view/InsetsSourceControl;

    move-object v5, v0

    .line 727
    .local v5, "_arg10":[Landroid/view/InsetsSourceControl;
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v4, v0

    .line 728
    .local v4, "_arg11":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 729
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v22, v4

    .end local v4    # "_arg11":Landroid/os/Bundle;
    .local v22, "_arg11":Landroid/os/Bundle;
    move/from16 v4, v19

    move-object/from16 v23, v5

    .end local v5    # "_arg10":[Landroid/view/InsetsSourceControl;
    .local v23, "_arg10":[Landroid/view/InsetsSourceControl;
    move/from16 v5, v20

    move/from16 v24, v6

    .end local v6    # "_arg10_length":I
    .local v24, "_arg10_length":I
    move/from16 v6, v21

    move-object/from16 v25, v7

    .end local v7    # "_arg9":Landroid/view/InsetsState;
    .local v25, "_arg9":Landroid/view/InsetsState;
    move-object v7, v10

    move-object/from16 v26, v8

    .end local v8    # "_arg8":Landroid/view/SurfaceControl;
    .local v26, "_arg8":Landroid/view/SurfaceControl;
    move-object v8, v9

    move-object/from16 v27, v9

    .end local v9    # "_arg7":Landroid/util/MergedConfiguration;
    .local v27, "_arg7":Landroid/util/MergedConfiguration;
    move-object/from16 v9, v26

    move-object v15, v10

    .end local v10    # "_arg6":Landroid/window/ClientWindowFrames;
    .local v15, "_arg6":Landroid/window/ClientWindowFrames;
    move-object/from16 v10, v25

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v28, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v23

    move-object v14, v12

    move-object/from16 v12, v22

    invoke-virtual/range {v0 .. v12}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/os/Bundle;)I

    move-result v0

    .line 730
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    const/4 v1, 0x1

    invoke-virtual {v14, v15, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 733
    move-object/from16 v2, v27

    .end local v27    # "_arg7":Landroid/util/MergedConfiguration;
    .local v2, "_arg7":Landroid/util/MergedConfiguration;
    invoke-virtual {v14, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 734
    move-object/from16 v3, v26

    .end local v26    # "_arg8":Landroid/view/SurfaceControl;
    .local v3, "_arg8":Landroid/view/SurfaceControl;
    invoke-virtual {v14, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 735
    move-object/from16 v4, v25

    .end local v25    # "_arg9":Landroid/view/InsetsState;
    .local v4, "_arg9":Landroid/view/InsetsState;
    invoke-virtual {v14, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 736
    move-object/from16 v5, v23

    .end local v23    # "_arg10":[Landroid/view/InsetsSourceControl;
    .restart local v5    # "_arg10":[Landroid/view/InsetsSourceControl;
    invoke-virtual {v14, v5, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 737
    move-object/from16 v6, v22

    .end local v22    # "_arg11":Landroid/os/Bundle;
    .local v6, "_arg11":Landroid/os/Bundle;
    invoke-virtual {v14, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 738
    move-object/from16 v10, p2

    const/4 v1, 0x1

    goto/16 :goto_4

    .line 691
    .end local v0    # "_result":I
    .end local v2    # "_arg7":Landroid/util/MergedConfiguration;
    .end local v3    # "_arg8":Landroid/view/SurfaceControl;
    .end local v4    # "_arg9":Landroid/view/InsetsState;
    .end local v5    # "_arg10":[Landroid/view/InsetsSourceControl;
    .end local v6    # "_arg11":Landroid/os/Bundle;
    .end local v15    # "_arg6":Landroid/window/ClientWindowFrames;
    .end local v16    # "_arg0":Landroid/view/IWindow;
    .end local v17    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v24    # "_arg10_length":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_29
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 692
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {v13, v0}, Landroid/view/IWindowSession$Stub;->remove(Landroid/view/IWindow;)V

    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    move-object/from16 v10, p2

    const/4 v1, 0x1

    goto/16 :goto_4

    .line 672
    .end local v0    # "_arg0":Landroid/view/IWindow;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_2a
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v6

    .line 674
    .local v6, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v10, p2

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 676
    .local v7, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 678
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 680
    .local v9, "_arg3":I
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v11, v0

    .line 681
    .local v11, "_arg4":Landroid/view/InsetsState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 682
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowSession$Stub;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsState;)I

    move-result v0

    .line 683
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    const/4 v1, 0x1

    invoke-virtual {v14, v11, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 686
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 638
    .end local v0    # "_result":I
    .end local v6    # "_arg0":Landroid/view/IWindow;
    .end local v7    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_2b
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v10, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v11

    .line 640
    .local v11, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/view/WindowManager$LayoutParams;

    .line 642
    .local v12, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 644
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 646
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 648
    .local v17, "_arg4":I
    sget-object v0, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/InsetsVisibilities;

    .line 650
    .local v18, "_arg5":Landroid/view/InsetsVisibilities;
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v9, v0

    .line 652
    .local v9, "_arg6":Landroid/view/InputChannel;
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v8, v0

    .line 654
    .local v8, "_arg7":Landroid/view/InsetsState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 655
    .local v7, "_arg8_length":I
    if-gez v7, :cond_3

    .line 656
    const/4 v0, 0x0

    move-object v6, v0

    .local v0, "_arg8":[Landroid/view/InsetsSourceControl;
    goto :goto_2

    .line 658
    .end local v0    # "_arg8":[Landroid/view/InsetsSourceControl;
    :cond_3
    new-array v0, v7, [Landroid/view/InsetsSourceControl;

    move-object v6, v0

    .line 660
    .local v6, "_arg8":[Landroid/view/InsetsSourceControl;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 661
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v19, v6

    .end local v6    # "_arg8":[Landroid/view/InsetsSourceControl;
    .local v19, "_arg8":[Landroid/view/InsetsSourceControl;
    move-object/from16 v6, v18

    move/from16 v20, v7

    .end local v7    # "_arg8_length":I
    .local v20, "_arg8_length":I
    move-object v7, v9

    move-object/from16 v21, v8

    .end local v8    # "_arg7":Landroid/view/InsetsState;
    .local v21, "_arg7":Landroid/view/InsetsState;
    move-object/from16 v22, v11

    move-object v11, v9

    .end local v9    # "_arg6":Landroid/view/InputChannel;
    .local v11, "_arg6":Landroid/view/InputChannel;
    .local v22, "_arg0":Landroid/view/IWindow;
    move-object/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Landroid/view/IWindowSession$Stub;->addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    .line 662
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    const/4 v1, 0x1

    invoke-virtual {v14, v11, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 665
    move-object/from16 v2, v21

    .end local v21    # "_arg7":Landroid/view/InsetsState;
    .local v2, "_arg7":Landroid/view/InsetsState;
    invoke-virtual {v14, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 666
    move-object/from16 v3, v19

    .end local v19    # "_arg8":[Landroid/view/InsetsSourceControl;
    .local v3, "_arg8":[Landroid/view/InsetsSourceControl;
    invoke-virtual {v14, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 667
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 606
    .end local v0    # "_result":I
    .end local v2    # "_arg7":Landroid/view/InsetsState;
    .end local v3    # "_arg8":[Landroid/view/InsetsSourceControl;
    .end local v12    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Landroid/view/InsetsVisibilities;
    .end local v20    # "_arg8_length":I
    .end local v22    # "_arg0":Landroid/view/IWindow;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_2c
    move-object/from16 v28, v11

    move-object v14, v12

    move-object v10, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v9

    .line 608
    .local v9, "_arg0":Landroid/view/IWindow;
    sget-object v0, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/WindowManager$LayoutParams;

    .line 610
    .local v11, "_arg1":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 612
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 614
    .local v15, "_arg3":I
    sget-object v0, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/InsetsVisibilities;

    .line 616
    .local v16, "_arg4":Landroid/view/InsetsVisibilities;
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    move-object v8, v0

    .line 618
    .local v8, "_arg5":Landroid/view/InputChannel;
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    move-object v7, v0

    .line 620
    .local v7, "_arg6":Landroid/view/InsetsState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 621
    .local v6, "_arg7_length":I
    if-gez v6, :cond_4

    .line 622
    const/4 v0, 0x0

    move-object v5, v0

    .local v0, "_arg7":[Landroid/view/InsetsSourceControl;
    goto :goto_3

    .line 624
    .end local v0    # "_arg7":[Landroid/view/InsetsSourceControl;
    :cond_4
    new-array v0, v6, [Landroid/view/InsetsSourceControl;

    move-object v5, v0

    .line 626
    .local v5, "_arg7":[Landroid/view/InsetsSourceControl;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v11

    move v3, v12

    move v4, v15

    move-object/from16 v17, v5

    .end local v5    # "_arg7":[Landroid/view/InsetsSourceControl;
    .local v17, "_arg7":[Landroid/view/InsetsSourceControl;
    move-object/from16 v5, v16

    move/from16 v18, v6

    .end local v6    # "_arg7_length":I
    .local v18, "_arg7_length":I
    move-object v6, v8

    move-object/from16 v19, v7

    .end local v7    # "_arg6":Landroid/view/InsetsState;
    .local v19, "_arg6":Landroid/view/InsetsState;
    move-object/from16 v20, v9

    move-object v9, v8

    .end local v8    # "_arg5":Landroid/view/InputChannel;
    .local v9, "_arg5":Landroid/view/InputChannel;
    .local v20, "_arg0":Landroid/view/IWindow;
    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Landroid/view/IWindowSession$Stub;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    .line 628
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    const/4 v1, 0x1

    invoke-virtual {v14, v9, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 631
    move-object/from16 v2, v19

    .end local v19    # "_arg6":Landroid/view/InsetsState;
    .local v2, "_arg6":Landroid/view/InsetsState;
    invoke-virtual {v14, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 632
    move-object/from16 v3, v17

    .end local v17    # "_arg7":[Landroid/view/InsetsSourceControl;
    .local v3, "_arg7":[Landroid/view/InsetsSourceControl;
    invoke-virtual {v14, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 633
    nop

    .line 1244
    .end local v0    # "_result":I
    .end local v2    # "_arg6":Landroid/view/InsetsState;
    .end local v3    # "_arg7":[Landroid/view/InsetsSourceControl;
    .end local v9    # "_arg5":Landroid/view/InputChannel;
    .end local v11    # "_arg1":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Landroid/view/InsetsVisibilities;
    .end local v18    # "_arg7_length":I
    .end local v20    # "_arg0":Landroid/view/IWindow;
    :goto_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
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
