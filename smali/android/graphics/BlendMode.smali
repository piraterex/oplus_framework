.class public final enum Landroid/graphics/BlendMode;
.super Ljava/lang/Enum;
.source "BlendMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/BlendMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/BlendMode;

.field private static final blacklist BLEND_MODES:[Landroid/graphics/BlendMode;

.field public static final enum whitelist CLEAR:Landroid/graphics/BlendMode;

.field public static final enum whitelist COLOR:Landroid/graphics/BlendMode;

.field public static final enum whitelist COLOR_BURN:Landroid/graphics/BlendMode;

.field public static final enum whitelist COLOR_DODGE:Landroid/graphics/BlendMode;

.field public static final enum whitelist DARKEN:Landroid/graphics/BlendMode;

.field public static final enum whitelist DIFFERENCE:Landroid/graphics/BlendMode;

.field public static final enum whitelist DST:Landroid/graphics/BlendMode;

.field public static final enum whitelist DST_ATOP:Landroid/graphics/BlendMode;

.field public static final enum whitelist DST_IN:Landroid/graphics/BlendMode;

.field public static final enum whitelist DST_OUT:Landroid/graphics/BlendMode;

.field public static final enum whitelist DST_OVER:Landroid/graphics/BlendMode;

.field public static final enum whitelist EXCLUSION:Landroid/graphics/BlendMode;

.field public static final enum whitelist HARD_LIGHT:Landroid/graphics/BlendMode;

.field public static final enum whitelist HUE:Landroid/graphics/BlendMode;

.field public static final enum whitelist LIGHTEN:Landroid/graphics/BlendMode;

.field public static final enum whitelist LUMINOSITY:Landroid/graphics/BlendMode;

.field public static final enum whitelist MODULATE:Landroid/graphics/BlendMode;

.field public static final enum whitelist MULTIPLY:Landroid/graphics/BlendMode;

.field public static final enum whitelist OVERLAY:Landroid/graphics/BlendMode;

.field public static final enum whitelist PLUS:Landroid/graphics/BlendMode;

.field public static final enum whitelist SATURATION:Landroid/graphics/BlendMode;

.field public static final enum whitelist SCREEN:Landroid/graphics/BlendMode;

.field public static final enum whitelist SOFT_LIGHT:Landroid/graphics/BlendMode;

.field public static final enum whitelist SRC:Landroid/graphics/BlendMode;

.field public static final enum whitelist SRC_ATOP:Landroid/graphics/BlendMode;

.field public static final enum whitelist SRC_IN:Landroid/graphics/BlendMode;

.field public static final enum whitelist SRC_OUT:Landroid/graphics/BlendMode;

.field public static final enum whitelist SRC_OVER:Landroid/graphics/BlendMode;

.field public static final enum whitelist XOR:Landroid/graphics/BlendMode;


# instance fields
.field private final blacklist mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 32

    .line 34
    new-instance v0, Landroid/graphics/BlendMode;

    const-string v1, "CLEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    .line 46
    new-instance v1, Landroid/graphics/BlendMode;

    const-string v3, "SRC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    .line 58
    new-instance v3, Landroid/graphics/BlendMode;

    const-string v5, "DST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/graphics/BlendMode;->DST:Landroid/graphics/BlendMode;

    .line 70
    new-instance v5, Landroid/graphics/BlendMode;

    const-string v7, "SRC_OVER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    .line 82
    new-instance v7, Landroid/graphics/BlendMode;

    const-string v9, "DST_OVER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/graphics/BlendMode;->DST_OVER:Landroid/graphics/BlendMode;

    .line 95
    new-instance v9, Landroid/graphics/BlendMode;

    const-string v11, "SRC_IN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    .line 108
    new-instance v11, Landroid/graphics/BlendMode;

    const-string v13, "DST_IN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/graphics/BlendMode;->DST_IN:Landroid/graphics/BlendMode;

    .line 122
    new-instance v13, Landroid/graphics/BlendMode;

    const-string v15, "SRC_OUT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroid/graphics/BlendMode;->SRC_OUT:Landroid/graphics/BlendMode;

    .line 136
    new-instance v15, Landroid/graphics/BlendMode;

    const-string v14, "DST_OUT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v15, Landroid/graphics/BlendMode;->DST_OUT:Landroid/graphics/BlendMode;

    .line 149
    new-instance v14, Landroid/graphics/BlendMode;

    const-string v12, "SRC_ATOP"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    .line 162
    new-instance v12, Landroid/graphics/BlendMode;

    const-string v10, "DST_ATOP"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Landroid/graphics/BlendMode;->DST_ATOP:Landroid/graphics/BlendMode;

    .line 177
    new-instance v10, Landroid/graphics/BlendMode;

    const-string v8, "XOR"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Landroid/graphics/BlendMode;->XOR:Landroid/graphics/BlendMode;

    .line 190
    new-instance v8, Landroid/graphics/BlendMode;

    const-string v6, "PLUS"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    .line 203
    new-instance v6, Landroid/graphics/BlendMode;

    const-string v4, "MODULATE"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/graphics/BlendMode;->MODULATE:Landroid/graphics/BlendMode;

    .line 218
    new-instance v4, Landroid/graphics/BlendMode;

    const-string v2, "SCREEN"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    .line 237
    new-instance v2, Landroid/graphics/BlendMode;

    const-string v6, "OVERLAY"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/graphics/BlendMode;->OVERLAY:Landroid/graphics/BlendMode;

    .line 255
    new-instance v6, Landroid/graphics/BlendMode;

    const-string v4, "DARKEN"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/graphics/BlendMode;->DARKEN:Landroid/graphics/BlendMode;

    .line 271
    new-instance v4, Landroid/graphics/BlendMode;

    const-string v2, "LIGHTEN"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/graphics/BlendMode;->LIGHTEN:Landroid/graphics/BlendMode;

    .line 295
    new-instance v2, Landroid/graphics/BlendMode;

    const-string v6, "COLOR_DODGE"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    .line 320
    new-instance v6, Landroid/graphics/BlendMode;

    const-string v4, "COLOR_BURN"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    .line 344
    new-instance v4, Landroid/graphics/BlendMode;

    const-string v2, "HARD_LIGHT"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    .line 392
    new-instance v2, Landroid/graphics/BlendMode;

    const-string v6, "SOFT_LIGHT"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4, v4}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/graphics/BlendMode;->SOFT_LIGHT:Landroid/graphics/BlendMode;

    .line 413
    new-instance v6, Landroid/graphics/BlendMode;

    const-string v4, "DIFFERENCE"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    move-object/from16 v25, v8

    const/16 v8, 0x16

    invoke-direct {v6, v4, v2, v8}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    .line 433
    new-instance v2, Landroid/graphics/BlendMode;

    const-string v4, "EXCLUSION"

    const/16 v8, 0x17

    move-object/from16 v26, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v8, v6}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/graphics/BlendMode;->EXCLUSION:Landroid/graphics/BlendMode;

    .line 447
    new-instance v4, Landroid/graphics/BlendMode;

    const-string v6, "MULTIPLY"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v8, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    .line 460
    new-instance v2, Landroid/graphics/BlendMode;

    const-string v6, "HUE"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v8, v4}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    .line 473
    new-instance v4, Landroid/graphics/BlendMode;

    const-string v6, "SATURATION"

    const/16 v8, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v8, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/graphics/BlendMode;->SATURATION:Landroid/graphics/BlendMode;

    .line 486
    new-instance v2, Landroid/graphics/BlendMode;

    const-string v6, "COLOR"

    const/16 v8, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v8, v4}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/graphics/BlendMode;->COLOR:Landroid/graphics/BlendMode;

    .line 499
    new-instance v4, Landroid/graphics/BlendMode;

    const-string v6, "LUMINOSITY"

    const/16 v8, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v8, v2}, Landroid/graphics/BlendMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/graphics/BlendMode;->LUMINOSITY:Landroid/graphics/BlendMode;

    .line 22
    const/16 v2, 0x1d

    new-array v2, v2, [Landroid/graphics/BlendMode;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v25, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v4, v2, v0

    sput-object v2, Landroid/graphics/BlendMode;->$VALUES:[Landroid/graphics/BlendMode;

    .line 501
    invoke-static {}, Landroid/graphics/BlendMode;->values()[Landroid/graphics/BlendMode;

    move-result-object v0

    sput-object v0, Landroid/graphics/BlendMode;->BLEND_MODES:[Landroid/graphics/BlendMode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 576
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 577
    new-instance p1, Landroid/graphics/Xfermode;

    invoke-direct {p1}, Landroid/graphics/Xfermode;-><init>()V

    iput-object p1, p0, Landroid/graphics/BlendMode;->mXfermode:Landroid/graphics/Xfermode;

    .line 578
    iput p3, p1, Landroid/graphics/Xfermode;->porterDuffMode:I

    .line 579
    return-void
.end method

.method public static blacklist blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;
    .locals 3
    .param p0, "mode"    # Landroid/graphics/BlendMode;

    .line 526
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 527
    sget-object v1, Landroid/graphics/BlendMode$1;->$SwitchMap$android$graphics$BlendMode:[I

    invoke-virtual {p0}, Landroid/graphics/BlendMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 566
    return-object v0

    .line 564
    :pswitch_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 562
    :pswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 560
    :pswitch_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 558
    :pswitch_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 555
    :pswitch_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 553
    :pswitch_5
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 551
    :pswitch_6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 549
    :pswitch_7
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 547
    :pswitch_8
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 545
    :pswitch_9
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 543
    :pswitch_a
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 541
    :pswitch_b
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 539
    :pswitch_c
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 537
    :pswitch_d
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 535
    :pswitch_e
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 533
    :pswitch_f
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 531
    :pswitch_10
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 529
    :pswitch_11
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 569
    :cond_0
    return-object v0

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

.method public static blacklist fromValue(I)Landroid/graphics/BlendMode;
    .locals 5
    .param p0, "value"    # I

    .line 507
    sget-object v0, Landroid/graphics/BlendMode;->BLEND_MODES:[Landroid/graphics/BlendMode;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 508
    .local v3, "mode":Landroid/graphics/BlendMode;
    iget-object v4, v3, Landroid/graphics/BlendMode;->mXfermode:Landroid/graphics/Xfermode;

    iget v4, v4, Landroid/graphics/Xfermode;->porterDuffMode:I

    if-ne v4, p0, :cond_0

    .line 509
    return-object v3

    .line 507
    .end local v3    # "mode":Landroid/graphics/BlendMode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 512
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist toValue(Landroid/graphics/BlendMode;)I
    .locals 1
    .param p0, "mode"    # Landroid/graphics/BlendMode;

    .line 519
    invoke-virtual {p0}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Xfermode;->porterDuffMode:I

    return v0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/graphics/BlendMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Landroid/graphics/BlendMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public static whitelist values()[Landroid/graphics/BlendMode;
    .locals 1

    .line 22
    sget-object v0, Landroid/graphics/BlendMode;->$VALUES:[Landroid/graphics/BlendMode;

    invoke-virtual {v0}, [Landroid/graphics/BlendMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/BlendMode;

    return-object v0
.end method


# virtual methods
.method public blacklist getXfermode()Landroid/graphics/Xfermode;
    .locals 1

    .line 586
    iget-object v0, p0, Landroid/graphics/BlendMode;->mXfermode:Landroid/graphics/Xfermode;

    return-object v0
.end method
