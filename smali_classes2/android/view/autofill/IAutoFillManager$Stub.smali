.class public abstract Landroid/view/autofill/IAutoFillManager$Stub;
.super Landroid/os/Binder;
.source "IAutoFillManager.java"

# interfaces
.implements Landroid/view/autofill/IAutoFillManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAutoFillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAutoFillManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.autofill.IAutoFillManager"

.field static final greylist-max-o TRANSACTION_addClient:I = 0x1

.field static final greylist-max-o TRANSACTION_cancelSession:I = 0x9

.field static final greylist-max-o TRANSACTION_disableOwnedAutofillServices:I = 0xc

.field static final greylist-max-o TRANSACTION_finishSession:I = 0x8

.field static final greylist-max-o TRANSACTION_getAutofillServiceComponentName:I = 0x14

.field static final greylist-max-o TRANSACTION_getAvailableFieldClassificationAlgorithms:I = 0x15

.field static final greylist-max-o TRANSACTION_getDefaultFieldClassificationAlgorithm:I = 0x16

.field static final greylist-max-o TRANSACTION_getFillEventHistory:I = 0x4

.field static final greylist-max-o TRANSACTION_getUserData:I = 0x10

.field static final greylist-max-o TRANSACTION_getUserDataId:I = 0x11

.field static final greylist-max-o TRANSACTION_isFieldClassificationEnabled:I = 0x13

.field static final greylist-max-o TRANSACTION_isServiceEnabled:I = 0xe

.field static final greylist-max-o TRANSACTION_isServiceSupported:I = 0xd

.field static final greylist-max-o TRANSACTION_onPendingSaveUi:I = 0xf

.field static final greylist-max-o TRANSACTION_removeClient:I = 0x2

.field static final greylist-max-o TRANSACTION_restoreSession:I = 0x5

.field static final blacklist TRANSACTION_setAugmentedAutofillWhitelist:I = 0x17

.field static final greylist-max-o TRANSACTION_setAuthenticationResult:I = 0xa

.field static final greylist-max-o TRANSACTION_setAutofillFailure:I = 0x7

.field static final greylist-max-o TRANSACTION_setHasCallback:I = 0xb

.field static final greylist-max-o TRANSACTION_setUserData:I = 0x12

.field static final greylist-max-o TRANSACTION_startSession:I = 0x3

