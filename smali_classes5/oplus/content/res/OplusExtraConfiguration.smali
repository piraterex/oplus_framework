.class public Loplus/content/res/OplusExtraConfiguration;
.super Ljava/lang/Object;
.source "OplusExtraConfiguration.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final whitelist ACESSIBLE_OPLUS_MODE_CHANGED:I = 0x4000000

.field public static final whitelist CONFIG_FLIPFONT:I = 0x2000000

.field public static final whitelist FONT_VARIATION_SETTINGS_CHANGED:I = 0x1000000

.field public static final whitelist MAX_MATERIAL_HIGH:J = 0x6fffffffL

.field public static final whitelist OPLUS_CONFIG_CHANGED:I = 0x10000000

.field public static final whitelist OPLUS_CONFIG_FOLER_ANGLE:I = 0x10000

.field public static final whitelist OPLUS_DARKMODE_RANK_CHANGED:I = 0x1

.field public static final whitelist THEME_NEW_SKIN_CHANGED:I = 0x9000000

.field public static final whitelist THEME_OLD_SKIN_CHANGED:I = 0x8000000

.field public static final whitelist UX_ICON_CONFIG_CHANGED:I = 0x800000


# instance fields
.field public whitelist mAccessibleChanged:I

.field public whitelist mDarkModeBackgroundMaxL:F

.field public whitelist mDarkModeDialogBgMaxL:F

.field public whitelist mDarkModeForegroundMinL:F

.field public whitelist mFlipFont:I

.field public whitelist mFoldingAngle:F

.field public whitelist mFontOpSansSettings:I

.field public whitelist mFontUserId:I

.field public whitelist mFontVariationSettings:I

.field public whitelist mIconPackName:Ljava/lang/String;

.field public whitelist mMaterialColor:J

.field public whitelist mOplusChangedConfigs:J

.field public whitelist mOplusConfigType:J

.field public whitelist mThemeChanged:I

.field public whitelist mThemeChangedFlags:J

.field public whitelist mThemePrefix:Ljava/lang/String;

.field public whitelist mUserId:I

.field public whitelist mUxIconConfig:J


# direct methods
.method public constructor whitelist <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    .line 46
    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFontUserId:I

    .line 47
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    .line 48
    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    .line 49
    const-string v1, ""

    iput-object v1, p0, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;

    .line 50
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeDialogBgMaxL:F

    .line 51
    iput v2, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeBackgroundMaxL:F

    .line 52
    iput v2, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeForegroundMinL:F

    .line 54
    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFontOpSansSettings:I

    .line 55
    iput v2, p0, Loplus/content/res/OplusExtraConfiguration;->mFoldingAngle:F

    .line 56
    iput-object v1, p0, Loplus/content/res/OplusExtraConfiguration;->mThemePrefix:Ljava/lang/String;

    return-void
.end method

