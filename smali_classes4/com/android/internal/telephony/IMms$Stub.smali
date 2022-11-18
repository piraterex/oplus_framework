.class public abstract Lcom/android/internal/telephony/IMms$Stub;
.super Landroid/os/Binder;
.source "IMms.java"

# interfaces
.implements Lcom/android/internal/telephony/IMms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IMms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IMms$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IMms"

.field static final greylist-max-o TRANSACTION_addMultimediaMessageDraft:I = 0xa

.field static final greylist-max-o TRANSACTION_addTextMessageDraft:I = 0x9

.field static final greylist-max-o TRANSACTION_archiveStoredConversation:I = 0x8

.field static final greylist-max-o TRANSACTION_deleteStoredConversation:I = 0x6

.field static final greylist-max-o TRANSACTION_deleteStoredMessage:I = 0x5

.field static final greylist-max-o TRANSACTION_downloadMessage:I = 0x2

.field static final greylist-max-o TRANSACTION_getAutoPersisting:I = 0xd

.field static final greylist-max-o TRANSACTION_importMultimediaMessage:I = 0x4

.field static final greylist-max-o TRANSACTION_importTextMessage:I = 0x3

.field static final greylist-max-o TRANSACTION_sendMessage:I = 0x1

.field static final greylist-max-o TRANSACTION_sendStoredMessage:I = 0xb

.field static final greylist-max-o TRANSACTION_setAutoPersisting:I = 0xc

