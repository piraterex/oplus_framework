.class public Landroid/graphics/drawable/NinePatchDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NinePatchDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_DITHER:Z = false


# instance fields
.field private greylist-max-o mBitmapHeight:I

.field private greylist-max-o mBitmapWidth:I

.field private blacklist mBlendModeFilter:Landroid/graphics/BlendModeColorFilter;

.field private greylist-max-o mMutated:Z

.field private greylist mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

.field private greylist-max-o mOpticalInsets:Landroid/graphics/Insets;

.field private greylist-max-o mOutlineInsets:Landroid/graphics/Rect;

.field private greylist-max-o mOutlineRadius:F

.field private greylist-max-o mPadding:Landroid/graphics/Rect;

.field private greylist-max-o mPaint:Landroid/graphics/Paint;

.field private greylist-max-o mTargetDensity:I

.field private greylist-max-o mTempRect:Landroid/graphics/Rect;


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 77
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    .line 83
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    .line 87
    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    .line 90
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-direct {v0}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    .line 91
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "chunk"    # [B
    .param p4, "padding"    # Landroid/graphics/Rect;
    .param p5, "opticalInsets"    # Landroid/graphics/Rect;
    .param p6, "srcName"    # Ljava/lang/String;

    .line 121
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/NinePatch;

    invoke-direct {v1, p2, p3, p6}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    invoke-direct {v0, v1, p4, p5}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    .line 123
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "chunk"    # [B
    .param p4, "padding"    # Landroid/graphics/Rect;
    .param p5, "srcName"    # Ljava/lang/String;

    .line 110
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/NinePatch;

    invoke-direct {v1, p2, p3, p5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    invoke-direct {v0, v1, p4}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    .line 111
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "patch"    # Landroid/graphics/NinePatch;

    .line 142
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, p2, v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    .line 143
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "chunk"    # [B
    .param p3, "padding"    # Landroid/graphics/Rect;
    .param p4, "srcName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/NinePatch;

    invoke-direct {v1, p1, p2, p4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    invoke-direct {v0, v1, p3}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    .line 102
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/NinePatch;)V
    .locals 2
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    .line 135
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 730
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 77
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    .line 83
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    .line 87
    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    .line 731
    iput-object p1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    .line 733
    invoke-direct {p0, p2}, Landroid/graphics/drawable/NinePatchDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 734
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;Landroid/graphics/drawable/NinePatchDrawable-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private greylist-max-o computeBitmapSize()V
    .locals 13

    .line 666
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    .line 667
    .local v0, "ninePatch":Landroid/graphics/NinePatch;
    if-nez v0, :cond_0

    .line 668
    return-void

    .line 671
    :cond_0
    iget v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    .line 672
    .local v1, "targetDensity":I
    invoke-virtual {v0}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v2

    if-nez v2, :cond_1

    .line 673
    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v2

    .line 675
    .local v2, "sourceDensity":I
    :goto_0
    iget-object v3, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v3, v3, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 676
    .local v3, "sourceOpticalInsets":Landroid/graphics/Insets;
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    .line 677
    iget v4, v3, Landroid/graphics/Insets;->left:I

    invoke-static {v4, v2, v1, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    .line 679
    .local v4, "left":I
    iget v6, v3, Landroid/graphics/Insets;->top:I

    invoke-static {v6, v2, v1, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v6

    .line 681
    .local v6, "top":I
    iget v7, v3, Landroid/graphics/Insets;->right:I

    invoke-static {v7, v2, v1, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v7

    .line 683
    .local v7, "right":I
    iget v8, v3, Landroid/graphics/Insets;->bottom:I

    invoke-static {v8, v2, v1, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v8

    .line 685
    .local v8, "bottom":I
    invoke-static {v4, v6, v7, v8}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v9

    iput-object v9, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    .line 686
    .end local v4    # "left":I
    .end local v6    # "top":I
    .end local v7    # "right":I
    .end local v8    # "bottom":I
    goto :goto_1

    .line 687
    :cond_2
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    .line 690
    :goto_1
    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v4, v4, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    .line 691
    .local v4, "sourcePadding":Landroid/graphics/Rect;
    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 692
    iget-object v7, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    if-nez v7, :cond_3

    .line 693
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    .line 695
    :cond_3
    iget-object v7, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v8, v2, v1, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 697
    iget-object v7, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v2, v1, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 699
    iget-object v7, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v8, v2, v1, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 701
    iget-object v7, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v2, v1, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 704
    :cond_4
    iput-object v6, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    .line 707
    :goto_2
    nop

    .line 708
    invoke-virtual {v0}, Landroid/graphics/NinePatch;->getHeight()I

    move-result v7

    .line 707
    invoke-static {v7, v2, v1, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v7

    iput v7, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    .line 709
    nop

    .line 710
    invoke-virtual {v0}, Landroid/graphics/NinePatch;->getWidth()I

    move-result v7

    .line 709
    invoke-static {v7, v2, v1, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v5

    iput v5, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    .line 712
    invoke-virtual {v0}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getNinePatchInsets()Landroid/graphics/NinePatch$InsetStruct;

    move-result-object v5

    .line 713
    .local v5, "insets":Landroid/graphics/NinePatch$InsetStruct;
    if-eqz v5, :cond_5

    .line 714
    iget-object v6, v5, Landroid/graphics/NinePatch$InsetStruct;->outlineRect:Landroid/graphics/Rect;

    .line 715
    .local v6, "outlineRect":Landroid/graphics/Rect;
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    iget v9, v6, Landroid/graphics/Rect;->right:I

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v1

    int-to-float v12, v2

    div-float/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Landroid/graphics/NinePatch$InsetStruct;->scaleInsets(IIIIF)Landroid/graphics/Rect;

    move-result-object v7

    iput-object v7, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    .line 717
    iget v7, v5, Landroid/graphics/NinePatch$InsetStruct;->outlineRadius:F

    invoke-static {v7, v2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v7

    iput v7, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineRadius:F

    .line 719
    .end local v6    # "outlineRect":Landroid/graphics/Rect;
    goto :goto_3

    .line 720
    :cond_5
    iput-object v6, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    .line 722
    :goto_3
    return-void
.end method

.method static synthetic blacklist lambda$updateStateFromTypedArray$0(Landroid/graphics/Rect;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 1
    .param p0, "padding"    # Landroid/graphics/Rect;
    .param p1, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p2, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p3, "src"    # Landroid/graphics/ImageDecoder$Source;

    .line 441
    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setOutPaddingRect(Landroid/graphics/Rect;)V

    .line 442
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 443
    return-void
.end method

.method private greylist-max-o needsMirroring()Z
    .locals 2

    .line 377
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->isAutoMirrored()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private greylist-max-o updateLocalState(Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 740
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    .line 743
    .local v0, "state":Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    iget-boolean v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    if-eqz v1, :cond_0

    .line 744
    iget-boolean v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setDither(Z)V

    .line 750
    :cond_0
    if-nez p1, :cond_1

    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    if-eqz v1, :cond_1

    .line 751
    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    goto :goto_0

    .line 753
    :cond_1
    iget v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    .line 755
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBlendModeFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v3, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBlendModeFilter:Landroid/graphics/BlendModeColorFilter;

    .line 756
    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->computeBitmapSize()V

    .line 757
    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 11
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 412
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 413
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    .line 416
    .local v1, "state":Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    iget v2, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    .line 419
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    .line 421
    iget-boolean v2, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    .line 423
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 424
    .local v2, "srcResId":I
    if-eqz v2, :cond_4

    .line 425
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 426
    .local v3, "padding":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 427
    .local v4, "opticalInsets":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 430
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 431
    .local v6, "value":Landroid/util/TypedValue;
    invoke-virtual {v0, v2, v6}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v7

    .line 433
    .local v7, "is":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 434
    .local v8, "density":I
    iget v9, v6, Landroid/util/TypedValue;->density:I

    if-nez v9, :cond_0

    .line 435
    const/16 v8, 0xa0

    goto :goto_0

    .line 436
    :cond_0
    iget v9, v6, Landroid/util/TypedValue;->density:I

    const v10, 0xffff

    if-eq v9, v10, :cond_1

    .line 437
    iget v9, v6, Landroid/util/TypedValue;->density:I

    move v8, v9

    .line 439
    :cond_1
    :goto_0
    invoke-static {v0, v7, v8}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;Ljava/io/InputStream;I)Landroid/graphics/ImageDecoder$Source;

    move-result-object v9

    .line 440
    .local v9, "source":Landroid/graphics/ImageDecoder$Source;
    new-instance v10, Landroid/graphics/drawable/NinePatchDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v10, v3}, Landroid/graphics/drawable/NinePatchDrawable$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v9, v10}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v5, v10

    .line 445
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    .end local v6    # "value":Landroid/util/TypedValue;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "density":I
    .end local v9    # "source":Landroid/graphics/ImageDecoder$Source;
    goto :goto_1

    .line 446
    :catch_0
    move-exception v6

    .line 450
    :goto_1
    if-eqz v5, :cond_3

    .line 453
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v6

    if-eqz v6, :cond_2

    .line 458
    invoke-virtual {v5, v4}, Landroid/graphics/Bitmap;->getOpticalInsets(Landroid/graphics/Rect;)V

    .line 460
    new-instance v6, Landroid/graphics/NinePatch;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v7

    invoke-direct {v6, v5, v7}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    iput-object v6, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    .line 461
    iput-object v3, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    .line 462
    invoke-static {v4}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v6

    iput-object v6, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    goto :goto_2

    .line 454
    :cond_2
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": <nine-patch> requires a valid 9-patch source image"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 451
    :cond_3
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": <nine-patch> requires a valid src attribute"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 465
    .end local v3    # "padding":Landroid/graphics/Rect;
    .end local v4    # "opticalInsets":Landroid/graphics/Rect;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4
    :goto_2
    const/4 v3, 0x4

    iget-boolean v4, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    .line 467
    const/4 v3, 0x3

    iget v4, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    .line 469
    const/4 v3, 0x5

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 470
    .local v3, "tintMode":I
    if-eq v3, v4, :cond_5

    .line 471
    sget-object v4, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v4

    iput-object v4, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 474
    :cond_5
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 475
    .local v4, "tint":Landroid/content/res/ColorStateList;
    if-eqz v4, :cond_6

    .line 476
    iput-object v4, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    .line 478
    :cond_6
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 482
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 484
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    .line 485
    .local v0, "state":Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    if-nez v0, :cond_0

    .line 486
    return-void

    .line 489
    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    if-eqz v1, :cond_1

    .line 490
    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    sget-object v2, Lcom/android/internal/R$styleable;->NinePatchDrawable:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 493
    .local v1, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 498
    goto :goto_2

    .line 497
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 494
    :catch_0
    move-exception v2

    .line 495
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-static {v2}, Landroid/graphics/drawable/NinePatchDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_0

    .line 497
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 498
    throw v2

    .line 501
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_1
    :goto_2
    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    .line 505
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 506
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .locals 1

    .line 510
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o clearMutated()V
    .locals 1

    .line 563
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mMutated:Z

    .line 565
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 194
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    .line 196
    .local v0, "state":Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 197
    .local v1, "bounds":Landroid/graphics/Rect;
    const/4 v2, -0x1

    .line 200
    .local v2, "restoreToCount":I
    iget-object v3, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBlendModeFilter:Landroid/graphics/BlendModeColorFilter;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    if-nez v3, :cond_0

    .line 201
    iget-object v3, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBlendModeFilter:Landroid/graphics/BlendModeColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 202
    const/4 v3, 0x1

    .local v3, "clearColorFilter":Z
    goto :goto_0

    .line 204
    .end local v3    # "clearColorFilter":Z
    :cond_0
    const/4 v3, 0x0

    .line 208
    .restart local v3    # "clearColorFilter":Z
    :goto_0
    iget v4, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 209
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    .line 210
    .local v4, "restoreAlpha":I
    iget-object v6, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    int-to-float v7, v4

    iget v8, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 212
    .end local v4    # "restoreAlpha":I
    :cond_1
    const/4 v4, -0x1

    .line 215
    .restart local v4    # "restoreAlpha":I
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    .line 216
    invoke-virtual {v6}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 217
    .local v6, "needsDensityScaling":Z
    :goto_2
    if-eqz v6, :cond_5

    .line 218
    if-ltz v2, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    :goto_3
    move v2, v7

    .line 221
    iget v7, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    int-to-float v7, v7

    iget-object v8, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v8}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 222
    .local v7, "scale":F
    iget v8, v1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    .line 223
    .local v8, "px":F
    iget v9, v1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    .line 224
    .local v9, "py":F
    invoke-virtual {p1, v7, v7, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 226
    iget-object v10, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTempRect:Landroid/graphics/Rect;

    if-nez v10, :cond_4

    .line 227
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTempRect:Landroid/graphics/Rect;

    .line 231
    :cond_4
    iget-object v10, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTempRect:Landroid/graphics/Rect;

    .line 232
    .local v10, "scaledBounds":Landroid/graphics/Rect;
    iget v11, v1, Landroid/graphics/Rect;->left:I

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 233
    iget v11, v1, Landroid/graphics/Rect;->top:I

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 234
    iget v11, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v7

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 235
    iget v11, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v7

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 236
    move-object v1, v10

    .line 239
    .end local v7    # "scale":F
    .end local v8    # "px":F
    .end local v9    # "py":F
    .end local v10    # "scaledBounds":Landroid/graphics/Rect;
    :cond_5
    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->needsMirroring()Z

    move-result v7

    .line 240
    .local v7, "needsMirroring":Z
    if-eqz v7, :cond_7

    .line 241
    if-ltz v2, :cond_6

    move v8, v2

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    :goto_4
    move v2, v8

    .line 244
    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 245
    .local v8, "cx":F
    iget v10, v1, Landroid/graphics/Rect;->top:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    div-float/2addr v10, v9

    .line 246
    .local v10, "cy":F
    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {p1, v9, v5, v8, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 249
    .end local v8    # "cx":F
    .end local v10    # "cy":F
    :cond_7
    iget-object v5, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    iget-object v8, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1, v1, v8}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 251
    if-ltz v2, :cond_8

    .line 252
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 255
    :cond_8
    if-eqz v3, :cond_9

    .line 256
    iget-object v5, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 259
    :cond_9
    if-ltz v4, :cond_a

    .line 260
    iget-object v5, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 262
    :cond_a
    return-void
.end method

.method public whitelist getAlpha()I
    .locals 1

    .line 326
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 328
    const/16 v0, 0xff

    return v0

    .line 330
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .locals 2

    .line 266
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 546
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    .line 547
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    return-object v0
.end method

.method public whitelist getIntrinsicHeight()I
    .locals 1

    .line 529
    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapHeight:I

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .locals 1

    .line 524
    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBitmapWidth:I

    return v0
.end method

.method public whitelist getOpacity()I
    .locals 2

    .line 535
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    .line 534
    invoke-virtual {v0}, Landroid/graphics/NinePatch;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x3

    .line 534
    :goto_1
    return v0
.end method

.method public whitelist getOpticalInsets()Landroid/graphics/Insets;
    .locals 5

    .line 305
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOpticalInsets:Landroid/graphics/Insets;

    .line 306
    .local v0, "opticalInsets":Landroid/graphics/Insets;
    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->needsMirroring()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget v1, v0, Landroid/graphics/Insets;->right:I

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v3, v0, Landroid/graphics/Insets;->left:I

    iget v4, v0, Landroid/graphics/Insets;->bottom:I

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 310
    :cond_0
    return-object v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .locals 10
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 281
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 282
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    return-void

    .line 286
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    .line 287
    iget-object v1, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    .line 288
    invoke-virtual {v1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchInsets()Landroid/graphics/NinePatch$InsetStruct;

    move-result-object v1

    .line 289
    .local v1, "insets":Landroid/graphics/NinePatch$InsetStruct;
    if-eqz v1, :cond_1

    .line 290
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int v5, v2, v3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v6, v2, v3

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v7, v2, v3

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v2, v3

    iget v9, p0, Landroid/graphics/drawable/NinePatchDrawable;->mOutlineRadius:F

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 295
    iget v2, v1, Landroid/graphics/NinePatch$InsetStruct;->outlineAlpha:F

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getAlpha()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 296
    return-void

    .line 300
    .end local v1    # "insets":Landroid/graphics/NinePatch$InsetStruct;
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 301
    return-void
.end method

.method public whitelist getPadding(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 271
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 273
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    or-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->right:I

    or-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 275
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public whitelist getPaint()Landroid/graphics/Paint;
    .locals 2

    .line 515
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    .line 517
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 519
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public whitelist getTransparentRegion()Landroid/graphics/Region;
    .locals 2

    .line 541
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/NinePatch;->getTransparentRegion(Landroid/graphics/Rect;)Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .locals 1

    .line 587
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1
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

    .line 399
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 401
    sget-object v0, Lcom/android/internal/R$styleable;->NinePatchDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/NinePatchDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 402
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 403
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 405
    invoke-direct {p0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 406
    return-void
.end method

.method public whitelist isAutoMirrored()Z
    .locals 1

    .line 382
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-boolean v0, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    return v0
.end method

.method public whitelist isFilterBitmap()Z
    .locals 1

    .line 393
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isStateful()Z
    .locals 2

    .line 581
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    .line 582
    .local v0, "s":Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 552
    iget-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 553
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;)V

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mMutated:Z

    .line 556
    :cond_0
    return-object p0
.end method

.method protected whitelist onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    .line 569
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    .line 570
    .local v0, "state":Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBlendMode:Landroid/graphics/BlendMode;

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBlendModeFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v3, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBlendModeFilter:Landroid/graphics/BlendModeColorFilter;

    .line 573
    const/4 v1, 0x1

    return v1

    .line 576
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 316
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    .line 318
    return-void

    .line 320
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 321
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    .line 322
    return-void
.end method

.method public whitelist setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    .line 373
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iput-boolean p1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    .line 374
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 335
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 337
    return-void

    .line 339
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 340
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    .line 341
    return-void
.end method

.method public whitelist setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .line 362
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 364
    return-void

    .line 367
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 368
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    .line 369
    return-void
.end method

.method public whitelist setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .line 387
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 388
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    .line 389
    return-void
.end method

.method public whitelist setTargetDensity(I)V
    .locals 1
    .param p1, "density"    # I

    .line 180
    if-nez p1, :cond_0

    .line 181
    const/16 p1, 0xa0

    .line 184
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    if-eq v0, p1, :cond_1

    .line 185
    iput p1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mTargetDensity:I

    .line 187
    invoke-direct {p0}, Landroid/graphics/drawable/NinePatchDrawable;->computeBitmapSize()V

    .line 188
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    .line 190
    :cond_1
    return-void
.end method

.method public whitelist setTargetDensity(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    .line 157
    return-void
.end method

.method public whitelist setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 168
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V

    .line 169
    return-void
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 2
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 353
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iput-object p1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 354
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBlendModeFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v1, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/drawable/NinePatchDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBlendModeFilter:Landroid/graphics/BlendModeColorFilter;

    .line 356
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    .line 357
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 345
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iput-object p1, v0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    .line 346
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBlendModeFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable;->mNinePatchState:Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    iget-object v1, v1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/drawable/NinePatchDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable;->mBlendModeFilter:Landroid/graphics/BlendModeColorFilter;

    .line 348
    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->invalidateSelf()V

    .line 349
    return-void
.end method
