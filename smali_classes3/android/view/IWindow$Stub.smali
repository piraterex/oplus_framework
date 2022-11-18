.class public abstract Landroid/view/IWindow$Stub;
.super Landroid/os/Binder;
.source "IWindow.java"

# interfaces
.implements Landroid/view/IWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IWindow"

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0x9

.field static final greylist-max-o TRANSACTION_dispatchAppVisibility:I = 0x7

.field static final greylist-max-o TRANSACTION_dispatchDragEvent:I = 0xc

.field static final greylist-max-o TRANSACTION_dispatchGetNewSurface:I = 0x8

.field static final greylist-max-o TRANSACTION_dispatchWallpaperCommand:I = 0xb

.field static final greylist-max-o TRANSACTION_dispatchWallpaperOffsets:I = 0xa

.field static final greylist-max-o TRANSACTION_dispatchWindowShown:I = 0xe

.field static final greylist-max-o TRANSACTION_executeCommand:I = 0x1

.field static final blacklist TRANSACTION_hideInsets:I = 0x5

.field static final blacklist TRANSACTION_insetsControlChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_moved:I = 0x6

.field static final greylist-max-o TRANSACTION_requestAppKeyboardShortcuts:I = 0xf

.field static final blacklist TRANSACTION_requestScrollCapture:I = 0x10

.field static final greylist-max-o TRANSACTION_resized:I = 0x2

.field static final blacklist TRANSACTION_showInsets:I = 0x4

