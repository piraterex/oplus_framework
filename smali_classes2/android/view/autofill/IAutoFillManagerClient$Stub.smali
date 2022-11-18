.class public abstract Landroid/view/autofill/IAutoFillManagerClient$Stub;
.super Landroid/os/Binder;
.source "IAutoFillManagerClient.java"

# interfaces
.implements Landroid/view/autofill/IAutoFillManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/IAutoFillManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.autofill.IAutoFillManagerClient"

.field static final greylist-max-o TRANSACTION_authenticate:I = 0x4

.field static final greylist-max-o TRANSACTION_autofill:I = 0x2

.field static final blacklist TRANSACTION_autofillContent:I = 0x3

.field static final greylist-max-o TRANSACTION_dispatchUnhandledKey:I = 0xb

.field static final blacklist TRANSACTION_getAugmentedAutofillClient:I = 0xf

.field static final blacklist TRANSACTION_notifyDisableAutofill:I = 0x10

.field static final blacklist TRANSACTION_notifyFillDialogTriggerIds:I = 0x12

.field static final blacklist TRANSACTION_notifyFillUiHidden:I = 0xa

.field static final blacklist TRANSACTION_notifyFillUiShown:I = 0x9

.field static final greylist-max-o TRANSACTION_notifyNoFillUi:I = 0x8

.field static final greylist-max-o TRANSACTION_requestHideFillUi:I = 0x7

.field static final greylist-max-o TRANSACTION_requestShowFillUi:I = 0x6

.field static final blacklist TRANSACTION_requestShowSoftInput:I = 0x11

.field static final greylist-max-o TRANSACTION_setSaveUiState:I = 0xd

.field static final greylist-max-o TRANSACTION_setSessionFinished:I = 0xe

.field static final greylist-max-o TRANSACTION_setState:I = 0x1

.field static final greylist-max-o TRANSACTION_setTrackedViews:I = 0x5

