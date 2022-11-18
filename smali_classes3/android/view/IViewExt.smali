.class public interface abstract Landroid/view/IViewExt;
.super Ljava/lang/Object;
.source "IViewExt.java"


# static fields
.field public static final blacklist DRAG_FLAG_CUSTOM_CANCEL_ANIMATION:I = 0x40000000

.field public static final blacklist DRAG_FLAG_CUSTOM_RETURN_ANIMATION:I = -0x80000000

.field public static final blacklist LOG_LEVEL_DEBUG:I = 0x1

.field public static final blacklist LOG_LEVEL_VERBOSE:I = 0x2

.field public static final blacklist LOG_LEVEL_VERBOSE_ACTION:I = 0x15

.field public static final blacklist TYPE_FORCE_DARK_ALGORITHM_GOOGLE:I = 0x2

.field public static final blacklist TYPE_FORCE_DARK_ALGORITHM_OPLUS:I = 0x1


# virtual methods
.method public blacklist adjustImageViewLayerType(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 166
    return-void
.end method

.method public blacklist adjustPendingLayertype(I)V
    .locals 0
    .param p1, "layerType"    # I

    .line 168
    return-void
.end method

.method public blacklist afterDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 198
    return-void
.end method

.method public blacklist afterLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 214
    return-void
.end method

.method public blacklist afterMeasure(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 206
    return-void
.end method

.method public blacklist beforeDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 194
    return-void
.end method

.method public blacklist beforeLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 210
    return-void
.end method

.method public blacklist beforeMeasure(Landroid/view/View;II)[I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 201
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    return-object v0
.end method

.method public blacklist beforeUpdateDisplayListIfDirty(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 190
    return-void
.end method

.method public blacklist checkBoostAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 158
    return-void
.end method

.method public blacklist checkBoostBuildDrawingCache()V
    .locals 0

    .line 159
    return-void
.end method

.method public blacklist checkBoostOnPerformClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 161
    return-void
.end method

.method public blacklist checkBoostTouchEvent(I)V
    .locals 0
    .param p1, "action"    # I

    .line 160
    return-void
.end method

.method public blacklist checkMutiTouchView()Z
    .locals 1

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkNeedBoostedPropertyAnimator(Landroid/view/ViewPropertyAnimator;)V
    .locals 0
    .param p1, "animator"    # Landroid/view/ViewPropertyAnimator;

    .line 162
    return-void
.end method

.method public blacklist debugWebViewDraw()Z
    .locals 1

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableOnClick(Landroid/view/View;Landroid/view/InputEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/InputEvent;

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getColorCustomDrawingCache(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "clip"    # Landroid/graphics/Rect;
    .param p2, "viewTop"    # I

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCrudeState()I
    .locals 1

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDrawableRenderNode(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 63
    return-void
.end method

.method public blacklist getOplusViewType()I
    .locals 1

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOriginWebSettingForceDark()I
    .locals 1

    .line 90
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getTextViewDefaultLineMulti(Ljava/lang/Object;FF)F
    .locals 0
    .param p1, "textview"    # Ljava/lang/Object;
    .param p2, "pxSize"    # F
    .param p3, "oriValue"    # F

    .line 112
    return p3
.end method

.method public blacklist getTextViewParaSpacing(Ljava/lang/Object;)F
    .locals 1
    .param p1, "textview"    # Ljava/lang/Object;

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getView()Landroid/view/View;
    .locals 1

    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getViewInfo()Ljava/lang/Object;
    .locals 1

    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getViewRootImpl()Landroid/view/IViewRootImplExt;
    .locals 1

    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hookAfterDispatchDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 57
    return-void
.end method

.method public blacklist hookAfterDrawCanvas(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 59
    return-void
.end method

.method public blacklist hookAssignParent(Landroid/view/ViewParent;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewParent;

    .line 53
    return-void
.end method

.method public blacklist hookDispatchNestedScroll()Z
    .locals 1

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist hookDrawBackground(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 61
    return-void
.end method

.method public blacklist hookIsTouchPressed()Z
    .locals 1

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookOverScrollBy(IIII)V
    .locals 0
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "scrollRangeX"    # I
    .param p4, "scrollRangeY"    # I

    .line 69
    return-void
.end method

.method public blacklist hookPerformClick()V
    .locals 0

    .line 51
    return-void
.end method

.method public blacklist hookRequestLayout()V
    .locals 0

    .line 67
    return-void
.end method

.method public blacklist hookSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 221
    return-object p1
.end method

.method public blacklist hookSizeChange(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 65
    return-void
.end method

.method public blacklist hookStartDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 55
    return-void
.end method

.method public blacklist hookTextView(Landroid/text/Layout;)V
    .locals 0
    .param p1, "mlayout"    # Landroid/text/Layout;

    .line 109
    return-void
.end method

.method public blacklist ignoreSpecailViewDescendantInvalidated(Landroid/view/ViewParent;)V
    .locals 0
    .param p1, "p"    # Landroid/view/ViewParent;

    .line 163
    return-void
.end method

.method public blacklist initView()V
    .locals 0

    .line 157
    return-void
.end method

.method public blacklist initViewHooks(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 155
    return-void
.end method

.method public blacklist initialAwakenScrollBars()Z
    .locals 1

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isIgnoreSpecailViewDescendantInvalidated()Z
    .locals 1

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOplusOSStyle()Z
    .locals 1

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOplusStyle()Z
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist logEvent(ILjava/lang/String;Landroid/view/InputEvent;Ljava/lang/String;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "event"    # Landroid/view/InputEvent;
    .param p4, "info"    # Ljava/lang/String;

    .line 149
    return-void
.end method

.method public blacklist onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 130
    return-void
.end method

.method public blacklist setContentDescriptionForField(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 146
    return-void
.end method

.method public blacklist setCrudeState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 97
    return-void
.end method

.method public blacklist setLayout(Landroid/text/Layout;)V
    .locals 0
    .param p1, "layout"    # Landroid/text/Layout;

    .line 119
    return-void
.end method

.method public blacklist setOplusResampleTouch(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 176
    return-void
.end method

.method public blacklist setOplusViewTypeLocked(I)V
    .locals 0
    .param p1, "viewType"    # I

    .line 107
    return-void
.end method

.method public blacklist setOriginWebSettingForceDark(I)V
    .locals 0
    .param p1, "forceDark"    # I

    .line 93
    return-void
.end method

.method public blacklist setScrollXForColor(I)V
    .locals 0
    .param p1, "x"    # I

    .line 121
    return-void
.end method

.method public blacklist setScrollYForColor(I)V
    .locals 0
    .param p1, "y"    # I

    .line 123
    return-void
.end method

.method public blacklist setUsageForceDarkAlgorithmType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 95
    return-void
.end method

.method public blacklist shouldFilterByMultiSearch(Landroid/content/res/Resources;)Z
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateColorNavigationGuardColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 83
    return-void
.end method
