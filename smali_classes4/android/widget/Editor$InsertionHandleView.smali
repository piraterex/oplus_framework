.class Landroid/widget/Editor$InsertionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionHandleView"
.end annotation


# instance fields
.field private final blacklist mDeltaHeight:I

.field private final blacklist mDrawableOpacity:I

.field private greylist-max-o mHider:Ljava/lang/Runnable;

.field private blacklist mIsInActionMode:Z

.field private blacklist mIsTouchDown:Z

.field private blacklist mLastDownRawX:F

.field private blacklist mLastDownRawY:F

.field private blacklist mLastUpTime:J

.field private blacklist mOffsetChanged:Z

.field private blacklist mOffsetDown:I

.field private blacklist mPendingDismissOnUp:Z

.field private blacklist mTouchDownX:F

.field private blacklist mTouchDownY:F

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mhideAfterDelay(Landroid/widget/Editor$InsertionHandleView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveHiderCallback(Landroid/widget/Editor$InsertionHandleView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 5675
    iput-object p1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    .line 5676
    const v4, 0x1020350

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView-IA;)V

    .line 5650
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mIsTouchDown:Z

    .line 5652
    iput-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    .line 5678
    const/4 v0, 0x0

    .line 5679
    .local v0, "deltaHeight":I
    const/16 v1, 0xff

    .line 5680
    .local v1, "opacity":I
    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmFlagInsertionHandleGesturesEnabled(Landroid/widget/Editor;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5681
    const/16 p1, 0x19

    const-string/jumbo v2, "widget__insertion_handle_delta_height"

    invoke-static {v2, p1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result p1

    .line 5684
    .end local v0    # "deltaHeight":I
    .local p1, "deltaHeight":I
    const-string/jumbo v0, "widget__insertion_handle_opacity"

    const/16 v2, 0x32

    invoke-static {v0, v2}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    .line 5688
    .end local v1    # "opacity":I
    .local v0, "opacity":I
    const/16 v1, -0x19

    if-lt p1, v1, :cond_0

    if-le p1, v2, :cond_1

    .line 5689
    :cond_0
    const/16 p1, 0x19

    .line 5691
    :cond_1
    const/16 v1, 0xa

    const/16 v2, 0x64

    if-lt v0, v1, :cond_2

    if-le v0, v2, :cond_3

    .line 5692
    :cond_2
    const/16 v0, 0x32

    .line 5695
    :cond_3
    mul-int/lit16 v1, v0, 0xff

    div-int/2addr v1, v2

    move v0, p1

    .line 5697
    .end local p1    # "deltaHeight":I
    .local v0, "deltaHeight":I
    .restart local v1    # "opacity":I
    :cond_4
    iput v0, p0, Landroid/widget/Editor$InsertionHandleView;->mDeltaHeight:I

    .line 5698
    iput v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawableOpacity:I

    .line 5699
    return-void
.end method

.method private greylist-max-o hideAfterDelay()V
    .locals 4

    .line 5702
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 5703
    new-instance v0, Landroid/widget/Editor$InsertionHandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$InsertionHandleView$1;-><init>(Landroid/widget/Editor$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    goto :goto_0

    .line 5709
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 5711
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5712
    return-void
.end method

.method private greylist-max-o removeHiderCallback()V
    .locals 2

    .line 5715
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 5716
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5718
    :cond_0
    return-void
.end method

.method private blacklist touchThrough(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 5814
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 5815
    .local v0, "actionType":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 5829
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/Editor$InsertionHandleView;->mLastUpTime:J

    goto :goto_1

    .line 5817
    :pswitch_1
    iput-boolean v2, p0, Landroid/widget/Editor$InsertionHandleView;->mIsTouchDown:Z

    .line 5818
    iput-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetChanged:Z

    .line 5819
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetDown:I

    .line 5820
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchDownX:F

    .line 5821
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchDownY:F

    .line 5822
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Landroid/widget/Editor$InsertionHandleView;->mIsInActionMode:Z

    .line 5823
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/Editor$InsertionHandleView;->mLastUpTime:J

    sub-long/2addr v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 5824
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 5826
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/EditorTouchState;->setIsOnHandle(Z)V

    .line 5827
    nop

    .line 5833
    :goto_1
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionHandleView;->transformEventForTouchThrough(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 5835
    .local v3, "ret":Z
    if-eq v0, v2, :cond_2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    .line 5836
    :cond_2
    iput-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mIsTouchDown:Z

    .line 5837
    iget-boolean v4, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    if-eqz v4, :cond_3

    .line 5838
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->dismiss()V

    .line 5840
    :cond_3
    iget-object v4, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/EditorTouchState;->setIsOnHandle(Z)V

    .line 5844
    :cond_4
    iget-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetChanged:Z

    if-nez v1, :cond_6

    .line 5845
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 5846
    .local v1, "start":I
    iget-object v4, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 5847
    .local v4, "end":I
    if-ne v1, v4, :cond_5

    iget v5, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetDown:I

    if-eq v5, v1, :cond_6

    .line 5848
    :cond_5
    iput-boolean v2, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetChanged:Z

    .line 5853
    .end local v1    # "start":I
    .end local v4    # "end":I
    :cond_6
    iget-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mOffsetChanged:Z

    if-nez v1, :cond_8

    if-ne v0, v2, :cond_8

    .line 5854
    iget-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mIsInActionMode:Z

    if-eqz v1, :cond_7

    .line 5855
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->stopTextActionMode()V

    goto :goto_2

    .line 5857
    :cond_7
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 5860
    :cond_8
    :goto_2
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist transformEventForTouchThrough(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 5864
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 5865
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getCurrentCursorOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 5866
    .local v1, "line":I
    nop

    .line 5867
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 5873
    .local v2, "textHeight":I
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 5874
    .local v3, "m":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getMeasuredWidth()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchDownX:F

    sub-float/2addr v4, v5

    .line 5875
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    shr-int/lit8 v6, v2, 0x1

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/widget/Editor$InsertionHandleView;->mTouchDownY:F

    sub-float/2addr v5, v6

    .line 5874
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 5876
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 5878
    iget-object v4, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->toLocalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 5884
    return-object p1
.end method


# virtual methods
.method public blacklist dismiss()V
    .locals 2

    .line 5904
    iget-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mIsTouchDown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5909
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    .line 5910
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 5912
    :cond_0
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 5913
    iput-boolean v1, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    .line 5915
    :goto_0
    return-void
.end method

.method public greylist-max-o getCurrentCursorOffset()I
    .locals 1

    .line 5925
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method greylist-max-o getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .locals 3
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 5743
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 5744
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$InsertionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v0

    .line 5745
    .local v0, "horizontal":F
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v1, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v0}, Landroid/widget/Editor;->-$$Nest$mclampHorizontalPosition(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;F)I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    return v1

    .line 5747
    .end local v0    # "horizontal":F
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v0

    return v0
.end method

.method protected greylist-max-o getCursorOffset()I
    .locals 3

    .line 5732
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v0

    .line 5733
    .local v0, "offset":I
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 5734
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 5735
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mDrawableForCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 5738
    :cond_0
    return v0
.end method

.method protected greylist-max-o getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .line 5727
    const/4 v0, 0x1

    return v0
.end method

.method protected greylist-max-o getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .line 5722
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected greylist-max-o getMagnifierHandleTrigger()I
    .locals 1

    .line 5972
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isShowing()Z
    .locals 1

    .line 5889
    iget-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    if-eqz v0, :cond_0

    .line 5890
    const/4 v0, 0x0

    return v0

    .line 5892
    :cond_0
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o onDetached()V
    .locals 0

    .line 5965
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 5966
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 5967
    return-void
.end method

.method greylist-max-o onHandleMoved()V
    .locals 0

    .line 5959
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 5960
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->removeHiderCallback()V

    .line 5961
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 5752
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmFlagInsertionHandleGesturesEnabled(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5753
    nop

    .line 5754
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getPreferredHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDeltaHeight:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 5753
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5755
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->getPreferredWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/widget/Editor$InsertionHandleView;->setMeasuredDimension(II)V

    .line 5756
    return-void

    .line 5758
    .end local v0    # "height":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->onMeasure(II)V

    .line 5759
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 5763
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->isFromPrimePointer(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5764
    return v1

    .line 5766
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmFlagInsertionHandleGesturesEnabled(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmFlagCursorDragFromAnywhereEnabled(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5769
    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionHandleView;->touchThrough(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 5771
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5773
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 5781
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/widget/Editor$InsertionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 5782
    goto :goto_1

    .line 5785
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->offsetHasBeenChanged()Z

    move-result v1

    if-nez v1, :cond_3

    .line 5786
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 5787
    .local v1, "config":Landroid/view/ViewConfiguration;
    iget v2, p0, Landroid/widget/Editor$InsertionHandleView;->mLastDownRawX:F

    iget v3, p0, Landroid/widget/Editor$InsertionHandleView;->mLastDownRawY:F

    .line 5788
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 5789
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    .line 5787
    invoke-static {v2, v3, v4, v5, v6}, Landroid/widget/EditorTouchState;->isDistanceWithin(FFFFI)Z

    move-result v2

    .line 5790
    .local v2, "isWithinTouchSlop":Z
    if-eqz v2, :cond_2

    .line 5792
    iget-object v3, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$mtoggleInsertionActionMode(Landroid/widget/Editor;)V

    .line 5794
    .end local v1    # "config":Landroid/view/ViewConfiguration;
    .end local v2    # "isWithinTouchSlop":Z
    :cond_2
    goto :goto_0

    .line 5795
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 5796
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidateContentRect()V

    .line 5801
    :cond_4
    :goto_0
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V

    .line 5802
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionHandleView;->dismissMagnifier()V

    .line 5803
    goto :goto_1

    .line 5775
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor$InsertionHandleView;->mLastDownRawX:F

    .line 5776
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Landroid/widget/Editor$InsertionHandleView;->mLastDownRawY:F

    .line 5777
    invoke-virtual {p0, p1}, Landroid/widget/Editor$InsertionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 5778
    nop

    .line 5809
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public greylist-max-o show()V
    .locals 2

    .line 5897
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->show()V

    .line 5898
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$InsertionHandleView;->mPendingDismissOnUp:Z

    .line 5899
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawableOpacity:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5900
    return-void
.end method

.method protected blacklist updateDrawable(Z)V
    .locals 2
    .param p1, "updateDrawableWhenDragging"    # Z

    .line 5919
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->updateDrawable(Z)V

    .line 5920
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/Editor$InsertionHandleView;->mDrawableOpacity:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5921
    return-void
.end method

.method protected greylist-max-o updatePosition(FFZ)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "fromTouchScreen"    # Z

    .line 5935
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 5937
    .local v0, "layout":Landroid/text/Layout;
    if-eqz v0, :cond_1

    .line 5938
    iget v1, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 5939
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    .line 5941
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    iget v2, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    invoke-virtual {v1, v0, v2, p2}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v1

    .line 5942
    .local v1, "currLine":I
    invoke-virtual {p0, v0, v1, p1}, Landroid/widget/Editor$InsertionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v2

    .line 5943
    .local v2, "offset":I
    iput v1, p0, Landroid/widget/Editor$InsertionHandleView;->mPreviousLineTouched:I

    .line 5944
    .end local v1    # "currLine":I
    goto :goto_0

    .line 5945
    .end local v2    # "offset":I
    :cond_1
    const/4 v2, -0x1

    .line 5951
    .restart local v2    # "offset":I
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, p3}, Landroid/widget/Editor$InsertionHandleView;->positionAtCursorOffset(IZZ)V

    .line 5952
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5953
    iget-object v1, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$minvalidateActionMode(Landroid/widget/Editor;)V

    .line 5955
    :cond_2
    return-void
.end method

.method public greylist-max-o updateSelection(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 5930
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 5931
    return-void
.end method
