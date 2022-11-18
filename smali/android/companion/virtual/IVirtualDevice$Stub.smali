.class public abstract Landroid/companion/virtual/IVirtualDevice$Stub;
.super Landroid/os/Binder;
.source "IVirtualDevice.java"

# interfaces
.implements Landroid/companion/virtual/IVirtualDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/IVirtualDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/IVirtualDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_close:I = 0x2

.field static final blacklist TRANSACTION_createVirtualKeyboard:I = 0x5

.field static final blacklist TRANSACTION_createVirtualMouse:I = 0x6

.field static final blacklist TRANSACTION_createVirtualTouchscreen:I = 0x7

.field static final blacklist TRANSACTION_getAssociationId:I = 0x1

.field static final blacklist TRANSACTION_getCursorPosition:I = 0xf

.field static final blacklist TRANSACTION_launchPendingIntent:I = 0xe

.field static final blacklist TRANSACTION_onAudioSessionEnded:I = 0x4

.field static final blacklist TRANSACTION_onAudioSessionStarting:I = 0x3

.field static final blacklist TRANSACTION_sendButtonEvent:I = 0xa

.field static final blacklist TRANSACTION_sendKeyEvent:I = 0x9

.field static final blacklist TRANSACTION_sendRelativeEvent:I = 0xb

.field static final blacklist TRANSACTION_sendScrollEvent:I = 0xc

.field static final blacklist TRANSACTION_sendTouchEvent:I = 0xd

.field static final blacklist TRANSACTION_setShowPointerIcon:I = 0x10

