.class public abstract Landroid/hardware/display/IColorDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IColorDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IColorDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IColorDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IColorDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getColorMode:I = 0x11

.field static final blacklist TRANSACTION_getNightDisplayAutoMode:I = 0xa

.field static final blacklist TRANSACTION_getNightDisplayAutoModeRaw:I = 0xb

.field static final blacklist TRANSACTION_getNightDisplayColorTemperature:I = 0x8

.field static final blacklist TRANSACTION_getNightDisplayCustomEndTime:I = 0xf

.field static final blacklist TRANSACTION_getNightDisplayCustomStartTime:I = 0xd

.field static final blacklist TRANSACTION_getReduceBrightColorsOffsetFactor:I = 0x19

.field static final blacklist TRANSACTION_getReduceBrightColorsStrength:I = 0x17

.field static final blacklist TRANSACTION_getTransformCapabilities:I = 0x5

.field static final blacklist TRANSACTION_isDeviceColorManaged:I = 0x1

.field static final blacklist TRANSACTION_isDisplayWhiteBalanceEnabled:I = 0x13

.field static final blacklist TRANSACTION_isNightDisplayActivated:I = 0x6

.field static final blacklist TRANSACTION_isReduceBrightColorsActivated:I = 0x15

.field static final blacklist TRANSACTION_isSaturationActivated:I = 0x4

.field static final blacklist TRANSACTION_setAppSaturationLevel:I = 0x3

.field static final blacklist TRANSACTION_setColorMode:I = 0x12

.field static final blacklist TRANSACTION_setDisplayWhiteBalanceEnabled:I = 0x14

.field static final blacklist TRANSACTION_setNightDisplayActivated:I = 0x7

.field static final blacklist TRANSACTION_setNightDisplayAutoMode:I = 0xc

.field static final blacklist TRANSACTION_setNightDisplayColorTemperature:I = 0x9

.field static final blacklist TRANSACTION_setNightDisplayCustomEndTime:I = 0x10

.field static final blacklist TRANSACTION_setNightDisplayCustomStartTime:I = 0xe

.field static final blacklist TRANSACTION_setReduceBrightColorsActivated:I = 0x16

.field static final blacklist TRANSACTION_setReduceBrightColorsStrength:I = 0x18