.method private blacklist isDarkModeBgChanged(Loplus/content/res/OplusExtraConfiguration;)Z
    .locals 2
    .param p1, "extraConfiguration"    # Loplus/content/res/OplusExtraConfiguration;

    .line 433
    iget v0, p1, Loplus/content/res/OplusExtraConfiguration;->mDarkModeBackgroundMaxL:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    iget v1, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeBackgroundMaxL:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isDarkModeDialogBgChanged(Loplus/content/res/OplusExtraConfiguration;)Z
    .locals 2
    .param p1, "extraConfiguration"    # Loplus/content/res/OplusExtraConfiguration;

    .line 441
    iget v0, p1, Loplus/content/res/OplusExtraConfiguration;->mDarkModeDialogBgMaxL:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    iget v1, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeDialogBgMaxL:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isDarkModeFgChanged(Loplus/content/res/OplusExtraConfiguration;)Z
    .locals 2
    .param p1, "extraConfiguration"    # Loplus/content/res/OplusExtraConfiguration;

    .line 437
    iget v0, p1, Loplus/content/res/OplusExtraConfiguration;->mDarkModeForegroundMinL:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    iget v1, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeForegroundMinL:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isMaterialChanged(Loplus/content/res/OplusExtraConfiguration;)Z
    .locals 9
    .param p1, "extraConfig"    # Loplus/content/res/OplusExtraConfiguration;

    .line 453
    iget-wide v0, p0, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 454
    .local v0, "oldHigh":J
    iget-wide v3, p1, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    shr-long v5, v3, v2

    .line 455
    .local v5, "newHigh":J
    cmp-long v2, v0, v5

    if-ltz v2, :cond_0

    const-wide/32 v7, 0x6ffffffe

    cmp-long v2, v0, v7

    if-ltz v2, :cond_1

    const-wide/16 v7, 0x1

    cmp-long v2, v5, v7

    if-gtz v2, :cond_1

    :cond_0
    const-wide/16 v7, 0x0

    cmp-long v2, v3, v7

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private blacklist isOpSansSettingsChanged(Loplus/content/res/OplusExtraConfiguration;)Z
    .locals 2
    .param p1, "newExtraCfg"    # Loplus/content/res/OplusExtraConfiguration;

    .line 449
    iget v0, p1, Loplus/content/res/OplusExtraConfiguration;->mFontOpSansSettings:I

    if-ltz v0, :cond_0

    iget v1, p0, Loplus/content/res/OplusExtraConfiguration;->mFontOpSansSettings:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist needAccessNewResources(I)Z
    .locals 1
    .param p0, "i"    # I

    .line 379
    const/high16 v0, 0x4000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist needNewResources(I)Z
    .locals 2
    .param p0, "i"    # I

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "flag":Z
    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 362
    const/4 v0, 0x1

    goto :goto_0

    .line 365
    :cond_0
    const/high16 v1, 0x2000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    .line 366
    const/4 v0, 0x1

    goto :goto_0

    .line 368
    :cond_1
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_2

    .line 369
    const/4 v0, 0x1

    goto :goto_0

    .line 370
    :cond_2
    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_3

    .line 371
    const/4 v0, 0x1

    goto :goto_0

    .line 373
    :cond_3
    const/4 v0, 0x0

    .line 375
    :goto_0
    return v0
.end method

.method public static whitelist shouldReportExtra(II)Z
    .locals 1
    .param p0, "i"    # I
    .param p1, "real"    # I

    .line 445
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 62
    move-object v0, p1

    check-cast v0, Loplus/content/res/OplusExtraConfiguration;

    invoke-virtual {p0, v0}, Loplus/content/res/OplusExtraConfiguration;->compareTo(Loplus/content/res/OplusExtraConfiguration;)I

    move-result v0

    return v0
.end method