.field static final greylist-max-o TRANSACTION_updateSession:I = 0x6


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 96
    const-string v0, "android.view.autofill.IAutoFillManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 104
    if-nez p0, :cond_0

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_0
    const-string v0, "android.view.autofill.IAutoFillManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 108
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/autofill/IAutoFillManager;

    if-eqz v1, :cond_1

    .line 109
    move-object v1, v0

    check-cast v1, Landroid/view/autofill/IAutoFillManager;

    return-object v1

    .line 111
    :cond_1
    new-instance v1, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/autofill/IAutoFillManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 120
    packed-switch p0, :pswitch_data_0

    .line 216
    const/4 v0, 0x0

    return-object v0

    .line 212
    :pswitch_0
    const-string v0, "setAugmentedAutofillWhitelist"

    return-object v0

    .line 208
    :pswitch_1
    const-string v0, "getDefaultFieldClassificationAlgorithm"

    return-object v0

    .line 204
    :pswitch_2
    const-string v0, "getAvailableFieldClassificationAlgorithms"

    return-object v0

    .line 200
    :pswitch_3
    const-string v0, "getAutofillServiceComponentName"

    return-object v0

    .line 196
    :pswitch_4
    const-string v0, "isFieldClassificationEnabled"

    return-object v0

    .line 192
    :pswitch_5
    const-string v0, "setUserData"

    return-object v0

    .line 188
    :pswitch_6
    const-string v0, "getUserDataId"

    return-object v0

    .line 184
    :pswitch_7
    const-string v0, "getUserData"

    return-object v0

    .line 180
    :pswitch_8
    const-string v0, "onPendingSaveUi"

    return-object v0

    .line 176
    :pswitch_9
    const-string v0, "isServiceEnabled"

    return-object v0

    .line 172
    :pswitch_a
    const-string v0, "isServiceSupported"

    return-object v0

    .line 168
    :pswitch_b
    const-string v0, "disableOwnedAutofillServices"

    return-object v0

    .line 164
    :pswitch_c
    const-string v0, "setHasCallback"

    return-object v0

    .line 160
    :pswitch_d
    const-string v0, "setAuthenticationResult"

    return-object v0

    .line 156
    :pswitch_e
    const-string v0, "cancelSession"

    return-object v0

    .line 152
    :pswitch_f
    const-string v0, "finishSession"

    return-object v0

    .line 148
    :pswitch_10
    const-string v0, "setAutofillFailure"

    return-object v0

    .line 144
    :pswitch_11
    const-string/jumbo v0, "updateSession"

    return-object v0

    .line 140
    :pswitch_12
    const-string v0, "restoreSession"

    return-object v0

    .line 136
    :pswitch_13
    const-string v0, "getFillEventHistory"

    return-object v0

    .line 132
    :pswitch_14
    const-string v0, "startSession"

    return-object v0

    .line 128
    :pswitch_15
    const-string v0, "removeClient"

    return-object v0

    .line 124
    :pswitch_16
    const-string v0, "addClient"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 115
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 869
    const/16 v0, 0x16

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 223
    invoke-static {p1}, Landroid/view/autofill/IAutoFillManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 227
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    const-string v15, "android.view.autofill.IAutoFillManager"

    .line 228
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v13, v11, :cond_0

    const v0, 0xffffff

    if-gt v13, v0, :cond_0

    .line 229
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    :cond_0
    packed-switch v13, :pswitch_data_0

    .line 239
    move-object/from16 v10, p3

    packed-switch v13, :pswitch_data_1

    .line 505
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 235
    :pswitch_0
    move-object/from16 v10, p3

    invoke-virtual {v10, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    return v11

    .line 494
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 496
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 498
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 499
    .local v2, "_arg2":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {v12, v0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->setAugmentedAutofillWhitelist(Ljava/util/List;Ljava/util/List;Lcom/android/internal/os/IResultReceiver;)V

    .line 501
    move/from16 v27, v11

    goto/16 :goto_0

    .line 486
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v2    # "_arg2":Lcom/android/internal/os/IResultReceiver;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    .line 487
    .local v0, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {v12, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->getDefaultFieldClassificationAlgorithm(Lcom/android/internal/os/IResultReceiver;)V

    .line 489
    move/from16 v27, v11

    goto/16 :goto_0

    .line 478
    .end local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    .line 479
    .restart local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {v12, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->getAvailableFieldClassificationAlgorithms(Lcom/android/internal/os/IResultReceiver;)V

    .line 481
    move/from16 v27, v11

    goto/16 :goto_0

    .line 470
    .end local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    .line 471
    .restart local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    invoke-virtual {v12, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->getAutofillServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V

    .line 473
    move/from16 v27, v11

    goto/16 :goto_0

    .line 462
    .end local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    .line 463
    .restart local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {v12, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->isFieldClassificationEnabled(Lcom/android/internal/os/IResultReceiver;)V

    .line 465
    move/from16 v27, v11

    goto/16 :goto_0

    .line 454
    .end local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_6
    sget-object v0, Landroid/service/autofill/UserData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/UserData;

    .line 455
    .local v0, "_arg0":Landroid/service/autofill/UserData;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {v12, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->setUserData(Landroid/service/autofill/UserData;)V

    .line 457
    move/from16 v27, v11

    goto/16 :goto_0

    .line 446
    .end local v0    # "_arg0":Landroid/service/autofill/UserData;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    .line 447
    .local v0, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {v12, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->getUserDataId(Lcom/android/internal/os/IResultReceiver;)V

    .line 449
    move/from16 v27, v11

    goto/16 :goto_0

    .line 438
    .end local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    .line 439
    .restart local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {v12, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->getUserData(Lcom/android/internal/os/IResultReceiver;)V

    .line 441
    move/from16 v27, v11

    goto/16 :goto_0

    .line 428
    .end local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 430
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 431
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-virtual {v12, v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 433
    move/from16 v27, v11

    goto/16 :goto_0

    .line 416
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 418
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 421
    .restart local v2    # "_arg2":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {v12, v0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->isServiceEnabled(ILjava/lang/String;Lcom/android/internal/os/IResultReceiver;)V

    .line 423
    move/from16 v27, v11

    goto/16 :goto_0

    .line 406
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/android/internal/os/IResultReceiver;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 408
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    .line 409
    .local v1, "_arg1":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    invoke-virtual {v12, v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->isServiceSupported(ILcom/android/internal/os/IResultReceiver;)V

    .line 411
    move/from16 v27, v11

    goto/16 :goto_0

    .line 398
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 399
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {v12, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->disableOwnedAutofillServices(I)V

    .line 401
    move/from16 v27, v11

    goto/16 :goto_0

    .line 386
    .end local v0    # "_arg0":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 388
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 390
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 391
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {v12, v0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->setHasCallback(IIZ)V

    .line 393
    move/from16 v27, v11

    goto/16 :goto_0

    .line 372
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_e
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 374
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 376
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 378
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 379
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/autofill/IAutoFillManager$Stub;->setAuthenticationResult(Landroid/os/Bundle;III)V

    .line 381
    move/from16 v27, v11

    goto/16 :goto_0

    .line 362
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 364
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 365
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {v12, v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->cancelSession(II)V

    .line 367
    move/from16 v27, v11

    goto/16 :goto_0

    .line 350
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 352
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 354
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 355
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {v12, v0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->finishSession(III)V

    .line 357
    move/from16 v27, v11

    goto/16 :goto_0

    .line 338
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 340
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 342
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 343
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-virtual {v12, v0, v1, v2}, Landroid/view/autofill/IAutoFillManager$Stub;->setAutofillFailure(ILjava/util/List;I)V

    .line 345
    move/from16 v27, v11

    goto/16 :goto_0

    .line 318
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v2    # "_arg2":I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 320
    .local v8, "_arg0":I
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/autofill/AutofillId;

    .line 322
    .local v9, "_arg1":Landroid/view/autofill/AutofillId;
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Rect;

    .line 324
    .local v16, "_arg2":Landroid/graphics/Rect;
    sget-object v0, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/autofill/AutofillValue;

    .line 326
    .local v17, "_arg3":Landroid/view/autofill/AutofillValue;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 328
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 330
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 331
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v9

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/view/autofill/IAutoFillManager$Stub;->updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V

    .line 333
    move/from16 v27, v11

    goto/16 :goto_0

    .line 304
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":Landroid/view/autofill/AutofillId;
    .end local v16    # "_arg2":Landroid/graphics/Rect;
    .end local v17    # "_arg3":Landroid/view/autofill/AutofillValue;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 306
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 308
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 310
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v3

    .line 311
    .local v3, "_arg3":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/autofill/IAutoFillManager$Stub;->restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;Lcom/android/internal/os/IResultReceiver;)V

    .line 313
    move/from16 v27, v11

    goto/16 :goto_0

    .line 296
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v3    # "_arg3":Lcom/android/internal/os/IResultReceiver;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    .line 297
    .local v0, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {v12, v0}, Landroid/view/autofill/IAutoFillManager$Stub;->getFillEventHistory(Lcom/android/internal/os/IResultReceiver;)V

    .line 299
    move/from16 v27, v11

    goto/16 :goto_0

    .line 268
    .end local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 270
    .local v16, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 272
    .local v17, "_arg1":Landroid/os/IBinder;
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/autofill/AutofillId;

    .line 274
    .local v18, "_arg2":Landroid/view/autofill/AutofillId;
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/graphics/Rect;

    .line 276
    .local v19, "_arg3":Landroid/graphics/Rect;
    sget-object v0, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/view/autofill/AutofillValue;

    .line 278
    .local v20, "_arg4":Landroid/view/autofill/AutofillValue;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 280
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 282
    .local v22, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 284
    .local v23, "_arg7":I
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/content/ComponentName;

    .line 286
    .local v24, "_arg8":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v25

    .line 288
    .local v25, "_arg9":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v26

    .line 289
    .local v26, "_arg10":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v10, v25

    move/from16 v27, v11

    move-object/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Landroid/view/autofill/IAutoFillManager$Stub;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;ZLcom/android/internal/os/IResultReceiver;)V

    .line 291
    goto :goto_0

    .line 258
    .end local v16    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":Landroid/os/IBinder;
    .end local v18    # "_arg2":Landroid/view/autofill/AutofillId;
    .end local v19    # "_arg3":Landroid/graphics/Rect;
    .end local v20    # "_arg4":Landroid/view/autofill/AutofillValue;
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":Z
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":Landroid/content/ComponentName;
    .end local v25    # "_arg9":Z
    .end local v26    # "_arg10":Lcom/android/internal/os/IResultReceiver;
    :pswitch_16
    move/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v0

    .line 260
    .local v0, "_arg0":Landroid/view/autofill/IAutoFillManagerClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 261
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {v12, v0, v1}, Landroid/view/autofill/IAutoFillManager$Stub;->removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V

    .line 263
    goto :goto_0

    .line 244
    .end local v0    # "_arg0":Landroid/view/autofill/IAutoFillManagerClient;
    .end local v1    # "_arg1":I
    :pswitch_17
    move/from16 v27, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v0

    .line 246
    .restart local v0    # "_arg0":Landroid/view/autofill/IAutoFillManagerClient;
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 248
    .local v1, "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 250
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v3

    .line 251
    .restart local v3    # "_arg3":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/autofill/IAutoFillManager$Stub;->addClient(Landroid/view/autofill/IAutoFillManagerClient;Landroid/content/ComponentName;ILcom/android/internal/os/IResultReceiver;)V

    .line 253
    nop

    .line 508
    .end local v0    # "_arg0":Landroid/view/autofill/IAutoFillManagerClient;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lcom/android/internal/os/IResultReceiver;
    :goto_0
    return v27

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
