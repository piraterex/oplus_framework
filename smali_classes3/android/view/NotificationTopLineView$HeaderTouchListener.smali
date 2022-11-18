.class Landroid/view/NotificationTopLineView$HeaderTouchListener;
.super Ljava/lang/Object;
.source "NotificationTopLineView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/NotificationTopLineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderTouchListener"
.end annotation


# instance fields
.field private blacklist mDownX:F

.field private blacklist mDownY:F

.field private blacklist mFeedbackRect:Landroid/graphics/Rect;

.field private blacklist mTouchSlop:I

.field private blacklist mTrackGesture:Z

.field final synthetic blacklist this$0:Landroid/view/NotificationTopLineView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$misInside(Landroid/view/NotificationTopLineView$HeaderTouchListener;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->isInside(FF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monTouchUp(Landroid/view/NotificationTopLineView$HeaderTouchListener;FFFF)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->onTouchUp(FFFF)Z

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Landroid/view/NotificationTopLineView;)V
    .locals 0

    .line 294
    iput-object p1, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->this$0:Landroid/view/NotificationTopLineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    return-void
.end method

.method private blacklist getRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 303
    iget-object v0, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->this$0:Landroid/view/NotificationTopLineView;

    invoke-virtual {v0}, Landroid/view/NotificationTopLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v0, v1

    .line 304
    .local v0, "size":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 305
    .local v1, "width":F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 306
    .local v2, "height":F
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 307
    .local v3, "r":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    const/16 v6, 0x8

    if-ne v4, v6, :cond_0

    .line 308
    iget-object v4, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->this$0:Landroid/view/NotificationTopLineView;

    invoke-static {v4}, Landroid/view/NotificationTopLineView;->-$$Nest$mgetFirstChildNotGone(Landroid/view/NotificationTopLineView;)Landroid/view/View;

    move-result-object p1

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    div-float v6, v1, v5

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v5

    div-float v6, v1, v5

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 313
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v5

    div-float v5, v2, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 314
    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 315
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 316
    return-object v3
.end method

.method private blacklist isInside(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 361
    iget-object v0, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mFeedbackRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private blacklist onTouchUp(FFFF)Z
    .locals 3
    .param p1, "upX"    # F
    .param p2, "upY"    # F
    .param p3, "downX"    # F
    .param p4, "downY"    # F

    .line 351
    iget-object v0, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->this$0:Landroid/view/NotificationTopLineView;

    invoke-static {v0}, Landroid/view/NotificationTopLineView;->-$$Nest$fgetmFeedbackIcon(Landroid/view/NotificationTopLineView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mFeedbackRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    .line 352
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mFeedbackRect:Landroid/graphics/Rect;

    float-to-int v1, p3

    float-to-int v2, p4

    .line 353
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    iget-object v0, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->this$0:Landroid/view/NotificationTopLineView;

    invoke-static {v0}, Landroid/view/NotificationTopLineView;->-$$Nest$fgetmFeedbackIcon(Landroid/view/NotificationTopLineView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 355
    const/4 v0, 0x1

    return v0

    .line 357
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist bindTouchRects()V
    .locals 1

    .line 298
    iget-object v0, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->this$0:Landroid/view/NotificationTopLineView;

    invoke-static {v0}, Landroid/view/NotificationTopLineView;->-$$Nest$fgetmFeedbackIcon(Landroid/view/NotificationTopLineView;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->getRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mFeedbackRect:Landroid/graphics/Rect;

    .line 299
    iget-object v0, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->this$0:Landroid/view/NotificationTopLineView;

    invoke-virtual {v0}, Landroid/view/NotificationTopLineView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mTouchSlop:I

    .line 300
    return-void
.end method

.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 321
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 322
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 323
    .local v1, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 334
    :pswitch_0
    iget-boolean v2, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mTrackGesture:Z

    if-eqz v2, :cond_1

    .line 335
    iget v2, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mDownX:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_0

    iget v2, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mDownY:F

    sub-float/2addr v2, v1

    .line 336
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 337
    :cond_0
    iput-boolean v3, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mTrackGesture:Z

    goto :goto_0

    .line 342
    :pswitch_1
    iget-boolean v2, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mTrackGesture:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mDownX:F

    iget v3, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mDownY:F

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->onTouchUp(FFFF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    return v4

    .line 325
    :pswitch_2
    iput-boolean v3, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mTrackGesture:Z

    .line 326
    invoke-direct {p0, v0, v1}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->isInside(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    iput v0, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mDownX:F

    .line 328
    iput v1, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mDownY:F

    .line 329
    iput-boolean v4, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mTrackGesture:Z

    .line 330
    return v4

    .line 347
    :cond_1
    :goto_0
    iget-boolean v2, p0, Landroid/view/NotificationTopLineView$HeaderTouchListener;->mTrackGesture:Z

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
