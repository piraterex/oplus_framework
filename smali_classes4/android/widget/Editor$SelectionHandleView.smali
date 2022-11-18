.class public final Landroid/widget/Editor$SelectionHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SelectionHandleView"
.end annotation


# instance fields
.field private final greylist-max-o mHandleType:I

.field private greylist-max-o mInWord:Z

.field private greylist-max-o mLanguageDirectionChanged:Z

.field private greylist-max-o mPrevX:F

.field private final greylist-max-o mTextViewEdgeSlop:F

.field private final greylist-max-o mTextViewLocation:[I

.field private greylist-max-o mTouchWordDelta:F

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 6
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I
    .param p5, "handleType"    # I

    .line 6007
    iput-object p1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    .line 6008
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView-IA;)V

    .line 5993
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 5999
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 6004
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    .line 6009
    iput p5, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    .line 6010
    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 6011
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    .line 6012
    return-void
.end method

.method private greylist-max-o getHorizontal(Landroid/text/Layout;IZ)F
    .locals 6
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "startHandle"    # Z

    .line 6322
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 6323
    .local v0, "line":I
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move v2, p2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p2, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6324
    .local v2, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v3

    .line 6325
    .local v3, "isRtlChar":Z
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    .line 6326
    .local v1, "isRtlParagraph":Z
    :cond_1
    if-ne v3, v1, :cond_2

    .line 6327
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v4

    .line 6326
    :goto_1
    return v4
.end method

