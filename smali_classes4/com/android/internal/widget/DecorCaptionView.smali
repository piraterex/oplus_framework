.class public Lcom/android/internal/widget/DecorCaptionView;
.super Landroid/view/ViewGroup;
.source "DecorCaptionView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private blacklist mCaption:Landroid/view/View;

.field private blacklist mCheckForDragging:Z

.field private blacklist mClickTarget:Landroid/view/View;

.field private blacklist mClose:Landroid/view/View;

.field private final blacklist mCloseRect:Landroid/graphics/Rect;

.field private blacklist mContent:Landroid/view/View;

.field private blacklist mDragSlop:I

.field private blacklist mDragging:Z

.field private blacklist mGestureDetector:Landroid/view/GestureDetector;

.field private blacklist mMaximize:Landroid/view/View;

.field private final blacklist mMaximizeRect:Landroid/graphics/Rect;

.field private blacklist mOverlayWithAppContent:Z

.field private blacklist mOwner:Lcom/android/internal/policy/PhoneWindow;

.field private blacklist mRootScrollY:I

.field private blacklist mShow:Z

.field private blacklist mTouchDispatchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTouchDownX:I

.field private blacklist mTouchDownY:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    .line 104
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    .line 114
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method private blacklist init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    .line 119
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 120
    const v1, 0x10400da

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method

.method private blacklist passedSlop(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 233
    iget v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    if-le v0, v1, :cond_0

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

.method private blacklist toggleFreeformWindowingMode()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 326
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_0

    .line 327
    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->toggleFreeformWindowingMode()V

    .line 329
    :cond_0
    return-void
.end method

.method private blacklist updateCaptionVisibility()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 319
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 247
    instance-of v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 252
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getChildCount()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 257
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 258
    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    .line 259
    return-void

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DecorCaptionView can only handle 1 client view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must subclass MarginLayoutParams"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 368
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 357
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 352
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 363
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public blacklist getCaption()Landroid/view/View;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getCaptionHeight()I
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isCaptionShowing()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    return v0
.end method

.method public blacklist onConfigurationChanged(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 241
    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 242
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateCaptionVisibility()V

    .line 243
    return-void
.end method

.method public whitelist onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onFinishInflate()V
    .locals 1

    .line 126
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    .line 128
    return-void
.end method

.method public whitelist onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 148
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 150
    .local v1, "y":I
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mRootScrollY:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mRootScrollY:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    .line 157
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 286
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 288
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    .line 289
    .local v0, "captionHeight":I
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 290
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 292
    .end local v0    # "captionHeight":I
    :cond_0
    const/4 v0, 0x0

    .line 293
    .restart local v0    # "captionHeight":I
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 294
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 297
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 298
    iget-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v3, :cond_1

    .line 299
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 301
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    .line 302
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 301
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 306
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->notifyCaptionHeightChanged()V

    .line 309
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    .line 310
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 309
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/policy/PhoneWindow;->notifyRestrictedCaptionAreaCallback(IIII)V

    .line 311
    return-void
.end method

.method public whitelist onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 400
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 264
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 265
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/DecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 266
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .local v0, "captionHeight":I
    goto :goto_0

    .line 268
    .end local v0    # "captionHeight":I
    :cond_0
    const/4 v0, 0x0

    .line 270
    .restart local v0    # "captionHeight":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 271
    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v1, :cond_1

    .line 272
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/DecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_1

    .line 274
    :cond_1
    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    move v5, p2

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/DecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 279
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 280
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 279
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/DecorCaptionView;->setMeasuredDimension(II)V

    .line 281
    return-void
.end method

.method public blacklist onRootViewScrollYChanged(I)V
    .locals 2
    .param p1, "scrollY"    # I

    .line 413
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 414
    iput p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mRootScrollY:I

    .line 415
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 417
    :cond_0
    return-void
.end method

.method public whitelist onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 379
    return-void
.end method

.method public whitelist onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 383
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 384
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->toggleFreeformWindowingMode()V

    goto :goto_0

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    if-ne v0, v1, :cond_1

    .line 386
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/policy/PhoneWindow;->dispatchOnWindowDismissed(ZZ)V

    .line 389
    :cond_1
    :goto_0
    return v2
.end method

.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 178
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 179
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 180
    .local v1, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 181
    .local v2, "fromMouse":Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    and-int/2addr v5, v4

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    .line 182
    .local v5, "primaryButton":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 183
    .local v6, "actionMasked":I
    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 199
    :pswitch_0
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    if-eqz v7, :cond_7

    if-nez v2, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->passedSlop(II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 200
    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    .line 201
    iput-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 202
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/widget/DecorCaptionView;->startMovingTask(FF)Z

    goto :goto_2

    .line 211
    :pswitch_1
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-nez v7, :cond_3

    .line 212
    goto :goto_2

    .line 215
    :cond_3
    if-ne v6, v4, :cond_4

    .line 219
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->finishMovingTask()V

    .line 221
    :cond_4
    iput-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 222
    iget-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    xor-int/2addr v3, v4

    return v3

    .line 185
    :pswitch_2
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    if-nez v7, :cond_5

    .line 187
    return v3

    .line 191
    :cond_5
    if-eqz v2, :cond_6

    if-eqz v5, :cond_7

    .line 192
    :cond_6
    iput-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    .line 193
    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownX:I

    .line 194
    iput v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownY:I

    .line 224
    :cond_7
    :goto_2
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-nez v7, :cond_8

    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    if-eqz v7, :cond_9

    :cond_8
    move v3, v4

    :cond_9
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 162
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 165
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 166
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    .line 168
    :cond_1
    return v1

    .line 170
    .end local v0    # "action":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeContentView()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->removeView(Landroid/view/View;)V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    .line 344
    :cond_0
    return-void
.end method

.method public blacklist setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V
    .locals 2
    .param p1, "owner"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "show"    # Z

    .line 131
    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 132
    iput-boolean p2, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 133
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->isOverlayWithDecorCaptionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    .line 134
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateCaptionVisibility()V

    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 138
    const v0, 0x102039a

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    .line 139
    const v0, 0x1020256

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    .line 140
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .locals 1

    .line 229
    const/4 v0, 0x0

    return v0
.end method
