.class public abstract Lcom/android/internal/view/IInputMethodManager$Stub;
.super Landroid/os/Binder;
.source "IInputMethodManager.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethodManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodManager"

.field static final greylist-max-o TRANSACTION_addClient:I = 0x1

.field static final blacklist TRANSACTION_getAwareLockedInputMethodList:I = 0x3

.field static final greylist-max-o TRANSACTION_getCurrentInputMethodSubtype:I = 0xe

.field static final greylist-max-o TRANSACTION_getEnabledInputMethodList:I = 0x4

.field static final greylist-max-o TRANSACTION_getEnabledInputMethodSubtypeList:I = 0x5

.field static final greylist-max-o TRANSACTION_getInputMethodList:I = 0x2

.field static final greylist-max-o TRANSACTION_getInputMethodWindowVisibleHeight:I = 0x10

.field static final greylist-max-o TRANSACTION_getLastInputMethodSubtype:I = 0x6

.field static final greylist-max-o TRANSACTION_hideSoftInput:I = 0x8

.field static final blacklist TRANSACTION_isImeTraceEnabled:I = 0x16

.field static final greylist-max-o TRANSACTION_isInputMethodPickerShownForTest:I = 0xd

.field static final blacklist TRANSACTION_removeImeSurface:I = 0x13

.field static final blacklist TRANSACTION_removeImeSurfaceFromWindowAsync:I = 0x14

.field static final blacklist TRANSACTION_reportPerceptibleAsync:I = 0x12

.field static final blacklist TRANSACTION_reportVirtualDisplayGeometryAsync:I = 0x11

.field static final greylist-max-o TRANSACTION_setAdditionalInputMethodSubtypes:I = 0xf

.field static final greylist-max-o TRANSACTION_showInputMethodAndSubtypeEnablerFromClient:I = 0xc

.field static final greylist-max-o TRANSACTION_showInputMethodPickerFromClient:I = 0xa

.field static final blacklist TRANSACTION_showInputMethodPickerFromSystem:I = 0xb

.field static final greylist-max-o TRANSACTION_showSoftInput:I = 0x7

.field static final blacklist TRANSACTION_startImeTrace:I = 0x17

.field static final greylist-max-o TRANSACTION_startInputOrWindowGainedFocus:I = 0x9

.field static final blacklist TRANSACTION_startProtoDump:I = 0x15

.field static final blacklist TRANSACTION_startStylusHandwriting:I = 0x19