.field static final blacklist TRANSACTION_setSaturationLevel:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 121
    const-string v0, "android.hardware.display.IColorDisplayManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IColorDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IColorDisplayManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 129
    if-nez p0, :cond_0

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 132
    :cond_0
    const-string v0, "android.hardware.display.IColorDisplayManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 133
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/display/IColorDisplayManager;

    if-eqz v1, :cond_1

    .line 134
    move-object v1, v0

    check-cast v1, Landroid/hardware/display/IColorDisplayManager;

    return-object v1

    .line 136
    :cond_1
    new-instance v1, Landroid/hardware/display/IColorDisplayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/display/IColorDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 145
    packed-switch p0, :pswitch_data_0

    .line 249
    const/4 v0, 0x0

    return-object v0

    .line 245
    :pswitch_0
    const-string v0, "getReduceBrightColorsOffsetFactor"

    return-object v0

    .line 241
    :pswitch_1
    const-string/jumbo v0, "setReduceBrightColorsStrength"

    return-object v0

    .line 237
    :pswitch_2
    const-string v0, "getReduceBrightColorsStrength"

    return-object v0

    .line 233
    :pswitch_3
    const-string/jumbo v0, "setReduceBrightColorsActivated"

    return-object v0

    .line 229
    :pswitch_4
    const-string v0, "isReduceBrightColorsActivated"

    return-object v0

    .line 225
    :pswitch_5
    const-string/jumbo v0, "setDisplayWhiteBalanceEnabled"

    return-object v0

    .line 221
    :pswitch_6
    const-string v0, "isDisplayWhiteBalanceEnabled"

    return-object v0

    .line 217
    :pswitch_7
    const-string/jumbo v0, "setColorMode"

    return-object v0

    .line 213
    :pswitch_8
    const-string v0, "getColorMode"

    return-object v0

    .line 209
    :pswitch_9
    const-string/jumbo v0, "setNightDisplayCustomEndTime"

    return-object v0

    .line 205
    :pswitch_a
    const-string v0, "getNightDisplayCustomEndTime"

    return-object v0

    .line 201
    :pswitch_b
    const-string/jumbo v0, "setNightDisplayCustomStartTime"

    return-object v0

    .line 197
    :pswitch_c
    const-string v0, "getNightDisplayCustomStartTime"

    return-object v0

    .line 193
    :pswitch_d
    const-string/jumbo v0, "setNightDisplayAutoMode"

    return-object v0

    .line 189
    :pswitch_e
    const-string v0, "getNightDisplayAutoModeRaw"

    return-object v0

    .line 185
    :pswitch_f
    const-string v0, "getNightDisplayAutoMode"

    return-object v0

    .line 181
    :pswitch_10
    const-string/jumbo v0, "setNightDisplayColorTemperature"

    return-object v0

    .line 177
    :pswitch_11
    const-string v0, "getNightDisplayColorTemperature"

    return-object v0

    .line 173
    :pswitch_12
    const-string/jumbo v0, "setNightDisplayActivated"

    return-object v0

    .line 169
    :pswitch_13
    const-string v0, "isNightDisplayActivated"

    return-object v0

    .line 165
    :pswitch_14
    const-string v0, "getTransformCapabilities"

    return-object v0

    .line 161
    :pswitch_15
    const-string v0, "isSaturationActivated"

    return-object v0

    .line 157
    :pswitch_16
    const-string/jumbo v0, "setAppSaturationLevel"

    return-object v0

    .line 153
    :pswitch_17
    const-string/jumbo v0, "setSaturationLevel"

    return-object v0

    .line 149
    :pswitch_18
    const-string v0, "isDeviceColorManaged"

    return-object v0

    nop

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

    .line 140
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 968
    const/16 v0, 0x18

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 256
    invoke-static {p1}, Landroid/hardware/display/IColorDisplayManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    const-string v0, "android.hardware.display.IColorDisplayManager"

    .line 261
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 262
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 272
    packed-switch p1, :pswitch_data_1

    .line 485
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 268
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    return v1

    .line 478
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getReduceBrightColorsOffsetFactor()F

    move-result v2

    .line 479
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 481
    goto/16 :goto_0

    .line 469
    .end local v2    # "_result":F
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 470
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setReduceBrightColorsStrength(I)Z

    move-result v3

    .line 472
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 474
    goto/16 :goto_0

    .line 461
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getReduceBrightColorsStrength()I

    move-result v2

    .line 462
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    goto/16 :goto_0

    .line 452
    .end local v2    # "_result":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 453
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setReduceBrightColorsActivated(Z)Z

    move-result v3

    .line 455
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 457
    goto/16 :goto_0

    .line 444
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isReduceBrightColorsActivated()Z

    move-result v2

    .line 445
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 447
    goto/16 :goto_0

    .line 435
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 436
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setDisplayWhiteBalanceEnabled(Z)Z

    move-result v3

    .line 438
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 440
    goto/16 :goto_0

    .line 427
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isDisplayWhiteBalanceEnabled()Z

    move-result v2

    .line 428
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 430
    goto/16 :goto_0

    .line 419
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 420
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setColorMode(I)V

    .line 422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    goto/16 :goto_0

    .line 411
    .end local v2    # "_arg0":I
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getColorMode()I

    move-result v2

    .line 412
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    goto/16 :goto_0

    .line 402
    .end local v2    # "_result":I
    :pswitch_a
    sget-object v2, Landroid/hardware/display/Time;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/Time;

    .line 403
    .local v2, "_arg0":Landroid/hardware/display/Time;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayCustomEndTime(Landroid/hardware/display/Time;)Z

    move-result v3

    .line 405
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 407
    goto/16 :goto_0

    .line 394
    .end local v2    # "_arg0":Landroid/hardware/display/Time;
    .end local v3    # "_result":Z
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayCustomEndTime()Landroid/hardware/display/Time;

    move-result-object v2

    .line 395
    .local v2, "_result":Landroid/hardware/display/Time;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 397
    goto/16 :goto_0

    .line 385
    .end local v2    # "_result":Landroid/hardware/display/Time;
    :pswitch_c
    sget-object v2, Landroid/hardware/display/Time;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/Time;

    .line 386
    .local v2, "_arg0":Landroid/hardware/display/Time;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayCustomStartTime(Landroid/hardware/display/Time;)Z

    move-result v3

    .line 388
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 390
    goto/16 :goto_0

    .line 377
    .end local v2    # "_arg0":Landroid/hardware/display/Time;
    .end local v3    # "_result":Z
    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayCustomStartTime()Landroid/hardware/display/Time;

    move-result-object v2

    .line 378
    .local v2, "_result":Landroid/hardware/display/Time;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 380
    goto/16 :goto_0

    .line 368
    .end local v2    # "_result":Landroid/hardware/display/Time;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 369
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayAutoMode(I)Z

    move-result v3

    .line 371
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 373
    goto/16 :goto_0

    .line 360
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_f
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayAutoModeRaw()I

    move-result v2

    .line 361
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    goto/16 :goto_0

    .line 353
    .end local v2    # "_result":I
    :pswitch_10
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayAutoMode()I

    move-result v2

    .line 354
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    goto/16 :goto_0

    .line 344
    .end local v2    # "_result":I
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 345
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayColorTemperature(I)Z

    move-result v3

    .line 347
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 349
    goto/16 :goto_0

    .line 336
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_12
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getNightDisplayColorTemperature()I

    move-result v2

    .line 337
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    goto :goto_0

    .line 327
    .end local v2    # "_result":I
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 328
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setNightDisplayActivated(Z)Z

    move-result v3

    .line 330
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 332
    goto :goto_0

    .line 319
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_14
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isNightDisplayActivated()Z

    move-result v2

    .line 320
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 322
    goto :goto_0

    .line 312
    .end local v2    # "_result":Z
    :pswitch_15
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->getTransformCapabilities()I

    move-result v2

    .line 313
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    goto :goto_0

    .line 305
    .end local v2    # "_result":I
    :pswitch_16
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isSaturationActivated()Z

    move-result v2

    .line 306
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 308
    goto :goto_0

    .line 294
    .end local v2    # "_result":Z
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 297
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, v2, v3}, Landroid/hardware/display/IColorDisplayManager$Stub;->setAppSaturationLevel(Ljava/lang/String;I)Z

    move-result v4

    .line 299
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 301
    goto :goto_0

    .line 284
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 285
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2}, Landroid/hardware/display/IColorDisplayManager$Stub;->setSaturationLevel(I)Z

    move-result v3

    .line 287
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 289
    goto :goto_0

    .line 276
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_19
    invoke-virtual {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;->isDeviceColorManaged()Z

    move-result v2

    .line 277
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 279
    nop

    .line 488
    .end local v2    # "_result":Z
    :goto_0
    return v1

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
