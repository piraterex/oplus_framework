.class Landroid/media/Cea708CCParser;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea708CCParser$CaptionWindow;,
        Landroid/media/Cea708CCParser$CaptionWindowAttr;,
        Landroid/media/Cea708CCParser$CaptionPenLocation;,
        Landroid/media/Cea708CCParser$CaptionPenColor;,
        Landroid/media/Cea708CCParser$CaptionPenAttr;,
        Landroid/media/Cea708CCParser$CaptionEvent;,
        Landroid/media/Cea708CCParser$CaptionColor;,
        Landroid/media/Cea708CCParser$Const;,
        Landroid/media/Cea708CCParser$DisplayListener;
    }
.end annotation


# static fields
.field public static final greylist-max-o CAPTION_EMIT_TYPE_BUFFER:I = 0x1

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_CLW:I = 0x4

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_CWX:I = 0x3

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_DFX:I = 0x10

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_DLC:I = 0xa

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_DLW:I = 0x8

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_DLY:I = 0x9

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_DSW:I = 0x5

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_HDW:I = 0x6

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_RST:I = 0xb

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_SPA:I = 0xc

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_SPC:I = 0xd

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_SPL:I = 0xe

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_SWA:I = 0xf

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_TGW:I = 0x7

.field public static final greylist-max-o CAPTION_EMIT_TYPE_CONTROL:I = 0x2

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o MUSIC_NOTE_CHAR:Ljava/lang/String;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Cea708CCParser"


# instance fields
.field private final greylist-max-o mBuffer:Ljava/lang/StringBuffer;

.field private greylist-max-o mCommand:I

.field private greylist-max-o mListener:Landroid/media/Cea708CCParser$DisplayListener;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 191
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 192
    const-string/jumbo v2, "\u266b"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v0, Landroid/media/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    .line 191
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/media/Cea708CCParser$DisplayListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/Cea708CCParser$DisplayListener;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    .line 198
    new-instance v0, Landroid/media/Cea708CCParser$1;

    invoke-direct {v0, p0}, Landroid/media/Cea708CCParser$1;-><init>(Landroid/media/Cea708CCParser;)V

    iput-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    .line 241
    if-eqz p1, :cond_0

    .line 242
    iput-object p1, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    .line 244
    :cond_0
    return-void
.end method

.method private greylist-max-o emitCaptionBuffer()V
    .locals 4

    .line 257
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 258
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Landroid/media/Cea708CCParser$DisplayListener;->emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 259
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 261
    :cond_0
    return-void
.end method

.method private greylist-max-o emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V
    .locals 1
    .param p1, "captionEvent"    # Landroid/media/Cea708CCParser$CaptionEvent;

    .line 252
    invoke-direct {p0}, Landroid/media/Cea708CCParser;->emitCaptionBuffer()V

    .line 253
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    invoke-interface {v0, p1}, Landroid/media/Cea708CCParser$DisplayListener;->emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 254
    return-void
.end method