.method private greylist-max-o isStartHandle()Z
    .locals 1

    .line 6015
    iget v0, p0, Landroid/widget/Editor$SelectionHandleView;->mHandleType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o positionAndAdjustForCrossingHandles(IZ)V
    .locals 11
    .param p1, "offset"    # I
    .param p2, "fromTouchScreen"    # Z

    .line 6263
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 6264
    .local v0, "anotherHandleOffset":I
    :goto_0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-ge p1, v0, :cond_2

    .line 6265
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v1

    if-nez v1, :cond_8

    if-gt p1, v0, :cond_8

    .line 6266
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6267
    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 6268
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_7

    if-eq p1, v0, :cond_7

    .line 6269
    invoke-virtual {p0, v1, p1}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v3

    .line 6270
    .local v3, "horiz":F
    nop

    .line 6271
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v4

    .line 6270
    xor-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v1, v0, v4}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v4

    .line 6272
    .local v4, "anotherHandleHoriz":F
    iget v5, p0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {p0, v1, v5}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v5

    .line 6273
    .local v5, "currentHoriz":F
    cmpg-float v6, v5, v4

    if-gez v6, :cond_3

    cmpg-float v6, v3, v4

    if-ltz v6, :cond_4

    :cond_3
    cmpl-float v6, v5, v4

    if-lez v6, :cond_7

    cmpl-float v6, v3, v4

    if-lez v6, :cond_7

    .line 6277
    :cond_4
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v6

    .line 6278
    .local v6, "currentOffset":I
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 6279
    move v7, v6

    goto :goto_1

    :cond_5
    add-int/lit8 v7, v6, -0x1

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 6280
    .local v7, "offsetToGetRunRange":I
    :goto_1
    invoke-virtual {v1, v7}, Landroid/text/Layout;->getRunRange(I)J

    move-result-wide v8

    .line 6281
    .local v8, "range":J
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 6282
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result p1

    goto :goto_2

    .line 6284
    :cond_6
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result p1

    .line 6286
    :goto_2
    invoke-virtual {p0, p1, v2, p2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZZ)V

    .line 6287
    return-void

    .line 6291
    .end local v3    # "horiz":F
    .end local v4    # "anotherHandleHoriz":F
    .end local v5    # "currentHoriz":F
    .end local v6    # "currentOffset":I
    .end local v7    # "offsetToGetRunRange":I
    .end local v8    # "range":J
    :cond_7
    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v3, v0, v4}, Landroid/widget/Editor;->-$$Nest$mgetNextCursorOffset(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 6293
    .end local v1    # "layout":Landroid/text/Layout;
    :cond_8
    invoke-virtual {p0, p1, v2, p2}, Landroid/widget/Editor$SelectionHandleView;->positionAtCursorOffset(IZZ)V

    .line 6294
    return-void
.end method

.method private greylist-max-o positionNearEdgeOfScrollingView(FZ)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    .line 6297
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 6299
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_1

    .line 6300
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v0, v0, v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    .line 6301
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    .line 6302
    .local v0, "rightEdge":I
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .line 6303
    .local v0, "nearEdge":Z
    goto :goto_2

    .line 6304
    .end local v0    # "nearEdge":Z
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewLocation:[I

    aget v0, v0, v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    .line 6305
    .local v0, "leftEdge":I
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    move v0, v1

    .line 6307
    .local v0, "nearEdge":Z
    :goto_2
    return v0
.end method


# virtual methods
.method public greylist-max-o getCurrentCursorOffset()I
    .locals 1

    .line 6034
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    :goto_0
    return v0
.end method

.method public greylist-max-o getHorizontal(Landroid/text/Layout;I)F
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 6318
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;IZ)F

    move-result v0

    return v0
.end method

.method protected greylist-max-o getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .line 6029
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    return v0
.end method

.method protected greylist-max-o getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .line 6020
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-ne p2, v0, :cond_0

    .line 6021
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0

    .line 6023
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected greylist-max-o getMagnifierHandleTrigger()I
    .locals 1

    .line 6356
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6357
    const/4 v0, 0x1

    goto :goto_0

    .line 6358
    :cond_0
    const/4 v0, 0x2

    .line 6356
    :goto_0
    return v0
.end method

.method protected greylist-max-o getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 12
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "x"    # F

    .line 6332
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v0

    .line 6333
    .local v0, "localX":F
    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v2

    .line 6334
    .local v2, "primaryOffset":I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6335
    return v2

    .line 6337
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, p2, v0, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v4

    .line 6338
    .local v4, "secondaryOffset":I
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v5

    .line 6339
    .local v5, "currentOffset":I
    sub-int v6, v2, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 6340
    .local v6, "primaryDiff":I
    sub-int v7, v4, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 6341
    .local v7, "secondaryDiff":I
    if-ge v6, v7, :cond_1

    .line 6342
    return v2

    .line 6343
    :cond_1
    if-le v6, v7, :cond_2

    .line 6344
    return v4

    .line 6346
    :cond_2
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 6347
    move v8, v5

    goto :goto_0

    :cond_3
    add-int/lit8 v8, v5, -0x1

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 6348
    .local v8, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v8}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v9

    .line 6349
    .local v9, "isRtlChar":Z
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    .line 6350
    .local v1, "isRtlParagraph":Z
    :goto_1
    if-ne v9, v1, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    return v3
.end method