.method public whitelist compareTo(Loplus/content/res/OplusExtraConfiguration;)I
    .locals 8
    .param p1, "extraconfiguration"    # Loplus/content/res/OplusExtraConfiguration;

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "i":I
    iget v1, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChanged:I

    iget v2, p1, Loplus/content/res/OplusExtraConfiguration;->mThemeChanged:I

    sub-int/2addr v1, v2

    .line 68
    .end local v0    # "i":I
    .local v1, "i":I
    if-eqz v1, :cond_0

    .line 69
    return v1

    .line 71
    :cond_0
    iget v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFlipFont:I

    iget v2, p1, Loplus/content/res/OplusExtraConfiguration;->mFlipFont:I

    sub-int/2addr v0, v2

    .line 72
    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-eqz v0, :cond_1

    .line 73
    return v0

    .line 75
    :cond_1
    iget-object v1, p0, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;

    iget-object v2, p1, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 76
    .local v1, "same":Z
    const/4 v2, -0x1

    if-nez v1, :cond_2

    .line 77
    return v2

    .line 79
    :cond_2
    iget v3, p0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    iget v4, p1, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    sub-int/2addr v3, v4

    .line 80
    .end local v0    # "i":I
    .local v3, "i":I
    if-eqz v3, :cond_3

    .line 81
    return v3

    .line 83
    :cond_3
    iget v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFontUserId:I

    iget v4, p1, Loplus/content/res/OplusExtraConfiguration;->mFontUserId:I

    sub-int/2addr v0, v4

    .line 84
    .end local v3    # "i":I
    .restart local v0    # "i":I
    if-eqz v0, :cond_4

    .line 85
    return v0

    .line 87
    :cond_4
    iget v3, p0, Loplus/content/res/OplusExtraConfiguration;->mAccessibleChanged:I

    iget v4, p1, Loplus/content/res/OplusExtraConfiguration;->mAccessibleChanged:I

    sub-int/2addr v3, v4

    .line 88
    .end local v0    # "i":I
    .restart local v3    # "i":I
    if-eqz v3, :cond_5

    .line 89
    return v3

    .line 91
    :cond_5
    iget-wide v4, p0, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    iget-wide v6, p1, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 92
    .end local v3    # "i":I
    .restart local v0    # "i":I
    if-eqz v0, :cond_6

    .line 93
    return v0

    .line 95
    :cond_6
    iget-wide v3, p0, Loplus/content/res/OplusExtraConfiguration;->mUxIconConfig:J

    iget-wide v5, p1, Loplus/content/res/OplusExtraConfiguration;->mUxIconConfig:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 96
    if-eqz v0, :cond_7

    .line 97
    return v0

    .line 99
    :cond_7
    iget v3, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeBackgroundMaxL:F

    iget v4, p1, Loplus/content/res/OplusExtraConfiguration;->mDarkModeBackgroundMaxL:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 100
    if-eqz v0, :cond_8

    .line 101
    return v0

    .line 103
    :cond_8
    iget v3, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeDialogBgMaxL:F

    iget v4, p1, Loplus/content/res/OplusExtraConfiguration;->mDarkModeDialogBgMaxL:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 104
    if-eqz v0, :cond_9

    .line 105
    return v0

    .line 107
    :cond_9
    iget v3, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeForegroundMinL:F

    iget v4, p1, Loplus/content/res/OplusExtraConfiguration;->mDarkModeForegroundMinL:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 108
    if-eqz v0, :cond_a

    .line 109
    return v0

    .line 111
    :cond_a
    iget v3, p0, Loplus/content/res/OplusExtraConfiguration;->mFoldingAngle:F

    iget v4, p1, Loplus/content/res/OplusExtraConfiguration;->mFoldingAngle:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 112
    if-eqz v0, :cond_b

    .line 113
    return v0

    .line 116
    :cond_b
    iget v3, p0, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    iget v4, p1, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    sub-int/2addr v3, v4

    .line 117
    .end local v0    # "i":I
    .restart local v3    # "i":I
    if-eqz v3, :cond_c

    .line 118
    return v3

    .line 120
    :cond_c
    iget v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFontOpSansSettings:I

    iget v4, p1, Loplus/content/res/OplusExtraConfiguration;->mFontOpSansSettings:I

    sub-int/2addr v0, v4

    .line 121
    .end local v3    # "i":I
    .restart local v0    # "i":I
    if-eqz v0, :cond_d

    .line 122
    return v0

    .line 124
    :cond_d
    iget-object v3, p0, Loplus/content/res/OplusExtraConfiguration;->mThemePrefix:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v4, p1, Loplus/content/res/OplusExtraConfiguration;->mThemePrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 125
    return v2

    .line 127
    :cond_e
    return v0
.end method

