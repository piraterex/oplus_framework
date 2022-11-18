.class public abstract Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub;
.super Landroid/os/Binder;
.source "IOplusSplitScreenSession.java"

# interfaces
.implements Lcom/oplus/splitscreen/IOplusSplitScreenSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/IOplusSplitScreenSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getRecentUsedApp:I = 0x8

.field static final blacklist TRANSACTION_maintainSplitToZoomTaskState:I = 0xa

.field static final blacklist TRANSACTION_moveChildrenTaskToBack:I = 0x7

.field static final blacklist TRANSACTION_notifySplitRootTaskId:I = 0x3

.field static final blacklist TRANSACTION_registerActivityMultiWindowAllowanceObserver:I = 0xd

.field static final blacklist TRANSACTION_registerStackDivider:I = 0x1

.field static final blacklist TRANSACTION_removeSelfSplitTaskIfNeed:I = 0xf

.field static final blacklist TRANSACTION_requestSwitchToFullScreen:I = 0xc

.field static final blacklist TRANSACTION_requestSwitchToSplitScreen:I = 0xb

.field static final blacklist TRANSACTION_setSplitAnimatorStatus:I = 0x10

.field static final blacklist TRANSACTION_setSplitControlBarRegion:I = 0x2

.field static final blacklist TRANSACTION_setSplitRequestedOrientation:I = 0x9

.field static final blacklist TRANSACTION_setSplitRootTaskAlwaysOnTop:I = 0x6

.field static final blacklist TRANSACTION_setWallpaperVisible:I = 0x5

.field static final blacklist TRANSACTION_startZoomWindowFromSplit:I = 0x4

