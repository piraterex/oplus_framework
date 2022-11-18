.class public Lcom/android/internal/widget/MessagingImageMessage;
.super Landroid/widget/ImageView;
.source "MessagingImageMessage.java"

# interfaces
.implements Lcom/android/internal/widget/MessagingMessage;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MessagingImageMessage"

.field private static final blacklist sInstancePool:Lcom/android/internal/widget/MessagingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/MessagingPool<",
            "Lcom/android/internal/widget/MessagingImageMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActualHeight:I

.field private blacklist mActualWidth:I

.field private blacklist mAspectRatio:F

.field private blacklist mDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mExtraSpacing:I

.field private blacklist mImageResolver:Lcom/android/internal/widget/ImageResolver;

.field private final blacklist mImageRounding:I

.field private blacklist mIsIsolated:Z

.field private final blacklist mIsolatedSize:I

.field private final blacklist mMaxImageHeight:I

.field private final blacklist mMinImageHeight:I

.field private final blacklist mPath:Landroid/graphics/Path;

.field private final blacklist mState:Lcom/android/internal/widget/MessagingMessageState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/android/internal/widget/MessagingPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MessagingPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/MessagingImageMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MessagingImageMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/MessagingImageMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/MessagingImageMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    new-instance v0, Lcom/android/internal/widget/MessagingMessageState;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MessagingMessageState;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    .line 50
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mMinImageHeight:I

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mMaxImageHeight:I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageRounding:I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mExtraSpacing:I

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setMaxHeight(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsolatedSize:I

    .line 88
    return-void
.end method

.method static blacklist createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Lcom/android/internal/widget/ImageResolver;)Lcom/android/internal/widget/MessagingMessage;
    .locals 5
    .param p0, "layout"    # Lcom/android/internal/widget/IMessagingLayout;
    .param p1, "m"    # Landroid/app/Notification$MessagingStyle$Message;
    .param p2, "resolver"    # Lcom/android/internal/widget/ImageResolver;

    .line 124
    invoke-interface {p0}, Lcom/android/internal/widget/IMessagingLayout;->getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v0

    .line 125
    .local v0, "messagingLinearLayout":Lcom/android/internal/widget/MessagingLinearLayout;
    sget-object v1, Lcom/android/internal/widget/MessagingImageMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingPool;->acquire()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingImageMessage;

    .line 126
    .local v1, "createdMessage":Lcom/android/internal/widget/MessagingImageMessage;
    if-nez v1, :cond_0

    .line 127
    nop

    .line 128
    invoke-interface {p0}, Lcom/android/internal/widget/IMessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 127
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900c4

    const/4 v4, 0x0

    .line 128
    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/internal/widget/MessagingImageMessage;

    .line 132
    sget-object v2, Lcom/android/internal/widget/MessagingLayout;->MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/MessagingImageMessage;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 134
    :cond_0
    invoke-direct {v1, p2}, Lcom/android/internal/widget/MessagingImageMessage;->setImageResolver(Lcom/android/internal/widget/ImageResolver;)V

    .line 135
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/MessagingImageMessage;->setMessage(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v2

    .line 136
    .local v2, "created":Z
    if-nez v2, :cond_1

    .line 137
    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingImageMessage;->recycle()V

    .line 138
    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingTextMessage;->createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v3

    return-object v3

    .line 140
    :cond_1
    return-object v1
.end method

.method public static blacklist dropCache()V
    .locals 1

    .line 196
    sget-object v0, Lcom/android/internal/widget/MessagingImageMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingPool;->clear()V

    .line 197
    return-void
.end method

.method private blacklist setImageResolver(Lcom/android/internal/widget/ImageResolver;)V
    .locals 0
    .param p1, "resolver"    # Lcom/android/internal/widget/ImageResolver;

    .line 144
    iput-object p1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    .line 145
    return-void
.end method


# virtual methods
.method public blacklist getActualHeight()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mActualHeight:I

    return v0
.end method

.method public blacklist getActualWidth()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mActualWidth:I

    return v0
.end method

.method public blacklist getConsumedLines()I
    .locals 1

    .line 261
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getExtraSpacing()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mExtraSpacing:I

    return v0
.end method

.method public blacklist getMeasuredType()I
    .locals 6

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getMeasuredHeight()I

    move-result v0

    .line 203
    .local v0, "measuredHeight":I
    iget-boolean v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-eqz v1, :cond_0

    .line 204
    iget v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsolatedSize:I

    .local v1, "minImageHeight":I
    goto :goto_0

    .line 206
    .end local v1    # "minImageHeight":I
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mMinImageHeight:I

    .line 208
    .restart local v1    # "minImageHeight":I
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 209
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-eq v0, v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 210
    .local v4, "measuredTooSmall":Z
    :goto_1
    if-eqz v4, :cond_2

    .line 211
    const/4 v2, 0x2

    return v2

    .line 213
    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-eq v0, v5, :cond_3

    .line 214
    return v2

    .line 216
    :cond_3
    return v3
.end method

.method public blacklist getRoundedRectPath()Landroid/graphics/Path;
    .locals 12

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualWidth()I

    move-result v1

    .line 168
    .local v1, "right":I
    const/4 v2, 0x0

    .line 169
    .local v2, "top":I
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualHeight()I

    move-result v3

    .line 170
    .local v3, "bottom":I
    iget-object v4, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 171
    sub-int v4, v1, v0

    .line 172
    .local v4, "width":I
    iget v5, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageRounding:I

    int-to-float v6, v5

    .line 173
    .local v6, "roundnessX":F
    int-to-float v5, v5

    .line 174
    .local v5, "roundnessY":F
    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 175
    sub-int v7, v3, v2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 176
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v0

    int-to-float v9, v2

    add-float/2addr v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 177
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v0

    int-to-float v9, v2

    int-to-float v10, v0

    add-float/2addr v10, v6

    int-to-float v11, v2

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 178
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v1

    sub-float/2addr v8, v6

    int-to-float v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 179
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v1

    int-to-float v9, v2

    int-to-float v10, v1

    int-to-float v11, v2

    add-float/2addr v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 180
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v1

    int-to-float v9, v3

    sub-float/2addr v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 181
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v1

    int-to-float v9, v3

    int-to-float v10, v1

    sub-float/2addr v10, v6

    int-to-float v11, v3

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 182
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v0

    add-float/2addr v8, v6

    int-to-float v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 183
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    int-to-float v8, v0

    int-to-float v9, v3

    int-to-float v10, v0

    int-to-float v11, v3

    sub-float/2addr v11, v5

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 184
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 185
    iget-object v7, p0, Lcom/android/internal/widget/MessagingImageMessage;->mPath:Landroid/graphics/Path;

    return-object v7
.end method

.method public blacklist getState()Lcom/android/internal/widget/MessagingMessageState;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mState:Lcom/android/internal/widget/MessagingMessageState;

    return-object v0
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getRoundedRectPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    mul-float/2addr v0, v1

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualWidth()I

    move-result v1

    int-to-float v1, v1

    .line 153
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    .line 155
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    div-float/2addr v1, v2

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualHeight()I

    move-result v2

    int-to-float v2, v2

    .line 155
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    .line 157
    .local v1, "height":I
    int-to-float v2, v1

    int-to-float v3, v0

    iget v4, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v1, v2

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 159
    .local v2, "left":I
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getActualHeight()I

    move-result v4

    sub-int/2addr v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v3, v4

    .line 160
    .local v3, "top":I
    iget-object v4, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int v5, v2, v0

    add-int v6, v3, v1

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 161
    iget-object v4, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 163
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 253
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setActualWidth(I)V

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setActualHeight(I)V

    .line 257
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 228
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 230
    iget-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 231
    const-string v0, "MessagingImageMessage"

    const-string/jumbo v1, "onMeasure() after recycle()!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setMeasuredDimension(II)V

    .line 233
    return-void

    .line 236
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-eqz v0, :cond_1

    .line 238
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 239
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 238
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/MessagingImageMessage;->setMeasuredDimension(II)V

    goto :goto_0

    .line 243
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 244
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 243
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 245
    .local v0, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    iget v3, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 247
    .local v1, "height":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/MessagingImageMessage;->setMeasuredDimension(II)V

    .line 249
    .end local v0    # "width":I
    .end local v1    # "height":I
    :goto_0
    return-void
.end method

.method public blacklist recycle()V
    .locals 1

    .line 189
    invoke-super {p0}, Lcom/android/internal/widget/MessagingMessage;->recycle()V

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 191
    iput-object v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    sget-object v0, Lcom/android/internal/widget/MessagingImageMessage;->sInstancePool:Lcom/android/internal/widget/MessagingPool;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/MessagingPool;->release(Landroid/view/View;)Z

    .line 193
    return-void
.end method

.method public blacklist setActualHeight(I)V
    .locals 0
    .param p1, "actualHeight"    # I

    .line 274
    iput p1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mActualHeight:I

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->invalidate()V

    .line 276
    return-void
.end method

.method public blacklist setActualWidth(I)V
    .locals 0
    .param p1, "actualWidth"    # I

    .line 265
    iput p1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mActualWidth:I

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->invalidate()V

    .line 267
    return-void
.end method

.method public blacklist setIsolated(Z)V
    .locals 2
    .param p1, "isolated"    # Z

    .line 283
    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    if-eq v0, p1, :cond_1

    .line 284
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mIsIsolated:Z

    .line 286
    nop

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 288
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mExtraSpacing:I

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 289
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    return-void
.end method

.method public blacklist setMaxDisplayedLines(I)V
    .locals 0
    .param p1, "lines"    # I

    .line 224
    return-void
.end method

.method public blacklist setMessage(Landroid/app/Notification$MessagingStyle$Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 97
    invoke-super {p0, p1}, Lcom/android/internal/widget/MessagingMessage;->setMessage(Landroid/app/Notification$MessagingStyle$Message;)Z

    .line 100
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    .line 101
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/internal/widget/MessagingImageMessage;->mImageResolver:Lcom/android/internal/widget/ImageResolver;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ImageResolver;->loadImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingImageMessage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v2

    .line 106
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    nop

    .line 107
    if-nez v1, :cond_1

    .line 108
    return v0

    .line 110
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 111
    .local v2, "intrinsicHeight":I
    if-nez v2, :cond_2

    .line 112
    const-string v3, "MessagingImageMessage"

    const-string v4, "Drawable with 0 intrinsic height was returned"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v0

    .line 115
    :cond_2
    iput-object v1, p0, Lcom/android/internal/widget/MessagingImageMessage;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v2

    div-float/2addr v0, v3

    iput v0, p0, Lcom/android/internal/widget/MessagingImageMessage;->mAspectRatio:F

    .line 117
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MessagingImageMessage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 119
    const/4 v0, 0x1

    return v0

    .line 103
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "intrinsicHeight":I
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    return v0
.end method