.field static final blacklist TRANSACTION_stopImeTrace:I = 0x18


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 124
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 132
    if-nez p0, :cond_0

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_0
    const-string v0, "com.android.internal.view.IInputMethodManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 136
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/view/IInputMethodManager;

    if-eqz v1, :cond_1

    .line 137
    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/IInputMethodManager;

    return-object v1

    .line 139
    :cond_1
    new-instance v1, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/view/IInputMethodManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 148
    packed-switch p0, :pswitch_data_0

    .line 252
    const/4 v0, 0x0

    return-object v0

    .line 248
    :pswitch_0
    const-string/jumbo v0, "startStylusHandwriting"

    return-object v0

    .line 244
    :pswitch_1
    const-string/jumbo v0, "stopImeTrace"

    return-object v0

    .line 240
    :pswitch_2
    const-string/jumbo v0, "startImeTrace"

    return-object v0

    .line 236
    :pswitch_3
    const-string v0, "isImeTraceEnabled"

    return-object v0

    .line 232
    :pswitch_4
    const-string/jumbo v0, "startProtoDump"

    return-object v0

    .line 228
    :pswitch_5
    const-string/jumbo v0, "removeImeSurfaceFromWindowAsync"

    return-object v0

    .line 224
    :pswitch_6
    const-string/jumbo v0, "removeImeSurface"

    return-object v0

    .line 220
    :pswitch_7
    const-string/jumbo v0, "reportPerceptibleAsync"

    return-object v0

    .line 216
    :pswitch_8
    const-string/jumbo v0, "reportVirtualDisplayGeometryAsync"

    return-object v0

    .line 212
    :pswitch_9
    const-string v0, "getInputMethodWindowVisibleHeight"

    return-object v0

    .line 208
    :pswitch_a
    const-string/jumbo v0, "setAdditionalInputMethodSubtypes"

    return-object v0

    .line 204
    :pswitch_b
    const-string v0, "getCurrentInputMethodSubtype"

    return-object v0

    .line 200
    :pswitch_c
    const-string v0, "isInputMethodPickerShownForTest"

    return-object v0

    .line 196
    :pswitch_d
    const-string/jumbo v0, "showInputMethodAndSubtypeEnablerFromClient"

    return-object v0

    .line 192
    :pswitch_e
    const-string/jumbo v0, "showInputMethodPickerFromSystem"

    return-object v0

    .line 188
    :pswitch_f
    const-string/jumbo v0, "showInputMethodPickerFromClient"

    return-object v0

    .line 184
    :pswitch_10
    const-string/jumbo v0, "startInputOrWindowGainedFocus"

    return-object v0

    .line 180
    :pswitch_11
    const-string v0, "hideSoftInput"

    return-object v0

    .line 176
    :pswitch_12
    const-string/jumbo v0, "showSoftInput"

    return-object v0

    .line 172
    :pswitch_13
    const-string v0, "getLastInputMethodSubtype"

    return-object v0

    .line 168
    :pswitch_14
    const-string v0, "getEnabledInputMethodSubtypeList"

    return-object v0

    .line 164
    :pswitch_15
    const-string v0, "getEnabledInputMethodList"

    return-object v0

    .line 160
    :pswitch_16
    const-string v0, "getAwareLockedInputMethodList"

    return-object v0

    .line 156
    :pswitch_17
    const-string v0, "getInputMethodList"

    return-object v0

    .line 152
    :pswitch_18
    const-string v0, "addClient"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 143
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1045
    const/16 v0, 0x18

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 259
    invoke-static {p1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 28
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v11, "com.android.internal.view.IInputMethodManager"

    .line 264
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v13, v10, :cond_0

    const v0, 0xffffff

    if-gt v13, v0, :cond_0

    .line 265
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    :cond_0
    packed-switch v13, :pswitch_data_0

    .line 275
    packed-switch v13, :pswitch_data_1

    .line 556
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 271
    :pswitch_0
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    return v10

    .line 548
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    .line 549
    .local v0, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {v12, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->startStylusHandwriting(Lcom/android/internal/view/IInputMethodClient;)V

    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 541
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->stopImeTrace()V

    .line 542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 535
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->startImeTrace()V

    .line 536
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 528
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isImeTraceEnabled()Z

    move-result v0

    .line 529
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 531
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 516
    .end local v0    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 518
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 520
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 521
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->startProtoDump([BILjava/lang/String;)V

    .line 523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 508
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 509
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {v12, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V

    .line 511
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 501
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->removeImeSurface()V

    .line 502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 492
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 494
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 495
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->reportPerceptibleAsync(Landroid/os/IBinder;Z)V

    .line 497
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 480
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    .line 482
    .local v0, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 484
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 485
    .local v2, "_arg2":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->reportVirtualDisplayGeometryAsync(Lcom/android/internal/view/IInputMethodClient;I[F)V

    .line 487
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 470
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[F
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    .line 471
    .restart local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    invoke-virtual {v12, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodWindowVisibleHeight(Lcom/android/internal/view/IInputMethodClient;)I

    move-result v1

    .line 473
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 459
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v1    # "_result":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/inputmethod/InputMethodSubtype;

    .line 462
    .local v1, "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 463
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 451
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[Landroid/view/inputmethod/InputMethodSubtype;
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 452
    .local v0, "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    invoke-virtual {v15, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 454
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 444
    .end local v0    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->isInputMethodPickerShownForTest()Z

    move-result v0

    .line 445
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 447
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 434
    .end local v0    # "_result":Z
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    .line 436
    .local v0, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 421
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    .line 423
    .restart local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 425
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 426
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromSystem(Lcom/android/internal/view/IInputMethodClient;II)V

    .line 428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 410
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    .line 412
    .restart local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 413
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V

    .line 415
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    move v13, v10

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 380
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v1    # "_arg1":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 382
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v17

    .line 384
    .local v17, "_arg1":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 386
    .local v18, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 388
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 390
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 392
    .local v21, "_arg5":I
    sget-object v0, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/view/inputmethod/EditorInfo;

    .line 394
    .local v22, "_arg6":Landroid/view/inputmethod/EditorInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v23

    .line 396
    .local v23, "_arg7":Lcom/android/internal/view/IInputContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-result-object v24

    .line 398
    .local v24, "_arg8":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 400
    .local v25, "_arg9":I
    sget-object v0, Landroid/window/ImeOnBackInvokedDispatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/window/ImeOnBackInvokedDispatcher;

    .line 401
    .local v26, "_arg10":Landroid/window/ImeOnBackInvokedDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move v13, v10

    move/from16 v10, v25

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v27, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/view/IInputMethodManager$Stub;->startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    .line 403
    .local v0, "_result":Lcom/android/internal/inputmethod/InputBindResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {v15, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 405
    goto/16 :goto_0

    .line 362
    .end local v0    # "_result":Lcom/android/internal/inputmethod/InputBindResult;
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Lcom/android/internal/view/IInputMethodClient;
    .end local v18    # "_arg2":Landroid/os/IBinder;
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":Landroid/view/inputmethod/EditorInfo;
    .end local v23    # "_arg7":Lcom/android/internal/view/IInputContext;
    .end local v24    # "_arg8":Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .end local v25    # "_arg9":I
    .end local v26    # "_arg10":Landroid/window/ImeOnBackInvokedDispatcher;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_12
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v6

    .line 364
    .local v6, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 366
    .local v7, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 368
    .local v8, "_arg2":I
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/ResultReceiver;

    .line 370
    .local v9, "_arg3":Landroid/os/ResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 371
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputMethodManager$Stub;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v0

    .line 373
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 375
    goto/16 :goto_0

    .line 344
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/os/ResultReceiver;
    .end local v10    # "_arg4":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_13
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v6

    .line 346
    .restart local v6    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 348
    .restart local v7    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 350
    .restart local v8    # "_arg2":I
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/ResultReceiver;

    .line 352
    .restart local v9    # "_arg3":Landroid/os/ResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 353
    .restart local v10    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputMethodManager$Stub;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;ILandroid/os/ResultReceiver;I)Z

    move-result v0

    .line 355
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 357
    goto/16 :goto_0

    .line 336
    .end local v0    # "_result":Z
    .end local v6    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Landroid/os/ResultReceiver;
    .end local v10    # "_arg4":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_14
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 337
    .local v0, "_result":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {v15, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 339
    goto/16 :goto_0

    .line 325
    .end local v0    # "_result":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_15
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 328
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 330
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 332
    goto :goto_0

    .line 315
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_16
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 316
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {v12, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getEnabledInputMethodList(I)Ljava/util/List;

    move-result-object v1

    .line 318
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 320
    goto :goto_0

    .line 303
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_17
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 305
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 306
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->getAwareLockedInputMethodList(II)Ljava/util/List;

    move-result-object v2

    .line 308
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 310
    goto :goto_0

    .line 293
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_18
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 294
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {v12, v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->getInputMethodList(I)Ljava/util/List;

    move-result-object v1

    .line 296
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 298
    goto :goto_0

    .line 280
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_19
    move v13, v10

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v0

    .line 282
    .local v0, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v1

    .line 284
    .local v1, "_arg1":Lcom/android/internal/view/IInputContext;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 285
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;I)V

    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    nop

    .line 559
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v1    # "_arg1":Lcom/android/internal/view/IInputContext;
    .end local v2    # "_arg2":I
    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