.field static final blacklist TRANSACTION_unregisterActivityMultiWindowAllowanceObserver:I = 0xe


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 74
    const-string v0, "com.oplus.splitscreen.IOplusSplitScreenSession"

    invoke-virtual {p0, p0, v0}, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/oplus/splitscreen/IOplusSplitScreenSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    const-string v0, "com.oplus.splitscreen.IOplusSplitScreenSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 86
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    if-eqz v1, :cond_1

    .line 87
    move-object v1, v0

    check-cast v1, Lcom/oplus/splitscreen/IOplusSplitScreenSession;

    return-object v1

    .line 89
    :cond_1
    new-instance v1, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 98
    packed-switch p0, :pswitch_data_0

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 162
    :pswitch_0
    const-string v0, "setSplitAnimatorStatus"

    return-object v0

    .line 158
    :pswitch_1
    const-string v0, "removeSelfSplitTaskIfNeed"

    return-object v0

    .line 154
    :pswitch_2
    const-string v0, "unregisterActivityMultiWindowAllowanceObserver"

    return-object v0

    .line 150
    :pswitch_3
    const-string v0, "registerActivityMultiWindowAllowanceObserver"

    return-object v0

    .line 146
    :pswitch_4
    const-string v0, "requestSwitchToFullScreen"

    return-object v0

    .line 142
    :pswitch_5
    const-string v0, "requestSwitchToSplitScreen"

    return-object v0

    .line 138
    :pswitch_6
    const-string v0, "maintainSplitToZoomTaskState"

    return-object v0

    .line 134
    :pswitch_7
    const-string v0, "setSplitRequestedOrientation"

    return-object v0

    .line 130
    :pswitch_8
    const-string v0, "getRecentUsedApp"

    return-object v0

    .line 126
    :pswitch_9
    const-string v0, "moveChildrenTaskToBack"

    return-object v0

    .line 122
    :pswitch_a
    const-string v0, "setSplitRootTaskAlwaysOnTop"

    return-object v0

    .line 118
    :pswitch_b
    const-string v0, "setWallpaperVisible"

    return-object v0

    .line 114
    :pswitch_c
    const-string v0, "startZoomWindowFromSplit"

    return-object v0

    .line 110
    :pswitch_d
    const-string v0, "notifySplitRootTaskId"

    return-object v0

    .line 106
    :pswitch_e
    const-string v0, "setSplitControlBarRegion"

    return-object v0

    .line 102
    :pswitch_f
    const-string v0, "registerStackDivider"

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

    .line 93
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 675
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 173
    invoke-static {p1}, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 177
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.oplus.splitscreen.IOplusSplitScreenSession"

    .line 178
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 179
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 189
    packed-switch v7, :pswitch_data_1

    .line 369
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 185
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    return v11

    .line 359
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 361
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 362
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {v6, v0, v1}, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub;->setSplitAnimatorStatus(II)V

    .line 364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    goto/16 :goto_0

    .line 348
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 350
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 351
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {v6, v0, v1}, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub;->removeSelfSplitTaskIfNeed(II)V

    .line 353
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    goto/16 :goto_0

    .line 337
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 339
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 340
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {v6, v0, v1}, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub;->unregisterActivityMultiWindowAllowanceObserver(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    goto/16 :goto_0

    .line 326
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 328
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 329
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {v6, v0, v1}, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub;->registerActivityMultiWindowAllowanceObserver(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    goto/16 :goto_0

    .line 316
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 317
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {v6, v0}, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub;->requestSwitchToFullScreen(Landroid/os/IBinder;)Z

    move-result v1

    .line 319
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 321
    goto/16 :goto_0

    .line 304
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 306
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Lcom/oplus/app/SplitScreenParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/app/SplitScreenParams;

    .line 307
    .local v1, "_arg1":Lcom/oplus/app/SplitScreenParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {v6, v0, v1}, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub;->requestSwitchToSplitScreen(Landroid/os/IBinder;Lcom/oplus/app/SplitScreenParams;)Z

    move-result v2

    .line 309
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 311
    goto/16 :goto_0

    .line 293
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/oplus/app/SplitScreenParams;
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 295
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 296
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {v6, v0, v1}, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub;->maintainSplitToZoomTaskState(IZ)V

    .line 298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    goto/16 :goto_0

    .line 284
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 285
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {v6, v0}, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub;->setSplitRequestedOrientation(I)V

    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    goto/16 :goto_0

    .line 268
    .end local v0    # "_arg0":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 270
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 272
    .local v13, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 274
    .local v15, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 275
    .local v16, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    move-object/from16 v0, p0

    move v1, v12

    move-wide v2, v13

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub;->getRecentUsedApp(IJZLjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 277
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 279
    goto/16 :goto_0

    .line 258
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":J
    .end local v15    # "_arg2":Z
    .end local v16    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 259
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 260
    invoke-virtual {v6, v0}, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub;->moveChildrenTaskToBack(I)Z

    move-result v1

    .line 261
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 263
    goto/16 :goto_0

    .line 249
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 250
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {v6, v0}, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub;->setSplitRootTaskAlwaysOnTop(Z)V

    .line 252
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    goto :goto_0

    .line 240
    .end local v0    # "_arg0":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 241
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {v6, v0}, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub;->setWallpaperVisible(Z)V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    goto :goto_0

    .line 227
    .end local v0    # "_arg0":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 229
    .local v0, "_arg0":I
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 231
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 232
    .local v2, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {v6, v0, v1, v2}, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub;->startZoomWindowFromSplit(ILandroid/graphics/Rect;F)V

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    goto :goto_0

    .line 214
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v2    # "_arg2":F
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 216
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 218
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {v6, v0, v1, v2}, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub;->notifySplitRootTaskId(III)V

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    goto :goto_0

    .line 203
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_f
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 205
    .local v0, "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 206
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {v6, v0, v1}, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub;->setSplitControlBarRegion(Landroid/graphics/Rect;Z)V

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    goto :goto_0

    .line 194
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    .end local v1    # "_arg1":Z
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/splitscreen/IOplusStackDividerConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/splitscreen/IOplusStackDividerConnection;

    move-result-object v0

    .line 195
    .local v0, "_arg0":Lcom/oplus/splitscreen/IOplusStackDividerConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {v6, v0}, Lcom/oplus/splitscreen/IOplusSplitScreenSession$Stub;->registerStackDivider(Lcom/oplus/splitscreen/IOplusStackDividerConnection;)V

    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    nop

    .line 372
    .end local v0    # "_arg0":Lcom/oplus/splitscreen/IOplusStackDividerConnection;
    :goto_0
    return v11

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
