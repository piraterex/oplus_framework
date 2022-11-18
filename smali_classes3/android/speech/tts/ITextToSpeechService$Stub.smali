.class public abstract Landroid/speech/tts/ITextToSpeechService$Stub;
.super Landroid/os/Binder;
.source "ITextToSpeechService.java"

# interfaces
.implements Landroid/speech/tts/ITextToSpeechService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/ITextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.speech.tts.ITextToSpeechService"

.field static final greylist-max-o TRANSACTION_getClientDefaultLanguage:I = 0x8

.field static final greylist-max-o TRANSACTION_getDefaultVoiceNameFor:I = 0xf

.field static final greylist-max-o TRANSACTION_getFeaturesForLanguage:I = 0xa

.field static final greylist-max-o TRANSACTION_getLanguage:I = 0x7

.field static final greylist-max-o TRANSACTION_getVoices:I = 0xd

.field static final greylist-max-o TRANSACTION_isLanguageAvailable:I = 0x9

.field static final greylist-max-o TRANSACTION_isSpeaking:I = 0x5

.field static final greylist-max-o TRANSACTION_loadLanguage:I = 0xb

.field static final greylist-max-o TRANSACTION_loadVoice:I = 0xe

.field static final greylist-max-o TRANSACTION_playAudio:I = 0x3

.field static final greylist-max-o TRANSACTION_playSilence:I = 0x4

.field static final greylist-max-o TRANSACTION_setCallback:I = 0xc

.field static final greylist-max-o TRANSACTION_speak:I = 0x1

.field static final greylist-max-o TRANSACTION_stop:I = 0x6