.field static final greylist-max-o TRANSACTION_updateStoredMessageStatus:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 204
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 205
    const-string v0, "com.android.internal.telephony.IMms"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IMms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 213
    if-nez p0, :cond_0

    .line 214
    const/4 v0, 0x0

    return-object v0

    .line 216
    :cond_0
    const-string v0, "com.android.internal.telephony.IMms"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 217
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IMms;

    if-eqz v1, :cond_1

    .line 218
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/IMms;

    return-object v1

    .line 220
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IMms$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IMms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 229
    packed-switch p0, :pswitch_data_0

    .line 285
    const/4 v0, 0x0

    return-object v0

    .line 281
    :pswitch_0
    const-string v0, "getAutoPersisting"

    return-object v0

    .line 277
    :pswitch_1
    const-string/jumbo v0, "setAutoPersisting"

    return-object v0

    .line 273
    :pswitch_2
    const-string/jumbo v0, "sendStoredMessage"

    return-object v0

    .line 269
    :pswitch_3
    const-string v0, "addMultimediaMessageDraft"

    return-object v0

    .line 265
    :pswitch_4
    const-string v0, "addTextMessageDraft"

    return-object v0

    .line 261
    :pswitch_5
    const-string v0, "archiveStoredConversation"

    return-object v0

    .line 257
    :pswitch_6
    const-string/jumbo v0, "updateStoredMessageStatus"

    return-object v0

    .line 253
    :pswitch_7
    const-string v0, "deleteStoredConversation"

    return-object v0

    .line 249
    :pswitch_8
    const-string v0, "deleteStoredMessage"

    return-object v0

    .line 245
    :pswitch_9
    const-string v0, "importMultimediaMessage"

    return-object v0

    .line 241
    :pswitch_a
    const-string v0, "importTextMessage"

    return-object v0

    .line 237
    :pswitch_b
    const-string v0, "downloadMessage"

    return-object v0

    .line 233
    :pswitch_c
    const-string/jumbo v0, "sendMessage"

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

    .line 224
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 946
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 292
    invoke-static {p1}, Lcom/android/internal/telephony/IMms$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 296
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v14, "com.android.internal.telephony.IMms"

    .line 297
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v11, v15, :cond_0

    const v0, 0xffffff

    if-gt v11, v0, :cond_0

    .line 298
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    :cond_0
    packed-switch v11, :pswitch_data_0

    .line 308
    packed-switch v11, :pswitch_data_1

    .line 513
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 304
    :pswitch_0
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    return v15

    .line 506
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IMms$Stub;->getAutoPersisting()Z

    move-result v0

    .line 507
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 509
    goto/16 :goto_0

    .line 496
    .end local v0    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 499
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {v10, v0, v1}, Lcom/android/internal/telephony/IMms$Stub;->setAutoPersisting(Ljava/lang/String;Z)V

    .line 501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    goto/16 :goto_0

    .line 479
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 481
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 483
    .local v7, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/net/Uri;

    .line 485
    .local v8, "_arg2":Landroid/net/Uri;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/Bundle;

    .line 487
    .local v9, "_arg3":Landroid/os/Bundle;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/app/PendingIntent;

    .line 488
    .local v16, "_arg4":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IMms$Stub;->sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    .line 490
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    goto/16 :goto_0

    .line 467
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Landroid/net/Uri;
    .end local v9    # "_arg3":Landroid/os/Bundle;
    .end local v16    # "_arg4":Landroid/app/PendingIntent;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 469
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 470
    .local v1, "_arg1":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {v10, v0, v1}, Lcom/android/internal/telephony/IMms$Stub;->addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 472
    .local v2, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    invoke-virtual {v13, v2, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 474
    goto/16 :goto_0

    .line 453
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_result":Landroid/net/Uri;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 455
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 459
    invoke-virtual {v10, v0, v1, v2}, Lcom/android/internal/telephony/IMms$Stub;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 460
    .local v3, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {v13, v3, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 462
    goto/16 :goto_0

    .line 439
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/Uri;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 441
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 443
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 444
    .local v3, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 445
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/android/internal/telephony/IMms$Stub;->archiveStoredConversation(Ljava/lang/String;JZ)Z

    move-result v4

    .line 446
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 448
    goto/16 :goto_0

    .line 425
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 427
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 429
    .local v1, "_arg1":Landroid/net/Uri;
    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 430
    .local v2, "_arg2":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {v10, v0, v1, v2}, Lcom/android/internal/telephony/IMms$Stub;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v3

    .line 432
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 434
    goto/16 :goto_0

    .line 413
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":Landroid/content/ContentValues;
    .end local v3    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 415
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 416
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {v10, v0, v1, v2}, Lcom/android/internal/telephony/IMms$Stub;->deleteStoredConversation(Ljava/lang/String;J)Z

    move-result v3

    .line 418
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 420
    goto/16 :goto_0

    .line 401
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 403
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 404
    .local v1, "_arg1":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {v10, v0, v1}, Lcom/android/internal/telephony/IMms$Stub;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v2

    .line 406
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 408
    goto/16 :goto_0

    .line 381
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 383
    .local v8, "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/net/Uri;

    .line 385
    .local v9, "_arg1":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 387
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 389
    .local v17, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 391
    .local v19, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 392
    .local v20, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v3, v16

    move-wide/from16 v4, v17

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IMms$Stub;->importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;

    move-result-object v0

    .line 394
    .local v0, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 396
    goto/16 :goto_0

    .line 359
    .end local v0    # "_result":Landroid/net/Uri;
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":Landroid/net/Uri;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":J
    .end local v19    # "_arg4":Z
    .end local v20    # "_arg5":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 361
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 363
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 365
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 367
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 369
    .local v19, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 371
    .local v21, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 372
    .local v22, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    move-wide/from16 v5, v19

    move/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/IMms$Stub;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;

    move-result-object v0

    .line 374
    .restart local v0    # "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 376
    goto/16 :goto_0

    .line 336
    .end local v0    # "_result":Landroid/net/Uri;
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":Ljava/lang/String;
    .end local v19    # "_arg4":J
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 338
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 340
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 342
    .local v18, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/net/Uri;

    .line 344
    .local v19, "_arg3":Landroid/net/Uri;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Bundle;

    .line 346
    .local v20, "_arg4":Landroid/os/Bundle;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/app/PendingIntent;

    .line 348
    .local v21, "_arg5":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 350
    .local v22, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 351
    .local v24, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-wide/from16 v7, v22

    move-object/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/IMms$Stub;->downloadMessage(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;JLjava/lang/String;)V

    .line 353
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    goto :goto_0

    .line 313
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Landroid/net/Uri;
    .end local v20    # "_arg4":Landroid/os/Bundle;
    .end local v21    # "_arg5":Landroid/app/PendingIntent;
    .end local v22    # "_arg6":J
    .end local v24    # "_arg7":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 315
    .restart local v16    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 317
    .restart local v17    # "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/net/Uri;

    .line 319
    .local v18, "_arg2":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 321
    .local v19, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Bundle;

    .line 323
    .restart local v20    # "_arg4":Landroid/os/Bundle;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/app/PendingIntent;

    .line 325
    .restart local v21    # "_arg5":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 327
    .restart local v22    # "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 328
    .restart local v24    # "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-wide/from16 v7, v22

    move-object/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/IMms$Stub;->sendMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;JLjava/lang/String;)V

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    nop

    .line 516
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Landroid/net/Uri;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Landroid/os/Bundle;
    .end local v21    # "_arg5":Landroid/app/PendingIntent;
    .end local v22    # "_arg6":J
    .end local v24    # "_arg7":Ljava/lang/String;
    :goto_0
    return v15

    nop

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