.field static final greylist-max-o TRANSACTION_startIntentSender:I = 0xc


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 124
    const-string v0, "android.view.autofill.IAutoFillManagerClient"

    invoke-virtual {p0, p0, v0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 132
    if-nez p0, :cond_0

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_0
    const-string v0, "android.view.autofill.IAutoFillManagerClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 136
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/autofill/IAutoFillManagerClient;

    if-eqz v1, :cond_1

    .line 137
    move-object v1, v0

    check-cast v1, Landroid/view/autofill/IAutoFillManagerClient;

    return-object v1

    .line 139
    :cond_1
    new-instance v1, Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/autofill/IAutoFillManagerClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 148
    packed-switch p0, :pswitch_data_0

    .line 224
    const/4 v0, 0x0

    return-object v0

    .line 220
    :pswitch_0
    const-string v0, "notifyFillDialogTriggerIds"

    return-object v0

    .line 216
    :pswitch_1
    const-string v0, "requestShowSoftInput"

    return-object v0

    .line 212
    :pswitch_2
    const-string v0, "notifyDisableAutofill"

    return-object v0

    .line 208
    :pswitch_3
    const-string v0, "getAugmentedAutofillClient"

    return-object v0

    .line 204
    :pswitch_4
    const-string v0, "setSessionFinished"

    return-object v0

    .line 200
    :pswitch_5
    const-string v0, "setSaveUiState"

    return-object v0

    .line 196
    :pswitch_6
    const-string v0, "startIntentSender"

    return-object v0

    .line 192
    :pswitch_7
    const-string v0, "dispatchUnhandledKey"

    return-object v0

    .line 188
    :pswitch_8
    const-string v0, "notifyFillUiHidden"

    return-object v0

    .line 184
    :pswitch_9
    const-string v0, "notifyFillUiShown"

    return-object v0

    .line 180
    :pswitch_a
    const-string v0, "notifyNoFillUi"

    return-object v0

    .line 176
    :pswitch_b
    const-string v0, "requestHideFillUi"

    return-object v0

    .line 172
    :pswitch_c
    const-string v0, "requestShowFillUi"

    return-object v0

    .line 168
    :pswitch_d
    const-string v0, "setTrackedViews"

    return-object v0

    .line 164
    :pswitch_e
    const-string v0, "authenticate"

    return-object v0

    .line 160
    :pswitch_f
    const-string v0, "autofillContent"

    return-object v0

    .line 156
    :pswitch_10
    const-string v0, "autofill"

    return-object v0

    .line 152
    :pswitch_11
    const-string v0, "setState"

    return-object v0

    nop

    :pswitch_data_0
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

    .line 788
    const/16 v0, 0x11

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 231
    invoke-static {p1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 235
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "android.view.autofill.IAutoFillManagerClient"

    .line 236
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 237
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 247
    move-object/from16 v12, p3

    packed-switch v8, :pswitch_data_1

    .line 455
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 243
    :pswitch_0
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    return v11

    .line 448
    :pswitch_1
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 449
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {v7, v0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->notifyFillDialogTriggerIds(Ljava/util/List;)V

    .line 451
    goto/16 :goto_0

    .line 440
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    :pswitch_2
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    .line 441
    .local v0, "_arg0":Landroid/view/autofill/AutofillId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    invoke-virtual {v7, v0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->requestShowSoftInput(Landroid/view/autofill/AutofillId;)V

    .line 443
    goto/16 :goto_0

    .line 430
    .end local v0    # "_arg0":Landroid/view/autofill/AutofillId;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 432
    .local v0, "_arg0":J
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 433
    .local v2, "_arg1":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {v7, v0, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->notifyDisableAutofill(JLandroid/content/ComponentName;)V

    .line 435
    goto/16 :goto_0

    .line 422
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    .line 423
    .local v0, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {v7, v0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V

    .line 425
    goto/16 :goto_0

    .line 412
    .end local v0    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 414
    .local v0, "_arg0":I
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 415
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {v7, v0, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setSessionFinished(ILjava/util/List;)V

    .line 417
    goto/16 :goto_0

    .line 402
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 404
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 405
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {v7, v0, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setSaveUiState(IZ)V

    .line 407
    goto/16 :goto_0

    .line 392
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_7
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    .line 394
    .local v0, "_arg0":Landroid/content/IntentSender;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 395
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {v7, v0, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 397
    goto/16 :goto_0

    .line 380
    .end local v0    # "_arg0":Landroid/content/IntentSender;
    .end local v1    # "_arg1":Landroid/content/Intent;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 382
    .local v0, "_arg0":I
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 384
    .local v1, "_arg1":Landroid/view/autofill/AutofillId;
    sget-object v2, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 385
    .local v2, "_arg2":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {v7, v0, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    .line 387
    goto/16 :goto_0

    .line 370
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    .end local v2    # "_arg2":Landroid/view/KeyEvent;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 372
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 373
    .restart local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {v7, v0, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->notifyFillUiHidden(ILandroid/view/autofill/AutofillId;)V

    .line 375
    goto/16 :goto_0

    .line 360
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 362
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 363
    .restart local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {v7, v0, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->notifyFillUiShown(ILandroid/view/autofill/AutofillId;)V

    .line 365
    goto/16 :goto_0

    .line 348
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 350
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 352
    .restart local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 353
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {v7, v0, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V

    .line 355
    goto/16 :goto_0

    .line 338
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    .end local v2    # "_arg2":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 340
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 341
    .restart local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {v7, v0, v1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->requestHideFillUi(ILandroid/view/autofill/AutofillId;)V

    .line 343
    goto/16 :goto_0

    .line 320
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 322
    .local v13, "_arg0":I
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/view/autofill/AutofillId;

    .line 324
    .local v14, "_arg1":Landroid/view/autofill/AutofillId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 326
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 328
    .local v16, "_arg3":I
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/graphics/Rect;

    .line 330
    .local v17, "_arg4":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/autofill/IAutofillWindowPresenter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutofillWindowPresenter;

    move-result-object v18

    .line 331
    .local v18, "_arg5":Landroid/view/autofill/IAutofillWindowPresenter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    .line 333
    goto/16 :goto_0

    .line 302
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":Landroid/view/autofill/AutofillId;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Landroid/graphics/Rect;
    .end local v18    # "_arg5":Landroid/view/autofill/IAutofillWindowPresenter;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 304
    .restart local v13    # "_arg0":I
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, [Landroid/view/autofill/AutofillId;

    .line 306
    .local v14, "_arg1":[Landroid/view/autofill/AutofillId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 308
    .local v15, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 310
    .local v16, "_arg3":Z
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [Landroid/view/autofill/AutofillId;

    .line 312
    .local v17, "_arg4":[Landroid/view/autofill/AutofillId;
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/autofill/AutofillId;

    .line 313
    .local v18, "_arg5":Landroid/view/autofill/AutofillId;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 314
    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V

    .line 315
    goto/16 :goto_0

    .line 286
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":[Landroid/view/autofill/AutofillId;
    .end local v15    # "_arg2":Z
    .end local v16    # "_arg3":Z
    .end local v17    # "_arg4":[Landroid/view/autofill/AutofillId;
    .end local v18    # "_arg5":Landroid/view/autofill/AutofillId;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 288
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 290
    .local v13, "_arg1":I
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/IntentSender;

    .line 292
    .local v14, "_arg2":Landroid/content/IntentSender;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/Intent;

    .line 294
    .local v15, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 295
    .local v16, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    move-object/from16 v0, p0

    move v1, v6

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    .line 297
    goto :goto_0

    .line 274
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Landroid/content/IntentSender;
    .end local v15    # "_arg3":Landroid/content/Intent;
    .end local v16    # "_arg4":Z
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 276
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 278
    .restart local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    sget-object v2, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData;

    .line 279
    .local v2, "_arg2":Landroid/content/ClipData;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {v7, v0, v1, v2}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V

    .line 281
    goto :goto_0

    .line 260
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/autofill/AutofillId;
    .end local v2    # "_arg2":Landroid/content/ClipData;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 262
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 264
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    sget-object v2, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 266
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 267
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    .line 269
    goto :goto_0

    .line 252
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local v3    # "_arg3":Z
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 253
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {v7, v0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->setState(I)V

    .line 255
    nop

    .line 458
    .end local v0    # "_arg0":I
    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