.method public whitelist diff(Loplus/content/res/OplusExtraConfiguration;)I
    .locals 9
    .param p1, "extraconfiguration"    # Loplus/content/res/OplusExtraConfiguration;

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "i":I
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mThemeChanged:I

    if-lez v1, :cond_0

    iget v2, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChanged:I

    if-eq v2, v1, :cond_0

    .line 297
    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    .line 300
    :cond_0
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mAccessibleChanged:I

    const/high16 v2, 0x4000000

    if-eqz v1, :cond_1

    iget v3, p0, Loplus/content/res/OplusExtraConfiguration;->mAccessibleChanged:I

    if-eq v3, v1, :cond_1

    .line 302
    or-int/2addr v0, v2

    .line 305
    :cond_1
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mFlipFont:I

    if-lez v1, :cond_2

    iget v3, p0, Loplus/content/res/OplusExtraConfiguration;->mFlipFont:I

    if-eq v3, v1, :cond_2

    .line 306
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 309
    :cond_2
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    const/high16 v3, 0x10000000

    if-ltz v1, :cond_3

    iget v4, p0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    if-eq v4, v1, :cond_3

    .line 310
    or-int/2addr v0, v3

    .line 313
    :cond_3
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mFontUserId:I

    if-ltz v1, :cond_4

    iget v4, p0, Loplus/content/res/OplusExtraConfiguration;->mFontUserId:I

    if-eq v4, v1, :cond_4

    .line 314
    or-int/2addr v0, v3

    .line 317
    :cond_4
    iget-wide v4, p1, Loplus/content/res/OplusExtraConfiguration;->mUxIconConfig:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    const/high16 v6, 0x800000

    if-lez v1, :cond_5

    iget-wide v7, p0, Loplus/content/res/OplusExtraConfiguration;->mUxIconConfig:J

    cmp-long v1, v7, v4

    if-eqz v1, :cond_5

    .line 319
    or-int/2addr v0, v6

    .line 322
    :cond_5
    invoke-direct {p0, p1}, Loplus/content/res/OplusExtraConfiguration;->isMaterialChanged(Loplus/content/res/OplusExtraConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 323
    or-int/2addr v0, v2

    .line 326
    :cond_6
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    const/high16 v2, 0x1000000

    if-ltz v1, :cond_7

    iget v4, p0, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    if-eq v4, v1, :cond_7

    .line 328
    or-int/2addr v0, v2

    .line 331
    :cond_7
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mFoldingAngle:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_8

    iget v4, p0, Loplus/content/res/OplusExtraConfiguration;->mFoldingAngle:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_8

    .line 332
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 335
    :cond_8
    iget-object v1, p1, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p1, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;

    iget-object v4, p0, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;

    .line 336
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 337
    or-int/2addr v0, v6

    .line 340
    :cond_9
    invoke-direct {p0, p1}, Loplus/content/res/OplusExtraConfiguration;->isDarkModeBgChanged(Loplus/content/res/OplusExtraConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 341
    or-int/2addr v0, v3

    .line 344
    :cond_a
    invoke-direct {p0, p1}, Loplus/content/res/OplusExtraConfiguration;->isDarkModeDialogBgChanged(Loplus/content/res/OplusExtraConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 345
    or-int/2addr v0, v3

    .line 348
    :cond_b
    invoke-direct {p0, p1}, Loplus/content/res/OplusExtraConfiguration;->isDarkModeFgChanged(Loplus/content/res/OplusExtraConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 349
    or-int/2addr v0, v3

    .line 352
    :cond_c
    invoke-direct {p0, p1}, Loplus/content/res/OplusExtraConfiguration;->isOpSansSettingsChanged(Loplus/content/res/OplusExtraConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 353
    or-int/2addr v0, v2

    .line 356
    :cond_d
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "i":I
    iget v1, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChanged:I

    iget-wide v2, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 427
    .end local v0    # "i":I
    .local v1, "i":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Loplus/content/res/OplusExtraConfiguration;->mFlipFont:I

    add-int/2addr v0, v2

    iget v2, p0, Loplus/content/res/OplusExtraConfiguration;->mAccessibleChanged:I

    mul-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v2

    iget v2, p0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    iget-wide v2, p0, Loplus/content/res/OplusExtraConfiguration;->mUxIconConfig:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 428
    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 429
    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChanged:I

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFlipFont:I

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mAccessibleChanged:I

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loplus/content/res/OplusExtraConfiguration;->mUxIconConfig:J

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFontUserId:I

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loplus/content/res/OplusExtraConfiguration;->mOplusConfigType:J

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeForegroundMinL:F

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeBackgroundMaxL:F

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeDialogBgMaxL:F

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFoldingAngle:F

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Loplus/content/res/OplusExtraConfiguration;->mOplusChangedConfigs:J

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFontOpSansSettings:I

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Loplus/content/res/OplusExtraConfiguration;->mThemePrefix:Ljava/lang/String;

    .line 422
    return-void
.end method

.method public whitelist setTo(Loplus/content/res/OplusExtraConfiguration;)V
    .locals 2
    .param p1, "extraconfiguration"    # Loplus/content/res/OplusExtraConfiguration;

    .line 131
    iget v0, p1, Loplus/content/res/OplusExtraConfiguration;->mThemeChanged:I

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChanged:I

    .line 132
    iget-wide v0, p1, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    iput-wide v0, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    .line 133
    iget v0, p1, Loplus/content/res/OplusExtraConfiguration;->mFlipFont:I

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFlipFont:I

    .line 134
    iget v0, p1, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    .line 135
    iget v0, p1, Loplus/content/res/OplusExtraConfiguration;->mAccessibleChanged:I

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mAccessibleChanged:I

    .line 136
    iget-wide v0, p1, Loplus/content/res/OplusExtraConfiguration;->mUxIconConfig:J

    iput-wide v0, p0, Loplus/content/res/OplusExtraConfiguration;->mUxIconConfig:J

    .line 137
    iget v0, p1, Loplus/content/res/OplusExtraConfiguration;->mFontUserId:I

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFontUserId:I

    .line 138
    iget-wide v0, p1, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    iput-wide v0, p0, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    .line 139
    iget v0, p1, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    .line 140
    iget v0, p1, Loplus/content/res/OplusExtraConfiguration;->mFoldingAngle:F

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFoldingAngle:F

    .line 141
    iget-object v0, p1, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;

    iput-object v0, p0, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;

    .line 142
    iget-wide v0, p1, Loplus/content/res/OplusExtraConfiguration;->mOplusConfigType:J

    iput-wide v0, p0, Loplus/content/res/OplusExtraConfiguration;->mOplusConfigType:J

    .line 143
    iget v0, p1, Loplus/content/res/OplusExtraConfiguration;->mDarkModeDialogBgMaxL:F

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeDialogBgMaxL:F

    .line 144
    iget v0, p1, Loplus/content/res/OplusExtraConfiguration;->mDarkModeForegroundMinL:F

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeForegroundMinL:F

    .line 145
    iget v0, p1, Loplus/content/res/OplusExtraConfiguration;->mDarkModeBackgroundMaxL:F

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeBackgroundMaxL:F

    .line 146
    iget-wide v0, p1, Loplus/content/res/OplusExtraConfiguration;->mOplusChangedConfigs:J

    iput-wide v0, p0, Loplus/content/res/OplusExtraConfiguration;->mOplusChangedConfigs:J

    .line 147
    iget v0, p1, Loplus/content/res/OplusExtraConfiguration;->mFontOpSansSettings:I

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFontOpSansSettings:I

    .line 148
    iget-object v0, p1, Loplus/content/res/OplusExtraConfiguration;->mThemePrefix:Ljava/lang/String;

    iput-object v0, p0, Loplus/content/res/OplusExtraConfiguration;->mThemePrefix:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public whitelist setToDefaults()V
    .locals 6

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChanged:I

    .line 175
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    .line 176
    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFlipFont:I

    .line 177
    const/4 v3, -0x1

    iput v3, p0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    .line 178
    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mAccessibleChanged:I

    .line 179
    iput-wide v1, p0, Loplus/content/res/OplusExtraConfiguration;->mUxIconConfig:J

    .line 180
    iput v3, p0, Loplus/content/res/OplusExtraConfiguration;->mFontUserId:I

    .line 181
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    .line 182
    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    .line 183
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFoldingAngle:F

    .line 184
    const-string v4, ""

    iput-object v4, p0, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;

    .line 185
    iput-wide v1, p0, Loplus/content/res/OplusExtraConfiguration;->mOplusConfigType:J

    .line 186
    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeBackgroundMaxL:F

    .line 187
    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeForegroundMinL:F

    .line 188
    iput v0, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeDialogBgMaxL:F

    .line 189
    iput-wide v1, p0, Loplus/content/res/OplusExtraConfiguration;->mOplusChangedConfigs:J

    .line 190
    iput v3, p0, Loplus/content/res/OplusExtraConfiguration;->mFontOpSansSettings:I

    .line 191
    iput-object v4, p0, Loplus/content/res/OplusExtraConfiguration;->mThemePrefix:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v0, "stringbuilder":Ljava/lang/StringBuilder;
    const-string v1, "mThemeChanged= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChanged:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    const-string v2, ", mThemeChangedFlags= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    const-string v2, ", mFlipFont= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Loplus/content/res/OplusExtraConfiguration;->mFlipFont:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    const-string v2, ", mAccessibleChanged= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Loplus/content/res/OplusExtraConfiguration;->mAccessibleChanged:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    const-string v2, ", mUxIconConfig= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Loplus/content/res/OplusExtraConfiguration;->mUxIconConfig:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 158
    const-string v2, ", mMaterialColor= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    const-string v2, ", mUserId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    const-string v2, ", mFontUserId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Loplus/content/res/OplusExtraConfiguration;->mFontUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 161
    const-string v2, ", mFontVariationSettings= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    const-string v2, ", mFoldingAngle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Loplus/content/res/OplusExtraConfiguration;->mFoldingAngle:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    const-string v2, ", mIconPackName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    const-string v2, ", mDarkModeBackgroundMaxL= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeBackgroundMaxL:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    const-string v2, ", mDarkModeDialogBgMaxL= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeDialogBgMaxL:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    const-string v2, ", mDarkModeForegroundMinL= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeForegroundMinL:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    const-string v2, ", mOplusConfigType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Loplus/content/res/OplusExtraConfiguration;->mOplusConfigType:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    const-string v2, ", mOplusChangedConfigs= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Loplus/content/res/OplusExtraConfiguration;->mOplusChangedConfigs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    const-string v2, ", OpSans= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Loplus/content/res/OplusExtraConfiguration;->mFontOpSansSettings:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist updateFrom(Loplus/content/res/OplusExtraConfiguration;)I
    .locals 9
    .param p1, "extraconfiguration"    # Loplus/content/res/OplusExtraConfiguration;

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "i":I
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mThemeChanged:I

    if-lez v1, :cond_1

    iget v2, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChanged:I

    if-eq v2, v1, :cond_1

    .line 198
    const/high16 v2, 0x8000000

    or-int/2addr v0, v2

    .line 199
    iput v1, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChanged:I

    .line 200
    iget-wide v1, p1, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    iput-wide v1, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    .line 201
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    if-ltz v1, :cond_0

    .line 202
    iput v1, p0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    .line 204
    :cond_0
    iget-object v1, p1, Loplus/content/res/OplusExtraConfiguration;->mThemePrefix:Ljava/lang/String;

    iput-object v1, p0, Loplus/content/res/OplusExtraConfiguration;->mThemePrefix:Ljava/lang/String;

    .line 207
    :cond_1
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mAccessibleChanged:I

    const/high16 v2, 0x4000000

    if-eqz v1, :cond_2

    iget v3, p0, Loplus/content/res/OplusExtraConfiguration;->mAccessibleChanged:I

    if-eq v3, v1, :cond_2

    .line 209
    or-int/2addr v0, v2

    .line 210
    iput v1, p0, Loplus/content/res/OplusExtraConfiguration;->mAccessibleChanged:I

    .line 211
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    if-ltz v1, :cond_2

    .line 212
    iput v1, p0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    .line 216
    :cond_2
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mFlipFont:I

    if-lez v1, :cond_3

    iget v3, p0, Loplus/content/res/OplusExtraConfiguration;->mFlipFont:I

    if-eq v3, v1, :cond_3

    .line 217
    const/high16 v3, 0x2000000

    or-int/2addr v0, v3

    .line 218
    iput v1, p0, Loplus/content/res/OplusExtraConfiguration;->mFlipFont:I

    .line 221
    :cond_3
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    const/high16 v3, 0x10000000

    if-ltz v1, :cond_4

    iget v4, p0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    if-eq v4, v1, :cond_4

    .line 222
    or-int/2addr v0, v3

    .line 223
    iput v1, p0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    .line 226
    :cond_4
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mFontUserId:I

    if-ltz v1, :cond_5

    iget v4, p0, Loplus/content/res/OplusExtraConfiguration;->mFontUserId:I

    if-eq v4, v1, :cond_5

    .line 227
    or-int/2addr v0, v3

    .line 228
    iput v1, p0, Loplus/content/res/OplusExtraConfiguration;->mFontUserId:I

    .line 231
    :cond_5
    iget-wide v4, p1, Loplus/content/res/OplusExtraConfiguration;->mUxIconConfig:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    const/high16 v6, 0x800000

    if-lez v1, :cond_6

    iget-wide v7, p0, Loplus/content/res/OplusExtraConfiguration;->mUxIconConfig:J

    cmp-long v1, v4, v7

    if-eqz v1, :cond_6

    .line 232
    or-int/2addr v0, v6

    .line 233
    iput-wide v4, p0, Loplus/content/res/OplusExtraConfiguration;->mUxIconConfig:J

    .line 234
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    if-ltz v1, :cond_6

    .line 235
    iput v1, p0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    .line 239
    :cond_6
    invoke-direct {p0, p1}, Loplus/content/res/OplusExtraConfiguration;->isMaterialChanged(Loplus/content/res/OplusExtraConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 240
    or-int/2addr v0, v2

    .line 241
    iget-wide v1, p1, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    iput-wide v1, p0, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    .line 242
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    if-ltz v1, :cond_7

    .line 243
    iput v1, p0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    .line 247
    :cond_7
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    const/high16 v2, 0x1000000

    if-lez v1, :cond_8

    iget v4, p0, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    if-eq v1, v4, :cond_8

    .line 249
    or-int/2addr v0, v2

    .line 250
    iput v1, p0, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    .line 253
    :cond_8
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mFoldingAngle:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_9

    iget v4, p0, Loplus/content/res/OplusExtraConfiguration;->mFoldingAngle:F

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_9

    .line 254
    const/high16 v4, 0x10000

    or-int/2addr v0, v4

    .line 255
    iput v1, p0, Loplus/content/res/OplusExtraConfiguration;->mFoldingAngle:F

    .line 258
    :cond_9
    iget-object v1, p1, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p1, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;

    iget-object v4, p0, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;

    .line 259
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 260
    or-int/2addr v0, v6

    .line 261
    iget-object v1, p1, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;

    iput-object v1, p0, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;

    .line 262
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    if-ltz v1, :cond_a

    .line 263
    iput v1, p0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    .line 267
    :cond_a
    invoke-direct {p0, p1}, Loplus/content/res/OplusExtraConfiguration;->isDarkModeBgChanged(Loplus/content/res/OplusExtraConfiguration;)Z

    move-result v1

    const-wide/16 v4, 0x1

    if-eqz v1, :cond_b

    .line 268
    or-int/2addr v0, v3

    .line 269
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mDarkModeBackgroundMaxL:F

    iput v1, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeBackgroundMaxL:F

    .line 270
    iput-wide v4, p0, Loplus/content/res/OplusExtraConfiguration;->mOplusConfigType:J

    .line 273
    :cond_b
    invoke-direct {p0, p1}, Loplus/content/res/OplusExtraConfiguration;->isDarkModeDialogBgChanged(Loplus/content/res/OplusExtraConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 274
    or-int/2addr v0, v3

    .line 275
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mDarkModeDialogBgMaxL:F

    iput v1, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeDialogBgMaxL:F

    .line 276
    iput-wide v4, p0, Loplus/content/res/OplusExtraConfiguration;->mOplusConfigType:J

    .line 279
    :cond_c
    invoke-direct {p0, p1}, Loplus/content/res/OplusExtraConfiguration;->isDarkModeFgChanged(Loplus/content/res/OplusExtraConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 280
    or-int/2addr v0, v3

    .line 281
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mDarkModeForegroundMinL:F

    iput v1, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeForegroundMinL:F

    .line 282
    iput-wide v4, p0, Loplus/content/res/OplusExtraConfiguration;->mOplusConfigType:J

    .line 285
    :cond_d
    invoke-direct {p0, p1}, Loplus/content/res/OplusExtraConfiguration;->isOpSansSettingsChanged(Loplus/content/res/OplusExtraConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 286
    or-int/2addr v0, v2

    .line 287
    iget v1, p1, Loplus/content/res/OplusExtraConfiguration;->mFontOpSansSettings:I

    iput v1, p0, Loplus/content/res/OplusExtraConfiguration;->mFontOpSansSettings:I

    .line 290
    :cond_e
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 383
    iget v0, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget-wide v0, p0, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 385
    iget v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFlipFont:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    iget v0, p0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    iget v0, p0, Loplus/content/res/OplusExtraConfiguration;->mAccessibleChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    iget-wide v0, p0, Loplus/content/res/OplusExtraConfiguration;->mUxIconConfig:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 389
    iget v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFontUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget-wide v0, p0, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 391
    iget v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    iget-object v0, p0, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget-wide v0, p0, Loplus/content/res/OplusExtraConfiguration;->mOplusConfigType:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 394
    iget v0, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeForegroundMinL:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 395
    iget v0, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeBackgroundMaxL:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 396
    iget v0, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeDialogBgMaxL:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 397
    iget v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFoldingAngle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 398
    iget-wide v0, p0, Loplus/content/res/OplusExtraConfiguration;->mOplusChangedConfigs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 399
    iget v0, p0, Loplus/content/res/OplusExtraConfiguration;->mFontOpSansSettings:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget-object v0, p0, Loplus/content/res/OplusExtraConfiguration;->mThemePrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    return-void
.end method