.field static final greylist-max-o TRANSACTION_updatePointerIcon:I = 0xd


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 108
    const-string v0, "android.view.IWindow"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 116
    if-nez p0, :cond_0

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_0
    const-string v0, "android.view.IWindow"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 120
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindow;

    if-eqz v1, :cond_1

    .line 121
    move-object v1, v0

    check-cast v1, Landroid/view/IWindow;

    return-object v1

    .line 123
    :cond_1
    new-instance v1, Landroid/view/IWindow$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 132
    packed-switch p0, :pswitch_data_0

    .line 200
    const/4 v0, 0x0

    return-object v0

    .line 196
    :pswitch_0
    const-string/jumbo v0, "requestScrollCapture"

    return-object v0

    .line 192
    :pswitch_1
    const-string/jumbo v0, "requestAppKeyboardShortcuts"

    return-object v0

    .line 188
    :pswitch_2
    const-string v0, "dispatchWindowShown"

    return-object v0

    .line 184
    :pswitch_3
    const-string/jumbo v0, "updatePointerIcon"

    return-object v0

    .line 180
    :pswitch_4
    const-string v0, "dispatchDragEvent"

    return-object v0

    .line 176
    :pswitch_5
    const-string v0, "dispatchWallpaperCommand"

    return-object v0

    .line 172
    :pswitch_6
    const-string v0, "dispatchWallpaperOffsets"

    return-object v0

    .line 168
    :pswitch_7
    const-string v0, "closeSystemDialogs"

    return-object v0

    .line 164
    :pswitch_8
    const-string v0, "dispatchGetNewSurface"

    return-object v0

    .line 160
    :pswitch_9
    const-string v0, "dispatchAppVisibility"

    return-object v0

    .line 156
    :pswitch_a
    const-string/jumbo v0, "moved"

    return-object v0

    .line 152
    :pswitch_b
    const-string/jumbo v0, "hideInsets"

    return-object v0

    .line 148
    :pswitch_c
    const-string/jumbo v0, "showInsets"

    return-object v0

    .line 144
    :pswitch_d
    const-string/jumbo v0, "insetsControlChanged"

    return-object v0

    .line 140
    :pswitch_e
    const-string/jumbo v0, "resized"

    return-object v0

    .line 136
    :pswitch_f
    const-string v0, "executeCommand"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 127
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 691
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 207
    invoke-static {p1}, Landroid/view/IWindow$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    const-string v13, "android.view.IWindow"

    .line 212
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v11, v14, :cond_0

    const v0, 0xffffff

    if-gt v11, v0, :cond_0

    .line 213
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    :cond_0
    packed-switch v11, :pswitch_data_0

    .line 223
    move-object/from16 v15, p3

    packed-switch v11, :pswitch_data_1

    .line 401
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 219
    :pswitch_0
    move-object/from16 v15, p3

    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    return v14

    .line 394
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IScrollCaptureResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureResponseListener;

    move-result-object v0

    .line 395
    .local v0, "_arg0":Landroid/view/IScrollCaptureResponseListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V

    .line 397
    goto/16 :goto_0

    .line 384
    .end local v0    # "_arg0":Landroid/view/IScrollCaptureResponseListener;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    .line 386
    .local v0, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 387
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 389
    goto/16 :goto_0

    .line 378
    .end local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    .end local v1    # "_arg1":I
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchWindowShown()V

    .line 379
    goto/16 :goto_0

    .line 369
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 371
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 372
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->updatePointerIcon(FF)V

    .line 374
    goto/16 :goto_0

    .line 361
    .end local v0    # "_arg0":F
    .end local v1    # "_arg1":F
    :pswitch_5
    sget-object v0, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DragEvent;

    .line 362
    .local v0, "_arg0":Landroid/view/DragEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 364
    goto/16 :goto_0

    .line 343
    .end local v0    # "_arg0":Landroid/view/DragEvent;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 345
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 347
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 349
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 351
    .local v16, "_arg3":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .line 353
    .local v17, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 354
    .local v18, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 356
    goto/16 :goto_0

    .line 325
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Landroid/os/Bundle;
    .end local v18    # "_arg5":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    .line 327
    .local v7, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 329
    .local v8, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 331
    .local v9, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    .line 333
    .local v16, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v17

    .line 335
    .local v17, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 336
    .restart local v18    # "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/IWindow$Stub;->dispatchWallpaperOffsets(FFFFFZ)V

    .line 338
    goto/16 :goto_0

    .line 317
    .end local v7    # "_arg0":F
    .end local v8    # "_arg1":F
    .end local v9    # "_arg2":F
    .end local v16    # "_arg3":F
    .end local v17    # "_arg4":F
    .end local v18    # "_arg5":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 320
    goto/16 :goto_0

    .line 311
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchGetNewSurface()V

    .line 312
    goto/16 :goto_0

    .line 304
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 305
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {v10, v0}, Landroid/view/IWindow$Stub;->dispatchAppVisibility(Z)V

    .line 307
    goto/16 :goto_0

    .line 294
    .end local v0    # "_arg0":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 296
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 297
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->moved(II)V

    .line 299
    goto/16 :goto_0

    .line 284
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 286
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 287
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->hideInsets(IZ)V

    .line 289
    goto/16 :goto_0

    .line 274
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 276
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 277
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->showInsets(IZ)V

    .line 279
    goto/16 :goto_0

    .line 264
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_e
    sget-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsState;

    .line 266
    .local v0, "_arg0":Landroid/view/InsetsState;
    sget-object v1, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/InsetsSourceControl;

    .line 267
    .local v1, "_arg1":[Landroid/view/InsetsSourceControl;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {v10, v0, v1}, Landroid/view/IWindow$Stub;->insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V

    .line 269
    goto :goto_0

    .line 240
    .end local v0    # "_arg0":Landroid/view/InsetsState;
    .end local v1    # "_arg1":[Landroid/view/InsetsSourceControl;
    :pswitch_f
    sget-object v0, Landroid/window/ClientWindowFrames;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/window/ClientWindowFrames;

    .line 242
    .local v16, "_arg0":Landroid/window/ClientWindowFrames;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 244
    .local v17, "_arg1":Z
    sget-object v0, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/util/MergedConfiguration;

    .line 246
    .local v18, "_arg2":Landroid/util/MergedConfiguration;
    sget-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/InsetsState;

    .line 248
    .local v19, "_arg3":Landroid/view/InsetsState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 250
    .local v20, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 252
    .local v21, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 254
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 256
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 257
    .local v24, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/view/IWindow$Stub;->resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIII)V

    .line 259
    goto :goto_0

    .line 228
    .end local v16    # "_arg0":Landroid/window/ClientWindowFrames;
    .end local v17    # "_arg1":Z
    .end local v18    # "_arg2":Landroid/util/MergedConfiguration;
    .end local v19    # "_arg3":Landroid/view/InsetsState;
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 233
    .local v2, "_arg2":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {v10, v0, v1, v2}, Landroid/view/IWindow$Stub;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 235
    nop

    .line 404
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return v14

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