.method protected greylist-max-o isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .line 6312
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6313
    .local v0, "offsetToCheck":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v1

    return v1
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6234
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->isFromPrimePointer(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6235
    return v1

    .line 6237
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 6239
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 6249
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/widget/Editor$SelectionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 6250
    goto :goto_0

    .line 6254
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionHandleView;->dismissMagnifier()V

    goto :goto_0

    .line 6243
    :pswitch_2
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6244
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 6245
    invoke-virtual {p0, p1}, Landroid/widget/Editor$SelectionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    .line 6246
    nop

    .line 6258
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected greylist-max-o positionAtCursorOffset(IZZ)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "forceUpdatePosition"    # Z
    .param p3, "fromTouchScreen"    # Z

    .line 6228
    invoke-super {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    .line 6229
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mgetWordIteratorWithText(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    .line 6230
    return-void
.end method

.method protected greylist-max-o updatePosition(FFZ)V
    .locals 23
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "fromTouchScreen"    # Z

    .line 6054
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 6055
    .local v4, "layout":Landroid/text/Layout;
    if-nez v4, :cond_0

    .line 6058
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v5

    invoke-direct {v0, v5, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 6060
    return-void

    .line 6063
    :cond_0
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 6064
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v5

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    .line 6067
    :cond_1
    const/4 v5, 0x0

    .line 6069
    .local v5, "positionCursor":Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    goto :goto_0

    :cond_2
    iget-object v7, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 6070
    .local v7, "anotherHandleOffset":I
    :goto_0
    iget-object v8, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    iget v9, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    invoke-virtual {v8, v4, v9, v2}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v8

    .line 6071
    .local v8, "currLine":I
    invoke-virtual {v0, v4, v8, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v9

    .line 6073
    .local v9, "initialOffset":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_3

    if-ge v9, v7, :cond_4

    .line 6074
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-nez v10, :cond_5

    if-gt v9, v7, :cond_5

    .line 6077
    :cond_4
    invoke-virtual {v4, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 6078
    invoke-virtual {v0, v4, v8, v1}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v9

    .line 6081
    :cond_5
    move v10, v9

    .line 6082
    .local v10, "offset":I
    iget-object v11, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11, v10}, Landroid/widget/Editor;->-$$Nest$mgetWordEnd(Landroid/widget/Editor;I)I

    move-result v11

    .line 6083
    .local v11, "wordEnd":I
    iget-object v12, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12, v10}, Landroid/widget/Editor;->-$$Nest$mgetWordStart(Landroid/widget/Editor;I)I

    move-result v12

    .line 6085
    .local v12, "wordStart":I
    iget v13, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    const/high16 v14, -0x40800000    # -1.0f

    cmpl-float v13, v13, v14

    if-nez v13, :cond_6

    .line 6086
    iput v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 6089
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->getCurrentCursorOffset()I

    move-result v13

    .line 6090
    .local v13, "currentOffset":I
    invoke-virtual {v0, v4, v13}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v14

    .line 6091
    .local v14, "rtlAtCurrentOffset":Z
    invoke-virtual {v0, v4, v10}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v15

    .line 6092
    .local v15, "atRtl":Z
    invoke-virtual {v4, v10}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v16

    .line 6097
    .local v16, "isLvlBoundary":Z
    if-nez v16, :cond_3c

    if-eqz v14, :cond_8

    if-eqz v15, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    move/from16 v21, v5

    goto/16 :goto_1c

    :cond_8
    :goto_2
    if-nez v14, :cond_9

    if-eqz v15, :cond_9

    goto :goto_1

    .line 6104
    :cond_9
    iget-boolean v6, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    const/4 v2, 0x0

    if-eqz v6, :cond_a

    if-nez v16, :cond_a

    .line 6107
    invoke-direct {v0, v10, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 6108
    const/4 v6, 0x0

    iput v6, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6109
    iput-boolean v2, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 6110
    return-void

    .line 6114
    :cond_a
    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    sub-float v6, v1, v6

    .line 6115
    .local v6, "xDiff":F
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 6116
    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    if-ge v8, v2, :cond_b

    const/4 v2, 0x1

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    .local v2, "isExpanding":Z
    :goto_3
    goto :goto_4

    .line 6118
    .end local v2    # "isExpanding":Z
    :cond_c
    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    if-le v8, v2, :cond_d

    const/4 v2, 0x1

    goto :goto_4

    :cond_d
    const/4 v2, 0x0

    .line 6120
    .restart local v2    # "isExpanding":Z
    :goto_4
    move/from16 v21, v5

    .end local v5    # "positionCursor":Z
    .local v21, "positionCursor":Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-ne v15, v5, :cond_f

    .line 6121
    const/4 v5, 0x0

    cmpl-float v18, v6, v5

    if-lez v18, :cond_e

    const/16 v18, 0x1

    goto :goto_5

    :cond_e
    const/16 v18, 0x0

    :goto_5
    or-int v2, v2, v18

    goto :goto_7

    .line 6123
    :cond_f
    const/4 v5, 0x0

    cmpg-float v22, v6, v5

    if-gez v22, :cond_10

    const/4 v5, 0x1

    goto :goto_6

    :cond_10
    const/4 v5, 0x0

    :goto_6
    or-int/2addr v2, v5

    .line 6126
    :goto_7
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 6127
    invoke-direct {v0, v1, v15}, Landroid/widget/Editor$SelectionHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 6128
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    if-nez v5, :cond_11

    goto :goto_8

    :cond_11
    move/from16 v17, v6

    goto :goto_a

    .line 6129
    :cond_12
    :goto_8
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-nez v5, :cond_18

    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    .line 6130
    move/from16 v17, v6

    if-eqz v15, :cond_13

    const/4 v6, -0x1

    goto :goto_9

    :cond_13
    const/4 v6, 0x1

    .end local v6    # "xDiff":F
    .local v17, "xDiff":F
    :goto_9
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->canScrollHorizontally(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    :goto_a
    if-eqz v2, :cond_15

    .line 6131
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_14

    if-lt v10, v13, :cond_16

    .line 6132
    :cond_14
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-nez v5, :cond_15

    if-gt v10, v13, :cond_16

    :cond_15
    if-nez v2, :cond_1b

    .line 6137
    :cond_16
    const/4 v5, 0x0

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6138
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-ne v15, v5, :cond_17

    .line 6139
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v5

    goto :goto_b

    .line 6140
    :cond_17
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v5

    :goto_b
    nop

    .line 6141
    .local v5, "nextOffset":I
    invoke-direct {v0, v5, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 6142
    return-void

    .line 6129
    .end local v5    # "nextOffset":I
    .end local v17    # "xDiff":F
    .restart local v6    # "xDiff":F
    :cond_18
    move/from16 v17, v6

    .end local v6    # "xDiff":F
    .restart local v17    # "xDiff":F
    goto :goto_c

    .line 6127
    .end local v17    # "xDiff":F
    .restart local v6    # "xDiff":F
    :cond_19
    move/from16 v17, v6

    .end local v6    # "xDiff":F
    .restart local v17    # "xDiff":F
    goto :goto_c

    .line 6126
    .end local v17    # "xDiff":F
    .restart local v6    # "xDiff":F
    :cond_1a
    move/from16 v17, v6

    .line 6146
    .end local v6    # "xDiff":F
    .restart local v17    # "xDiff":F
    :cond_1b
    :goto_c
    if-eqz v2, :cond_2c

    .line 6148
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_1c

    move v5, v12

    goto :goto_d

    :cond_1c
    move v5, v11

    .line 6149
    .local v5, "wordBoundary":I
    :goto_d
    iget-boolean v6, v0, Landroid/widget/Editor$SelectionHandleView;->mInWord:Z

    if-eqz v6, :cond_1e

    .line 6150
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-eqz v6, :cond_1d

    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v8, v6, :cond_1f

    goto :goto_e

    :cond_1d
    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v8, v6, :cond_1f

    .line 6151
    :cond_1e
    :goto_e
    invoke-virtual {v0, v4, v5}, Landroid/widget/Editor$SelectionHandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v6

    if-ne v15, v6, :cond_1f

    const/4 v6, 0x1

    goto :goto_f

    :cond_1f
    const/4 v6, 0x0

    .line 6152
    .local v6, "snapToWord":Z
    :goto_f
    if-eqz v6, :cond_28

    .line 6156
    move/from16 v22, v2

    .end local v2    # "isExpanding":Z
    .local v22, "isExpanding":Z
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    if-eq v2, v8, :cond_21

    .line 6157
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 6158
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    goto :goto_10

    :cond_20
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    :goto_10
    move v5, v2

    .line 6160
    :cond_21
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 6161
    sub-int v2, v11, v5

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v11, v2

    goto :goto_11

    .line 6162
    :cond_22
    sub-int v2, v5, v12

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v12

    :goto_11
    nop

    .line 6163
    .local v2, "offsetThresholdToSnap":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v19

    if-eqz v19, :cond_24

    if-le v10, v2, :cond_23

    move/from16 v19, v5

    .end local v5    # "wordBoundary":I
    .local v19, "wordBoundary":I
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v8, v5, :cond_25

    goto :goto_12

    .end local v19    # "wordBoundary":I
    .restart local v5    # "wordBoundary":I
    :cond_23
    move/from16 v19, v5

    .line 6167
    .end local v5    # "wordBoundary":I
    .restart local v19    # "wordBoundary":I
    :goto_12
    move v5, v12

    move v10, v5

    move/from16 v5, v19

    .end local v10    # "offset":I
    .local v5, "offset":I
    goto :goto_13

    .line 6163
    .end local v19    # "wordBoundary":I
    .local v5, "wordBoundary":I
    .restart local v10    # "offset":I
    :cond_24
    move/from16 v19, v5

    .line 6168
    .end local v5    # "wordBoundary":I
    .restart local v19    # "wordBoundary":I
    :cond_25
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-nez v5, :cond_27

    if-ge v10, v2, :cond_26

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v8, v5, :cond_27

    .line 6172
    :cond_26
    move v5, v11

    move v10, v5

    move/from16 v5, v19

    .end local v10    # "offset":I
    .local v5, "offset":I
    goto :goto_13

    .line 6174
    .end local v5    # "offset":I
    .restart local v10    # "offset":I
    :cond_27
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    move v10, v5

    move/from16 v5, v19

    .end local v10    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_13

    .line 6152
    .end local v19    # "wordBoundary":I
    .end local v22    # "isExpanding":Z
    .local v2, "isExpanding":Z
    .local v5, "wordBoundary":I
    .restart local v10    # "offset":I
    :cond_28
    move/from16 v22, v2

    .line 6177
    .end local v2    # "isExpanding":Z
    .restart local v22    # "isExpanding":Z
    :goto_13
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-eqz v2, :cond_29

    if-lt v10, v9, :cond_2a

    .line 6178
    :cond_29
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v2

    if-nez v2, :cond_2b

    if-le v10, v9, :cond_2b

    .line 6179
    :cond_2a
    invoke-virtual {v0, v4, v10}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v2

    .line 6180
    .local v2, "adjustedX":F
    move/from16 v19, v5

    .end local v5    # "wordBoundary":I
    .restart local v19    # "wordBoundary":I
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    .line 6181
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v5

    sub-float/2addr v5, v2

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6182
    .end local v2    # "adjustedX":F
    goto :goto_14

    .line 6178
    .end local v19    # "wordBoundary":I
    .restart local v5    # "wordBoundary":I
    :cond_2b
    move/from16 v19, v5

    .line 6183
    .end local v5    # "wordBoundary":I
    .restart local v19    # "wordBoundary":I
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6185
    :goto_14
    const/4 v5, 0x1

    .line 6186
    .end local v6    # "snapToWord":Z
    .end local v19    # "wordBoundary":I
    .end local v21    # "positionCursor":Z
    .local v5, "positionCursor":Z
    goto/16 :goto_1b

    .line 6187
    .end local v5    # "positionCursor":Z
    .end local v22    # "isExpanding":Z
    .local v2, "isExpanding":Z
    .restart local v21    # "positionCursor":Z
    :cond_2c
    move/from16 v22, v2

    .end local v2    # "isExpanding":Z
    .restart local v22    # "isExpanding":Z
    iget v2, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    sub-float v2, v1, v2

    .line 6188
    invoke-virtual {v0, v4, v8, v2}, Landroid/widget/Editor$SelectionHandleView;->getOffsetAtCoordinate(Landroid/text/Layout;IF)I

    move-result v2

    .line 6189
    .local v2, "adjustedOffset":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 6190
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-gt v2, v5, :cond_2e

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-le v8, v5, :cond_2d

    goto :goto_15

    :cond_2d
    const/4 v6, 0x0

    goto :goto_17

    :cond_2e
    :goto_15
    const/4 v6, 0x1

    goto :goto_17

    .line 6191
    :cond_2f
    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-lt v2, v5, :cond_31

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-ge v8, v5, :cond_30

    goto :goto_16

    :cond_30
    const/4 v6, 0x0

    goto :goto_17

    :cond_31
    :goto_16
    const/4 v6, 0x1

    :goto_17
    move v5, v6

    .line 6192
    .local v5, "shrinking":Z
    if-eqz v5, :cond_37

    .line 6194
    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevLine:I

    if-eq v8, v6, :cond_36

    .line 6196
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v6

    if-eqz v6, :cond_32

    move v6, v12

    goto :goto_18

    :cond_32
    move v6, v11

    .line 6197
    .end local v10    # "offset":I
    .local v6, "offset":I
    :goto_18
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-eqz v10, :cond_33

    if-lt v6, v9, :cond_34

    .line 6198
    :cond_33
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v10

    if-nez v10, :cond_35

    if-le v6, v9, :cond_35

    .line 6199
    :cond_34
    invoke-virtual {v0, v4, v6}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v10

    .line 6200
    .local v10, "adjustedX":F
    move/from16 v19, v5

    .end local v5    # "shrinking":Z
    .local v19, "shrinking":Z
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    .line 6201
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v5

    sub-float/2addr v5, v10

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6202
    .end local v10    # "adjustedX":F
    goto :goto_19

    .line 6198
    .end local v19    # "shrinking":Z
    .restart local v5    # "shrinking":Z
    :cond_35
    move/from16 v19, v5

    .line 6203
    .end local v5    # "shrinking":Z
    .restart local v19    # "shrinking":Z
    const/4 v5, 0x0

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6208
    :goto_19
    move v10, v6

    goto :goto_1a

    .line 6206
    .end local v6    # "offset":I
    .end local v19    # "shrinking":Z
    .restart local v5    # "shrinking":Z
    .local v10, "offset":I
    :cond_36
    move/from16 v19, v5

    .end local v5    # "shrinking":Z
    .restart local v19    # "shrinking":Z
    move v5, v2

    move v10, v5

    .line 6208
    :goto_1a
    const/4 v5, 0x1

    .end local v21    # "positionCursor":Z
    .local v5, "positionCursor":Z
    goto :goto_1b

    .line 6209
    .end local v19    # "shrinking":Z
    .local v5, "shrinking":Z
    .restart local v21    # "positionCursor":Z
    :cond_37
    move/from16 v19, v5

    .end local v5    # "shrinking":Z
    .restart local v19    # "shrinking":Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-eqz v5, :cond_38

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-lt v2, v5, :cond_39

    .line 6210
    :cond_38
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v5

    if-nez v5, :cond_3a

    iget v5, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    if-le v2, v5, :cond_3a

    .line 6213
    :cond_39
    iget-object v5, v0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v5

    iget v6, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousOffset:I

    .line 6214
    invoke-virtual {v0, v4, v6}, Landroid/widget/Editor$SelectionHandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6218
    .end local v2    # "adjustedOffset":I
    .end local v19    # "shrinking":Z
    :cond_3a
    move/from16 v5, v21

    .end local v21    # "positionCursor":Z
    .local v5, "positionCursor":Z
    :goto_1b
    if-eqz v5, :cond_3b

    .line 6219
    iput v8, v0, Landroid/widget/Editor$SelectionHandleView;->mPreviousLineTouched:I

    .line 6220
    invoke-direct {v0, v10, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 6222
    :cond_3b
    iput v1, v0, Landroid/widget/Editor$SelectionHandleView;->mPrevX:F

    .line 6223
    return-void

    .line 6097
    .end local v17    # "xDiff":F
    .end local v22    # "isExpanding":Z
    :cond_3c
    move/from16 v21, v5

    .line 6100
    .end local v5    # "positionCursor":Z
    .restart local v21    # "positionCursor":Z
    :goto_1c
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/widget/Editor$SelectionHandleView;->mLanguageDirectionChanged:Z

    .line 6101
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/Editor$SelectionHandleView;->mTouchWordDelta:F

    .line 6102
    invoke-direct {v0, v10, v3}, Landroid/widget/Editor$SelectionHandleView;->positionAndAdjustForCrossingHandles(IZ)V

    .line 6103
    return-void
.end method

.method protected greylist-max-o updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .line 6039
    invoke-direct {p0}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6040
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 6041
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 6040
    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 6043
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 6044
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 6043
    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6046
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionHandleView;->updateDrawable(Z)V

    .line 6047
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextActionMode(Landroid/widget/Editor;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6048
    iget-object v0, p0, Landroid/widget/Editor$SelectionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$minvalidateActionMode(Landroid/widget/Editor;)V

    .line 6050
    :cond_1
    return-void
.end method
