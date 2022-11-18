.class public Landroid/content/res/GradientColor;
.super Landroid/content/res/ComplexColor;
.source "GradientColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/GradientColor$GradientColorFactory;,
        Landroid/content/res/GradientColor$GradientTileMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG_GRADIENT:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "GradientColor"

.field private static final greylist-max-o TILE_MODE_CLAMP:I = 0x0

.field private static final greylist-max-o TILE_MODE_MIRROR:I = 0x2

.field private static final greylist-max-o TILE_MODE_REPEAT:I = 0x1


# instance fields
.field private greylist-max-o mCenterColor:I

.field private greylist-max-o mCenterX:F

.field private greylist-max-o mCenterY:F

.field private greylist-max-o mChangingConfigurations:I

.field private greylist-max-o mDefaultColor:I

.field private greylist-max-o mEndColor:I

.field private greylist-max-o mEndX:F

.field private greylist-max-o mEndY:F

.field private greylist-max-o mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

.field private greylist-max-o mGradientRadius:F

.field private greylist-max-o mGradientType:I

.field private greylist-max-o mHasCenterColor:Z

.field private greylist-max-o mItemColors:[I

.field private greylist-max-o mItemOffsets:[F

.field private greylist-max-o mItemsThemeAttrs:[[I

.field private greylist-max-o mShader:Landroid/graphics/Shader;

.field private greylist-max-o mStartColor:I

.field private greylist-max-o mStartX:F

.field private greylist-max-o mStartY:F

.field private greylist-max-o mThemeAttrs:[I

.field private greylist-max-o mTileMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChangingConfigurations(Landroid/content/res/GradientColor;)I
    .locals 0

    iget p0, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    return p0
.end method

.method private constructor greylist-max-o <init>()V
    .locals 2

    .line 129
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 104
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 105
    iput v1, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 107
    iput v1, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 108
    iput v1, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 109
    iput v1, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 110
    iput v1, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 112
    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 113
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 114
    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 115
    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 117
    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 119
    iput v1, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 130
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/res/GradientColor;)V
    .locals 2
    .param p1, "copy"    # Landroid/content/res/GradientColor;

    .line 132
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 104
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 105
    iput v1, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 107
    iput v1, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 108
    iput v1, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 109
    iput v1, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 110
    iput v1, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 112
    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 113
    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 114
    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 115
    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 117
    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 119
    iput v1, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 133
    if-eqz p1, :cond_3

    .line 134
    iget v0, p1, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    iput v0, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 135
    iget v0, p1, Landroid/content/res/GradientColor;->mDefaultColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    .line 136
    iget-object v0, p1, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    iput-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    .line 137
    iget v0, p1, Landroid/content/res/GradientColor;->mGradientType:I

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 138
    iget v0, p1, Landroid/content/res/GradientColor;->mCenterX:F

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 139
    iget v0, p1, Landroid/content/res/GradientColor;->mCenterY:F

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 140
    iget v0, p1, Landroid/content/res/GradientColor;->mStartX:F

    iput v0, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 141
    iget v0, p1, Landroid/content/res/GradientColor;->mStartY:F

    iput v0, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 142
    iget v0, p1, Landroid/content/res/GradientColor;->mEndX:F

    iput v0, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 143
    iget v0, p1, Landroid/content/res/GradientColor;->mEndY:F

    iput v0, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 144
    iget v0, p1, Landroid/content/res/GradientColor;->mStartColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 145
    iget v0, p1, Landroid/content/res/GradientColor;->mCenterColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 146
    iget v0, p1, Landroid/content/res/GradientColor;->mEndColor:I

    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 147
    iget-boolean v0, p1, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 148
    iget v0, p1, Landroid/content/res/GradientColor;->mGradientRadius:F

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 149
    iget v0, p1, Landroid/content/res/GradientColor;->mTileMode:I

    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 151
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemColors:[I

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    .line 154
    :cond_0
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemOffsets:[F

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    .line 158
    :cond_1
    iget-object v0, p1, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    .line 161
    :cond_2
    iget-object v0, p1, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-eqz v0, :cond_3

    .line 162
    invoke-virtual {v0}, [[I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 165
    :cond_3
    return-void
.end method

.method private greylist-max-o applyItemsAttrsTheme(Landroid/content/res/Resources$Theme;)V
    .locals 8
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 395
    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-nez v0, :cond_0

    .line 396
    return-void

    .line 399
    :cond_0
    const/4 v0, 0x0

    .line 401
    .local v0, "hasUnresolvedAttrs":Z
    iget-object v1, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 402
    .local v1, "themeAttrsList":[[I
    array-length v2, v1

    .line 403
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 404
    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    .line 405
    aget-object v4, v1, v3

    sget-object v5, Lcom/android/internal/R$styleable;->GradientColorItem:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 411
    .local v4, "a":Landroid/content/res/TypedArray;
    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v5

    aput-object v5, v1, v3

    .line 412
    aget-object v5, v1, v3

    if-eqz v5, :cond_1

    .line 413
    const/4 v0, 0x1

    .line 416
    :cond_1
    iget-object v5, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    const/4 v6, 0x0

    aget v7, v5, v3

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    aput v6, v5, v3

    .line 417
    iget-object v5, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    aget v6, v5, v3

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    aput v6, v5, v3

    .line 425
    iget v5, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 427
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 403
    .end local v4    # "a":Landroid/content/res/TypedArray;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 431
    .end local v3    # "i":I
    :cond_3
    if-nez v0, :cond_4

    .line 432
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 434
    :cond_4
    return-void
.end method

.method private greylist-max-o applyRootAttrsTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 575
    iget-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    sget-object v1, Lcom/android/internal/R$styleable;->GradientColor:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 578
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    .line 580
    invoke-direct {p0, v0}, Landroid/content/res/GradientColor;->updateRootElementState(Landroid/content/res/TypedArray;)V

    .line 583
    iget v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 584
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 585
    return-void
.end method

.method private greylist-max-o applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 565
    iget-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    .line 566
    invoke-direct {p0, p1}, Landroid/content/res/GradientColor;->applyRootAttrsTheme(Landroid/content/res/Resources$Theme;)V

    .line 568
    :cond_0
    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-eqz v0, :cond_1

    .line 569
    invoke-direct {p0, p1}, Landroid/content/res/GradientColor;->applyItemsAttrsTheme(Landroid/content/res/Resources$Theme;)V

    .line 571
    :cond_1
    invoke-direct {p0}, Landroid/content/res/GradientColor;->onColorsChange()V

    .line 572
    return-void
.end method

.method public static greylist-max-o createFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 261
    .local v0, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    if-ne v2, v3, :cond_1

    .line 270
    invoke-static {p0, p1, v0, p2}, Landroid/content/res/GradientColor;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object v1

    return-object v1

    .line 267
    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static greylist-max-o createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "name":Ljava/lang/String;
    const-string v1, "gradient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    new-instance v1, Landroid/content/res/GradientColor;

    invoke-direct {v1}, Landroid/content/res/GradientColor;-><init>()V

    .line 291
    .local v1, "gradientColor":Landroid/content/res/GradientColor;
    invoke-direct {v1, p0, p1, p2, p3}, Landroid/content/res/GradientColor;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 292
    return-object v1

    .line 286
    .end local v1    # "gradientColor":Landroid/content/res/GradientColor;
    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": invalid gradient color tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    sget-object v0, Lcom/android/internal/R$styleable;->GradientColor:[I

    invoke-static {p1, p4, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 302
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/content/res/GradientColor;->updateRootElementState(Landroid/content/res/TypedArray;)V

    .line 303
    iget v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 304
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 307
    invoke-direct {p0}, Landroid/content/res/GradientColor;->validateXmlContent()V

    .line 309
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/GradientColor;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 311
    invoke-direct {p0}, Landroid/content/res/GradientColor;->onColorsChange()V

    .line 312
    return-void
.end method

.method private greylist-max-o inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 20
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    move-object/from16 v0, p0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 329
    .local v1, "innerDepth":I
    const/16 v3, 0x14

    new-array v3, v3, [F

    .line 330
    .local v3, "offsetList":[F
    array-length v4, v3

    new-array v4, v4, [I

    .line 331
    .local v4, "colorList":[I
    array-length v5, v3

    new-array v5, v5, [[I

    .line 333
    .local v5, "themeAttrsList":[[I
    const/4 v6, 0x0

    .line 334
    .local v6, "listSize":I
    const/4 v7, 0x0

    .line 335
    .local v7, "hasUnresolvedAttrs":Z
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v9, v8

    .local v9, "type":I
    const/4 v10, 0x0

    if-eq v8, v2, :cond_7

    .line 336
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    move v11, v8

    .local v11, "depth":I
    if-ge v8, v1, :cond_1

    const/4 v8, 0x3

    if-eq v9, v8, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v17, v1

    move/from16 v18, v9

    goto/16 :goto_3

    .line 338
    :cond_1
    :goto_1
    const/4 v8, 0x2

    if-eq v9, v8, :cond_2

    .line 339
    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v17, v1

    goto/16 :goto_2

    .line 341
    :cond_2
    if-gt v11, v1, :cond_6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v12, "item"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 342
    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v17, v1

    goto/16 :goto_2

    .line 345
    :cond_3
    sget-object v8, Lcom/android/internal/R$styleable;->GradientColorItem:[I

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-static {v12, v14, v13, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 347
    .local v8, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    .line 348
    .local v15, "hasColor":Z
    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v16

    .line 349
    .local v16, "hasOffset":Z
    if-eqz v15, :cond_5

    if-eqz v16, :cond_5

    .line 356
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    .line 357
    .local v2, "themeAttrs":[I
    invoke-virtual {v8, v10, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 358
    .local v10, "color":I
    move/from16 v17, v1

    .end local v1    # "innerDepth":I
    .local v17, "innerDepth":I
    const/4 v1, 0x0

    move/from16 v18, v9

    const/4 v9, 0x1

    .end local v9    # "type":I
    .local v18, "type":I
    invoke-virtual {v8, v9, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 364
    .local v1, "offset":F
    iget v9, v0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v19

    or-int v9, v9, v19

    iput v9, v0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    .line 365
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 367
    if-eqz v2, :cond_4

    .line 368
    const/4 v7, 0x1

    .line 371
    :cond_4
    invoke-static {v4, v6, v10}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v4

    .line 372
    invoke-static {v3, v6, v1}, Lcom/android/internal/util/GrowingArrayUtils;->append([FIF)[F

    move-result-object v3

    .line 373
    invoke-static {v5, v6, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v5, v9

    check-cast v5, [[I

    .line 374
    nop

    .end local v1    # "offset":F
    .end local v2    # "themeAttrs":[I
    .end local v8    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "color":I
    .end local v15    # "hasColor":Z
    .end local v16    # "hasOffset":Z
    add-int/lit8 v6, v6, 0x1

    .line 375
    move/from16 v1, v17

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 349
    .end local v17    # "innerDepth":I
    .end local v18    # "type":I
    .local v1, "innerDepth":I
    .restart local v8    # "a":Landroid/content/res/TypedArray;
    .restart local v9    # "type":I
    .restart local v15    # "hasColor":Z
    .restart local v16    # "hasOffset":Z
    :cond_5
    move/from16 v17, v1

    move/from16 v18, v9

    .line 350
    .end local v1    # "innerDepth":I
    .end local v9    # "type":I
    .restart local v17    # "innerDepth":I
    .restart local v18    # "type":I
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    .end local v8    # "a":Landroid/content/res/TypedArray;
    .end local v15    # "hasColor":Z
    .end local v16    # "hasOffset":Z
    .end local v17    # "innerDepth":I
    .end local v18    # "type":I
    .restart local v1    # "innerDepth":I
    .restart local v9    # "type":I
    :cond_6
    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v17, v1

    move/from16 v18, v9

    .line 335
    .end local v1    # "innerDepth":I
    .end local v9    # "type":I
    .end local v11    # "depth":I
    .restart local v17    # "innerDepth":I
    :goto_2
    move/from16 v1, v17

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v17    # "innerDepth":I
    .restart local v1    # "innerDepth":I
    .restart local v9    # "type":I
    :cond_7
    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v17, v1

    move/from16 v18, v9

    .line 376
    .end local v1    # "innerDepth":I
    .end local v9    # "type":I
    .restart local v17    # "innerDepth":I
    .restart local v18    # "type":I
    :goto_3
    if-lez v6, :cond_9

    .line 377
    if-eqz v7, :cond_8

    .line 378
    new-array v1, v6, [[I

    iput-object v1, v0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 379
    invoke-static {v5, v10, v1, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 381
    :cond_8
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    .line 384
    :goto_4
    new-array v1, v6, [I

    iput-object v1, v0, Landroid/content/res/GradientColor;->mItemColors:[I

    .line 385
    new-array v2, v6, [F

    iput-object v2, v0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    .line 386
    invoke-static {v4, v10, v1, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iget-object v1, v0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    invoke-static {v3, v10, v1, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    :cond_9
    return-void
.end method

.method private greylist-max-o onColorsChange()V
    .locals 14

    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, "tempColors":[I
    const/4 v1, 0x0

    .line 440
    .local v1, "tempOffsets":[F
    iget-object v2, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    .line 441
    array-length v2, v2

    .line 442
    .local v2, "length":I
    new-array v0, v2, [I

    .line 443
    new-array v1, v2, [F

    .line 445
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 446
    iget-object v7, p0, Landroid/content/res/GradientColor;->mItemColors:[I

    aget v7, v7, v6

    aput v7, v0, v6

    .line 447
    iget-object v7, p0, Landroid/content/res/GradientColor;->mItemOffsets:[F

    aget v7, v7, v6

    aput v7, v1, v6

    .line 445
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 449
    .end local v2    # "length":I
    .end local v6    # "i":I
    :cond_0
    goto :goto_1

    .line 450
    :cond_1
    iget-boolean v2, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    if-eqz v2, :cond_2

    .line 451
    const/4 v2, 0x3

    new-array v0, v2, [I

    .line 452
    iget v6, p0, Landroid/content/res/GradientColor;->mStartColor:I

    aput v6, v0, v3

    .line 453
    iget v6, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    aput v6, v0, v5

    .line 454
    iget v6, p0, Landroid/content/res/GradientColor;->mEndColor:I

    aput v6, v0, v4

    .line 456
    new-array v1, v2, [F

    .line 457
    const/4 v2, 0x0

    aput v2, v1, v3

    .line 459
    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v1, v5

    .line 460
    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v4

    goto :goto_1

    .line 462
    :cond_2
    new-array v0, v4, [I

    .line 463
    iget v2, p0, Landroid/content/res/GradientColor;->mStartColor:I

    aput v2, v0, v3

    .line 464
    iget v2, p0, Landroid/content/res/GradientColor;->mEndColor:I

    aput v2, v0, v5

    .line 467
    :goto_1
    array-length v2, v0

    if-ge v2, v4, :cond_3

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<gradient> tag requires 2 color values specified!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GradientColor"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_3
    iget v2, p0, Landroid/content/res/GradientColor;->mGradientType:I

    if-nez v2, :cond_4

    .line 473
    new-instance v2, Landroid/graphics/LinearGradient;

    iget v7, p0, Landroid/content/res/GradientColor;->mStartX:F

    iget v8, p0, Landroid/content/res/GradientColor;->mStartY:F

    iget v9, p0, Landroid/content/res/GradientColor;->mEndX:F

    iget v10, p0, Landroid/content/res/GradientColor;->mEndY:F

    iget v4, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 474
    invoke-static {v4}, Landroid/content/res/GradientColor;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v13

    move-object v6, v2

    move-object v11, v0

    move-object v12, v1

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    goto :goto_2

    .line 476
    :cond_4
    if-ne v2, v5, :cond_5

    .line 477
    new-instance v2, Landroid/graphics/RadialGradient;

    iget v7, p0, Landroid/content/res/GradientColor;->mCenterX:F

    iget v8, p0, Landroid/content/res/GradientColor;->mCenterY:F

    iget v9, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    iget v4, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 478
    invoke-static {v4}, Landroid/content/res/GradientColor;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v12

    move-object v6, v2

    move-object v10, v0

    move-object v11, v1

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    goto :goto_2

    .line 480
    :cond_5
    new-instance v2, Landroid/graphics/SweepGradient;

    iget v4, p0, Landroid/content/res/GradientColor;->mCenterX:F

    iget v5, p0, Landroid/content/res/GradientColor;->mCenterY:F

    invoke-direct {v2, v4, v5, v0, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object v2, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    .line 483
    :goto_2
    aget v2, v0, v3

    iput v2, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    .line 484
    return-void
.end method

.method private static greylist-max-o parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .locals 1
    .param p0, "tileMode"    # I

    .line 169
    packed-switch p0, :pswitch_data_0

    .line 177
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 175
    :pswitch_0
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 173
    :pswitch_1
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object v0

    .line 171
    :pswitch_2
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o updateRootElementState(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 186
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    .line 188
    iget v0, p0, Landroid/content/res/GradientColor;->mStartX:F

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mStartX:F

    .line 190
    iget v0, p0, Landroid/content/res/GradientColor;->mStartY:F

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mStartY:F

    .line 192
    iget v0, p0, Landroid/content/res/GradientColor;->mEndX:F

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mEndX:F

    .line 194
    iget v0, p0, Landroid/content/res/GradientColor;->mEndY:F

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mEndY:F

    .line 197
    iget v0, p0, Landroid/content/res/GradientColor;->mCenterX:F

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterX:F

    .line 199
    iget v0, p0, Landroid/content/res/GradientColor;->mCenterY:F

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterY:F

    .line 202
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    .line 205
    iget v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mStartColor:I

    .line 207
    iget-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    or-int/2addr v0, v2

    iput-boolean v0, p0, Landroid/content/res/GradientColor;->mHasCenterColor:Z

    .line 209
    iget v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mCenterColor:I

    .line 211
    iget v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mEndColor:I

    .line 214
    iget v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mTileMode:I

    .line 227
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    .line 229
    return-void
.end method

.method private greylist-max-o validateXmlContent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 237
    iget v0, p0, Landroid/content/res/GradientColor;->mGradientRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Landroid/content/res/GradientColor;->mGradientType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public greylist-max-o canApplyTheme()Z
    .locals 1

    .line 598
    iget-object v0, p0, Landroid/content/res/GradientColor;->mThemeAttrs:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/res/GradientColor;->mItemsThemeAttrs:[[I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public greylist-max-o getChangingConfigurations()I
    .locals 2

    .line 561
    invoke-super {p0}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v0

    iget v1, p0, Landroid/content/res/GradientColor;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o getConstantState()Landroid/content/res/ConstantState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Landroid/content/res/GradientColor$GradientColorFactory;

    invoke-direct {v0, p0}, Landroid/content/res/GradientColor$GradientColorFactory;-><init>(Landroid/content/res/GradientColor;)V

    iput-object v0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    .line 505
    :cond_0
    iget-object v0, p0, Landroid/content/res/GradientColor;->mFactory:Landroid/content/res/GradientColor$GradientColorFactory;

    return-object v0
.end method

.method public greylist-max-o getDefaultColor()I
    .locals 1

    .line 493
    iget v0, p0, Landroid/content/res/GradientColor;->mDefaultColor:I

    return v0
.end method

.method public greylist-max-o getShader()Landroid/graphics/Shader;
    .locals 1

    .line 250
    iget-object v0, p0, Landroid/content/res/GradientColor;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public bridge synthetic blacklist obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Landroid/content/res/GradientColor;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/GradientColor;
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 542
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/res/GradientColor;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 546
    :cond_0
    new-instance v0, Landroid/content/res/GradientColor;

    invoke-direct {v0, p0}, Landroid/content/res/GradientColor;-><init>(Landroid/content/res/GradientColor;)V

    .line 547
    .local v0, "clone":Landroid/content/res/GradientColor;
    invoke-direct {v0, p1}, Landroid/content/res/GradientColor;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 548
    return-object v0

    .line 543
    .end local v0    # "clone":Landroid/content/res/GradientColor;
    :cond_1
    :goto_0
    return-object p0
.end method
