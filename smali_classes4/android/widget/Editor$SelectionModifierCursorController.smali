.class public Landroid/widget/Editor$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectionModifierCursorController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$SelectionModifierCursorController$SelectionModifierCursorControllerWrapper;
    }
.end annotation


# static fields
.field private static final greylist-max-o DRAG_ACCELERATOR_MODE_CHARACTER:I = 0x1

.field private static final greylist-max-o DRAG_ACCELERATOR_MODE_INACTIVE:I = 0x0

.field private static final greylist-max-o DRAG_ACCELERATOR_MODE_PARAGRAPH:I = 0x3

.field private static final greylist-max-o DRAG_ACCELERATOR_MODE_WORD:I = 0x2


# instance fields
.field private blacklist mControllerWrapper:Landroid/widget/IEditorWrapper$ISelectionModifierCursorControllerWrapper;

.field private greylist-max-o mDragAcceleratorMode:I

.field private greylist-max-o mEndHandle:Landroid/widget/Editor$SelectionHandleView;

.field private greylist-max-o mGestureStayedInTapRegion:Z

.field private greylist-max-o mHaventMovedEnoughToStartDrag:Z

.field private greylist-max-o mLineSelectionIsOn:I

.field private greylist-max-o mMaxTouchOffset:I

.field private greylist-max-o mMinTouchOffset:I

.field private greylist-max-o mStartHandle:Landroid/widget/Editor$SelectionHandleView;

.field private greylist-max-o mStartOffset:I

