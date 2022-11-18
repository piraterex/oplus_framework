.class public Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;
.super Landroid/widget/ImageView;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundedRectImageView"
.end annotation


# instance fields
.field private blacklist mExtraImageCount:Ljava/lang/String;

.field private blacklist mOverlayPaint:Landroid/graphics/Paint;

.field private blacklist mPath:Landroid/graphics/Path;

.field private blacklist mRadius:I

.field private blacklist mRoundRectPaint:Landroid/graphics/Paint;

.field private blacklist mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 4028
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4020
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    .line 4021
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mPath:Landroid/graphics/Path;

    .line 4022
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    .line 4023
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    .line 4024
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    .line 4025
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    .line 4029
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 4032
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4033
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 4036
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4037
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 4041
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4020
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    .line 4021
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mPath:Landroid/graphics/Path;

    .line 4022
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    .line 4023
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    .line 4024
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    .line 4025
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    .line 4042
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1050095

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    .line 4044
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x67000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4045
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4047
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106017c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4048
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4049
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4050
    const v3, 0x105009d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 4049
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4052
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4053
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4054
    const v3, 0x105009e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 4053
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4057
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/internal/app/ChooserActivity;

    if-eqz v0, :cond_0

    .line 4058
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    invoke-interface {v0, v2, v3, v4}, Lcom/android/internal/app/IResolverActivityExt;->setCustomRoundImage(Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 4060
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4062
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 4063
    return-void
.end method

.method private blacklist updatePath(II)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 4066
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4068
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingRight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4069
    .local v0, "imageWidth":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 4070
    .local v1, "imageHeight":I
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v0

    int-to-float v6, v1

    iget v7, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    int-to-float v8, v7

    int-to-float v9, v7

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v7, v8

    move v8, v9

    move-object v9, v10

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 4072
    return-void
.end method


# virtual methods
.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 4113
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    if-eqz v0, :cond_0

    .line 4114
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 4117
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4119
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingLeft()I

    move-result v8

    .line 4120
    .local v8, "x":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingRight()I

    move-result v9

    .line 4121
    .local v9, "y":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingLeft()I

    move-result v1

    sub-int v10, v0, v1

    .line 4122
    .local v10, "width":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getPaddingTop()I

    move-result v1

    sub-int v11, v0, v1

    .line 4123
    .local v11, "height":I
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4124
    int-to-float v1, v8

    int-to-float v2, v9

    int-to-float v3, v10

    int-to-float v4, v11

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mOverlayPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 4127
    .local v0, "xPos":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    .line 4128
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 4130
    .local v1, "yPos":I
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 4133
    .end local v0    # "xPos":I
    .end local v1    # "yPos":I
    :cond_1
    int-to-float v1, v8

    int-to-float v2, v9

    int-to-float v3, v10

    int-to-float v4, v11

    iget v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    int-to-float v5, v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRoundRectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 4134
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .line 4107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 4108
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->updatePath(II)V

    .line 4109
    return-void
.end method

.method public blacklist setExtraImageCount(I)V
    .locals 2
    .param p1, "count"    # I

    .line 4088
    if-lez p1, :cond_1

    .line 4094
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/internal/app/ChooserActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->isOriginUi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    goto :goto_0

    .line 4097
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    goto :goto_0

    .line 4101
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mExtraImageCount:Ljava/lang/String;

    .line 4103
    :goto_0
    return-void
.end method

.method public blacklist setRadius(I)V
    .locals 2
    .param p1, "radius"    # I

    .line 4080
    iput p1, p0, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->mRadius:I

    .line 4081
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->updatePath(II)V

    .line 4082
    return-void
.end method
