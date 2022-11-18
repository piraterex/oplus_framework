.class final Landroid/widget/Editor$CursorAnchorInfoNotifier;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CursorAnchorInfoNotifier"
.end annotation


# instance fields
.field final greylist-max-o mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field final greylist-max-o mTmpIntOffset:[I

.field final greylist-max-o mViewToScreenMatrix:Landroid/graphics/Matrix;

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/Editor;)V
    .locals 0

    .line 4681
    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4682
    new-instance p1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4683
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    .line 4684
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor;Landroid/widget/Editor$CursorAnchorInfoNotifier-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o updatePosition(IIZZ)V
    .locals 28
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .line 4689
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 4690
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v1, :cond_17

    iget v2, v1, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez v2, :cond_0

    move-object/from16 v19, v1

    goto/16 :goto_9

    .line 4693
    :cond_0
    iget-object v2, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$mgetInputMethodManager(Landroid/widget/Editor;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 4694
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v2, :cond_1

    .line 4695
    return-void

    .line 4697
    :cond_1
    iget-object v3, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4698
    return-void

    .line 4701
    :cond_2
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isCursorAnchorInfoEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4702
    return-void

    .line 4704
    :cond_3
    iget-object v3, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 4705
    .local v3, "layout":Landroid/text/Layout;
    if-nez v3, :cond_4

    .line 4706
    return-void

    .line 4708
    :cond_4
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getUpdateCursorAnchorInfoMode()I

    move-result v4

    .line 4709
    .local v4, "mode":I
    and-int/lit8 v5, v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_5

    move v5, v7

    goto :goto_0

    :cond_5
    move v5, v6

    .line 4711
    .local v5, "includeEditorBounds":Z
    :goto_0
    and-int/lit8 v8, v4, 0x8

    if-eqz v8, :cond_6

    move v8, v7

    goto :goto_1

    :cond_6
    move v8, v6

    .line 4713
    .local v8, "includeCharacterBounds":Z
    :goto_1
    and-int/lit8 v9, v4, 0x10

    if-eqz v9, :cond_7

    move v9, v7

    goto :goto_2

    :cond_7
    move v9, v6

    .line 4715
    .local v9, "includeInsertionMarker":Z
    :goto_2
    if-nez v5, :cond_8

    if-nez v8, :cond_8

    if-nez v9, :cond_8

    move v10, v7

    goto :goto_3

    :cond_8
    move v10, v6

    .line 4718
    .local v10, "includeAll":Z
    :goto_3
    or-int/2addr v5, v10

    .line 4719
    or-int/2addr v8, v10

    .line 4720
    or-int/2addr v9, v10

    .line 4722
    iget-object v15, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4723
    .local v15, "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    invoke-virtual {v15}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    .line 4725
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v14

    .line 4726
    .local v14, "selectionStart":I
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    invoke-virtual {v15, v14, v11}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4729
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    iget-object v12, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 4730
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    iget-object v12, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 4731
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    iget-object v12, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    aget v13, v12, v6

    int-to-float v13, v13

    aget v12, v12, v7

    int-to-float v12, v12

    invoke-virtual {v11, v13, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4732
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v15, v11}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4734
    if-eqz v5, :cond_9

    .line 4735
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 4736
    .local v11, "bounds":Landroid/graphics/RectF;
    iget-object v12, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    const/4 v6, 0x0

    invoke-virtual {v11, v6, v6, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4737
    new-instance v6, Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    invoke-direct {v6}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;-><init>()V

    .line 4739
    .local v6, "boundsBuilder":Landroid/view/inputmethod/EditorBoundsInfo$Builder;
    nop

    .line 4740
    invoke-virtual {v6, v11}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->setEditorBounds(Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->build()Landroid/view/inputmethod/EditorBoundsInfo;

    move-result-object v12

    .line 4739
    invoke-virtual {v15, v12}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setEditorBoundsInfo(Landroid/view/inputmethod/EditorBoundsInfo;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4743
    .end local v6    # "boundsBuilder":Landroid/view/inputmethod/EditorBoundsInfo$Builder;
    .end local v11    # "bounds":Landroid/graphics/RectF;
    :cond_9
    if-nez v8, :cond_b

    if-eqz v9, :cond_a

    goto :goto_4

    :cond_a
    move-object/from16 v19, v1

    move/from16 v23, v14

    move-object/from16 v24, v15

    goto/16 :goto_8

    .line 4744
    :cond_b
    :goto_4
    iget-object v6, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    .line 4745
    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    int-to-float v6, v6

    .line 4746
    .local v6, "viewportToContentHorizontalOffset":F
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    .line 4747
    invoke-virtual {v11}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v11

    int-to-float v13, v11

    .line 4749
    .local v13, "viewportToContentVerticalOffset":F
    if-eqz v8, :cond_10

    .line 4750
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    .line 4751
    .local v12, "text":Ljava/lang/CharSequence;
    instance-of v11, v12, Landroid/text/Spannable;

    if-eqz v11, :cond_f

    .line 4752
    move-object/from16 v17, v12

    check-cast v17, Landroid/text/Spannable;

    .line 4753
    .local v17, "sp":Landroid/text/Spannable;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v11

    .line 4754
    .local v11, "composingTextStart":I
    invoke-static/range {v17 .. v17}, Lcom/android/internal/inputmethod/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v7

    .line 4755
    .local v7, "composingTextEnd":I
    if-ge v7, v11, :cond_c

    .line 4756
    move/from16 v19, v7

    .line 4757
    .local v19, "temp":I
    move v7, v11

    .line 4758
    move/from16 v11, v19

    .line 4760
    .end local v19    # "temp":I
    :cond_c
    if-ltz v11, :cond_d

    if-ge v11, v7, :cond_d

    const/16 v16, 0x1

    goto :goto_5

    :cond_d
    const/16 v16, 0x0

    :goto_5
    move/from16 v18, v16

    .line 4763
    .local v18, "hasComposingText":Z
    if-eqz v18, :cond_e

    .line 4764
    move-object/from16 v19, v1

    .end local v1    # "ims":Landroid/widget/Editor$InputMethodState;
    .local v19, "ims":Landroid/widget/Editor$InputMethodState;
    invoke-interface {v12, v11, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4766
    .local v1, "composingText":Ljava/lang/CharSequence;
    invoke-virtual {v15, v11, v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4767
    move-object/from16 v20, v1

    .end local v1    # "composingText":Ljava/lang/CharSequence;
    .local v20, "composingText":Ljava/lang/CharSequence;
    iget-object v1, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    move/from16 v21, v11

    .end local v11    # "composingTextStart":I
    .local v21, "composingTextStart":I
    move-object v11, v1

    move-object v1, v12

    .end local v12    # "text":Ljava/lang/CharSequence;
    .local v1, "text":Ljava/lang/CharSequence;
    move-object v12, v15

    move/from16 v22, v13

    .end local v13    # "viewportToContentVerticalOffset":F
    .local v22, "viewportToContentVerticalOffset":F
    move/from16 v13, v21

    move/from16 v23, v14

    .end local v14    # "selectionStart":I
    .local v23, "selectionStart":I
    move v14, v7

    move-object/from16 v24, v15

    .end local v15    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .local v24, "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    move v15, v6

    move/from16 v16, v22

    invoke-virtual/range {v11 .. v16}, Landroid/widget/TextView;->populateCharacterBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;IIFF)V

    goto :goto_6

    .line 4763
    .end local v19    # "ims":Landroid/widget/Editor$InputMethodState;
    .end local v20    # "composingText":Ljava/lang/CharSequence;
    .end local v21    # "composingTextStart":I
    .end local v22    # "viewportToContentVerticalOffset":F
    .end local v23    # "selectionStart":I
    .end local v24    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    .restart local v11    # "composingTextStart":I
    .restart local v12    # "text":Ljava/lang/CharSequence;
    .restart local v13    # "viewportToContentVerticalOffset":F
    .restart local v14    # "selectionStart":I
    .restart local v15    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    :cond_e
    move-object/from16 v19, v1

    move/from16 v21, v11

    move-object v1, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move-object/from16 v24, v15

    .end local v11    # "composingTextStart":I
    .end local v12    # "text":Ljava/lang/CharSequence;
    .end local v13    # "viewportToContentVerticalOffset":F
    .end local v14    # "selectionStart":I
    .end local v15    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .local v1, "text":Ljava/lang/CharSequence;
    .restart local v19    # "ims":Landroid/widget/Editor$InputMethodState;
    .restart local v21    # "composingTextStart":I
    .restart local v22    # "viewportToContentVerticalOffset":F
    .restart local v23    # "selectionStart":I
    .restart local v24    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    goto :goto_6

    .line 4751
    .end local v7    # "composingTextEnd":I
    .end local v17    # "sp":Landroid/text/Spannable;
    .end local v18    # "hasComposingText":Z
    .end local v19    # "ims":Landroid/widget/Editor$InputMethodState;
    .end local v21    # "composingTextStart":I
    .end local v22    # "viewportToContentVerticalOffset":F
    .end local v23    # "selectionStart":I
    .end local v24    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    .restart local v12    # "text":Ljava/lang/CharSequence;
    .restart local v13    # "viewportToContentVerticalOffset":F
    .restart local v14    # "selectionStart":I
    .restart local v15    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    :cond_f
    move-object/from16 v19, v1

    move-object v1, v12

    move/from16 v22, v13

    move/from16 v23, v14

    move-object/from16 v24, v15

    .end local v12    # "text":Ljava/lang/CharSequence;
    .end local v13    # "viewportToContentVerticalOffset":F
    .end local v14    # "selectionStart":I
    .end local v15    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .local v1, "text":Ljava/lang/CharSequence;
    .restart local v19    # "ims":Landroid/widget/Editor$InputMethodState;
    .restart local v22    # "viewportToContentVerticalOffset":F
    .restart local v23    # "selectionStart":I
    .restart local v24    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    goto :goto_6

    .line 4749
    .end local v19    # "ims":Landroid/widget/Editor$InputMethodState;
    .end local v22    # "viewportToContentVerticalOffset":F
    .end local v23    # "selectionStart":I
    .end local v24    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    .restart local v13    # "viewportToContentVerticalOffset":F
    .restart local v14    # "selectionStart":I
    .restart local v15    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    :cond_10
    move-object/from16 v19, v1

    move/from16 v22, v13

    move/from16 v23, v14

    move-object/from16 v24, v15

    .line 4774
    .end local v1    # "ims":Landroid/widget/Editor$InputMethodState;
    .end local v13    # "viewportToContentVerticalOffset":F
    .end local v14    # "selectionStart":I
    .end local v15    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .restart local v19    # "ims":Landroid/widget/Editor$InputMethodState;
    .restart local v22    # "viewportToContentVerticalOffset":F
    .restart local v23    # "selectionStart":I
    .restart local v24    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    :goto_6
    if-eqz v9, :cond_16

    .line 4776
    if-ltz v23, :cond_16

    .line 4777
    move/from16 v1, v23

    .line 4778
    .local v1, "offset":I
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 4779
    .local v7, "line":I
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    add-float v15, v11, v6

    .line 4781
    .local v15, "insertionMarkerX":F
    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    int-to-float v11, v11

    add-float v14, v11, v22

    .line 4783
    .local v14, "insertionMarkerTop":F
    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v11

    int-to-float v11, v11

    add-float v17, v11, v22

    .line 4785
    .local v17, "insertionMarkerBaseline":F
    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v11

    int-to-float v11, v11

    add-float v13, v11, v22

    .line 4787
    .local v13, "insertionMarkerBottom":F
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    .line 4788
    invoke-virtual {v11, v15, v14}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v18

    .line 4789
    .local v18, "isTopVisible":Z
    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    .line 4790
    invoke-virtual {v11, v15, v13}, Landroid/widget/TextView;->isPositionVisible(FF)Z

    move-result v20

    .line 4791
    .local v20, "isBottomVisible":Z
    const/4 v11, 0x0

    .line 4792
    .local v11, "insertionMarkerFlags":I
    if-nez v18, :cond_11

    if-eqz v20, :cond_12

    .line 4793
    :cond_11
    or-int/lit8 v11, v11, 0x1

    .line 4795
    :cond_12
    if-eqz v18, :cond_13

    if-nez v20, :cond_14

    .line 4796
    :cond_13
    or-int/lit8 v11, v11, 0x2

    .line 4798
    :cond_14
    invoke-virtual {v3, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 4799
    or-int/lit8 v11, v11, 0x4

    move/from16 v21, v11

    goto :goto_7

    .line 4798
    :cond_15
    move/from16 v21, v11

    .line 4801
    .end local v11    # "insertionMarkerFlags":I
    .local v21, "insertionMarkerFlags":I
    :goto_7
    move-object/from16 v11, v24

    move v12, v15

    move/from16 v25, v13

    .end local v13    # "insertionMarkerBottom":F
    .local v25, "insertionMarkerBottom":F
    move v13, v14

    move/from16 v26, v14

    .end local v14    # "insertionMarkerTop":F
    .local v26, "insertionMarkerTop":F
    move/from16 v14, v17

    move/from16 v27, v15

    .end local v15    # "insertionMarkerX":F
    .local v27, "insertionMarkerX":F
    move/from16 v15, v25

    move/from16 v16, v21

    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4808
    .end local v1    # "offset":I
    .end local v6    # "viewportToContentHorizontalOffset":F
    .end local v7    # "line":I
    .end local v17    # "insertionMarkerBaseline":F
    .end local v18    # "isTopVisible":Z
    .end local v20    # "isBottomVisible":Z
    .end local v21    # "insertionMarkerFlags":I
    .end local v22    # "viewportToContentVerticalOffset":F
    .end local v25    # "insertionMarkerBottom":F
    .end local v26    # "insertionMarkerTop":F
    .end local v27    # "insertionMarkerX":F
    :cond_16
    :goto_8
    iget-object v1, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual/range {v24 .. v24}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v6

    invoke-virtual {v2, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 4809
    return-void

    .line 4690
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "layout":Landroid/text/Layout;
    .end local v4    # "mode":I
    .end local v5    # "includeEditorBounds":Z
    .end local v8    # "includeCharacterBounds":Z
    .end local v9    # "includeInsertionMarker":Z
    .end local v10    # "includeAll":Z
    .end local v19    # "ims":Landroid/widget/Editor$InputMethodState;
    .end local v23    # "selectionStart":I
    .end local v24    # "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .local v1, "ims":Landroid/widget/Editor$InputMethodState;
    :cond_17
    move-object/from16 v19, v1

    .line 4691
    .end local v1    # "ims":Landroid/widget/Editor$InputMethodState;
    .restart local v19    # "ims":Landroid/widget/Editor$InputMethodState;
    :goto_9
    return-void
.end method