.field private greylist-max-o mSwitchedLines:Z

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEndHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartHandle(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxTouchOffset(Landroid/widget/Editor$SelectionModifierCursorController;I)V
    .locals 0

    iput p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMinTouchOffset(Landroid/widget/Editor$SelectionModifierCursorController;I)V
    .locals 0

    iput p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitHandles(Landroid/widget/Editor$SelectionModifierCursorController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreloadHandleDrawables(Landroid/widget/Editor$SelectionModifierCursorController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->reloadHandleDrawables()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/Editor;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/Editor;

    .line 6705
    iput-object p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6686
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 6690
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    .line 6692
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    .line 6695
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    .line 7102
    new-instance v0, Landroid/widget/Editor$SelectionModifierCursorController$SelectionModifierCursorControllerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$SelectionModifierCursorController$SelectionModifierCursorControllerWrapper;-><init>(Landroid/widget/Editor$SelectionModifierCursorController;Landroid/widget/Editor$SelectionModifierCursorController$SelectionModifierCursorControllerWrapper-IA;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mControllerWrapper:Landroid/widget/IEditorWrapper$ISelectionModifierCursorControllerWrapper;

    .line 6706
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 6707
    return-void
.end method

.method private greylist-max-o initHandles()V
    .locals 7

    .line 6719
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-nez v0, :cond_0

    .line 6720
    new-instance v0, Landroid/widget/Editor$SelectionHandleView;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v3, v2, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v4, v1, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    const v5, 0x10204a1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/Editor$SelectionHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    .line 6724
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-nez v0, :cond_1

    .line 6725
    new-instance v0, Landroid/widget/Editor$SelectionHandleView;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v3, v2, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v4, v1, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    const v5, 0x10204a0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/Editor$SelectionHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    .line 6730
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->show()V

    .line 6731
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->show()V

    .line 6733
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 6734
    return-void
.end method

.method private blacklist reloadHandleDrawables()V
    .locals 3

    .line 6737
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-nez v0, :cond_0

    .line 6740
    return-void

    .line 6742
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$SelectionHandleView;->setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6743
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$SelectionHandleView;->setDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6744
    return-void
.end method

.method private greylist-max-o resetDragAcceleratorState()V
    .locals 3

    .line 7039
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 7040
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    .line 7041
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    .line 7042
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 7043
    .local v0, "selectionStart":I
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 7044
    .local v1, "selectionEnd":I
    if-ltz v0, :cond_1

    if-gez v1, :cond_0

    goto :goto_0

    .line 7046
    :cond_0
    if-le v0, v1, :cond_2

    .line 7047
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1

    .line 7045
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 7050
    :cond_2
    :goto_1
    return-void
.end method

.method private greylist-max-o selectCurrentParagraphAndStartDrag()Z
    .locals 2

    .line 6914
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmInsertionActionModeRunnable(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6915
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmInsertionActionModeRunnable(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6917
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 6918
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mselectCurrentParagraph(Landroid/widget/Editor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6919
    const/4 v0, 0x0

    return v0

    .line 6921
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag(I)V

    .line 6922
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o updateCharacterBasedSelection(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6926
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 6927
    .local v0, "offset":I
    iget v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 6928
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    .line 6927
    invoke-direct {p0, v1, v0, v2}, Landroid/widget/Editor$SelectionModifierCursorController;->updateSelectionInternal(IIZ)V

    .line 6929
    return-void
.end method

.method private greylist-max-o updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 7017
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 7018
    .local v0, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7019
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v2

    .line 7020
    .local v2, "offset":I
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v2, v3, :cond_0

    iput v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 7021
    :cond_0
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v2, v3, :cond_1

    iput v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 7018
    .end local v2    # "offset":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7023
    .end local v1    # "index":I
    :cond_2
    return-void
.end method

.method private greylist-max-o updateParagraphBasedSelection(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6991
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 6993
    .local v0, "offset":I
    iget v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 6994
    .local v1, "start":I
    iget v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 6995
    .local v2, "end":I
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3, v1, v2}, Landroid/widget/Editor;->-$$Nest$mgetParagraphsRange(Landroid/widget/Editor;II)J

    move-result-wide v3

    .line 6996
    .local v3, "paragraphsRange":J
    invoke-static {v3, v4}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v5

    .line 6997
    .local v5, "selectionStart":I
    invoke-static {v3, v4}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v6

    .line 6998
    .local v6, "selectionEnd":I
    nop

    .line 6999
    const/16 v7, 0x1002

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v7

    .line 6998
    invoke-direct {p0, v5, v6, v7}, Landroid/widget/Editor$SelectionModifierCursorController;->updateSelectionInternal(IIZ)V

    .line 7000
    return-void
.end method

.method private greylist-max-o updateSelection(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6893
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6894
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6902
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateParagraphBasedSelection(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 6899
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateWordBasedSelection(Landroid/view/MotionEvent;)V

    .line 6900
    goto :goto_0

    .line 6896
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateCharacterBasedSelection(Landroid/view/MotionEvent;)V

    .line 6906
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o updateSelectionInternal(IIZ)V
    .locals 3
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I
    .param p3, "fromTouchScreen"    # Z

    .line 7004
    if-eqz p3, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmHapticTextHandleEnabled(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 7005
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    .line 7006
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-eq v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7007
    .local v0, "performHapticFeedback":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 7008
    if-eqz v0, :cond_2

    .line 7009
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->performHapticFeedback(I)Z

    .line 7011
    :cond_2
    return-void
.end method

.method private greylist-max-o updateWordBasedSelection(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6932
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    if-eqz v0, :cond_0

    .line 6933
    return-void

    .line 6935
    :cond_0
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    .line 6936
    .local v0, "isMouse":Z
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    .line 6937
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 6936
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 6938
    .local v1, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 6939
    .local v2, "eventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 6941
    .local v3, "eventY":F
    if-eqz v0, :cond_1

    .line 6943
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v4

    .local v4, "currLine":I
    goto :goto_1

    .line 6945
    .end local v4    # "currLine":I
    :cond_1
    move v4, v3

    .line 6946
    .local v4, "y":F
    iget-boolean v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    if-eqz v5, :cond_3

    .line 6951
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    .line 6952
    .local v5, "touchSlop":I
    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v6, :cond_2

    .line 6953
    invoke-virtual {v6}, Landroid/widget/Editor$SelectionHandleView;->getIdealVerticalOffset()F

    move-result v6

    goto :goto_0

    .line 6954
    :cond_2
    int-to-float v6, v5

    :goto_0
    nop

    .line 6955
    .local v6, "fingerOffset":F
    sub-float v4, v3, v6

    .line 6958
    .end local v5    # "touchSlop":I
    .end local v6    # "fingerOffset":F
    :cond_3
    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    iget v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    invoke-virtual {v5, v6, v7, v4}, Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I

    move-result v5

    .line 6960
    .local v5, "currLine":I
    iget-boolean v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    if-nez v6, :cond_4

    iget v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    if-eq v5, v6, :cond_4

    .line 6965
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    .line 6966
    return-void

    .line 6971
    .end local v4    # "y":F
    :cond_4
    move v4, v5

    .end local v5    # "currLine":I
    .local v4, "currLine":I
    :goto_1
    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v5

    .line 6973
    .local v5, "offset":I
    iget v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    if-ge v6, v5, :cond_5

    .line 6975
    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v6, v5}, Landroid/widget/Editor;->-$$Nest$mgetWordEnd(Landroid/widget/Editor;I)I

    move-result v5

    .line 6976
    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v6, v7}, Landroid/widget/Editor;->-$$Nest$mgetWordStart(Landroid/widget/Editor;I)I

    move-result v6

    .local v6, "startOffset":I
    goto :goto_2

    .line 6979
    .end local v6    # "startOffset":I
    :cond_5
    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v6, v5}, Landroid/widget/Editor;->-$$Nest$mgetWordStart(Landroid/widget/Editor;I)I

    move-result v5

    .line 6980
    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v6, v7}, Landroid/widget/Editor;->-$$Nest$mgetWordEnd(Landroid/widget/Editor;I)I

    move-result v6

    .line 6981
    .restart local v6    # "startOffset":I
    if-ne v6, v5, :cond_6

    .line 6982
    iget-object v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v8, 0x0

    invoke-static {v7, v5, v8}, Landroid/widget/Editor;->-$$Nest$mgetNextCursorOffset(Landroid/widget/Editor;IZ)I

    move-result v5

    .line 6985
    :cond_6
    :goto_2
    iput v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    .line 6986
    const/16 v7, 0x1002

    .line 6987
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v7

    .line 6986
    invoke-direct {p0, v6, v5, v7}, Landroid/widget/Editor$SelectionModifierCursorController;->updateSelectionInternal(IIZ)V

    .line 6988
    return-void
.end method


# virtual methods
.method public greylist-max-o enterDrag(I)V
    .locals 3
    .param p1, "dragAcceleratorMode"    # I

    .line 6758
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 6759
    iput p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    .line 6761
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditorTouchState;->getLastDownX()F

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v2

    .line 6762
    invoke-virtual {v2}, Landroid/widget/EditorTouchState;->getLastDownY()F

    move-result v2

    .line 6761
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 6763
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditorTouchState;->getLastDownY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    .line 6765
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 6770
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 6771
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 6772
    return-void
.end method

.method public greylist-max-o getMaxTouchOffset()I
    .locals 1

    .line 7030
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public greylist-max-o getMinTouchOffset()I
    .locals 1

    .line 7026
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public blacklist getWrapper()Landroid/widget/IEditorWrapper$ISelectionModifierCursorControllerWrapper;
    .locals 1

    .line 7106
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mControllerWrapper:Landroid/widget/IEditorWrapper$ISelectionModifierCursorControllerWrapper;

    return-object v0
.end method

.method public greylist-max-o hide()V
    .locals 1

    .line 6747
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->hide()V

    .line 6748
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->hide()V

    .line 6749
    :cond_1
    return-void
.end method

.method public greylist-max-o invalidateHandles()V
    .locals 1

    .line 7093
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_0

    .line 7094
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->invalidate()V

    .line 7096
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_1

    .line 7097
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->invalidate()V

    .line 7099
    :cond_1
    return-void
.end method

.method public greylist-max-o isActive()Z
    .locals 1

    .line 7089
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isCursorBeingModified()Z
    .locals 1

    .line 7061
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_0

    .line 7062
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 7061
    :goto_1
    return v0
.end method

.method public greylist-max-o isDragAcceleratorActive()Z
    .locals 1

    .line 7069
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isSelectionStartDragged()Z
    .locals 1

    .line 7056
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o onDetached()V
    .locals 2

    .line 7080
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 7081
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 7083
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionHandleView;->onDetached()V

    .line 7084
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionHandleView;->onDetached()V

    .line 7085
    :cond_1
    return-void
.end method

.method public greylist-max-o onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 6777
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 6778
    .local v0, "eventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 6779
    .local v1, "eventY":F
    const/16 v2, 0x2002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    .line 6780
    .local v2, "isMouse":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 6815
    :pswitch_1
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 6817
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 6822
    :pswitch_2
    iget-boolean v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    if-eqz v3, :cond_0

    .line 6823
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    .line 6824
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 6823
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 6825
    .local v3, "viewConfig":Landroid/view/ViewConfiguration;
    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v6

    .line 6826
    invoke-virtual {v6}, Landroid/widget/EditorTouchState;->getLastDownX()F

    move-result v6

    iget-object v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditorTouchState;->getLastDownY()F

    move-result v7

    .line 6827
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v8

    .line 6825
    invoke-static {v6, v7, v0, v1, v8}, Landroid/widget/EditorTouchState;->isDistanceWithin(FFFFI)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    .line 6830
    .end local v3    # "viewConfig":Landroid/view/ViewConfiguration;
    :cond_0
    iget-boolean v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    if-eqz v3, :cond_1

    .line 6831
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditorTouchState;->isMovedEnoughForDrag()Z

    move-result v3

    xor-int/2addr v3, v5

    iput-boolean v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    .line 6834
    :cond_1
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v3

    if-nez v3, :cond_4

    .line 6835
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v3

    .line 6836
    .local v3, "offset":I
    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->hasSelection()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    if-eqz v6, :cond_2

    iget v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    if-eq v6, v3, :cond_3

    :cond_2
    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    .line 6838
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    if-lt v3, v6, :cond_3

    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    .line 6839
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    if-gt v3, v6, :cond_3

    .line 6840
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-$$Nest$mstartDragAndDrop(Landroid/widget/Editor;)V

    .line 6841
    goto/16 :goto_1

    .line 6844
    :cond_3
    iget v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    if-eq v6, v3, :cond_4

    .line 6846
    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 6847
    invoke-virtual {p0, v5}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag(I)V

    .line 6848
    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iput-boolean v5, v6, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 6849
    iput-boolean v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    .line 6853
    .end local v3    # "offset":I
    :cond_4
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/widget/Editor$SelectionHandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6855
    goto/16 :goto_1

    .line 6858
    :cond_5
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateSelection(Landroid/view/MotionEvent;)V

    .line 6859
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v3, :cond_d

    .line 6860
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 6862
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v3, p1}, Landroid/widget/Editor$SelectionHandleView;->updateMagnifier(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 6870
    :pswitch_3
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v3, :cond_6

    .line 6871
    invoke-virtual {v3}, Landroid/widget/Editor$SelectionHandleView;->dismissMagnifier()V

    .line 6873
    :cond_6
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v3

    if-nez v3, :cond_7

    .line 6874
    goto/16 :goto_1

    .line 6876
    :cond_7
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateSelection(Landroid/view/MotionEvent;)V

    .line 6879
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 6882
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetDragAcceleratorState()V

    .line 6884
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 6886
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-boolean v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    invoke-virtual {v3, v4}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    goto :goto_1

    .line 6782
    :pswitch_4
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$mextractedTextModeWillBeStarted(Landroid/widget/Editor;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 6784
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    goto :goto_1

    .line 6787
    :cond_8
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 6791
    iget-boolean v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v3

    .line 6792
    invoke-virtual {v3}, Landroid/widget/EditorTouchState;->isMultiTapInSameArea()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v2, :cond_9

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    .line 6793
    invoke-static {v3, v0, v1}, Landroid/widget/Editor;->-$$Nest$misPositionOnText(Landroid/widget/Editor;FF)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v3

    .line 6794
    invoke-virtual {v3}, Landroid/widget/EditorTouchState;->isOnHandle()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 6799
    :cond_9
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditorTouchState;->isDoubleTap()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 6800
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$mselectCurrentWordAndStartDrag(Landroid/widget/Editor;)Z

    goto :goto_0

    .line 6801
    :cond_a
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTouchState(Landroid/widget/Editor;)Landroid/widget/EditorTouchState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditorTouchState;->isTripleClick()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 6802
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->selectCurrentParagraphAndStartDrag()Z

    .line 6804
    :cond_b
    :goto_0
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iput-boolean v5, v3, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 6806
    :cond_c
    iput-boolean v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    .line 6807
    iput-boolean v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    .line 6809
    nop

    .line 6890
    :cond_d
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist onTouchModeChanged(Z)V
    .locals 0
    .param p1, "isInTouchMode"    # Z

    .line 7073
    if-nez p1, :cond_0

    .line 7074
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 7076
    :cond_0
    return-void
.end method

.method public greylist-max-o resetTouchOffsets()V
    .locals 1

    .line 7034
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 7035
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetDragAcceleratorState()V

    .line 7036
    return-void
.end method

.method public greylist-max-o show()V
    .locals 2

    .line 6710
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6711
    return-void

    .line 6713
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Editor;->loadHandleDrawables(Z)V

    .line 6714
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    .line 6715
    return-void
.end method
