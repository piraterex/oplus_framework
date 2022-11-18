.class public Landroid/media/audio/common/AidlConversion;
.super Ljava/lang/Object;
.source "AidlConversion.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist aidl2api_AudioChannelLayoutBitMask_AudioFormatChannelMask(IZ)I
    .locals 4
    .param p0, "aidlBitMask"    # I
    .param p1, "isInput"    # Z

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "apiMask":I
    const/high16 v1, -0x80000000

    .local v1, "bit":I
    :goto_0
    if-eqz v1, :cond_1

    .line 241
    and-int v2, p0, v1

    if-ne v2, v1, :cond_0

    .line 242
    invoke-static {v1, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioChannelLayoutBit_AudioFormatChannel(IZ)I

    move-result v2

    .line 243
    .local v2, "apiBit":I
    if-eqz v2, :cond_1

    .line 244
    or-int/2addr v0, v2

    .line 245
    not-int v3, v1

    and-int/2addr p0, v3

    .line 246
    if-nez p0, :cond_0

    .line 247
    return v0

    .line 240
    .end local v2    # "apiBit":I
    :cond_0
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    .end local v1    # "bit":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static blacklist aidl2api_AudioChannelLayoutBit_AudioFormatChannel(IZ)I
    .locals 10
    .param p0, "aidlBit"    # I
    .param p1, "isInput"    # Z

    .line 142
    const/4 v0, 0x0

    const/high16 v1, 0x400000

    const/high16 v2, 0x200000

    const/high16 v3, 0x100000

    const/high16 v4, 0x40000

    const/high16 v5, 0x20000

    const/high16 v6, 0x10000

    const/16 v7, 0x20

    const/16 v8, 0x8

    const/4 v9, 0x4

    if-eqz p1, :cond_0

    .line 143
    sparse-switch p0, :sswitch_data_0

    .line 167
    return v0

    .line 165
    :sswitch_0
    return v1

    .line 163
    :sswitch_1
    return v2

    .line 151
    :sswitch_2
    return v7

    .line 159
    :sswitch_3
    return v5

    .line 157
    :sswitch_4
    return v6

    .line 161
    :sswitch_5
    return v3

    .line 149
    :sswitch_6
    return v4

    .line 147
    :sswitch_7
    return v8

    .line 145
    :sswitch_8
    return v9

    .line 170
    :cond_0
    sparse-switch p0, :sswitch_data_1

    .line 228
    return v0

    .line 224
    :sswitch_9
    const/high16 v0, 0x20000000

    return v0

    .line 226
    :sswitch_a
    const/high16 v0, 0x10000000

    return v0

    .line 222
    :sswitch_b
    const/high16 v0, 0x8000000

    return v0

    .line 220
    :sswitch_c
    const/high16 v0, 0x4000000

    return v0

    .line 218
    :sswitch_d
    const/high16 v0, 0x2000000

    return v0

    .line 216
    :sswitch_e
    const/high16 v0, 0x1000000

    return v0

    .line 214
    :sswitch_f
    const/high16 v0, 0x800000

    return v0

    .line 212
    :sswitch_10
    return v1

    .line 210
    :sswitch_11
    return v2

    .line 208
    :sswitch_12
    return v3

    .line 206
    :sswitch_13
    const/high16 v0, 0x80000

    return v0

    .line 204
    :sswitch_14
    return v4

    .line 202
    :sswitch_15
    return v5

    .line 200
    :sswitch_16
    return v6

    .line 198
    :sswitch_17
    const v0, 0x8000

    return v0

    .line 196
    :sswitch_18
    const/16 v0, 0x4000

    return v0

    .line 194
    :sswitch_19
    const/16 v0, 0x2000

    return v0

    .line 192
    :sswitch_1a
    const/16 v0, 0x1000

    return v0

    .line 190
    :sswitch_1b
    const/16 v0, 0x800

    return v0

    .line 188
    :sswitch_1c
    const/16 v0, 0x400

    return v0

    .line 186
    :sswitch_1d
    const/16 v0, 0x200

    return v0

    .line 184
    :sswitch_1e
    const/16 v0, 0x100

    return v0

    .line 182
    :sswitch_1f
    const/16 v0, 0x80

    return v0

    .line 180
    :sswitch_20
    const/16 v0, 0x40

    return v0

    .line 178
    :sswitch_21
    return v7

    .line 176
    :sswitch_22
    const/16 v0, 0x10

    return v0

    .line 174
    :sswitch_23
    return v8

    .line 172
    :sswitch_24
    return v9

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_7
        0x4 -> :sswitch_6
        0x8 -> :sswitch_5
        0x10 -> :sswitch_4
        0x20 -> :sswitch_3
        0x100 -> :sswitch_2
        0x40000 -> :sswitch_1
        0x80000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_24
        0x2 -> :sswitch_23
        0x4 -> :sswitch_22
        0x8 -> :sswitch_21
        0x10 -> :sswitch_20
        0x20 -> :sswitch_1f
        0x40 -> :sswitch_1e
        0x80 -> :sswitch_1d
        0x100 -> :sswitch_1c
        0x200 -> :sswitch_1b
        0x400 -> :sswitch_1a
        0x800 -> :sswitch_19
        0x1000 -> :sswitch_18
        0x2000 -> :sswitch_17
        0x4000 -> :sswitch_16
        0x8000 -> :sswitch_15
        0x10000 -> :sswitch_14
        0x20000 -> :sswitch_13
        0x40000 -> :sswitch_12
        0x80000 -> :sswitch_11
        0x100000 -> :sswitch_10
        0x200000 -> :sswitch_f
        0x400000 -> :sswitch_e
        0x800000 -> :sswitch_d
        0x1000000 -> :sswitch_c
        0x2000000 -> :sswitch_b
        0x20000000 -> :sswitch_a
        0x40000000 -> :sswitch_9
    .end sparse-switch
.end method

.method public static blacklist aidl2api_AudioChannelLayout_AudioFormatChannelMask(Landroid/media/audio/common/AudioChannelLayout;Z)I
    .locals 2
    .param p0, "aidlMask"    # Landroid/media/audio/common/AudioChannelLayout;
    .param p1, "isInput"    # Z

    .line 260
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getTag()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 424
    return v1

    .line 406
    :pswitch_0
    if-eqz p1, :cond_0

    .line 407
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getVoiceMask()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 417
    :sswitch_0
    const v0, 0xc010

    return v0

    .line 414
    :sswitch_1
    const v0, 0x8010

    return v0

    .line 411
    :sswitch_2
    const/16 v0, 0x4010

    return v0

    .line 422
    :cond_0
    :goto_0
    return v1

    .line 273
    :pswitch_1
    const/16 v0, 0xc

    if-eqz p1, :cond_1

    .line 274
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getLayoutMask()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    .line 290
    goto/16 :goto_1

    .line 288
    :sswitch_3
    const v0, 0x74000c

    return v0

    .line 284
    :sswitch_4
    const v0, 0x70000c

    return v0

    .line 286
    :sswitch_5
    const v0, 0x64000c

    return v0

    .line 282
    :sswitch_6
    const v0, 0x60000c

    return v0

    .line 280
    :sswitch_7
    const/16 v0, 0x30

    return v0

    .line 290
    :sswitch_8
    const v0, 0x1700fc

    return v0

    .line 278
    :sswitch_9
    return v0

    .line 276
    :sswitch_a
    const/16 v0, 0x10

    return v0

    .line 294
    :cond_1
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getLayoutMask()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    goto :goto_1

    .line 393
    :sswitch_b
    const v0, 0x3000000c

    return v0

    .line 389
    :sswitch_c
    const v0, 0x30000004

    return v0

    .line 386
    :sswitch_d
    const/high16 v0, 0x30000000

    return v0

    .line 383
    :sswitch_e
    const v0, 0x2000000c

    return v0

    .line 380
    :sswitch_f
    const v0, 0x20000004

    return v0

    .line 374
    :sswitch_10
    const v0, 0xc3b58fc

    return v0

    .line 372
    :sswitch_11
    const v0, 0xc0b58fc

    return v0

    .line 378
    :sswitch_12
    const v0, 0x3fffffc

    return v0

    .line 376
    :sswitch_13
    const v0, 0x1cbd81c

    return v0

    .line 368
    :sswitch_14
    const v0, 0x3018fc

    return v0

    .line 354
    :sswitch_15
    const v0, 0x3000fc

    return v0

    .line 334
    :sswitch_16
    const v0, 0x30003c

    return v0

    .line 322
    :sswitch_17
    const v0, 0x30002c

    return v0

    .line 328
    :sswitch_18
    const v0, 0x30001c

    return v0

    .line 317
    :sswitch_19
    const v0, 0x30000c

    return v0

    .line 370
    :sswitch_1a
    const v0, 0xb58fc

    return v0

    .line 356
    :sswitch_1b
    const v0, 0xb40fc

    return v0

    .line 366
    :sswitch_1c
    const/16 v0, 0x18fc

    return v0

    .line 352
    :sswitch_1d
    const/16 v0, 0x183c

    return v0

    .line 343
    :sswitch_1e
    const/16 v0, 0x180c

    return v0

    .line 358
    :sswitch_1f
    const/16 v0, 0x4fc

    return v0

    .line 345
    :sswitch_20
    const/16 v0, 0x41c

    return v0

    .line 397
    :sswitch_21
    const/16 v0, 0x410

    return v0

    .line 308
    :sswitch_22
    const/16 v0, 0x40c

    return v0

    .line 350
    :sswitch_23
    const/16 v0, 0xfc

    return v0

    .line 347
    :sswitch_24
    const/16 v0, 0xdc

    return v0

    .line 341
    :sswitch_25
    const/16 v0, 0xcc

    return v0

    .line 312
    :sswitch_26
    const/16 v0, 0x3c

    return v0

    .line 300
    :sswitch_27
    const/16 v0, 0x2c

    return v0

    .line 304
    :sswitch_28
    const/16 v0, 0x1c

    return v0

    .line 298
    :sswitch_29
    return v0

    .line 296
    :sswitch_2a
    const/4 v0, 0x4

    return v0

    .line 403
    :goto_1
    nop

    .line 404
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getLayoutMask()I

    move-result v0

    .line 403
    invoke-static {v0, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioChannelLayoutBitMask_AudioFormatChannelMask(IZ)I

    move-result v0

    return v0

    .line 271
    :pswitch_2
    invoke-virtual {p0}, Landroid/media/audio/common/AudioChannelLayout;->getIndexMask()I

    move-result v0

    return v0

    .line 264
    :pswitch_3
    return v1

    .line 262
    :pswitch_4
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4000 -> :sswitch_2
        0x8000 -> :sswitch_1
        0xc000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_a
        0x3 -> :sswitch_9
        0x3f -> :sswitch_8
        0x104 -> :sswitch_7
        0xc0003 -> :sswitch_6
        0xc0007 -> :sswitch_5
        0xc000b -> :sswitch_4
        0xc000f -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_2a
        0x3 -> :sswitch_29
        0x7 -> :sswitch_28
        0xb -> :sswitch_27
        0xf -> :sswitch_26
        0x33 -> :sswitch_25
        0x37 -> :sswitch_24
        0x3f -> :sswitch_23
        0x103 -> :sswitch_22
        0x104 -> :sswitch_21
        0x107 -> :sswitch_20
        0x13f -> :sswitch_1f
        0x603 -> :sswitch_1e
        0x60f -> :sswitch_1d
        0x63f -> :sswitch_1c
        0x2d03f -> :sswitch_1b
        0x2d63f -> :sswitch_1a
        0xc0003 -> :sswitch_19
        0xc0007 -> :sswitch_18
        0xc000b -> :sswitch_17
        0xc000f -> :sswitch_16
        0xc003f -> :sswitch_15
        0xc063f -> :sswitch_14
        0x72f607 -> :sswitch_13
        0xffffff -> :sswitch_12
        0x302d63f -> :sswitch_11
        0x30ed63f -> :sswitch_10
        0x40000001 -> :sswitch_f
        0x40000003 -> :sswitch_e
        0x60000000 -> :sswitch_d
        0x60000001 -> :sswitch_c
        0x60000003 -> :sswitch_b
    .end sparse-switch
.end method

.method public static blacklist aidl2api_AudioConfigBase_AudioFormat(Landroid/media/audio/common/AudioConfigBase;Z)Landroid/media/AudioFormat;
    .locals 3
    .param p0, "aidl"    # Landroid/media/audio/common/AudioConfigBase;
    .param p1, "isInput"    # Z

    .line 438
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 439
    .local v0, "apiBuilder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/audio/common/AudioConfigBase;->sampleRate:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 440
    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-virtual {v1}, Landroid/media/audio/common/AudioChannelLayout;->getTag()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 441
    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {v1, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioChannelLayout_AudioFormatChannelMask(Landroid/media/audio/common/AudioChannelLayout;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    goto :goto_0

    .line 444
    :cond_0
    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->channelMask:Landroid/media/audio/common/AudioChannelLayout;

    invoke-static {v1, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioChannelLayout_AudioFormatChannelMask(Landroid/media/audio/common/AudioChannelLayout;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    .line 447
    :goto_0
    iget-object v1, p0, Landroid/media/audio/common/AudioConfigBase;->format:Landroid/media/audio/common/AudioFormatDescription;

    invoke-static {v1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioFormat_AudioFormatEncoding(Landroid/media/audio/common/AudioFormatDescription;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 448
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist aidl2api_AudioConfig_AudioFormat(Landroid/media/audio/common/AudioConfig;Z)Landroid/media/AudioFormat;
    .locals 1
    .param p0, "aidl"    # Landroid/media/audio/common/AudioConfig;
    .param p1, "isInput"    # Z

    .line 432
    iget-object v0, p0, Landroid/media/audio/common/AudioConfig;->base:Landroid/media/audio/common/AudioConfigBase;

    invoke-static {v0, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioConfigBase_AudioFormat(Landroid/media/audio/common/AudioConfigBase;Z)Landroid/media/AudioFormat;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist aidl2api_AudioEncapsulationType_AudioProfileEncapsulationType(I)I
    .locals 1
    .param p0, "type"    # I

    .line 635
    packed-switch p0, :pswitch_data_0

    .line 640
    const/4 v0, 0x0

    return v0

    .line 637
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist aidl2api_AudioFormat_AudioFormatEncoding(Landroid/media/audio/common/AudioFormatDescription;)I
    .locals 4
    .param p0, "aidl"    # Landroid/media/audio/common/AudioFormatDescription;

    .line 454
    iget-byte v0, p0, Landroid/media/audio/common/AudioFormatDescription;->type:B

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 529
    return v1

    .line 456
    :pswitch_0
    iget-byte v0, p0, Landroid/media/audio/common/AudioFormatDescription;->pcm:B

    packed-switch v0, :pswitch_data_1

    .line 469
    return v1

    .line 467
    :pswitch_1
    const/16 v0, 0x15

    return v0

    .line 465
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 462
    :pswitch_3
    const/16 v0, 0x16

    return v0

    .line 460
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 458
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 472
    :pswitch_6
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 473
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v3, "audio/ac3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    const/4 v0, 0x5

    return v0

    .line 475
    :cond_0
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v3, "audio/eac3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    const/4 v0, 0x6

    return v0

    .line 477
    :cond_1
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v3, "audio/vnd.dts"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    const/4 v0, 0x7

    return v0

    .line 479
    :cond_2
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v3, "audio/vnd.dts.hd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    const/16 v0, 0x8

    return v0

    .line 481
    :cond_3
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v3, "audio/mpeg"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 482
    const/16 v0, 0x9

    return v0

    .line 483
    :cond_4
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v3, "audio/mp4a.40.02"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 484
    const/16 v0, 0xa

    return v0

    .line 485
    :cond_5
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v3, "audio/mp4a.40.05"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 486
    const/16 v0, 0xb

    return v0

    .line 487
    :cond_6
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v3, "audio/mp4a.40.29"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 488
    const/16 v0, 0xc

    return v0

    .line 489
    :cond_7
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v3, "audio/x-iec61937"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-byte v0, p0, Landroid/media/audio/common/AudioFormatDescription;->pcm:B

    if-ne v0, v2, :cond_8

    .line 491
    const/16 v0, 0xd

    return v0

    .line 492
    :cond_8
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/vnd.dolby.mlp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 494
    const/16 v0, 0xe

    return v0

    .line 495
    :cond_9
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/mp4a.40.39"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 496
    const/16 v0, 0xf

    return v0

    .line 497
    :cond_a
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/mp4a.40.42"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 498
    const/16 v0, 0x10

    return v0

    .line 499
    :cond_b
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/ac4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 500
    const/16 v0, 0x11

    return v0

    .line 501
    :cond_c
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/eac3-joc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 502
    const/16 v0, 0x12

    return v0

    .line 503
    :cond_d
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/vnd.dolby.mat"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    .line 504
    const-string v2, "audio/vnd.dolby.mat."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_0

    .line 507
    :cond_e
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/opus"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 508
    const/16 v0, 0x14

    return v0

    .line 509
    :cond_f
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/mhm1.03"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 510
    const/16 v0, 0x17

    return v0

    .line 511
    :cond_10
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/mhm1.04"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 512
    const/16 v0, 0x18

    return v0

    .line 513
    :cond_11
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/mhm1.0d"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 514
    const/16 v0, 0x19

    return v0

    .line 515
    :cond_12
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/mhm1.0e"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 516
    const/16 v0, 0x1a

    return v0

    .line 517
    :cond_13
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/vnd.dts.uhd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 518
    const/16 v0, 0x1b

    return v0

    .line 519
    :cond_14
    iget-object v0, p0, Landroid/media/audio/common/AudioFormatDescription;->encoding:Ljava/lang/String;

    const-string v2, "audio/vnd.dra"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 520
    const/16 v0, 0x1c

    return v0

    .line 522
    :cond_15
    return v1

    .line 506
    :cond_16
    :goto_0
    const/16 v0, 0x13

    return v0

    .line 525
    :cond_17
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist aidl2api_AudioStandard_AudioDescriptorStandard(I)I
    .locals 1
    .param p0, "standard"    # I

    .line 605
    packed-switch p0, :pswitch_data_0

    .line 610
    const/4 v0, 0x0

    return v0

    .line 607
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist aidl2api_ExtraAudioDescriptor_AudioDescriptor(Landroid/media/audio/common/ExtraAudioDescriptor;)Landroid/media/AudioDescriptor;
    .locals 4
    .param p0, "extraDescriptor"    # Landroid/media/audio/common/ExtraAudioDescriptor;

    .line 577
    new-instance v0, Landroid/media/AudioDescriptor;

    iget v1, p0, Landroid/media/audio/common/ExtraAudioDescriptor;->standard:I

    .line 578
    invoke-static {v1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioStandard_AudioDescriptorStandard(I)I

    move-result v1

    iget v2, p0, Landroid/media/audio/common/ExtraAudioDescriptor;->encapsulationType:I

    .line 579
    invoke-static {v2}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioEncapsulationType_AudioProfileEncapsulationType(I)I

    move-result v2

    iget-object v3, p0, Landroid/media/audio/common/ExtraAudioDescriptor;->audioDescriptor:[B

    invoke-direct {v0, v1, v2, v3}, Landroid/media/AudioDescriptor;-><init>(II[B)V

    .line 582
    .local v0, "descriptor":Landroid/media/AudioDescriptor;
    return-object v0
.end method

.method private static native blacklist aidl2legacy_AudioChannelLayout_Parcel_audio_channel_mask_t(Landroid/os/Parcel;Z)I
.end method

.method public static blacklist aidl2legacy_AudioChannelLayout_audio_channel_mask_t(Landroid/media/audio/common/AudioChannelLayout;Z)I
    .locals 2
    .param p0, "aidl"    # Landroid/media/audio/common/AudioChannelLayout;
    .param p1, "isInput"    # Z

    .line 64
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 65
    .local v0, "out":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/audio/common/AudioChannelLayout;->writeToParcel(Landroid/os/Parcel;I)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    :try_start_0
    invoke-static {v0, p1}, Landroid/media/audio/common/AidlConversion;->aidl2legacy_AudioChannelLayout_Parcel_audio_channel_mask_t(Landroid/os/Parcel;Z)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 68
    return v1

    .line 70
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 71
    throw v1
.end method

.method public static native blacklist aidl2legacy_AudioEncapsulationMode_audio_encapsulation_mode_t(I)I
.end method

.method private static native blacklist aidl2legacy_AudioFormatDescription_Parcel_audio_format_t(Landroid/os/Parcel;)I
.end method

.method public static blacklist aidl2legacy_AudioFormatDescription_audio_format_t(Landroid/media/audio/common/AudioFormatDescription;)I
    .locals 2
    .param p0, "aidl"    # Landroid/media/audio/common/AudioFormatDescription;

    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 93
    .local v0, "out":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/audio/common/AudioFormatDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    :try_start_0
    invoke-static {v0}, Landroid/media/audio/common/AidlConversion;->aidl2legacy_AudioFormatDescription_Parcel_audio_format_t(Landroid/os/Parcel;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 96
    return v1

    .line 98
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 99
    throw v1
.end method

.method public static native blacklist aidl2legacy_AudioStreamType_audio_stream_type_t(I)I
.end method

.method public static native blacklist aidl2legacy_AudioUsage_audio_usage_t(I)I
.end method

.method public static blacklist api2aidl_AudioDescriptorStandard_AudioStandard(I)I
    .locals 1
    .param p0, "standard"    # I

    .line 591
    packed-switch p0, :pswitch_data_0

    .line 596
    const/4 v0, 0x0

    return v0

    .line 593
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist api2aidl_AudioDescriptor_ExtraAudioDescriptor(Landroid/media/AudioDescriptor;)Landroid/media/audio/common/ExtraAudioDescriptor;
    .locals 2
    .param p0, "descriptor"    # Landroid/media/AudioDescriptor;

    .line 562
    new-instance v0, Landroid/media/audio/common/ExtraAudioDescriptor;

    invoke-direct {v0}, Landroid/media/audio/common/ExtraAudioDescriptor;-><init>()V

    .line 563
    .local v0, "extraDescriptor":Landroid/media/audio/common/ExtraAudioDescriptor;
    nop

    .line 564
    invoke-virtual {p0}, Landroid/media/AudioDescriptor;->getStandard()I

    move-result v1

    invoke-static {v1}, Landroid/media/audio/common/AidlConversion;->api2aidl_AudioDescriptorStandard_AudioStandard(I)I

    move-result v1

    iput v1, v0, Landroid/media/audio/common/ExtraAudioDescriptor;->standard:I

    .line 565
    invoke-virtual {p0}, Landroid/media/AudioDescriptor;->getDescriptor()[B

    move-result-object v1

    iput-object v1, v0, Landroid/media/audio/common/ExtraAudioDescriptor;->audioDescriptor:[B

    .line 566
    nop

    .line 568
    invoke-virtual {p0}, Landroid/media/AudioDescriptor;->getEncapsulationType()I

    move-result v1

    .line 567
    invoke-static {v1}, Landroid/media/audio/common/AidlConversion;->api2aidl_AudioProfileEncapsulationType_AudioEncapsulationType(I)I

    move-result v1

    iput v1, v0, Landroid/media/audio/common/ExtraAudioDescriptor;->encapsulationType:I

    .line 569
    return-object v0
.end method

.method public static blacklist api2aidl_AudioDeviceAttributes_AudioPort(Landroid/media/AudioDeviceAttributes;)Landroid/media/audio/common/AudioPort;
    .locals 4
    .param p0, "attributes"    # Landroid/media/AudioDeviceAttributes;

    .line 538
    new-instance v0, Landroid/media/audio/common/AudioPort;

    invoke-direct {v0}, Landroid/media/audio/common/AudioPort;-><init>()V

    .line 539
    .local v0, "port":Landroid/media/audio/common/AudioPort;
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/audio/common/AudioPort;->name:Ljava/lang/String;

    .line 541
    const/4 v1, 0x0

    new-array v2, v1, [Landroid/media/audio/common/AudioProfile;

    iput-object v2, v0, Landroid/media/audio/common/AudioPort;->profiles:[Landroid/media/audio/common/AudioProfile;

    .line 542
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getAudioDescriptors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/audio/common/AidlConversion$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/media/audio/common/AidlConversion$$ExternalSyntheticLambda0;-><init>()V

    .line 543
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 544
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v3, Landroid/media/audio/common/AidlConversion$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/media/audio/common/AidlConversion$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/ExtraAudioDescriptor;

    iput-object v2, v0, Landroid/media/audio/common/AudioPort;->extraAudioDescriptors:[Landroid/media/audio/common/ExtraAudioDescriptor;

    .line 545
    new-instance v2, Landroid/media/audio/common/AudioIoFlags;

    invoke-direct {v2}, Landroid/media/audio/common/AudioIoFlags;-><init>()V

    iput-object v2, v0, Landroid/media/audio/common/AudioPort;->flags:Landroid/media/audio/common/AudioIoFlags;

    .line 546
    new-array v2, v1, [Landroid/media/audio/common/AudioGain;

    iput-object v2, v0, Landroid/media/audio/common/AudioPort;->gains:[Landroid/media/audio/common/AudioGain;

    .line 547
    new-instance v2, Landroid/media/audio/common/AudioPortDeviceExt;

    invoke-direct {v2}, Landroid/media/audio/common/AudioPortDeviceExt;-><init>()V

    .line 548
    .local v2, "deviceExt":Landroid/media/audio/common/AudioPortDeviceExt;
    new-instance v3, Landroid/media/audio/common/AudioDevice;

    invoke-direct {v3}, Landroid/media/audio/common/AudioDevice;-><init>()V

    iput-object v3, v2, Landroid/media/audio/common/AudioPortDeviceExt;->device:Landroid/media/audio/common/AudioDevice;

    .line 549
    new-array v1, v1, [Landroid/media/audio/common/AudioFormatDescription;

    iput-object v1, v2, Landroid/media/audio/common/AudioPortDeviceExt;->encodedFormats:[Landroid/media/audio/common/AudioFormatDescription;

    .line 550
    iget-object v1, v2, Landroid/media/audio/common/AudioPortDeviceExt;->device:Landroid/media/audio/common/AudioDevice;

    .line 551
    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v3

    invoke-static {v3}, Landroid/media/audio/common/AidlConversion;->api2aidl_NativeType_AudioDeviceDescription(I)Landroid/media/audio/common/AudioDeviceDescription;

    move-result-object v3

    iput-object v3, v1, Landroid/media/audio/common/AudioDevice;->type:Landroid/media/audio/common/AudioDeviceDescription;

    .line 552
    iget-object v1, v2, Landroid/media/audio/common/AudioPortDeviceExt;->device:Landroid/media/audio/common/AudioDevice;

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audio/common/AudioDeviceAddress;->id(Ljava/lang/String;)Landroid/media/audio/common/AudioDeviceAddress;

    move-result-object v3

    iput-object v3, v1, Landroid/media/audio/common/AudioDevice;->address:Landroid/media/audio/common/AudioDeviceAddress;

    .line 553
    invoke-static {v2}, Landroid/media/audio/common/AudioPortExt;->device(Landroid/media/audio/common/AudioPortDeviceExt;)Landroid/media/audio/common/AudioPortExt;

    move-result-object v1

    iput-object v1, v0, Landroid/media/audio/common/AudioPort;->ext:Landroid/media/audio/common/AudioPortExt;

    .line 554
    return-object v0
.end method

.method public static blacklist api2aidl_AudioProfileEncapsulationType_AudioEncapsulationType(I)I
    .locals 1
    .param p0, "type"    # I

    .line 620
    packed-switch p0, :pswitch_data_0

    .line 625
    const/4 v0, 0x0

    return v0

    .line 622
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist api2aidl_NativeType_AudioDeviceDescription(I)Landroid/media/audio/common/AudioDeviceDescription;
    .locals 16
    .param p0, "nativeType"    # I

    .line 649
    new-instance v0, Landroid/media/audio/common/AudioDeviceDescription;

    invoke-direct {v0}, Landroid/media/audio/common/AudioDeviceDescription;-><init>()V

    .line 650
    .local v0, "aidl":Landroid/media/audio/common/AudioDeviceDescription;
    const-string v1, ""

    iput-object v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 651
    const-string v3, "hdmi-earc"

    const-string v4, "hdmi-arc"

    const-string v5, "bus"

    const-string v6, "ip-v4"

    const-string v7, "spdif"

    const-string v9, "hdmi"

    const/16 v10, 0x8c

    const/16 v11, 0x89

    const-string v12, "bt-a2dp"

    const-string v13, "bt-sco"

    const-string v15, "bt-le"

    const-string v8, "analog"

    const-string/jumbo v14, "usb"

    const/16 v2, 0x85

    const/4 v1, 0x4

    sparse-switch p0, :sswitch_data_0

    .line 877
    const/4 v1, 0x0

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    goto/16 :goto_0

    .line 874
    :sswitch_0
    const/16 v1, 0x81

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 875
    goto/16 :goto_0

    .line 699
    :sswitch_1
    const/16 v1, 0x92

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 700
    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 701
    goto/16 :goto_0

    .line 695
    :sswitch_2
    iput v10, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 696
    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 697
    goto/16 :goto_0

    .line 867
    :sswitch_3
    iput v11, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 868
    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 869
    goto/16 :goto_0

    .line 692
    :sswitch_4
    const/16 v1, 0x86

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 693
    goto/16 :goto_0

    .line 688
    :sswitch_5
    const/16 v1, 0x8a

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 689
    const-string/jumbo v1, "wireless"

    iput-object v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 690
    goto/16 :goto_0

    .line 843
    :sswitch_6
    iput v11, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 844
    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 845
    goto/16 :goto_0

    .line 836
    :sswitch_7
    const/16 v1, 0x83

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 837
    goto/16 :goto_0

    .line 829
    :sswitch_8
    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 830
    iput-object v5, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 831
    goto/16 :goto_0

    .line 821
    :sswitch_9
    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 822
    iput-object v6, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 823
    goto/16 :goto_0

    .line 685
    :sswitch_a
    const/16 v1, 0x8e

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 686
    goto/16 :goto_0

    .line 682
    :sswitch_b
    const/16 v1, 0x8b

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 683
    goto/16 :goto_0

    .line 790
    :sswitch_c
    const/16 v1, 0x87

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 791
    goto/16 :goto_0

    .line 805
    :sswitch_d
    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 806
    iput-object v7, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 807
    goto/16 :goto_0

    .line 859
    :sswitch_e
    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 860
    iput-object v3, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 861
    goto/16 :goto_0

    .line 851
    :sswitch_f
    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 852
    iput-object v4, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 853
    goto/16 :goto_0

    .line 797
    :sswitch_10
    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 798
    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 799
    goto/16 :goto_0

    .line 679
    :sswitch_11
    const/16 v1, 0x90

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 680
    goto/16 :goto_0

    .line 752
    :sswitch_12
    const/16 v1, 0x8f

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 753
    goto/16 :goto_0

    .line 783
    :sswitch_13
    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 784
    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 785
    goto/16 :goto_0

    .line 775
    :sswitch_14
    const/16 v1, 0x82

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 776
    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 777
    goto/16 :goto_0

    .line 767
    :sswitch_15
    const/16 v1, 0x91

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 768
    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 769
    goto/16 :goto_0

    .line 759
    :sswitch_16
    const/16 v1, 0x91

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 760
    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 761
    goto/16 :goto_0

    .line 745
    :sswitch_17
    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 746
    iput-object v9, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 747
    goto/16 :goto_0

    .line 675
    :sswitch_18
    iput v10, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 676
    iput-object v12, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 677
    goto/16 :goto_0

    .line 671
    :sswitch_19
    const/16 v1, 0x88

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 672
    iput-object v12, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 673
    goto/16 :goto_0

    .line 813
    :sswitch_1a
    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 814
    iput-object v12, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 815
    goto/16 :goto_0

    .line 667
    :sswitch_1b
    const/16 v1, 0x84

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 668
    iput-object v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 669
    goto/16 :goto_0

    .line 737
    :sswitch_1c
    iput v11, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 738
    iput-object v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 739
    goto/16 :goto_0

    .line 663
    :sswitch_1d
    iput v2, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 664
    iput-object v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 665
    goto/16 :goto_0

    .line 659
    :sswitch_1e
    const/16 v1, 0x88

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 660
    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 661
    goto/16 :goto_0

    .line 729
    :sswitch_1f
    iput v11, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 730
    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 731
    goto/16 :goto_0

    .line 656
    :sswitch_20
    iput v10, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 657
    goto/16 :goto_0

    .line 653
    :sswitch_21
    const/16 v1, 0x8d

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 654
    goto/16 :goto_0

    .line 871
    :sswitch_22
    const/4 v1, 0x1

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 872
    goto/16 :goto_0

    .line 863
    :sswitch_23
    const/4 v1, 0x7

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 864
    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 865
    goto/16 :goto_0

    .line 722
    :sswitch_24
    const/4 v1, 0x5

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 723
    goto/16 :goto_0

    .line 855
    :sswitch_25
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 856
    iput-object v3, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 857
    goto/16 :goto_0

    .line 847
    :sswitch_26
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 848
    iput-object v4, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 849
    goto/16 :goto_0

    .line 718
    :sswitch_27
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 719
    iput-object v15, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 720
    goto/16 :goto_0

    .line 839
    :sswitch_28
    const/4 v1, 0x7

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 840
    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 841
    goto/16 :goto_0

    .line 833
    :sswitch_29
    const/4 v1, 0x3

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 834
    goto/16 :goto_0

    .line 825
    :sswitch_2a
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 826
    iput-object v5, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 827
    goto/16 :goto_0

    .line 817
    :sswitch_2b
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 818
    iput-object v6, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 819
    goto :goto_0

    .line 715
    :sswitch_2c
    const/16 v1, 0x8

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 716
    goto :goto_0

    .line 809
    :sswitch_2d
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 810
    iput-object v12, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 811
    goto :goto_0

    .line 801
    :sswitch_2e
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 802
    iput-object v7, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 803
    goto :goto_0

    .line 793
    :sswitch_2f
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 794
    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 795
    goto :goto_0

    .line 712
    :sswitch_30
    const/16 v1, 0xd

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 713
    goto :goto_0

    .line 787
    :sswitch_31
    const/4 v1, 0x6

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 788
    goto :goto_0

    .line 779
    :sswitch_32
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 780
    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 781
    goto :goto_0

    .line 771
    :sswitch_33
    const/4 v1, 0x2

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 772
    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 773
    goto :goto_0

    .line 763
    :sswitch_34
    const/16 v1, 0xe

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 764
    iput-object v14, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 765
    goto :goto_0

    .line 755
    :sswitch_35
    const/16 v1, 0xe

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 756
    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 757
    goto :goto_0

    .line 749
    :sswitch_36
    const/16 v1, 0xb

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 750
    goto :goto_0

    .line 706
    :sswitch_37
    const/16 v1, 0xa

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 707
    goto :goto_0

    .line 709
    :sswitch_38
    const/16 v1, 0xc

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 710
    goto :goto_0

    .line 741
    :sswitch_39
    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 742
    iput-object v9, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 743
    goto :goto_0

    .line 725
    :sswitch_3a
    const/4 v1, 0x7

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 726
    iput-object v8, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 727
    goto :goto_0

    .line 733
    :sswitch_3b
    const/4 v1, 0x7

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 734
    iput-object v13, v0, Landroid/media/audio/common/AudioDeviceDescription;->connection:Ljava/lang/String;

    .line 735
    goto :goto_0

    .line 703
    :sswitch_3c
    const/16 v1, 0x9

    iput v1, v0, Landroid/media/audio/common/AudioDeviceDescription;->type:I

    .line 704
    nop

    .line 879
    :goto_0
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7ffffffc -> :sswitch_3c
        -0x7ffffff8 -> :sswitch_3b
        -0x7ffffff0 -> :sswitch_3a
        -0x7fffffe0 -> :sswitch_39
        -0x7fffffc0 -> :sswitch_38
        -0x7fffff80 -> :sswitch_37
        -0x7fffff00 -> :sswitch_36
        -0x7ffffe00 -> :sswitch_35
        -0x7ffffc00 -> :sswitch_34
        -0x7ffff800 -> :sswitch_33
        -0x7ffff000 -> :sswitch_32
        -0x7fffe000 -> :sswitch_31
        -0x7fffc000 -> :sswitch_30
        -0x7fff8000 -> :sswitch_2f
        -0x7fff0000 -> :sswitch_2e
        -0x7ffe0000 -> :sswitch_2d
        -0x7ffc0000 -> :sswitch_2c
        -0x7ff80000 -> :sswitch_2b
        -0x7ff00000 -> :sswitch_2a
        -0x7f000000 -> :sswitch_29
        -0x7e000000 -> :sswitch_28
        -0x7c000000 -> :sswitch_27
        -0x78000000 -> :sswitch_26
        -0x77ffffff -> :sswitch_25
        -0x70000000 -> :sswitch_24
        -0x60000000 -> :sswitch_23
        -0x40000000 -> :sswitch_22
        0x1 -> :sswitch_21
        0x2 -> :sswitch_20
        0x4 -> :sswitch_1f
        0x8 -> :sswitch_1e
        0x10 -> :sswitch_1d
        0x20 -> :sswitch_1c
        0x40 -> :sswitch_1b
        0x80 -> :sswitch_1a
        0x100 -> :sswitch_19
        0x200 -> :sswitch_18
        0x400 -> :sswitch_17
        0x800 -> :sswitch_16
        0x1000 -> :sswitch_15
        0x2000 -> :sswitch_14
        0x4000 -> :sswitch_13
        0x8000 -> :sswitch_12
        0x10000 -> :sswitch_11
        0x20000 -> :sswitch_10
        0x40000 -> :sswitch_f
        0x40001 -> :sswitch_e
        0x80000 -> :sswitch_d
        0x100000 -> :sswitch_c
        0x200000 -> :sswitch_b
        0x400000 -> :sswitch_a
        0x800000 -> :sswitch_9
        0x1000000 -> :sswitch_8
        0x2000000 -> :sswitch_7
        0x4000000 -> :sswitch_6
        0x8000000 -> :sswitch_5
        0x10000000 -> :sswitch_4
        0x20000000 -> :sswitch_3
        0x20000001 -> :sswitch_2
        0x20000002 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic blacklist lambda$api2aidl_AudioDeviceAttributes_AudioPort$0(Landroid/media/AudioDescriptor;)Landroid/media/audio/common/ExtraAudioDescriptor;
    .locals 1
    .param p0, "descriptor"    # Landroid/media/AudioDescriptor;

    .line 543
    invoke-static {p0}, Landroid/media/audio/common/AidlConversion;->api2aidl_AudioDescriptor_ExtraAudioDescriptor(Landroid/media/AudioDescriptor;)Landroid/media/audio/common/ExtraAudioDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$api2aidl_AudioDeviceAttributes_AudioPort$1(I)[Landroid/media/audio/common/ExtraAudioDescriptor;
    .locals 1
    .param p0, "x$0"    # I

    .line 544
    new-array v0, p0, [Landroid/media/audio/common/ExtraAudioDescriptor;

    return-object v0
.end method

.method public static blacklist legacy2aidl_audio_channel_mask_t_AudioChannelLayout(IZ)Landroid/media/audio/common/AudioChannelLayout;
    .locals 4
    .param p0, "legacy"    # I
    .param p1, "isInput"    # Z

    .line 77
    invoke-static {p0, p1}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_channel_mask_t_AudioChannelLayout_Parcel(IZ)Landroid/os/Parcel;

    move-result-object v0

    .line 78
    .local v0, "in":Landroid/os/Parcel;
    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    sget-object v1, Landroid/media/audio/common/AudioChannelLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioChannelLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 80
    return-object v1

    .line 82
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 83
    throw v1

    .line 85
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert legacy audio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 86
    if-eqz p1, :cond_1

    const-string v3, "input"

    goto :goto_0

    :cond_1
    const-string v3, "output"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " audio_channel_mask_t "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native blacklist legacy2aidl_audio_channel_mask_t_AudioChannelLayout_Parcel(IZ)Landroid/os/Parcel;
.end method

.method public static native blacklist legacy2aidl_audio_encapsulation_mode_t_AudioEncapsulationMode(I)I
.end method

.method public static blacklist legacy2aidl_audio_format_t_AudioFormatDescription(I)Landroid/media/audio/common/AudioFormatDescription;
    .locals 4
    .param p0, "legacy"    # I

    .line 105
    invoke-static {p0}, Landroid/media/audio/common/AidlConversion;->legacy2aidl_audio_format_t_AudioFormatDescription_Parcel(I)Landroid/os/Parcel;

    move-result-object v0

    .line 106
    .local v0, "in":Landroid/os/Parcel;
    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    sget-object v1, Landroid/media/audio/common/AudioFormatDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audio/common/AudioFormatDescription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 108
    return-object v1

    .line 110
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 111
    throw v1

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert legacy audio_format_t value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static native blacklist legacy2aidl_audio_format_t_AudioFormatDescription_Parcel(I)Landroid/os/Parcel;
.end method

.method public static native blacklist legacy2aidl_audio_stream_type_t_AudioStreamType(I)I
.end method

.method public static native blacklist legacy2aidl_audio_usage_t_AudioUsage(I)I
.end method