.method private greylist-max-o parseC0([BI)I
    .locals 3
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 317
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_2

    .line 319
    if-ne v0, v1, :cond_1

    .line 323
    :try_start_0
    aget-byte v0, p1, p2

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p2, 0x2

    invoke-static {p1, p2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const-string v2, "EUC-KR"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 327
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "Cea708CCParser"

    const-string v2, "P16 Code - Could not find supported encoding"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x2

    goto :goto_2

    .line 334
    :cond_2
    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    const/16 v1, 0x17

    if-gt v0, v1, :cond_3

    .line 336
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 343
    :cond_3
    const/4 v1, 0x2

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    .line 359
    :sswitch_0
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 360
    goto :goto_2

    .line 356
    :sswitch_1
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 357
    goto :goto_2

    .line 353
    :sswitch_2
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 354
    goto :goto_2

    .line 350
    :sswitch_3
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 351
    goto :goto_2

    .line 347
    :sswitch_4
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 348
    goto :goto_2

    .line 345
    :sswitch_5
    nop

    .line 365
    :goto_2
    return p2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x3 -> :sswitch_4
        0x8 -> :sswitch_3
        0xc -> :sswitch_2
        0xd -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o parseC1([BI)I
    .locals 27
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 371
    move-object/from16 v0, p0

    iget v1, v0, Landroid/media/Cea708CCParser;->mCommand:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/16 v4, 0xf

    const/4 v5, 0x7

    const/4 v6, 0x5

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 586
    :pswitch_1
    add-int/lit16 v1, v1, -0x98

    .line 587
    .local v1, "windowId":I
    aget-byte v2, p1, p2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_0

    move v15, v12

    goto :goto_0

    :cond_0
    move v15, v8

    .line 588
    .local v15, "visible":Z
    :goto_0
    aget-byte v2, p1, p2

    const/16 v6, 0x10

    and-int/2addr v2, v6

    if-eqz v2, :cond_1

    move/from16 v16, v12

    goto :goto_1

    :cond_1
    move/from16 v16, v8

    .line 589
    .local v16, "rowLock":Z
    :goto_1
    aget-byte v2, p1, p2

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    move/from16 v17, v12

    goto :goto_2

    :cond_2
    move/from16 v17, v8

    .line 590
    .local v17, "columnLock":Z
    :goto_2
    aget-byte v2, p1, p2

    and-int/2addr v2, v5

    .line 591
    .local v2, "priority":I
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3

    move/from16 v19, v12

    goto :goto_3

    :cond_3
    move/from16 v19, v8

    .line 592
    .local v19, "relativePositioning":Z
    :goto_3
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x7f

    .line 593
    .local v3, "anchorVertical":I
    add-int/lit8 v7, p2, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    .line 594
    .local v7, "anchorHorizontal":I
    add-int/lit8 v8, p2, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xf0

    shr-int/2addr v8, v10

    .line 595
    .local v8, "anchorId":I
    add-int/lit8 v9, p2, 0x3

    aget-byte v9, p1, v9

    and-int/2addr v4, v9

    .line 596
    .local v4, "rowCount":I
    add-int/lit8 v9, p2, 0x4

    aget-byte v9, p1, v9

    and-int/lit8 v9, v9, 0x3f

    .line 597
    .local v9, "columnCount":I
    add-int/lit8 v10, p2, 0x5

    aget-byte v10, p1, v10

    and-int/lit8 v10, v10, 0x38

    shr-int/2addr v10, v11

    .line 598
    .local v10, "windowStyle":I
    add-int/lit8 v11, p2, 0x5

    aget-byte v11, p1, v11

    and-int/2addr v5, v11

    .line 599
    .local v5, "penStyle":I
    add-int/lit8 v11, p2, 0x6

    .line 600
    .end local p2    # "pos":I
    .local v11, "pos":I
    new-instance v12, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v14, Landroid/media/Cea708CCParser$CaptionWindow;

    move-object v13, v14

    move/from16 p2, v11

    move-object v11, v14

    .end local v11    # "pos":I
    .restart local p2    # "pos":I
    move v14, v1

    move/from16 v18, v2

    move/from16 v20, v3

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v4

    move/from16 v24, v9

    move/from16 v25, v5

    move/from16 v26, v10

    invoke-direct/range {v13 .. v26}, Landroid/media/Cea708CCParser$CaptionWindow;-><init>(IZZZIZIIIIIII)V

    invoke-direct {v12, v6, v11}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v12}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 615
    move/from16 v2, p2

    goto/16 :goto_8

    .line 542
    .end local v1    # "windowId":I
    .end local v2    # "priority":I
    .end local v3    # "anchorVertical":I
    .end local v4    # "rowCount":I
    .end local v5    # "penStyle":I
    .end local v7    # "anchorHorizontal":I
    .end local v8    # "anchorId":I
    .end local v9    # "columnCount":I
    .end local v10    # "windowStyle":I
    .end local v15    # "visible":Z
    .end local v16    # "rowLock":Z
    .end local v17    # "columnLock":Z
    .end local v19    # "relativePositioning":Z
    :pswitch_2
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xc0

    shr-int/2addr v1, v7

    .line 543
    .local v1, "opacity":I
    aget-byte v2, p1, p2

    and-int/lit8 v2, v2, 0x30

    shr-int/2addr v2, v10

    .line 544
    .local v2, "red":I
    aget-byte v3, p1, p2

    and-int/2addr v3, v9

    shr-int/lit8 v3, v3, 0x2

    .line 545
    .local v3, "green":I
    aget-byte v5, p1, p2

    and-int/2addr v5, v11

    .line 546
    .local v5, "blue":I
    new-instance v14, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v14, v1, v2, v3, v5}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    .line 547
    .local v14, "fillColor":Landroid/media/Cea708CCParser$CaptionColor;
    add-int/lit8 v13, p2, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xc0

    shr-int/lit8 v7, v13, 0x6

    add-int/lit8 v13, p2, 0x2

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0x80

    shr-int/lit8 v6, v13, 0x5

    or-int/2addr v6, v7

    .line 548
    .local v6, "borderType":I
    add-int/lit8 v7, p2, 0x1

    aget-byte v7, p1, v7

    and-int/lit8 v7, v7, 0x30

    shr-int/lit8 v2, v7, 0x4

    .line 549
    add-int/lit8 v7, p2, 0x1

    aget-byte v7, p1, v7

    and-int/2addr v7, v9

    shr-int/lit8 v3, v7, 0x2

    .line 550
    add-int/lit8 v7, p2, 0x1

    aget-byte v7, p1, v7

    and-int/lit8 v5, v7, 0x3

    .line 551
    new-instance v15, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v15, v8, v2, v3, v5}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    .line 553
    .local v15, "borderColor":Landroid/media/Cea708CCParser$CaptionColor;
    add-int/lit8 v7, p2, 0x2

    aget-byte v7, p1, v7

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_4

    move/from16 v17, v12

    goto :goto_4

    :cond_4
    move/from16 v17, v8

    .line 554
    .local v17, "wordWrap":Z
    :goto_4
    add-int/lit8 v7, p2, 0x2

    aget-byte v7, p1, v7

    and-int/lit8 v7, v7, 0x30

    shr-int/2addr v7, v10

    .line 555
    .local v7, "printDirection":I
    add-int/lit8 v8, p2, 0x2

    aget-byte v8, p1, v8

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x2

    .line 556
    .local v8, "scrollDirection":I
    add-int/lit8 v12, p2, 0x2

    aget-byte v12, p1, v12

    and-int/2addr v12, v11

    .line 557
    .local v12, "justify":I
    add-int/lit8 v13, p2, 0x3

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xf0

    shr-int/lit8 v10, v13, 0x4

    .line 558
    .local v10, "effectSpeed":I
    add-int/lit8 v13, p2, 0x3

    aget-byte v13, p1, v13

    and-int/2addr v9, v13

    shr-int/lit8 v9, v9, 0x2

    .line 559
    .local v9, "effectDirection":I
    add-int/lit8 v13, p2, 0x3

    aget-byte v13, p1, v13

    and-int/2addr v11, v13

    .line 560
    .local v11, "displayEffect":I
    add-int/lit8 v24, p2, 0x4

    .line 561
    .end local p2    # "pos":I
    .local v24, "pos":I
    new-instance v13, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v4, Landroid/media/Cea708CCParser$CaptionWindowAttr;

    move/from16 v26, v1

    move-object v1, v13

    .end local v1    # "opacity":I
    .local v26, "opacity":I
    move-object v13, v4

    move/from16 v16, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v12

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    invoke-direct/range {v13 .. v23}, Landroid/media/Cea708CCParser$CaptionWindowAttr;-><init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;IZIIIIII)V

    const/16 v13, 0xf

    invoke-direct {v1, v13, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 574
    move/from16 v2, v24

    goto/16 :goto_8

    .line 528
    .end local v2    # "red":I
    .end local v3    # "green":I
    .end local v5    # "blue":I
    .end local v6    # "borderType":I
    .end local v7    # "printDirection":I
    .end local v8    # "scrollDirection":I
    .end local v9    # "effectDirection":I
    .end local v10    # "effectSpeed":I
    .end local v11    # "displayEffect":I
    .end local v12    # "justify":I
    .end local v14    # "fillColor":Landroid/media/Cea708CCParser$CaptionColor;
    .end local v15    # "borderColor":Landroid/media/Cea708CCParser$CaptionColor;
    .end local v17    # "wordWrap":Z
    .end local v24    # "pos":I
    .end local v26    # "opacity":I
    .restart local p2    # "pos":I
    :pswitch_3
    move v13, v4

    aget-byte v1, p1, p2

    and-int/2addr v1, v13

    .line 529
    .local v1, "row":I
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x3f

    .line 530
    .local v2, "column":I
    add-int/lit8 v3, p2, 0x2

    .line 531
    .end local p2    # "pos":I
    .local v3, "pos":I
    new-instance v4, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v5, 0xe

    new-instance v6, Landroid/media/Cea708CCParser$CaptionPenLocation;

    invoke-direct {v6, v1, v2}, Landroid/media/Cea708CCParser$CaptionPenLocation;-><init>(II)V

    invoke-direct {v4, v5, v6}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v4}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 537
    move v2, v3

    goto/16 :goto_8

    .line 497
    .end local v1    # "row":I
    .end local v2    # "column":I
    .end local v3    # "pos":I
    .restart local p2    # "pos":I
    :pswitch_4
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xc0

    shr-int/2addr v1, v7

    .line 498
    .local v1, "opacity":I
    aget-byte v2, p1, p2

    and-int/lit8 v2, v2, 0x30

    shr-int/2addr v2, v10

    .line 499
    .local v2, "red":I
    aget-byte v3, p1, p2

    and-int/2addr v3, v9

    shr-int/lit8 v3, v3, 0x2

    .line 500
    .local v3, "green":I
    aget-byte v4, p1, p2

    and-int/2addr v4, v11

    .line 501
    .local v4, "blue":I
    new-instance v5, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v5, v1, v2, v3, v4}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    .line 502
    .local v5, "foregroundColor":Landroid/media/Cea708CCParser$CaptionColor;
    add-int/lit8 v6, p2, 0x1

    .line 503
    .end local p2    # "pos":I
    .local v6, "pos":I
    aget-byte v13, p1, v6

    and-int/lit16 v13, v13, 0xc0

    shr-int/lit8 v1, v13, 0x6

    .line 504
    aget-byte v7, p1, v6

    and-int/lit8 v7, v7, 0x30

    shr-int/lit8 v2, v7, 0x4

    .line 505
    aget-byte v7, p1, v6

    and-int/2addr v7, v9

    shr-int/lit8 v3, v7, 0x2

    .line 506
    aget-byte v7, p1, v6

    and-int/lit8 v4, v7, 0x3

    .line 507
    new-instance v7, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v7, v1, v2, v3, v4}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    .line 508
    .local v7, "backgroundColor":Landroid/media/Cea708CCParser$CaptionColor;
    add-int/2addr v6, v12

    .line 509
    aget-byte v13, p1, v6

    and-int/lit8 v13, v13, 0x30

    shr-int/lit8 v2, v13, 0x4

    .line 510
    aget-byte v10, p1, v6

    and-int/2addr v9, v10

    shr-int/lit8 v3, v9, 0x2

    .line 511
    aget-byte v9, p1, v6

    and-int/lit8 v4, v9, 0x3

    .line 512
    new-instance v9, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v9, v8, v2, v3, v4}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    move-object v8, v9

    .line 514
    .local v8, "edgeColor":Landroid/media/Cea708CCParser$CaptionColor;
    add-int/2addr v6, v12

    .line 515
    new-instance v9, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v10, 0xd

    new-instance v11, Landroid/media/Cea708CCParser$CaptionPenColor;

    invoke-direct {v11, v5, v7, v8}, Landroid/media/Cea708CCParser$CaptionPenColor;-><init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;)V

    invoke-direct {v9, v10, v11}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v9}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 522
    move v2, v6

    goto/16 :goto_8

    .line 475
    .end local v1    # "opacity":I
    .end local v2    # "red":I
    .end local v3    # "green":I
    .end local v4    # "blue":I
    .end local v5    # "foregroundColor":Landroid/media/Cea708CCParser$CaptionColor;
    .end local v6    # "pos":I
    .end local v7    # "backgroundColor":Landroid/media/Cea708CCParser$CaptionColor;
    .end local v8    # "edgeColor":Landroid/media/Cea708CCParser$CaptionColor;
    .restart local p2    # "pos":I
    :pswitch_5
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xf0

    shr-int/2addr v1, v10

    .line 476
    .local v1, "textTag":I
    aget-byte v2, p1, p2

    and-int/2addr v2, v11

    .line 477
    .local v2, "penSize":I
    aget-byte v3, p1, p2

    and-int/2addr v3, v9

    shr-int/lit8 v3, v3, 0x2

    .line 478
    .local v3, "penOffset":I
    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_5

    move/from16 v20, v12

    goto :goto_5

    :cond_5
    move/from16 v20, v8

    .line 479
    .local v20, "italic":Z
    :goto_5
    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_6

    move/from16 v19, v12

    goto :goto_6

    :cond_6
    move/from16 v19, v8

    .line 480
    .local v19, "underline":Z
    :goto_6
    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x38

    shr-int/2addr v4, v11

    .line 481
    .local v4, "edgeType":I
    add-int/lit8 v6, p2, 0x1

    aget-byte v6, p1, v6

    and-int/2addr v5, v6

    .line 482
    .local v5, "fontTag":I
    add-int/lit8 v6, p2, 0x2

    .line 483
    .end local p2    # "pos":I
    .restart local v6    # "pos":I
    new-instance v7, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v8, Landroid/media/Cea708CCParser$CaptionPenAttr;

    move-object v13, v8

    move v14, v2

    move v15, v3

    move/from16 v16, v1

    move/from16 v17, v5

    move/from16 v18, v4

    invoke-direct/range {v13 .. v20}, Landroid/media/Cea708CCParser$CaptionPenAttr;-><init>(IIIIIZZ)V

    invoke-direct {v7, v9, v8}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v7}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 492
    move v2, v6

    goto/16 :goto_8

    .line 466
    .end local v1    # "textTag":I
    .end local v2    # "penSize":I
    .end local v3    # "penOffset":I
    .end local v4    # "edgeType":I
    .end local v5    # "fontTag":I
    .end local v6    # "pos":I
    .end local v19    # "underline":Z
    .end local v20    # "italic":Z
    .restart local p2    # "pos":I
    :pswitch_6
    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v3, 0xb

    invoke-direct {v1, v3, v2}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 470
    goto/16 :goto_7

    .line 457
    :pswitch_7
    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v2}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 461
    goto/16 :goto_7

    .line 446
    :pswitch_8
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    .line 447
    .local v1, "tenthsOfSeconds":I
    add-int/lit8 v2, p2, 0x1

    .line 448
    .end local p2    # "pos":I
    .local v2, "pos":I
    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v4, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 453
    goto :goto_8

    .line 435
    .end local v1    # "tenthsOfSeconds":I
    .end local v2    # "pos":I
    .restart local p2    # "pos":I
    :pswitch_9
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    .line 436
    .local v1, "windowBitmap":I
    add-int/lit8 v2, p2, 0x1

    .line 437
    .end local p2    # "pos":I
    .restart local v2    # "pos":I
    new-instance v4, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v4}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 441
    goto :goto_8

    .line 424
    .end local v1    # "windowBitmap":I
    .end local v2    # "pos":I
    .restart local p2    # "pos":I
    :pswitch_a
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    .line 425
    .restart local v1    # "windowBitmap":I
    add-int/lit8 v2, p2, 0x1

    .line 426
    .end local p2    # "pos":I
    .restart local v2    # "pos":I
    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 430
    goto :goto_8

    .line 413
    .end local v1    # "windowBitmap":I
    .end local v2    # "pos":I
    .restart local p2    # "pos":I
    :pswitch_b
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    .line 414
    .restart local v1    # "windowBitmap":I
    add-int/lit8 v2, p2, 0x1

    .line 415
    .end local p2    # "pos":I
    .restart local v2    # "pos":I
    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 419
    goto :goto_8

    .line 402
    .end local v1    # "windowBitmap":I
    .end local v2    # "pos":I
    .restart local p2    # "pos":I
    :pswitch_c
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    .line 403
    .restart local v1    # "windowBitmap":I
    add-int/lit8 v2, p2, 0x1

    .line 404
    .end local p2    # "pos":I
    .restart local v2    # "pos":I
    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 408
    goto :goto_8

    .line 391
    .end local v1    # "windowBitmap":I
    .end local v2    # "pos":I
    .restart local p2    # "pos":I
    :pswitch_d
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    .line 392
    .restart local v1    # "windowBitmap":I
    add-int/lit8 v2, p2, 0x1

    .line 393
    .end local p2    # "pos":I
    .restart local v2    # "pos":I
    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v10, v4}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 397
    goto :goto_8

    .line 381
    .end local v1    # "windowBitmap":I
    .end local v2    # "pos":I
    .restart local p2    # "pos":I
    :pswitch_e
    add-int/lit8 v1, v1, -0x80

    .line 382
    .local v1, "windowId":I
    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v11, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    .line 386
    nop

    .line 621
    .end local v1    # "windowId":I
    :goto_7
    move/from16 v2, p2

    .end local p2    # "pos":I
    .restart local v2    # "pos":I
    :goto_8
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private greylist-max-o parseC2([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 670
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-ltz v0, :cond_0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 673
    :cond_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    .line 675
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 676
    :cond_1
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    const/16 v1, 0x17

    if-gt v0, v1, :cond_2

    .line 678
    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 679
    :cond_2
    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_3

    .line 681
    add-int/lit8 p2, p2, 0x3

    .line 683
    :cond_3
    :goto_0
    return p2
.end method

.method private greylist-max-o parseC3([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 690
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x80

    if-lt v0, v1, :cond_0

    const/16 v1, 0x87

    if-gt v0, v1, :cond_0

    .line 692
    add-int/lit8 p2, p2, 0x4

    goto :goto_0

    .line 693
    :cond_0
    const/16 v1, 0x88

    if-lt v0, v1, :cond_1

    const/16 v1, 0x8f

    if-gt v0, v1, :cond_1

    .line 695
    add-int/lit8 p2, p2, 0x5

    .line 697
    :cond_1
    :goto_0
    return p2
.end method

.method private greylist-max-o parseExt1([BI)I
    .locals 3
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 648
    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    .line 649
    add-int/lit8 p2, p2, 0x1

    .line 650
    if-ltz v0, :cond_0

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_0

    .line 652
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC2([BI)I

    move-result p2

    goto :goto_0

    .line 653
    :cond_0
    const/16 v2, 0x80

    if-lt v0, v2, :cond_1

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_1

    .line 655
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC3([BI)I

    move-result p2

    goto :goto_0

    .line 656
    :cond_1
    const/16 v2, 0x20

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_2

    .line 658
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG2([BI)I

    move-result p2

    goto :goto_0

    .line 659
    :cond_2
    const/16 v2, 0xa0

    if-lt v0, v2, :cond_3

    if-gt v0, v1, :cond_3

    .line 661
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG3([BI)I

    move-result p2

    .line 663
    :cond_3
    :goto_0
    return p2
.end method

.method private greylist-max-o parseG0([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 627
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 629
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    sget-object v1, Landroid/media/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 632
    :cond_0
    iget-object v1, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 634
    :goto_0
    return p2
.end method

.method private greylist-max-o parseG1([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 641
    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 642
    return p2
.end method

.method private greylist-max-o parseG2([BI)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 703
    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 713
    :sswitch_0
    goto :goto_0

    .line 709
    :sswitch_1
    goto :goto_0

    .line 706
    :sswitch_2
    nop

    .line 717
    :goto_0
    return p2

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x21 -> :sswitch_1
        0x30 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o parseG3([BI)I
    .locals 0
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 723
    nop

    .line 728
    return p2
.end method

.method private greylist-max-o parseServiceBlockData([BI)I
    .locals 3
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 279
    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    .line 280
    add-int/lit8 p2, p2, 0x1

    .line 281
    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    .line 285
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseExt1([BI)I

    move-result p2

    goto :goto_0

    .line 286
    :cond_0
    if-ltz v0, :cond_1

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_1

    .line 291
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC0([BI)I

    move-result p2

    goto :goto_0

    .line 292
    :cond_1
    const/16 v2, 0x80

    if-lt v0, v2, :cond_2

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_2

    .line 297
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC1([BI)I

    move-result p2

    goto :goto_0

    .line 298
    :cond_2
    const/16 v2, 0x20

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_3

    .line 303
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG0([BI)I

    move-result p2

    goto :goto_0

    .line 304
    :cond_3
    const/16 v2, 0xa0

    if-lt v0, v2, :cond_4

    if-gt v0, v1, :cond_4

    .line 309
    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG1([BI)I

    move-result p2

    .line 311
    :cond_4
    :goto_0
    return p2
.end method


# virtual methods
.method public greylist-max-o parse([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "pos":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 269
    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCParser;->parseServiceBlockData([BI)I

    move-result v0

    goto :goto_0

    .line 273
    :cond_0
    invoke-direct {p0}, Landroid/media/Cea708CCParser;->emitCaptionBuffer()V

    .line 274
    return-void
.end method
