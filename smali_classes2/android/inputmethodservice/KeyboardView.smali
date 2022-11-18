.class public Landroid/inputmethodservice/KeyboardView;
.super Landroid/view/View;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/KeyboardView$SwipeTracker;,
        Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o DEBOUNCE_TIME:I = 0x46

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o DELAY_AFTER_PREVIEW:I = 0x46

.field private static final greylist-max-o DELAY_BEFORE_PREVIEW:I = 0x0

.field private static final greylist-max-o KEY_DELETE:[I

.field private static final greylist-max-o LONGPRESS_TIMEOUT:I

.field private static final greylist-max-o LONG_PRESSABLE_STATE_SET:[I

.field private static greylist-max-o MAX_NEARBY_KEYS:I = 0x0

.field private static final greylist-max-o MSG_LONGPRESS:I = 0x4

.field private static final greylist-max-o MSG_REMOVE_PREVIEW:I = 0x2

.field private static final greylist-max-o MSG_REPEAT:I = 0x3

.field private static final greylist-max-o MSG_SHOW_PREVIEW:I = 0x1

.field private static final greylist-max-o MULTITAP_INTERVAL:I = 0x320

.field private static final greylist-max-o NOT_A_KEY:I = -0x1

.field private static final greylist-max-o REPEAT_INTERVAL:I = 0x32

.field private static final greylist-max-o REPEAT_START_DELAY:I = 0x190


# instance fields
.field private greylist-max-o mAbortKey:Z

.field private greylist-max-o mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private greylist-max-o mAudioManager:Landroid/media/AudioManager;

.field private greylist-max-o mBackgroundDimAmount:F

.field private greylist-max-o mBuffer:Landroid/graphics/Bitmap;

.field private greylist-max-o mCanvas:Landroid/graphics/Canvas;

.field private greylist-max-o mClipRegion:Landroid/graphics/Rect;

.field private final greylist-max-o mCoordinates:[I

.field private greylist-max-o mCurrentKey:I

.field private greylist-max-o mCurrentKeyIndex:I

.field private greylist-max-o mCurrentKeyTime:J

.field private greylist-max-o mDirtyRect:Landroid/graphics/Rect;

.field private greylist-max-o mDisambiguateSwipe:Z

.field private greylist-max-o mDistances:[I

.field private greylist-max-o mDownKey:I

.field private greylist-max-o mDownTime:J

.field private greylist-max-o mDrawPending:Z

.field private greylist-max-o mGestureDetector:Landroid/view/GestureDetector;

.field greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mHeadsetRequiredToHearPasswordsAnnounced:Z

.field private greylist-max-o mInMultiTap:Z

.field private greylist-max-o mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

.field private greylist mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mKeyIndices:[I

.field private greylist-max-o mKeyTextColor:I

.field private greylist-max-o mKeyTextSize:I

.field private greylist-max-o mKeyboard:Landroid/inputmethodservice/Keyboard;

.field private greylist-max-o mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

.field private greylist-max-o mKeyboardChanged:Z

.field private greylist-max-o mKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private greylist mLabelTextSize:I

.field private greylist-max-o mLastCodeX:I

.field private greylist-max-o mLastCodeY:I

.field private greylist-max-o mLastKey:I

.field private greylist-max-o mLastKeyTime:J

.field private greylist-max-o mLastMoveTime:J

.field private greylist-max-o mLastSentIndex:I

.field private greylist-max-o mLastTapTime:J

.field private greylist-max-o mLastX:I

.field private greylist-max-o mLastY:I

.field private greylist-max-o mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

.field private greylist-max-o mMiniKeyboardCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mMiniKeyboardContainer:Landroid/view/View;

.field private greylist-max-o mMiniKeyboardOffsetX:I

.field private greylist-max-o mMiniKeyboardOffsetY:I

.field private greylist-max-o mMiniKeyboardOnScreen:Z

.field private greylist-max-o mOldPointerCount:I

.field private greylist-max-o mOldPointerX:F

.field private greylist-max-o mOldPointerY:F

.field private greylist-max-o mPadding:Landroid/graphics/Rect;

.field private greylist-max-o mPaint:Landroid/graphics/Paint;

.field private greylist-max-o mPopupKeyboard:Landroid/widget/PopupWindow;

.field private greylist-max-o mPopupLayout:I

.field private greylist-max-o mPopupParent:Landroid/view/View;

.field private greylist-max-o mPopupPreviewX:I

.field private greylist-max-o mPopupPreviewY:I

.field private greylist-max-o mPopupX:I

.field private greylist-max-o mPopupY:I

.field private greylist-max-o mPossiblePoly:Z

.field private greylist-max-o mPreviewCentered:Z

.field private greylist-max-o mPreviewHeight:I

.field private greylist-max-o mPreviewLabel:Ljava/lang/StringBuilder;

.field private greylist-max-o mPreviewOffset:I

.field private greylist-max-o mPreviewPopup:Landroid/widget/PopupWindow;

.field private greylist mPreviewText:Landroid/widget/TextView;

.field private greylist-max-o mPreviewTextSizeLarge:I

.field private greylist-max-o mProximityCorrectOn:Z

.field private greylist-max-o mProximityThreshold:I

.field private greylist-max-o mRepeatKeyIndex:I

.field private greylist-max-o mShadowColor:I

.field private greylist-max-o mShadowRadius:F

.field private greylist-max-o mShowPreview:Z

.field private greylist-max-o mShowTouchPoints:Z

.field private greylist-max-o mStartX:I

.field private greylist-max-o mStartY:I

.field private greylist-max-o mSwipeThreshold:I

.field private greylist-max-o mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

.field private greylist-max-o mTapCount:I

.field private greylist-max-o mVerticalCorrection:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisambiguateSwipe(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDownKey(Landroid/inputmethodservice/KeyboardView;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyboardActionListener(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPossiblePoly(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviewText(Landroid/inputmethodservice/KeyboardView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartX(Landroid/inputmethodservice/KeyboardView;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartY(Landroid/inputmethodservice/KeyboardView;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSwipeThreshold(Landroid/inputmethodservice/KeyboardView;)I
    .locals 0

    iget p0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSwipeTracker(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;
    .locals 0

    iget-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdetectAndSendKey(Landroid/inputmethodservice/KeyboardView;IIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdismissPopupKeyboard(Landroid/inputmethodservice/KeyboardView;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mopenPopupIfRequired(Landroid/inputmethodservice/KeyboardView;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrepeatKey(Landroid/inputmethodservice/KeyboardView;)Z
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mshowKey(Landroid/inputmethodservice/KeyboardView;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 138
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, -0x5

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    .line 139
    new-array v0, v0, [I

    const v1, 0x101023c

    aput v1, v0, v3

    sput-object v0, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    .line 234
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    .line 236
    const/16 v0, 0xc

    sput v0, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 267
    const v0, 0x112006e

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 268
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 272
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 275
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 142
    const/4 v2, -0x1

    iput v2, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 158
    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    .line 185
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    .line 186
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 187
    iput-boolean v5, v0, Landroid/inputmethodservice/KeyboardView;->mShowTouchPoints:Z

    .line 206
    iput v2, v0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 207
    iput v2, v0, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    .line 210
    const/16 v6, 0xc

    new-array v6, v6, [I

    iput-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    .line 214
    iput v2, v0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 218
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 220
    new-instance v2, Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>(Landroid/inputmethodservice/KeyboardView$SwipeTracker-IA;)V

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    .line 225
    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    .line 237
    sget v2, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v2, v2, [I

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 250
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 277
    sget-object v2, Landroid/R$styleable;->KeyboardView:[I

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual {v1, v7, v2, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 280
    .local v2, "a":Landroid/content/res/TypedArray;
    nop

    .line 282
    const-string v10, "layout_inflater"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 284
    .local v10, "inflate":Landroid/view/LayoutInflater;
    const/4 v11, 0x0

    .line 285
    .local v11, "previewLayout":I
    const/4 v12, 0x0

    .line 287
    .local v12, "keyTextSize":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    .line 289
    .local v13, "n":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v13, :cond_0

    .line 290
    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v15

    .line 292
    .local v15, "attr":I
    packed-switch v15, :pswitch_data_0

    goto :goto_1

    .line 318
    :pswitch_0
    invoke-virtual {v2, v15, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    .line 319
    goto :goto_1

    .line 297
    :pswitch_1
    invoke-virtual {v2, v15, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    .line 298
    goto :goto_1

    .line 306
    :pswitch_2
    const/16 v5, 0x50

    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    .line 307
    goto :goto_1

    .line 303
    :pswitch_3
    invoke-virtual {v2, v15, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    .line 304
    goto :goto_1

    .line 300
    :pswitch_4
    invoke-virtual {v2, v15, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 301
    .end local v11    # "previewLayout":I
    .local v5, "previewLayout":I
    move v11, v5

    goto :goto_1

    .line 312
    .end local v5    # "previewLayout":I
    .restart local v11    # "previewLayout":I
    :pswitch_5
    const/high16 v5, -0x1000000

    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    .line 313
    goto :goto_1

    .line 315
    :pswitch_6
    const/16 v5, 0xe

    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    .line 316
    goto :goto_1

    .line 309
    :pswitch_7
    const/16 v5, 0x12

    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    .line 310
    goto :goto_1

    .line 294
    :pswitch_8
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 295
    goto :goto_1

    .line 324
    :pswitch_9
    const/4 v5, 0x0

    invoke-virtual {v2, v15, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    goto :goto_1

    .line 321
    :pswitch_a
    invoke-virtual {v2, v15, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    .line 322
    nop

    .line 289
    .end local v15    # "attr":I
    :goto_1
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x1

    goto :goto_0

    .line 329
    .end local v14    # "i":I
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 330
    iget-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    sget-object v14, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v5, v14}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 332
    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    .line 333
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 335
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 336
    if-eqz v11, :cond_1

    .line 337
    invoke-virtual {v10, v11, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 338
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    .line 339
    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 340
    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 342
    :cond_1
    iput-boolean v4, v0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 345
    :goto_2
    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 347
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 348
    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    iput-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 354
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 355
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 356
    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    int-to-float v5, v12

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 357
    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 358
    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 360
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 361
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    .line 362
    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 364
    const/high16 v3, 0x43fa0000    # 500.0f

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iput v3, v0, Landroid/inputmethodservice/KeyboardView;->mSwipeThreshold:I

    .line 365
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11101d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Landroid/inputmethodservice/KeyboardView;->mDisambiguateSwipe:Z

    .line 368
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 369
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, v0, Landroid/inputmethodservice/KeyboardView;->mAudioManager:Landroid/media/AudioManager;

    .line 371
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 372
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 600
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 601
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 604
    :cond_0
    return-object p1
.end method

.method private greylist-max-o checkMultiTap(JI)V
    .locals 8
    .param p1, "eventTime"    # J
    .param p3, "keyIndex"    # I

    .line 1447
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return-void

    .line 1448
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v1, v1, p3

    .line 1449
    .local v1, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    const-wide/16 v3, 0x320

    const/4 v5, 0x1

    if-le v2, v5, :cond_2

    .line 1450
    iput-boolean v5, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    .line 1451
    iget-wide v6, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v6, v3

    cmp-long v2, p1, v6

    if-gez v2, :cond_1

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-ne p3, v2, :cond_1

    .line 1453
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    add-int/2addr v0, v5

    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 1454
    return-void

    .line 1456
    :cond_1
    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 1457
    return-void

    .line 1460
    :cond_2
    iget-wide v5, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v5, v3

    cmp-long v0, p1, v5

    if-gtz v0, :cond_3

    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-eq p3, v0, :cond_4

    .line 1461
    :cond_3
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 1463
    :cond_4
    return-void
.end method

.method private greylist-max-o computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V
    .locals 7
    .param p1, "keyboard"    # Landroid/inputmethodservice/Keyboard;

    .line 628
    if-nez p1, :cond_0

    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 630
    .local v0, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    if-nez v0, :cond_1

    return-void

    .line 631
    :cond_1
    array-length v1, v0

    .line 632
    .local v1, "length":I
    const/4 v2, 0x0

    .line 633
    .local v2, "dimensionSum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 634
    aget-object v4, v0, v3

    .line 635
    .local v4, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget v5, v4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v6, v4, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v4, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 633
    .end local v4    # "key":Landroid/inputmethodservice/Keyboard$Key;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 637
    .end local v3    # "i":I
    :cond_2
    if-ltz v2, :cond_4

    if-nez v1, :cond_3

    goto :goto_1

    .line 638
    :cond_3
    int-to-float v3, v2

    const v4, 0x3fb33333    # 1.4f

    mul-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    .line 639
    mul-int/2addr v3, v3

    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    .line 640
    return-void

    .line 637
    :cond_4
    :goto_1
    return-void
.end method

.method private greylist-max-o detectAndSendKey(IIIJ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .line 829
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v2, v1

    if-ge p1, v2, :cond_3

    .line 830
    aget-object v1, v1, p1

    .line 831
    .local v1, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 832
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    iget-object v3, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 833
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v2, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_1

    .line 835
    :cond_0
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 837
    .local v2, "code":I
    sget v4, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v4, v4, [I

    .line 838
    .local v4, "codes":[I
    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([II)V

    .line 839
    invoke-direct {p0, p2, p3, v4}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    .line 841
    iget-boolean v5, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz v5, :cond_2

    .line 842
    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-eq v5, v0, :cond_1

    .line 843
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 v3, -0x5

    sget-object v5, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    invoke-interface {v0, v3, v5}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    goto :goto_0

    .line 845
    :cond_1
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 847
    :goto_0
    iget-object v0, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    aget v2, v0, v3

    .line 849
    :cond_2
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0, v2, v4}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 850
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0, v2}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 852
    .end local v2    # "code":I
    .end local v4    # "codes":[I
    :goto_1
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    .line 853
    iput-wide p4, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .line 855
    .end local v1    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_3
    return-void
.end method

.method private greylist-max-o dismissPopupKeyboard()V
    .locals 1

    .line 1424
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1426
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1427
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 1429
    :cond_0
    return-void
.end method

.method private greylist-max-o getKeyIndices(II[I)I
    .locals 17
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "allKeys"    # [I

    .line 778
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 779
    .local v4, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    const/4 v5, -0x1

    .line 780
    .local v5, "primaryIndex":I
    const/4 v6, -0x1

    .line 781
    .local v6, "closestKey":I
    iget v7, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    add-int/lit8 v7, v7, 0x1

    .line 782
    .local v7, "closestKeyDist":I
    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    const v9, 0x7fffffff

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([II)V

    .line 783
    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v8, v1, v2}, Landroid/inputmethodservice/Keyboard;->getNearestKeys(II)[I

    move-result-object v8

    .line 784
    .local v8, "nearestKeyIndices":[I
    array-length v9, v8

    .line 785
    .local v9, "keyCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_9

    .line 786
    aget v11, v8, v10

    aget-object v11, v4, v11

    .line 787
    .local v11, "key":Landroid/inputmethodservice/Keyboard$Key;
    const/4 v12, 0x0

    .line 788
    .local v12, "dist":I
    invoke-virtual {v11, v1, v2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v13

    .line 789
    .local v13, "isInside":Z
    if-eqz v13, :cond_0

    .line 790
    aget v5, v8, v10

    .line 793
    :cond_0
    iget-boolean v14, v0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    if-eqz v14, :cond_1

    .line 794
    invoke-virtual {v11, v1, v2}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v14

    move v12, v14

    iget v15, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    if-lt v14, v15, :cond_2

    :cond_1
    if-eqz v13, :cond_8

    :cond_2
    iget-object v14, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    const/16 v15, 0x20

    if-le v14, v15, :cond_8

    .line 798
    iget-object v14, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v14, v14

    .line 799
    .local v14, "nCodes":I
    if-ge v12, v7, :cond_3

    .line 800
    move v7, v12

    .line 801
    aget v6, v8, v10

    .line 804
    :cond_3
    if-nez v3, :cond_4

    move-object/from16 v16, v4

    goto :goto_3

    .line 806
    :cond_4
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    array-length v2, v1

    if-ge v15, v2, :cond_7

    .line 807
    aget v2, v1, v15

    if-le v2, v12, :cond_6

    .line 809
    add-int v2, v15, v14

    move-object/from16 v16, v4

    .end local v4    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .local v16, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    array-length v4, v1

    sub-int/2addr v4, v15

    sub-int/2addr v4, v14

    invoke-static {v1, v15, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 811
    add-int v1, v15, v14

    array-length v2, v3

    sub-int/2addr v2, v15

    sub-int/2addr v2, v14

    invoke-static {v3, v15, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 813
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_2
    if-ge v1, v14, :cond_5

    .line 814
    add-int v2, v15, v1

    iget-object v4, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v1

    aput v4, v3, v2

    .line 815
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    add-int v4, v15, v1

    aput v12, v2, v4

    .line 813
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 817
    .end local v1    # "c":I
    :cond_5
    goto :goto_3

    .line 806
    .end local v16    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v4    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    :cond_6
    move-object/from16 v16, v4

    .end local v4    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v16    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_1

    .end local v16    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v4    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    :cond_7
    move-object/from16 v16, v4

    .end local v4    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v16    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    goto :goto_3

    .line 794
    .end local v14    # "nCodes":I
    .end local v15    # "j":I
    .end local v16    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v4    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    :cond_8
    move-object/from16 v16, v4

    .line 785
    .end local v4    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .end local v11    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v12    # "dist":I
    .end local v13    # "isInside":Z
    .restart local v16    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, v16

    goto :goto_0

    .end local v16    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v4    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    :cond_9
    move-object/from16 v16, v4

    .line 822
    .end local v4    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .end local v10    # "i":I
    .restart local v16    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    const/4 v1, -0x1

    if-ne v5, v1, :cond_a

    .line 823
    move v5, v6

    .line 825
    :cond_a
    return v5
.end method

.method private greylist-max-o getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "key"    # Landroid/inputmethodservice/Keyboard$Key;

    .line 861
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz v0, :cond_1

    .line 863
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 864
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    aget v1, v2, v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 865
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 867
    :cond_1
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o initGestureDetector()V
    .locals 3

    .line 405
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/KeyboardView$2;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/KeyboardView$2;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 458
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 460
    :cond_0
    return-void
.end method

.method private greylist-max-o onBufferDraw()V
    .locals 23

    .line 662
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v4, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v4, :cond_3

    .line 663
    :cond_0
    if-eqz v1, :cond_1

    iget-boolean v4, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v4, :cond_2

    .line 664
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v4

    if-ne v1, v4, :cond_1

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 666
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 667
    .local v1, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 668
    .local v4, "height":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 669
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 671
    .end local v1    # "width":I
    .end local v4    # "height":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 672
    iput-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    .line 675
    :cond_3
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v1, :cond_4

    return-void

    .line 677
    :cond_4
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 678
    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 679
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 681
    iget-object v10, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 682
    .local v10, "paint":Landroid/graphics/Paint;
    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 683
    .local v11, "keyBackground":Landroid/graphics/drawable/Drawable;
    iget-object v12, v0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 684
    .local v12, "clipRegion":Landroid/graphics/Rect;
    iget-object v13, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 685
    .local v13, "padding":Landroid/graphics/Rect;
    iget v14, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    .line 686
    .local v14, "kbdPaddingLeft":I
    iget v15, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    .line 687
    .local v15, "kbdPaddingTop":I
    iget-object v9, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 688
    .local v9, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 690
    .local v8, "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    iget v4, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 691
    const/4 v4, 0x0

    .line 692
    .local v4, "drawSingleKey":Z
    if-eqz v8, :cond_5

    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 694
    iget v5, v8, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int/2addr v5, v14

    sub-int/2addr v5, v3

    iget v6, v12, Landroid/graphics/Rect;->left:I

    if-gt v5, v6, :cond_5

    iget v5, v8, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int/2addr v5, v15

    sub-int/2addr v5, v3

    iget v6, v12, Landroid/graphics/Rect;->top:I

    if-gt v5, v6, :cond_5

    iget v5, v8, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v6, v8, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v5, v6

    add-int/2addr v5, v14

    add-int/2addr v5, v3

    iget v6, v12, Landroid/graphics/Rect;->right:I

    if-lt v5, v6, :cond_5

    iget v5, v8, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v6, v8, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    add-int/2addr v5, v15

    add-int/2addr v5, v3

    iget v6, v12, Landroid/graphics/Rect;->bottom:I

    if-lt v5, v6, :cond_5

    .line 698
    const/4 v4, 0x1

    move/from16 v16, v4

    goto :goto_0

    .line 701
    :cond_5
    move/from16 v16, v4

    .end local v4    # "drawSingleKey":Z
    .local v16, "drawSingleKey":Z
    :goto_0
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 702
    array-length v7, v9

    .line 703
    .local v7, "keyCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_d

    .line 704
    aget-object v6, v9, v4

    .line 705
    .local v6, "key":Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v16, :cond_6

    if-eq v8, v6, :cond_6

    .line 706
    move/from16 v19, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    goto/16 :goto_7

    .line 708
    :cond_6
    invoke-virtual {v6}, Landroid/inputmethodservice/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v5

    .line 709
    .local v5, "drawableState":[I
    invoke-virtual {v11, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 712
    iget-object v3, v6, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v3, :cond_7

    const/16 v17, 0x0

    goto :goto_2

    :cond_7
    iget-object v3, v6, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {v0, v3}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    :goto_2
    move-object/from16 v3, v17

    .line 714
    .local v3, "label":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 715
    .local v2, "bounds":Landroid/graphics/Rect;
    move-object/from16 v18, v5

    .end local v5    # "drawableState":[I
    .local v18, "drawableState":[I
    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v19, v7

    .end local v7    # "keyCount":I
    .local v19, "keyCount":I
    iget v7, v2, Landroid/graphics/Rect;->right:I

    if-ne v5, v7, :cond_9

    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v5, v7, :cond_8

    goto :goto_3

    :cond_8
    move-object/from16 v17, v2

    goto :goto_4

    .line 717
    :cond_9
    :goto_3
    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v7, v6, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move-object/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "bounds":Landroid/graphics/Rect;
    .local v17, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v11, v2, v2, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 719
    :goto_4
    iget v2, v6, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int/2addr v2, v14

    int-to-float v2, v2

    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int/2addr v5, v15

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 720
    invoke-virtual {v11, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 722
    const/4 v2, 0x2

    if-eqz v3, :cond_b

    .line 724
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_a

    iget-object v5, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v5, v5

    if-ge v5, v2, :cond_a

    .line 725
    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    int-to-float v5, v5

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 726
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_5

    .line 728
    :cond_a
    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    int-to-float v5, v5

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 729
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 732
    :goto_5
    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    iget v7, v0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v10, v5, v2, v2, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 734
    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v7, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iget v7, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v7

    const/4 v7, 0x2

    div-int/2addr v5, v7

    iget v2, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    int-to-float v2, v5

    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v7, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v7

    iget v7, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    const/4 v7, 0x2

    div-int/2addr v5, v7

    int-to-float v5, v5

    .line 738
    invoke-virtual {v10}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    invoke-virtual {v10}, Landroid/graphics/Paint;->descent()F

    move-result v21

    sub-float v7, v7, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v7, v7, v21

    add-float/2addr v5, v7

    iget v7, v13, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    .line 734
    invoke-virtual {v1, v3, v2, v5, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 741
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v10, v2, v2, v2, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    move-object/from16 v20, v3

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    goto :goto_6

    .line 742
    :cond_b
    iget-object v2, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_c

    .line 743
    iget v2, v6, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v5, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v5

    iget v5, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v5

    iget-object v5, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 744
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v2, v5

    const/4 v5, 0x2

    div-int/2addr v2, v5

    iget v5, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v5

    .line 745
    .local v2, "drawableX":I
    iget v5, v6, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v7, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v7

    iget v7, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    iget-object v7, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 746
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v5, v7

    const/4 v7, 0x2

    div-int/2addr v5, v7

    iget v7, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v7

    .line 747
    .local v5, "drawableY":I
    int-to-float v7, v2

    move-object/from16 v20, v3

    .end local v3    # "label":Ljava/lang/String;
    .local v20, "label":Ljava/lang/String;
    int-to-float v3, v5

    invoke-virtual {v1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 748
    iget-object v3, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v7, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 749
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    move-object/from16 v21, v8

    .end local v8    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .local v21, "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v8, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 748
    move-object/from16 v22, v9

    const/4 v9, 0x0

    .end local v9    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .local v22, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {v3, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 750
    iget-object v3, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 751
    neg-int v3, v2

    int-to-float v3, v3

    neg-int v7, v5

    int-to-float v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    .line 742
    .end local v2    # "drawableX":I
    .end local v5    # "drawableY":I
    .end local v20    # "label":Ljava/lang/String;
    .end local v21    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .end local v22    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v3    # "label":Ljava/lang/String;
    .restart local v8    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v9    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    :cond_c
    move-object/from16 v20, v3

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    .line 753
    .end local v3    # "label":Ljava/lang/String;
    .end local v8    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .end local v9    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v20    # "label":Ljava/lang/String;
    .restart local v21    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v22    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    :goto_6
    iget v2, v6, Landroid/inputmethodservice/Keyboard$Key;->x:I

    neg-int v2, v2

    sub-int/2addr v2, v14

    int-to-float v2, v2

    iget v3, v6, Landroid/inputmethodservice/Keyboard$Key;->y:I

    neg-int v3, v3

    sub-int/2addr v3, v15

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 703
    .end local v6    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v17    # "bounds":Landroid/graphics/Rect;
    .end local v18    # "drawableState":[I
    .end local v20    # "label":Ljava/lang/String;
    :goto_7
    add-int/lit8 v4, v4, 0x1

    move/from16 v7, v19

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_1

    .end local v19    # "keyCount":I
    .end local v21    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .end local v22    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v7    # "keyCount":I
    .restart local v8    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v9    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    :cond_d
    move/from16 v19, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    .line 755
    .end local v4    # "i":I
    .end local v7    # "keyCount":I
    .end local v8    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .end local v9    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v19    # "keyCount":I
    .restart local v21    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v22    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 757
    iget-boolean v2, v0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v2, :cond_e

    .line 758
    iget v2, v0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 759
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v2

    int-to-float v7, v2

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v2

    int-to-float v8, v2

    move-object v4, v1

    move/from16 v2, v19

    .end local v19    # "keyCount":I
    .local v2, "keyCount":I
    move-object/from16 v3, v21

    .end local v21    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .local v3, "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v17, v22

    .end local v22    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .local v17, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    .line 757
    .end local v2    # "keyCount":I
    .end local v3    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .end local v17    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v19    # "keyCount":I
    .restart local v21    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v22    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    :cond_e
    move/from16 v2, v19

    move-object/from16 v3, v21

    move-object/from16 v17, v22

    .line 772
    .end local v19    # "keyCount":I
    .end local v21    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .end local v22    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    .restart local v2    # "keyCount":I
    .restart local v3    # "invalidKey":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v17    # "keys":[Landroid/inputmethodservice/Keyboard$Key;
    :goto_8
    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 773
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    .line 774
    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 775
    return-void
.end method

.method private greylist-max-o onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 16
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "possiblePoly"    # Z

    .line 1233
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, v6, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    .line 1234
    .local v0, "touchX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    sub-int/2addr v1, v2

    .line 1235
    .local v1, "touchY":I
    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    neg-int v3, v2

    if-lt v1, v3, :cond_0

    .line 1236
    add-int/2addr v1, v2

    .line 1237
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1238
    .local v8, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    .line 1239
    .local v9, "eventTime":J
    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    move-result v11

    .line 1240
    .local v11, "keyIndex":I
    move/from16 v12, p2

    iput-boolean v12, v6, Landroid/inputmethodservice/KeyboardView;->mPossiblePoly:Z

    .line 1243
    if-nez v8, :cond_1

    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->clear()V

    .line 1244
    :cond_1
    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mSwipeTracker:Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    invoke-virtual {v2, v7}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1247
    iget-boolean v2, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    const/4 v3, 0x3

    const/4 v13, 0x1

    if-eqz v2, :cond_2

    if-eqz v8, :cond_2

    if-eq v8, v3, :cond_2

    .line 1249
    return v13

    .line 1252
    :cond_2
    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v7}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v4, 0x4

    const/4 v14, -0x1

    if-eqz v2, :cond_3

    .line 1253
    invoke-direct {v6, v14}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1254
    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1255
    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1256
    return v13

    .line 1261
    :cond_3
    iget-boolean v2, v6, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v2, :cond_4

    if-eq v8, v3, :cond_4

    .line 1262
    return v13

    .line 1265
    :cond_4
    packed-switch v8, :pswitch_data_0

    goto/16 :goto_5

    .line 1362
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 1363
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 1364
    iput-boolean v13, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 1365
    invoke-direct {v6, v14}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1366
    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    invoke-virtual {v6, v2}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    goto/16 :goto_5

    .line 1301
    :pswitch_1
    const/4 v5, 0x0

    .line 1302
    .local v5, "continueLongPress":Z
    if-eq v11, v14, :cond_7

    .line 1303
    iget v15, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v15, v14, :cond_5

    .line 1304
    iput v11, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1305
    iget-wide v3, v6, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    sub-long v3, v9, v3

    iput-wide v3, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_0

    .line 1307
    :cond_5
    if-ne v11, v15, :cond_6

    .line 1308
    iget-wide v3, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long v13, v9, v13

    add-long/2addr v3, v13

    iput-wide v3, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1309
    const/4 v5, 0x1

    goto :goto_0

    .line 1310
    :cond_6
    iget v13, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_7

    .line 1311
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 1312
    iget v13, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v13, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1313
    iget v13, v6, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    iput v13, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1314
    iget v13, v6, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    iput v13, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 1315
    iget-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v13, v9

    iget-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v13, v2

    iput-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1317
    iput v11, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1318
    const-wide/16 v2, 0x0

    iput-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1322
    :cond_7
    :goto_0
    if-nez v5, :cond_8

    .line 1324
    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1326
    const/4 v2, -0x1

    if-eq v11, v2, :cond_8

    .line 1327
    iget-object v2, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1328
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v4, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v13, v4

    invoke-virtual {v3, v2, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1331
    .end local v2    # "msg":Landroid/os/Message;
    :cond_8
    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    invoke-direct {v6, v2}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1332
    iput-wide v9, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    .line 1333
    goto/16 :goto_5

    .line 1336
    .end local v5    # "continueLongPress":Z
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 1337
    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v11, v2, :cond_9

    .line 1338
    iget-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v4, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long v4, v9, v4

    add-long/2addr v2, v4

    iput-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_1

    .line 1340
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 1341
    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1342
    iget-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v2, v9

    iget-wide v4, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1343
    iput v11, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1344
    const-wide/16 v2, 0x0

    iput-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1346
    :goto_1
    iget-wide v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v4, v6, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_a

    const-wide/16 v4, 0x46

    cmp-long v2, v2, v4

    if-gez v2, :cond_a

    iget v2, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a

    .line 1348
    iput v2, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1349
    iget v0, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1350
    iget v1, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    move v13, v0

    move v14, v1

    goto :goto_2

    .line 1352
    :cond_a
    move v13, v0

    move v14, v1

    .end local v0    # "touchX":I
    .end local v1    # "touchY":I
    .local v13, "touchX":I
    .local v14, "touchY":I
    :goto_2
    const/4 v0, -0x1

    invoke-direct {v6, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1353
    iget-object v1, v6, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1355
    iget v1, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    if-ne v1, v0, :cond_b

    iget-boolean v0, v6, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v0, :cond_b

    iget-boolean v0, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-nez v0, :cond_b

    .line 1356
    iget v1, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    move-object/from16 v0, p0

    move v2, v13

    move v3, v14

    move-wide v4, v9

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    .line 1358
    :cond_b
    invoke-virtual {v6, v11}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 1359
    const/4 v0, -0x1

    iput v0, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 1360
    move v0, v13

    move v1, v14

    goto/16 :goto_5

    .line 1267
    .end local v13    # "touchX":I
    .end local v14    # "touchY":I
    .restart local v0    # "touchX":I
    .restart local v1    # "touchY":I
    :pswitch_3
    const/4 v3, 0x0

    iput-boolean v3, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 1268
    iput v0, v6, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    .line 1269
    iput v1, v6, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    .line 1270
    iput v0, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1271
    iput v1, v6, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 1272
    const-wide/16 v13, 0x0

    iput-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1273
    iput-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1274
    const/4 v4, -0x1

    iput v4, v6, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1275
    iput v11, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1276
    iput v11, v6, Landroid/inputmethodservice/KeyboardView;->mDownKey:I

    .line 1277
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    iput-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    .line 1278
    iput-wide v13, v6, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    .line 1279
    invoke-direct {v6, v9, v10, v11}, Landroid/inputmethodservice/KeyboardView;->checkMultiTap(JI)V

    .line 1280
    iget-object v4, v6, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 v13, -0x1

    if-eq v11, v13, :cond_c

    .line 1281
    iget-object v13, v6, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v13, v13, v11

    iget-object v13, v13, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v13, v3

    goto :goto_3

    :cond_c
    nop

    .line 1280
    :goto_3
    invoke-interface {v4, v3}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 1282
    iget v3, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz v3, :cond_e

    iget-object v4, v6, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v3, v4, v3

    iget-boolean v3, v3, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-eqz v3, :cond_e

    .line 1283
    iget v3, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v3, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 1284
    iget-object v3, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1285
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v13, 0x190

    invoke-virtual {v4, v3, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1286
    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    .line 1288
    iget-boolean v4, v6, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-eqz v4, :cond_d

    .line 1289
    const/4 v4, -0x1

    iput v4, v6, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 1290
    goto :goto_5

    .line 1288
    :cond_d
    const/4 v4, -0x1

    goto :goto_4

    .line 1282
    .end local v3    # "msg":Landroid/os/Message;
    :cond_e
    const/4 v4, -0x1

    .line 1293
    :goto_4
    iget v3, v6, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-eq v3, v4, :cond_f

    .line 1294
    iget-object v3, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v3, v2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1295
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v3, v6, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    sget v4, Landroid/inputmethodservice/KeyboardView;->LONGPRESS_TIMEOUT:I

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1297
    .end local v2    # "msg":Landroid/os/Message;
    :cond_f
    invoke-direct {v6, v11}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1298
    nop

    .line 1369
    :goto_5
    iput v0, v6, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    .line 1370
    iput v1, v6, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    .line 1371
    const/4 v2, 0x1

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "me"    # Landroid/view/MotionEvent;

    .line 1071
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1072
    return v1

    .line 1074
    :cond_0
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz v0, :cond_3

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v3, v2

    if-lt v0, v3, :cond_1

    goto :goto_0

    .line 1078
    :cond_1
    aget-object v0, v2, v0

    .line 1079
    .local v0, "popupKey":Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v1

    .line 1080
    .local v1, "result":Z
    if-eqz v1, :cond_2

    .line 1081
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 1082
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1084
    :cond_2
    return v1

    .line 1075
    .end local v0    # "popupKey":Landroid/inputmethodservice/Keyboard$Key;
    .end local v1    # "result":Z
    :cond_3
    :goto_0
    return v1
.end method

.method private greylist-max-o removeMessages()V
    .locals 2

    .line 1410
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1411
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1412
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1413
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1415
    :cond_0
    return-void
.end method

.method private greylist repeatKey()Z
    .locals 7

    .line 1376
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    aget-object v0, v0, v1

    .line 1377
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget-wide v5, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIIJ)V

    .line 1378
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o resetMultiTap()V
    .locals 3

    .line 1440
    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    .line 1441
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 1442
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .line 1443
    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    .line 1444
    return-void
.end method

.method private greylist-max-o sendAccessibilityEventForUnicodeCharacter(II)V
    .locals 3
    .param p1, "eventType"    # I
    .param p2, "code"    # I

    .line 1001
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1003
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1005
    sparse-switch p2, :sswitch_data_0

    .line 1028
    int-to-char v1, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .local v1, "text":Ljava/lang/String;
    goto :goto_0

    .line 1025
    .end local v1    # "text":Ljava/lang/String;
    :sswitch_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x104049a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1026
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1022
    .end local v1    # "text":Ljava/lang/String;
    :sswitch_1
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x104049c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1023
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1019
    .end local v1    # "text":Ljava/lang/String;
    :sswitch_2
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x104049b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1020
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1010
    .end local v1    # "text":Ljava/lang/String;
    :sswitch_3
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x1040497

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1011
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1016
    .end local v1    # "text":Ljava/lang/String;
    :sswitch_4
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x1040499

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1017
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1013
    .end local v1    # "text":Ljava/lang/String;
    :sswitch_5
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x1040498

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1014
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 1007
    .end local v1    # "text":Ljava/lang/String;
    :sswitch_6
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    const v2, 0x1040496

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1008
    .restart local v1    # "text":Ljava/lang/String;
    nop

    .line 1030
    :goto_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1031
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1033
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_6
        -0x5 -> :sswitch_5
        -0x4 -> :sswitch_4
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist showKey(I)V
    .locals 14
    .param p1, "keyIndex"    # I

    .line 927
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 928
    .local v0, "previewPopup":Landroid/widget/PopupWindow;
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 929
    .local v1, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    if-ltz p1, :cond_a

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v2, v2

    if-lt p1, v2, :cond_0

    goto/16 :goto_6

    .line 930
    :cond_0
    aget-object v2, v1, p1

    .line 931
    .local v2, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_2

    .line 932
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 933
    iget-object v8, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    iget-object v8, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v8, v2, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 932
    :goto_0
    invoke-virtual {v3, v6, v6, v6, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 934
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 936
    :cond_2
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 937
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Landroid/inputmethodservice/KeyboardView;->getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v5, :cond_3

    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v3, v3

    if-ge v3, v4, :cond_3

    .line 939
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    int-to-float v6, v6

    invoke-virtual {v3, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 940
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 942
    :cond_3
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    int-to-float v6, v6

    invoke-virtual {v3, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 943
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 946
    :goto_1
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 947
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 946
    invoke-virtual {v3, v6, v8}, Landroid/widget/TextView;->measure(II)V

    .line 948
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 949
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    add-int/2addr v6, v8

    .line 948
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 950
    .local v3, "popupWidth":I
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    .line 951
    .local v6, "popupHeight":I
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 952
    .local v8, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v8, :cond_4

    .line 953
    iput v3, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 954
    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 956
    :cond_4
    iget-boolean v9, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    if-nez v9, :cond_5

    .line 957
    iget v9, v2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget-object v10, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v9, v10

    iput v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 958
    iget v9, v2, Landroid/inputmethodservice/Keyboard$Key;->y:I

    sub-int/2addr v9, v6

    iget v10, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    add-int/2addr v9, v10

    iput v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    goto :goto_2

    .line 961
    :cond_5
    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    div-int/2addr v9, v4

    rsub-int v9, v9, 0xa0

    iput v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 962
    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    neg-int v9, v9

    iput v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 964
    :goto_2
    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 965
    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v9}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    .line 966
    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v10, v9, v7

    iget v11, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    add-int/2addr v10, v11

    aput v10, v9, v7

    .line 967
    aget v10, v9, v5

    iget v11, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    add-int/2addr v10, v11

    aput v10, v9, v5

    .line 970
    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 971
    iget v10, v2, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-eqz v10, :cond_6

    sget-object v10, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    goto :goto_3

    :cond_6
    sget-object v10, Landroid/inputmethodservice/KeyboardView;->EMPTY_STATE_SET:[I

    .line 970
    :goto_3
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 972
    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget-object v10, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v11, v10, v7

    add-int/2addr v9, v11

    iput v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 973
    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    aget v11, v10, v5

    add-int/2addr v9, v11

    iput v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 976
    invoke-virtual {p0, v10}, Landroid/inputmethodservice/KeyboardView;->getLocationOnScreen([I)V

    .line 977
    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    iget-object v10, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v5, v10, v5

    add-int/2addr v9, v5

    if-gez v9, :cond_8

    .line 980
    iget v5, v2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v9, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v5, v9

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v9

    div-int/2addr v9, v4

    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    if-gt v5, v9, :cond_7

    .line 981
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v5, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v12, v5

    mul-double/2addr v12, v10

    double-to-int v5, v12

    add-int/2addr v4, v5

    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    goto :goto_4

    .line 983
    :cond_7
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v5, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-double v12, v5

    mul-double/2addr v12, v10

    double-to-int v5, v12

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 985
    :goto_4
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    add-int/2addr v4, v6

    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 988
    :cond_8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 989
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_5

    .line 992
    :cond_9
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 993
    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 994
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    invoke-virtual {v0, v4, v7, v5, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 997
    :goto_5
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 998
    return-void

    .line 929
    .end local v2    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v3    # "popupWidth":I
    .end local v6    # "popupHeight":I
    .end local v8    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_a
    :goto_6
    return-void
.end method

.method private greylist-max-o showPreview(I)V
    .locals 10
    .param p1, "keyIndex"    # I

    .line 872
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 873
    .local v0, "oldKeyIndex":I
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 875
    .local v1, "previewPopup":Landroid/widget/PopupWindow;
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 877
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 878
    .local v2, "keys":[Landroid/inputmethodservice/Keyboard$Key;
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v0, p1, :cond_2

    .line 879
    if-eq v0, v5, :cond_1

    array-length v6, v2

    if-le v6, v0, :cond_1

    .line 880
    aget-object v6, v2, v0

    .line 881
    .local v6, "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    if-ne p1, v5, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    invoke-virtual {v6, v7}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 882
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 883
    iget-object v7, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v7, v7, v4

    .line 884
    .local v7, "keyCode":I
    const/16 v8, 0x100

    invoke-direct {p0, v8, v7}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 887
    const/high16 v8, 0x10000

    invoke-direct {p0, v8, v7}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 890
    .end local v6    # "oldKey":Landroid/inputmethodservice/Keyboard$Key;
    .end local v7    # "keyCode":I
    :cond_1
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v6, v5, :cond_2

    array-length v7, v2

    if-le v7, v6, :cond_2

    .line 891
    aget-object v6, v2, v6

    .line 892
    .local v6, "newKey":Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {v6}, Landroid/inputmethodservice/Keyboard$Key;->onPressed()V

    .line 893
    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {p0, v7}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 894
    iget-object v7, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v7, v7, v4

    .line 895
    .restart local v7    # "keyCode":I
    const/16 v8, 0x80

    invoke-direct {p0, v8, v7}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 898
    const v8, 0x8000

    invoke-direct {p0, v8, v7}, Landroid/inputmethodservice/KeyboardView;->sendAccessibilityEventForUnicodeCharacter(II)V

    .line 903
    .end local v6    # "newKey":Landroid/inputmethodservice/Keyboard$Key;
    .end local v7    # "keyCode":I
    :cond_2
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v0, v6, :cond_5

    iget-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    if-eqz v6, :cond_5

    .line 904
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 905
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 906
    if-ne p1, v5, :cond_3

    .line 907
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    .line 908
    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x46

    .line 907
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 912
    :cond_3
    if-eq p1, v5, :cond_5

    .line 913
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 915
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    goto :goto_1

    .line 917
    :cond_4
    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 918
    invoke-virtual {v5, v3, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v6, 0x0

    .line 917
    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 923
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist closing()V
    .locals 1

    .line 1398
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1399
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1401
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 1403
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 1404
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1405
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 1406
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1407
    return-void
.end method

.method public whitelist getKeyboard()Landroid/inputmethodservice/Keyboard;
    .locals 1

    .line 507
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method protected whitelist getOnKeyboardActionListener()Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .locals 1

    .line 471
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method public whitelist handleBack()Z
    .locals 1

    .line 1432
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 1434
    const/4 v0, 0x1

    return v0

    .line 1436
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist invalidateAllKeys()V
    .locals 4

    .line 1042
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1043
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    .line 1044
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidate()V

    .line 1045
    return-void
.end method

.method public whitelist invalidateKey(I)V
    .locals 7
    .param p1, "keyIndex"    # I

    .line 1055
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-nez v0, :cond_0

    return-void

    .line 1056
    :cond_0
    if-ltz p1, :cond_2

    array-length v1, v0

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 1059
    :cond_1
    aget-object v0, v0, p1

    .line 1060
    .local v0, "key":Landroid/inputmethodservice/Keyboard$Key;
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 1061
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 1063
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    .line 1064
    iget v1, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/inputmethodservice/KeyboardView;->invalidate(IIII)V

    .line 1066
    return-void

    .line 1057
    .end local v0    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist isPreviewEnabled()Z
    .locals 1

    .line 556
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    return v0
.end method

.method public whitelist isProximityCorrectionEnabled()Z
    .locals 1

    .line 588
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    return v0
.end method

.method public whitelist isShifted()Z
    .locals 1

    .line 534
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    return v0

    .line 537
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 1

    .line 376
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 377
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->initGestureDetector()V

    .line 378
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Landroid/inputmethodservice/KeyboardView$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/KeyboardView$1;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 402
    :cond_0
    return-void
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 596
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 597
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .locals 0

    .line 1419
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1420
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->closing()V

    .line 1421
    return-void
.end method

.method public whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 654
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 655
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    if-eqz v0, :cond_1

    .line 656
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    .line 658
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 659
    return-void
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1172
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1174
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1182
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1176
    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1177
    goto :goto_0

    .line 1179
    :pswitch_3
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1180
    nop

    .line 1185
    :goto_0
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1187
    .end local v0    # "action":I
    :cond_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected whitelist onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 11
    .param p1, "popupKey"    # Landroid/inputmethodservice/Keyboard$Key;

    .line 1095
    iget v6, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 1097
    .local v6, "popupKeyboardId":I
    const/4 v7, 0x0

    if-eqz v6, :cond_4

    .line 1098
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1099
    const v1, 0x1020026

    if-nez v0, :cond_2

    .line 1100
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/LayoutInflater;

    .line 1102
    .local v8, "inflater":Landroid/view/LayoutInflater;
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1103
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 1105
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v1, 0x1020027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1107
    .local v9, "closeButton":Landroid/view/View;
    if-eqz v9, :cond_0

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    new-instance v1, Landroid/inputmethodservice/KeyboardView$3;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/KeyboardView$3;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 1132
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1133
    new-instance v10, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v4, -0x1

    .line 1134
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingRight()I

    move-result v2

    add-int v5, v0, v2

    move-object v0, v10

    move v2, v6

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .local v0, "keyboard":Landroid/inputmethodservice/Keyboard;
    goto :goto_0

    .line 1136
    .end local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    :cond_1
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 1138
    .restart local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    :goto_0
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 1139
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, p0}, Landroid/inputmethodservice/KeyboardView;->setPopupParent(Landroid/view/View;)V

    .line 1140
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 1141
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1142
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1140
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1144
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    .end local v0    # "keyboard":Landroid/inputmethodservice/Keyboard;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v9    # "closeButton":Landroid/view/View;
    goto :goto_1

    .line 1146
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 1149
    :goto_1
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    .line 1150
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    .line 1151
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    .line 1152
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    .line 1153
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    .line 1154
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    aget v1, v1, v7

    add-int/2addr v0, v1

    .line 1155
    .local v0, "x":I
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mCoordinates:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 1156
    .local v1, "y":I
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    if-gez v0, :cond_3

    move v4, v7

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    invoke-virtual {v2, v4, v1}, Landroid/inputmethodservice/KeyboardView;->setPopupOffset(II)V

    .line 1157
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    .line 1158
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1159
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1160
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1161
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p0, v7, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1162
    iput-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1164
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 1165
    return v3

    .line 1167
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_4
    return v7
.end method

.method public whitelist onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 610
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v0, :cond_0

    .line 611
    iget v0, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingBottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 613
    :cond_0
    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v0

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingRight:I

    add-int/2addr v0, v1

    .line 614
    .local v0, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_1

    .line 615
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 617
    :cond_1
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingBottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    .line 619
    .end local v0    # "width":I
    :goto_0
    return-void
.end method

.method public whitelist onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 644
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 645
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/Keyboard;->resize(II)V

    .line 649
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 650
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "me"    # Landroid/view/MotionEvent;

    .line 1194
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 1195
    .local v2, "pointerCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 1196
    .local v3, "action":I
    const/4 v4, 0x0

    .line 1197
    .local v4, "result":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    .line 1199
    .local v13, "now":J
    iget v5, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    const/4 v15, 0x0

    const/4 v12, 0x1

    if-eq v2, v5, :cond_2

    .line 1200
    if-ne v2, v12, :cond_1

    .line 1202
    const/4 v9, 0x0

    .line 1203
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v16

    .line 1202
    move-wide v5, v13

    move-wide v7, v13

    move/from16 v12, v16

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 1204
    .local v5, "down":Landroid/view/MotionEvent;
    invoke-direct {v0, v5, v15}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v4

    .line 1205
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 1207
    const/4 v15, 0x1

    if-ne v3, v15, :cond_0

    .line 1208
    invoke-direct {v0, v1, v15}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v4

    .line 1210
    .end local v5    # "down":Landroid/view/MotionEvent;
    :cond_0
    goto :goto_0

    .line 1212
    :cond_1
    move v15, v12

    const/4 v9, 0x1

    iget v10, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    iget v11, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    .line 1213
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    .line 1212
    move-wide v5, v13

    move-wide v7, v13

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 1214
    .local v5, "up":Landroid/view/MotionEvent;
    invoke-direct {v0, v5, v15}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v4

    .line 1215
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 1216
    .end local v5    # "up":Landroid/view/MotionEvent;
    goto :goto_0

    .line 1218
    :cond_2
    move v5, v12

    if-ne v2, v5, :cond_3

    .line 1219
    invoke-direct {v0, v1, v15}, Landroid/inputmethodservice/KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v4

    .line 1220
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerX:F

    .line 1221
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerY:F

    goto :goto_0

    .line 1224
    :cond_3
    const/4 v4, 0x1

    .line 1227
    :goto_0
    iput v2, v0, Landroid/inputmethodservice/KeyboardView;->mOldPointerCount:I

    .line 1229
    return v4
.end method

.method public whitelist setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 3
    .param p1, "keyboard"    # Landroid/inputmethodservice/Keyboard;

    .line 482
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 483
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 486
    :cond_0
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->removeMessages()V

    .line 487
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 488
    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 489
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 490
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->requestLayout()V

    .line 492
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardChanged:Z

    .line 493
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 494
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V

    .line 495
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 498
    iput-boolean v1, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 499
    return-void
.end method

.method public whitelist setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 463
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 464
    return-void
.end method

.method public whitelist setPopupOffset(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 567
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    .line 568
    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    .line 569
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 572
    :cond_0
    return-void
.end method

.method public whitelist setPopupParent(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 563
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 564
    return-void
.end method

.method public whitelist setPreviewEnabled(Z)V
    .locals 0
    .param p1, "previewEnabled"    # Z

    .line 547
    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 548
    return-void
.end method

.method public whitelist setProximityCorrectionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 581
    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    .line 582
    return-void
.end method

.method public whitelist setShifted(Z)Z
    .locals 1
    .param p1, "shifted"    # Z

    .line 517
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 521
    const/4 v0, 0x1

    return v0

    .line 524
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setVerticalCorrection(I)V
    .locals 0
    .param p1, "verticalOffset"    # I

    .line 561
    return-void
.end method

.method protected whitelist swipeDown()V
    .locals 1

    .line 1394
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeDown()V

    .line 1395
    return-void
.end method

.method protected whitelist swipeLeft()V
    .locals 1

    .line 1386
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeLeft()V

    .line 1387
    return-void
.end method

.method protected whitelist swipeRight()V
    .locals 1

    .line 1382
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeRight()V

    .line 1383
    return-void
.end method

.method protected whitelist swipeUp()V
    .locals 1

    .line 1390
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeUp()V

    .line 1391
    return-void
.end method
