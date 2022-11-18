.class public Landroid/view/HandwritingInitiator;
.super Ljava/lang/Object;
.source "HandwritingInitiator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HandwritingInitiator$HandwritableViewInfo;,
        Landroid/view/HandwritingInitiator$HandwritingAreaTracker;,
        Landroid/view/HandwritingInitiator$State;
    }
.end annotation


# instance fields
.field public blacklist mConnectedView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConnectionCount:I

.field private final blacklist mHandwritingAreasTracker:Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

.field private final blacklist mHandwritingTimeoutInMillis:J

.field private final blacklist mImm:Landroid/view/inputmethod/InputMethodManager;

.field private blacklist mState:Landroid/view/HandwritingInitiator$State;

.field private final blacklist mTouchSlop:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisViewActive(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Landroid/view/HandwritingInitiator;->isViewActive(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/view/ViewConfiguration;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2
    .param p1, "viewConfiguration"    # Landroid/view/ViewConfiguration;
    .param p2, "inputMethodManager"    # Landroid/view/inputmethod/InputMethodManager;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/view/HandwritingInitiator$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/HandwritingInitiator$State;-><init>(Landroid/view/HandwritingInitiator$State-IA;)V

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    .line 64
    new-instance v0, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

    invoke-direct {v0}, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;-><init>()V

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mHandwritingAreasTracker:Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

    .line 77
    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    .line 92
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/HandwritingInitiator;->mTouchSlop:I

    .line 93
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/view/HandwritingInitiator;->mHandwritingTimeoutInMillis:J

    .line 94
    iput-object p2, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 95
    return-void
.end method

.method private blacklist clearConnectedView()V
    .locals 1

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    .line 180
    return-void
.end method

.method private blacklist contains(Landroid/graphics/Rect;FF)Z
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 335
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 336
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private blacklist findBestCandidateView(FF)Landroid/view/View;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 287
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedView()Landroid/view/View;

    move-result-object v0

    .line 288
    .local v0, "connectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAutoHandwritingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    invoke-static {v0}, Landroid/view/HandwritingInitiator;->getViewHandwritingArea(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 290
    .local v1, "handwritingArea":Landroid/graphics/Rect;
    invoke-direct {p0, v1, p1, p2}, Landroid/view/HandwritingInitiator;->contains(Landroid/graphics/Rect;FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    return-object v0

    .line 296
    .end local v1    # "handwritingArea":Landroid/graphics/Rect;
    :cond_0
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mHandwritingAreasTracker:Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

    .line 297
    invoke-virtual {v1}, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->computeViewInfos()Ljava/util/List;

    move-result-object v1

    .line 298
    .local v1, "handwritableViewInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/HandwritingInitiator$HandwritableViewInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/HandwritingInitiator$HandwritableViewInfo;

    .line 299
    .local v3, "viewInfo":Landroid/view/HandwritingInitiator$HandwritableViewInfo;
    invoke-virtual {v3}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->getView()Landroid/view/View;

    move-result-object v4

    .line 300
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->isAutoHandwritingEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {v3}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->getHandwritingArea()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, v5, p1, p2}, Landroid/view/HandwritingInitiator;->contains(Landroid/graphics/Rect;FF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 302
    invoke-virtual {v3}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->getView()Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 304
    .end local v3    # "viewInfo":Landroid/view/HandwritingInitiator$HandwritableViewInfo;
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    goto :goto_0

    .line 305
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist getConnectedView()Landroid/view/View;
    .locals 1

    .line 173
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private static blacklist getViewHandwritingArea(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .line 315
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 316
    .local v0, "viewParent":Landroid/view/ViewParent;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isAggregatedVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->getHandwritingArea()Landroid/graphics/Rect;

    move-result-object v2

    .line 318
    .local v2, "localHandwritingArea":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 319
    .local v3, "globalHandwritingArea":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    .line 320
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 324
    :goto_0
    invoke-interface {v0, p0, v3, v1}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 325
    return-object v3

    .line 328
    .end local v2    # "localHandwritingArea":Landroid/graphics/Rect;
    .end local v3    # "globalHandwritingArea":Landroid/graphics/Rect;
    :cond_1
    return-object v1
.end method

.method private static blacklist isViewActive(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 378
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAggregatedVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->isAutoHandwritingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 378
    :goto_0
    return v0
.end method

.method private blacklist largerThanTouchSlop(FFFF)Z
    .locals 4
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 340
    sub-float v0, p1, p3

    .line 341
    .local v0, "dx":F
    sub-float v1, p2, p4

    .line 342
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    iget v3, p0, Landroid/view/HandwritingInitiator;->mTouchSlop:I

    mul-int/2addr v3, v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private blacklist reset()V
    .locals 2

    .line 73
    new-instance v0, Landroid/view/HandwritingInitiator$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/HandwritingInitiator$State;-><init>(Landroid/view/HandwritingInitiator$State-IA;)V

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    .line 74
    return-void
.end method

.method private blacklist tryStartHandwriting()V
    .locals 4

    .line 239
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v0}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmExceedTouchSlop(Landroid/view/HandwritingInitiator$State;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    return-void

    .line 242
    :cond_0
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedView()Landroid/view/View;

    move-result-object v0

    .line 243
    .local v0, "connectedView":Landroid/view/View;
    if-nez v0, :cond_1

    .line 244
    return-void

    .line 247
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isAutoHandwritingEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 248
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->clearConnectedView()V

    .line 249
    return-void

    .line 252
    :cond_2
    invoke-static {v0}, Landroid/view/HandwritingInitiator;->getViewHandwritingArea(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 253
    .local v1, "handwritingArea":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownX(Landroid/view/HandwritingInitiator$State;)F

    move-result v2

    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v3}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/view/HandwritingInitiator;->contains(Landroid/graphics/Rect;FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 254
    invoke-virtual {p0, v0}, Landroid/view/HandwritingInitiator;->startHandwriting(Landroid/view/View;)V

    goto :goto_0

    .line 256
    :cond_3
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->reset()V

    .line 258
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist onInputConnectionClosed(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 214
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedView()Landroid/view/View;

    move-result-object v0

    .line 215
    .local v0, "connectedView":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    .line 216
    :cond_0
    if-ne v0, p1, :cond_1

    .line 217
    iget v1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    .line 218
    if-nez v1, :cond_2

    .line 219
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->clearConnectedView()V

    goto :goto_0

    .line 223
    :cond_1
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->clearConnectedView()V

    .line 225
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist onInputConnectionCreated(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->isAutoHandwritingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->clearConnectedView()V

    .line 192
    return-void

    .line 195
    :cond_0
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedView()Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, "connectedView":Landroid/view/View;
    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    .line 197
    iget v2, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    goto :goto_0

    .line 199
    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    .line 200
    iput v1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    .line 201
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->tryStartHandwriting()V

    .line 205
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 107
    .local v0, "maskedAction":I
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 127
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 128
    .local v1, "pointerId":I
    iget-object v2, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusPointerId(Landroid/view/HandwritingInitiator$State;)I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 130
    return-void

    .line 142
    .end local v1    # "pointerId":I
    :pswitch_2
    iget-object v2, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmExceedTouchSlop(Landroid/view/HandwritingInitiator$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    nop

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v4}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownTimeInMillis(Landroid/view/HandwritingInitiator$State;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 148
    .local v2, "timeElapsed":J
    iget-wide v4, p0, Landroid/view/HandwritingInitiator;->mHandwritingTimeoutInMillis:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 149
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->reset()V

    .line 150
    return-void

    .line 153
    :cond_1
    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v4}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusPointerId(Landroid/view/HandwritingInitiator$State;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 154
    .local v4, "pointerIndex":I
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 155
    .local v5, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 156
    .local v6, "y":F
    iget-object v7, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v7}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownX(Landroid/view/HandwritingInitiator$State;)F

    move-result v7

    iget-object v8, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v8}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F

    move-result v8

    invoke-direct {p0, v5, v6, v7, v8}, Landroid/view/HandwritingInitiator;->largerThanTouchSlop(FFFF)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 157
    iget-object v7, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v7, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmExceedTouchSlop(Landroid/view/HandwritingInitiator$State;Z)V

    .line 158
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownX(Landroid/view/HandwritingInitiator$State;)F

    move-result v1

    iget-object v7, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v7}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F

    move-result v7

    .line 159
    invoke-direct {p0, v1, v7}, Landroid/view/HandwritingInitiator;->findBestCandidateView(FF)Landroid/view/View;

    move-result-object v1

    .line 160
    .local v1, "candidateView":Landroid/view/View;
    if-eqz v1, :cond_6

    .line 161
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedView()Landroid/view/View;

    move-result-object v7

    if-ne v1, v7, :cond_2

    .line 162
    invoke-virtual {p0, v1}, Landroid/view/HandwritingInitiator;->startHandwriting(Landroid/view/View;)V

    goto :goto_1

    .line 164
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 143
    .end local v1    # "candidateView":Landroid/view/View;
    .end local v2    # "timeElapsed":J
    .end local v4    # "pointerIndex":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_3
    :goto_0
    return-void

    .line 137
    :cond_4
    :pswitch_3
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->reset()V

    .line 138
    goto :goto_1

    .line 110
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 111
    .local v2, "actionIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    .line 114
    .local v3, "toolType":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    .line 117
    return-void

    .line 119
    :cond_5
    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmStylusPointerId(Landroid/view/HandwritingInitiator$State;I)V

    .line 120
    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmStylusDownTimeInMillis(Landroid/view/HandwritingInitiator$State;J)V

    .line 121
    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-static {v4, v5}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmStylusDownX(Landroid/view/HandwritingInitiator$State;F)V

    .line 122
    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-static {v4, v5}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmStylusDownY(Landroid/view/HandwritingInitiator$State;F)V

    .line 123
    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v4, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    .line 124
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmExceedTouchSlop(Landroid/view/HandwritingInitiator$State;Z)V

    .line 125
    nop

    .line 169
    .end local v2    # "actionIndex":I
    .end local v3    # "toolType":I
    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist startHandwriting(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 263
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwriting(Landroid/view/View;)V

    .line 264
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->reset()V

    .line 265
    return-void
.end method

.method public blacklist updateHandwritingAreasForView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 272
    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mHandwritingAreasTracker:Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

    invoke-virtual {v0, p1}, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->updateHandwritingAreaForView(Landroid/view/View;)V

    .line 273
    return-void
.end method