.field static final blacklist TRANSACTION_unregisterInputDevice:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 90
    const-string v0, "android.companion.virtual.IVirtualDevice"

    invoke-virtual {p0, p0, v0}, Landroid/companion/virtual/IVirtualDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDevice;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 98
    if-nez p0, :cond_0

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_0
    const-string v0, "android.companion.virtual.IVirtualDevice"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 102
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/companion/virtual/IVirtualDevice;

    if-eqz v1, :cond_1

    .line 103
    move-object v1, v0

    check-cast v1, Landroid/companion/virtual/IVirtualDevice;

    return-object v1

    .line 105
    :cond_1
    new-instance v1, Landroid/companion/virtual/IVirtualDevice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/companion/virtual/IVirtualDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 114
    packed-switch p0, :pswitch_data_0

    .line 182
    const/4 v0, 0x0

    return-object v0

    .line 178
    :pswitch_0
    const-string/jumbo v0, "setShowPointerIcon"

    return-object v0

    .line 174
    :pswitch_1
    const-string v0, "getCursorPosition"

    return-object v0

    .line 170
    :pswitch_2
    const-string v0, "launchPendingIntent"

    return-object v0

    .line 166
    :pswitch_3
    const-string/jumbo v0, "sendTouchEvent"

    return-object v0

    .line 162
    :pswitch_4
    const-string/jumbo v0, "sendScrollEvent"

    return-object v0

    .line 158
    :pswitch_5
    const-string/jumbo v0, "sendRelativeEvent"

    return-object v0

    .line 154
    :pswitch_6
    const-string/jumbo v0, "sendButtonEvent"

    return-object v0

    .line 150
    :pswitch_7
    const-string/jumbo v0, "sendKeyEvent"

    return-object v0

    .line 146
    :pswitch_8
    const-string/jumbo v0, "unregisterInputDevice"

    return-object v0

    .line 142
    :pswitch_9
    const-string v0, "createVirtualTouchscreen"

    return-object v0

    .line 138
    :pswitch_a
    const-string v0, "createVirtualMouse"

    return-object v0

    .line 134
    :pswitch_b
    const-string v0, "createVirtualKeyboard"

    return-object v0

    .line 130
    :pswitch_c
    const-string/jumbo v0, "onAudioSessionEnded"

    return-object v0

    .line 126
    :pswitch_d
    const-string/jumbo v0, "onAudioSessionStarting"

    return-object v0

    .line 122
    :pswitch_e
    const-string v0, "close"

    return-object v0

    .line 118
    :pswitch_f
    const-string v0, "getAssociationId"

    return-object v0

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

    .line 109
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 724
    const/16 v0, 0xf

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 189
    invoke-static {p1}, Landroid/companion/virtual/IVirtualDevice$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.companion.virtual.IVirtualDevice"

    .line 194
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 195
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 205
    packed-switch v8, :pswitch_data_1

    .line 395
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 201
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    return v12

    .line 387
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 388
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 389
    invoke-virtual {v7, v0}, Landroid/companion/virtual/IVirtualDevice$Stub;->setShowPointerIcon(Z)V

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    goto/16 :goto_0

    .line 377
    .end local v0    # "_arg0":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 378
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {v7, v0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;

    move-result-object v1

    .line 380
    .local v1, "_result":Landroid/graphics/PointF;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 382
    goto/16 :goto_0

    .line 364
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Landroid/graphics/PointF;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 366
    .local v0, "_arg0":I
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 368
    .local v1, "_arg1":Landroid/app/PendingIntent;
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 369
    .local v2, "_arg2":Landroid/os/ResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {v7, v0, v1, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->launchPendingIntent(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V

    .line 371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    goto/16 :goto_0

    .line 352
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    .end local v2    # "_arg2":Landroid/os/ResultReceiver;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 354
    .local v0, "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/hardware/input/VirtualTouchEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/VirtualTouchEvent;

    .line 355
    .local v1, "_arg1":Landroid/hardware/input/VirtualTouchEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {v7, v0, v1}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z

    move-result v2

    .line 357
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 359
    goto/16 :goto_0

    .line 340
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/hardware/input/VirtualTouchEvent;
    .end local v2    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 342
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/hardware/input/VirtualMouseScrollEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/VirtualMouseScrollEvent;

    .line 343
    .local v1, "_arg1":Landroid/hardware/input/VirtualMouseScrollEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-virtual {v7, v0, v1}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z

    move-result v2

    .line 345
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 347
    goto/16 :goto_0

    .line 328
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/hardware/input/VirtualMouseScrollEvent;
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 330
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/hardware/input/VirtualMouseRelativeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/VirtualMouseRelativeEvent;

    .line 331
    .local v1, "_arg1":Landroid/hardware/input/VirtualMouseRelativeEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {v7, v0, v1}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z

    move-result v2

    .line 333
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 335
    goto/16 :goto_0

    .line 316
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/hardware/input/VirtualMouseRelativeEvent;
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 318
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/hardware/input/VirtualMouseButtonEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/VirtualMouseButtonEvent;

    .line 319
    .local v1, "_arg1":Landroid/hardware/input/VirtualMouseButtonEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {v7, v0, v1}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z

    move-result v2

    .line 321
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 323
    goto/16 :goto_0

    .line 304
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/hardware/input/VirtualMouseButtonEvent;
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 306
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/hardware/input/VirtualKeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/VirtualKeyEvent;

    .line 307
    .local v1, "_arg1":Landroid/hardware/input/VirtualKeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {v7, v0, v1}, Landroid/companion/virtual/IVirtualDevice$Stub;->sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result v2

    .line 309
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 311
    goto/16 :goto_0

    .line 295
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/hardware/input/VirtualKeyEvent;
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 296
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {v7, v0}, Landroid/companion/virtual/IVirtualDevice$Stub;->unregisterInputDevice(Landroid/os/IBinder;)V

    .line 298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    goto/16 :goto_0

    .line 276
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 278
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 280
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 282
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 284
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 286
    .local v17, "_arg4":Landroid/os/IBinder;
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/graphics/Point;

    .line 287
    .local v18, "_arg5":Landroid/graphics/Point;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualTouchscreen(ILjava/lang/String;IILandroid/os/IBinder;Landroid/graphics/Point;)V

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    goto/16 :goto_0

    .line 259
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Landroid/os/IBinder;
    .end local v18    # "_arg5":Landroid/graphics/Point;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 261
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 263
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 265
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 267
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 268
    .local v16, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualMouse(ILjava/lang/String;IILandroid/os/IBinder;)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto :goto_0

    .line 242
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Landroid/os/IBinder;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 244
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 246
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 248
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 250
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 251
    .restart local v16    # "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/companion/virtual/IVirtualDevice$Stub;->createVirtualKeyboard(ILjava/lang/String;IILandroid/os/IBinder;)V

    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    goto :goto_0

    .line 235
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Landroid/os/IBinder;
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->onAudioSessionEnded()V

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    goto :goto_0

    .line 223
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 225
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/companion/virtual/audio/IAudioRoutingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/audio/IAudioRoutingCallback;

    move-result-object v1

    .line 227
    .local v1, "_arg1":Landroid/companion/virtual/audio/IAudioRoutingCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

    move-result-object v2

    .line 228
    .local v2, "_arg2":Landroid/companion/virtual/audio/IAudioConfigChangedCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {v7, v0, v1, v2}, Landroid/companion/virtual/IVirtualDevice$Stub;->onAudioSessionStarting(ILandroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    goto :goto_0

    .line 216
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/companion/virtual/audio/IAudioRoutingCallback;
    .end local v2    # "_arg2":Landroid/companion/virtual/audio/IAudioConfigChangedCallback;
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->close()V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    goto :goto_0

    .line 209
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/companion/virtual/IVirtualDevice$Stub;->getAssociationId()I

    move-result v0

    .line 210
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    nop

    .line 398
    .end local v0    # "_result":I
    :goto_0
    return v12

    nop

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