.field static final greylist-max-o TRANSACTION_synthesizeToFileDescriptor:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 225
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 226
    const-string v0, "android.speech.tts.ITextToSpeechService"

    invoke-virtual {p0, p0, v0}, Landroid/speech/tts/ITextToSpeechService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 234
    if-nez p0, :cond_0

    .line 235
    const/4 v0, 0x0

    return-object v0

    .line 237
    :cond_0
    const-string v0, "android.speech.tts.ITextToSpeechService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 238
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/speech/tts/ITextToSpeechService;

    if-eqz v1, :cond_1

    .line 239
    move-object v1, v0

    check-cast v1, Landroid/speech/tts/ITextToSpeechService;

    return-object v1

    .line 241
    :cond_1
    new-instance v1, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 250
    packed-switch p0, :pswitch_data_0

    .line 314
    const/4 v0, 0x0

    return-object v0

    .line 310
    :pswitch_0
    const-string v0, "getDefaultVoiceNameFor"

    return-object v0

    .line 306
    :pswitch_1
    const-string/jumbo v0, "loadVoice"

    return-object v0

    .line 302
    :pswitch_2
    const-string/jumbo v0, "getVoices"

    return-object v0

    .line 298
    :pswitch_3
    const-string/jumbo v0, "setCallback"

    return-object v0

    .line 294
    :pswitch_4
    const-string/jumbo v0, "loadLanguage"

    return-object v0

    .line 290
    :pswitch_5
    const-string v0, "getFeaturesForLanguage"

    return-object v0

    .line 286
    :pswitch_6
    const-string/jumbo v0, "isLanguageAvailable"

    return-object v0

    .line 282
    :pswitch_7
    const-string v0, "getClientDefaultLanguage"

    return-object v0

    .line 278
    :pswitch_8
    const-string v0, "getLanguage"

    return-object v0

    .line 274
    :pswitch_9
    const-string/jumbo v0, "stop"

    return-object v0

    .line 270
    :pswitch_a
    const-string/jumbo v0, "isSpeaking"

    return-object v0

    .line 266
    :pswitch_b
    const-string/jumbo v0, "playSilence"

    return-object v0

    .line 262
    :pswitch_c
    const-string/jumbo v0, "playAudio"

    return-object v0

    .line 258
    :pswitch_d
    const-string/jumbo v0, "synthesizeToFileDescriptor"

    return-object v0

    .line 254
    :pswitch_e
    const-string/jumbo v0, "speak"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 245
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1012
    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 321
    invoke-static {p1}, Landroid/speech/tts/ITextToSpeechService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 325
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.speech.tts.ITextToSpeechService"

    .line 326
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 327
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 337
    packed-switch v7, :pswitch_data_1

    .line 530
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 333
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    return v11

    .line 517
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 523
    invoke-virtual {v6, v0, v1, v2}, Landroid/speech/tts/ITextToSpeechService$Stub;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 526
    goto/16 :goto_0

    .line 505
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 507
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 508
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {v6, v0, v1}, Landroid/speech/tts/ITextToSpeechService$Stub;->loadVoice(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v2

    .line 510
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    goto/16 :goto_0

    .line 497
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->getVoices()Ljava/util/List;

    move-result-object v0

    .line 498
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 500
    goto/16 :goto_0

    .line 487
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 489
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v1

    .line 490
    .local v1, "_arg1":Landroid/speech/tts/ITextToSpeechCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {v6, v0, v1}, Landroid/speech/tts/ITextToSpeechService$Stub;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    goto/16 :goto_0

    .line 471
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/speech/tts/ITextToSpeechCallback;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 473
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/speech/tts/ITextToSpeechService$Stub;->loadLanguage(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 480
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    goto/16 :goto_0

    .line 457
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 461
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 462
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 463
    invoke-virtual {v6, v0, v1, v2}, Landroid/speech/tts/ITextToSpeechService$Stub;->getFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 464
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 466
    goto/16 :goto_0

    .line 443
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":[Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 447
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 448
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {v6, v0, v1, v2}, Landroid/speech/tts/ITextToSpeechService$Stub;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 450
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    goto/16 :goto_0

    .line 435
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->getClientDefaultLanguage()[Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 438
    goto/16 :goto_0

    .line 428
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->getLanguage()[Ljava/lang/String;

    move-result-object v0

    .line 429
    .restart local v0    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 431
    goto/16 :goto_0

    .line 419
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 420
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {v6, v0}, Landroid/speech/tts/ITextToSpeechService$Stub;->stop(Landroid/os/IBinder;)I

    move-result v1

    .line 422
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    goto/16 :goto_0

    .line 411
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/speech/tts/ITextToSpeechService$Stub;->isSpeaking()Z

    move-result v0

    .line 412
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 414
    goto/16 :goto_0

    .line 396
    .end local v0    # "_result":Z
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 398
    .local v12, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 400
    .local v13, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 402
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 403
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v13

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService$Stub;->playSilence(Landroid/os/IBinder;JILjava/lang/String;)I

    move-result v0

    .line 405
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    goto/16 :goto_0

    .line 378
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":J
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 380
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/net/Uri;

    .line 382
    .local v13, "_arg1":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 384
    .local v14, "_arg2":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/Bundle;

    .line 386
    .local v15, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 387
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService$Stub;->playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    .line 389
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    goto/16 :goto_0

    .line 360
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":Landroid/net/Uri;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Landroid/os/Bundle;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 362
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/CharSequence;

    .line 364
    .local v13, "_arg1":Ljava/lang/CharSequence;
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/ParcelFileDescriptor;

    .line 366
    .local v14, "_arg2":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/Bundle;

    .line 368
    .restart local v15    # "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 369
    .restart local v16    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService$Stub;->synthesizeToFileDescriptor(Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    .line 371
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    goto :goto_0

    .line 342
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":Ljava/lang/CharSequence;
    .end local v14    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v15    # "_arg3":Landroid/os/Bundle;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 344
    .restart local v12    # "_arg0":Landroid/os/IBinder;
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/CharSequence;

    .line 346
    .restart local v13    # "_arg1":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 348
    .local v14, "_arg2":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/Bundle;

    .line 350
    .restart local v15    # "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 351
    .restart local v16    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService$Stub;->speak(Landroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    .line 353
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    nop

    .line 533
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":Ljava/lang/CharSequence;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Landroid/os/Bundle;
    .end local v16    # "_arg4":Ljava/lang/String;
    :goto_0
    return v11

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
