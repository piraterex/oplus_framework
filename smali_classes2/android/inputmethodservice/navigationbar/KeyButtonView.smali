.class public Landroid/inputmethodservice/navigationbar/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"

# interfaces
.implements Landroid/inputmethodservice/navigationbar/ButtonInterface;


# static fields
.field public static final blacklist QUICKSTEP_TOUCH_SLOP_RATIO:F = 3.0f

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAudioManager:Landroid/media/AudioManager;

.field private final blacklist mCheckLongPress:Ljava/lang/Runnable;

.field private blacklist mCode:I

.field private blacklist mDarkIntensity:F

.field private blacklist mDownTime:J

.field private blacklist mGestureAborted:Z

.field private blacklist mHasOvalBg:Z

.field blacklist mLongClicked:Z

.field private blacklist mOnClickListener:Landroid/view/View$OnClickListener;

.field private final blacklist mOvalBgPaint:Landroid/graphics/Paint;

.field private final blacklist mPlaySounds:Z

.field private final blacklist mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

.field private blacklist mTouchDownX:I

.field private blacklist mTouchDownY:I

.field private blacklist mTracking:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCode(Landroid/inputmethodservice/navigationbar/KeyButtonView;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendEvent(Landroid/inputmethodservice/navigationbar/KeyButtonView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 53
    const-class v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    .line 70
    new-instance v1, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView$1;-><init>(Landroid/inputmethodservice/navigationbar/KeyButtonView;)V

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    .line 93
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 98
    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    goto :goto_0

    .line 95
    :pswitch_0
    const/4 v1, 0x4

    iput v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    .line 96
    nop

    .line 102
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mPlaySounds:Z

    .line 104
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setClickable(Z)V

    .line 105
    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    .line 107
    new-instance v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    const v2, 0x105016b

    invoke-direct {v1, p1, p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    .line 109
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setWillNotDraw(Z)V

    .line 111
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->forceHasOverlappingRendering(Z)V

    .line 112
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1020344
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist getQuickStepTouchSlopPx(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 369
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method private blacklist sendEvent(II)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "flags"    # I

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(IIJ)V

    .line 283
    return-void
.end method

.method private blacklist sendEvent(IIJ)V
    .locals 18
    .param p1, "action"    # I
    .param p2, "flags"    # I
    .param p3, "when"    # J

    .line 286
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 287
    nop

    .line 293
    :cond_0
    iget-object v2, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/inputmethodservice/InputMethodService;

    if-eqz v2, :cond_5

    .line 294
    and-int/lit16 v2, v1, 0x80

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v12, v3

    goto :goto_0

    :cond_1
    move v12, v4

    .line 295
    .local v12, "repeatCount":I
    :goto_0
    new-instance v2, Landroid/view/KeyEvent;

    iget-wide v6, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    iget v11, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    or-int/lit8 v5, v1, 0x2

    or-int/lit8 v16, v5, 0x40

    const/16 v17, 0x101

    move-object v5, v2

    move-wide/from16 v8, p3

    move/from16 v10, p1

    invoke-direct/range {v5 .. v17}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 299
    .local v2, "ev":Landroid/view/KeyEvent;
    const/4 v5, -0x1

    .line 302
    .local v5, "displayId":I
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getDisplay()Landroid/view/Display;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 303
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    .line 305
    :cond_2
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 306
    invoke-virtual {v2, v5}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 308
    :cond_3
    iget-object v6, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/inputmethodservice/InputMethodService;

    .line 310
    .local v6, "ims":Landroid/inputmethodservice/InputMethodService;
    packed-switch p1, :pswitch_data_0

    .line 320
    const/4 v3, 0x0

    .local v3, "handled":Z
    goto :goto_2

    .line 317
    .end local v3    # "handled":Z
    :pswitch_0
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v6, v3, v2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 318
    .restart local v3    # "handled":Z
    goto :goto_2

    .line 312
    .end local v3    # "handled":Z
    :pswitch_1
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v6, v7, v2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    .line 313
    .local v7, "handled":Z
    if-eqz v7, :cond_4

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_4

    .line 314
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr v8, v9

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    iput-boolean v3, v0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    .line 315
    move v3, v7

    .line 323
    .end local v7    # "handled":Z
    .restart local v3    # "handled":Z
    :goto_2
    if-nez v3, :cond_5

    .line 324
    invoke-virtual {v6}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 325
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_5

    .line 326
    invoke-interface {v4, v2}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 330
    .end local v2    # "ev":Landroid/view/KeyEvent;
    .end local v3    # "handled":Z
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v5    # "displayId":I
    .end local v6    # "ims":Landroid/inputmethodservice/InputMethodService;
    .end local v12    # "repeatCount":I
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 353
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 355
    .local v0, "d":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v0

    int-to-float v5, v0

    iget-object v6, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 357
    .end local v0    # "d":I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 358
    return-void
.end method

.method public whitelist isClickable()Z
    .locals 1

    .line 116
    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 131
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 132
    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 134
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 139
    :cond_0
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "showSwipeUI":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 173
    .local v1, "action":I
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 174
    iput-boolean v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mGestureAborted:Z

    .line 176
    :cond_0
    iget-boolean v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mGestureAborted:Z

    if-eqz v3, :cond_1

    .line 177
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    .line 178
    return v2

    .line 181
    :cond_1
    const/16 v3, 0x20

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    .line 215
    :pswitch_0
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    .line 216
    iget v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v2, :cond_2

    .line 217
    invoke-direct {p0, v4, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    .line 219
    :cond_2
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 220
    goto/16 :goto_5

    .line 203
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    .line 204
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    .line 206
    .local v5, "y":I
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getQuickStepTouchSlopPx(Landroid/content/Context;)F

    move-result v6

    .line 207
    .local v6, "slop":F
    iget v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownX:I

    sub-int v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v6

    if-gtz v7, :cond_3

    iget v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownY:I

    sub-int v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v6

    if-lez v7, :cond_c

    .line 210
    :cond_3
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    .line 211
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    .line 222
    .end local v3    # "x":I
    .end local v5    # "y":I
    .end local v6    # "slop":F
    :pswitch_2
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mLongClicked:Z

    if-nez v5, :cond_4

    move v5, v4

    goto :goto_0

    :cond_4
    move v5, v2

    .line 223
    .local v5, "doIt":Z
    :goto_0
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    .line 224
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x96

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    move v6, v4

    goto :goto_1

    :cond_5
    move v6, v2

    .line 231
    .local v6, "doHapticFeedback":Z
    :goto_1
    if-eqz v6, :cond_6

    iget-boolean v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mLongClicked:Z

    if-nez v7, :cond_6

    .line 234
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->performHapticFeedback(I)Z

    .line 236
    :cond_6
    iget v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v7, :cond_9

    .line 237
    if-eqz v5, :cond_8

    .line 238
    iget-boolean v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    if-eqz v3, :cond_7

    const/16 v3, 0x200

    goto :goto_2

    :cond_7
    move v3, v2

    :goto_2
    invoke-direct {p0, v4, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    .line 239
    iput-boolean v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    .line 240
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    goto :goto_3

    .line 242
    :cond_8
    invoke-direct {p0, v4, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    goto :goto_3

    .line 246
    :cond_9
    if-eqz v5, :cond_a

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_a

    .line 247
    invoke-interface {v2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 248
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 251
    :cond_a
    :goto_3
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 183
    .end local v5    # "doIt":Z
    .end local v6    # "doHapticFeedback":Z
    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    .line 184
    iput-boolean v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mLongClicked:Z

    .line 185
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->setPressed(Z)V

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownX:I

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTouchDownY:I

    .line 190
    iget v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v3, :cond_b

    .line 191
    iget-wide v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDownTime:J

    invoke-direct {p0, v2, v2, v5, v6}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(IIJ)V

    goto :goto_4

    .line 194
    :cond_b
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->performHapticFeedback(I)Z

    .line 197
    :goto_4
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->playSoundEffect(I)V

    .line 199
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 200
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {p0, v2, v5, v6}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    nop

    .line 255
    :cond_c
    :goto_5
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 143
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 144
    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->jumpDrawablesToCurrentState()V

    .line 147
    :cond_0
    return-void
.end method

.method public blacklist performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 151
    const/16 v0, 0x200

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ne p1, v3, :cond_1

    iget v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v3, :cond_1

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-direct {p0, v2, v2, v3, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(IIJ)V

    .line 153
    iget-boolean v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0, v1, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    .line 154
    iput-boolean v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    .line 155
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 156
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->playSoundEffect(I)V

    .line 157
    return v1

    .line 158
    :cond_1
    const/16 v3, 0x20

    if-ne p1, v3, :cond_3

    iget v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    if-eqz v3, :cond_3

    .line 159
    const/16 v3, 0x80

    invoke-direct {p0, v2, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    .line 160
    iget-boolean v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-direct {p0, v1, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendEvent(II)V

    .line 161
    iput-boolean v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mTracking:Z

    .line 162
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 163
    return v1

    .line 165
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist playSoundEffect(I)V
    .locals 1
    .param p1, "soundConstant"    # I

    .line 277
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mPlaySounds:Z

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 279
    return-void
.end method

.method public blacklist setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .line 120
    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mCode:I

    .line 121
    return-void
.end method

.method public blacklist setDarkIntensity(F)V
    .locals 2
    .param p1, "darkIntensity"    # F

    .line 334
    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDarkIntensity:F

    .line 336
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 337
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 338
    move-object v1, v0

    check-cast v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-virtual {v1, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 341
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonView;->invalidate()V

    .line 343
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {v1, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setDarkIntensity(F)V

    .line 344
    return-void
.end method

.method public blacklist setDelayTouchFeedback(Z)V
    .locals 1
    .param p1, "shouldDelay"    # Z

    .line 348
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setDelayTouchFeedback(Z)V

    .line 349
    return-void
.end method

.method public whitelist setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 260
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    if-nez p1, :cond_0

    .line 263
    return-void

    .line 265
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    .line 266
    .local v0, "keyButtonDrawable":Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    iget v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mDarkIntensity:F

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 267
    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->hasOvalBg()Z

    move-result v1

    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mHasOvalBg:Z

    .line 268
    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getDrawableBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mRipple:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->hasOvalBg()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->OVAL:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    goto :goto_0

    .line 272
    :cond_2
    sget-object v2, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    .line 271
    :goto_0
    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setType(Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;)V

    .line 273
    return-void
.end method

.method public whitelist setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 125
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 127
    return-void
.end method
