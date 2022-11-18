.class public Lcom/android/internal/widget/PointerLocationView;
.super Landroid/view/View;
.source "PointerLocationView.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;,
        Lcom/android/internal/widget/PointerLocationView$PointerState;
    }
.end annotation


# static fields
.field private static final blacklist ALT_STRATEGY_PROPERY_KEY:Ljava/lang/String; = "debug.velocitytracker.alt"

.field private static final blacklist GESTURE_EXCLUSION_PROP:Ljava/lang/String; = "debug.pointerlocation.showexclusion"

.field private static final blacklist TAG:Ljava/lang/String; = "Pointer"


# instance fields
.field private blacklist mActivePointerId:I

.field private final blacklist mAltVelocity:Landroid/view/VelocityTracker;

.field private greylist mCurDown:Z

.field private greylist mCurNumPointers:I

.field private final blacklist mCurrentPointPaint:Landroid/graphics/Paint;

.field private blacklist mHeaderBottom:I

.field private blacklist mHeaderPaddingTop:I

.field private final blacklist mIm:Landroid/hardware/input/InputManager;

.field private greylist mMaxNumPointers:I

.field private blacklist mPLVExt:Lcom/android/internal/widget/IPointerLocationViewExt;

.field private final blacklist mPaint:Landroid/graphics/Paint;

.field private final blacklist mPathPaint:Landroid/graphics/Paint;

.field private final greylist mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/PointerLocationView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mPrintCoords:Z

.field private blacklist mReusableOvalRect:Landroid/graphics/RectF;

.field private final blacklist mSystemGestureExclusion:Landroid/graphics/Region;

.field private blacklist mSystemGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

.field private final blacklist mSystemGestureExclusionPaint:Landroid/graphics/Paint;

.field private final blacklist mSystemGestureExclusionPath:Landroid/graphics/Path;

.field private final blacklist mSystemGestureExclusionRejected:Landroid/graphics/Region;

.field private final blacklist mSystemGestureExclusionRejectedPaint:Landroid/graphics/Paint;

.field private final blacklist mTargetPaint:Landroid/graphics/Paint;

.field private final blacklist mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final blacklist mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

.field private final blacklist mTextBackgroundPaint:Landroid/graphics/Paint;

.field private final blacklist mTextLevelPaint:Landroid/graphics/Paint;

.field private final blacklist mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final blacklist mTextPaint:Landroid/graphics/Paint;

.field private final blacklist mVC:Landroid/view/ViewConfiguration;

.field private final blacklist mVelocity:Landroid/view/VelocityTracker;

.field private blacklist mWaterfallInsets:Landroid/graphics/Insets;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSystemGestureExclusion(Lcom/android/internal/widget/PointerLocationView;)Landroid/graphics/Region;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusion:Landroid/graphics/Region;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemGestureExclusionRejected(Lcom/android/internal/widget/PointerLocationView;)Landroid/graphics/Region;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejected:Landroid/graphics/Region;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "c"    # Landroid/content/Context;

    .line 182
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 147
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    .line 150
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mWaterfallInsets:Landroid/graphics/Insets;

    .line 158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    .line 160
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 162
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusion:Landroid/graphics/Region;

    .line 163
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejected:Landroid/graphics/Region;

    .line 164
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    .line 171
    new-instance v2, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-direct {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 173
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    .line 178
    const-class v3, Lcom/android/internal/widget/IPointerLocationViewExt;

    invoke-static {v3}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/IPointerLocationViewExt;

    iput-object v3, p0, Lcom/android/internal/widget/PointerLocationView;->mPLVExt:Lcom/android/internal/widget/IPointerLocationViewExt;

    .line 296
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    .line 1051
    new-instance v3, Lcom/android/internal/widget/PointerLocationView$1;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/PointerLocationView$1;-><init>(Lcom/android/internal/widget/PointerLocationView;)V

    iput-object v3, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    .line 183
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/PointerLocationView;->setFocusableInTouchMode(Z)V

    .line 185
    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManager;

    iput-object v3, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    .line 187
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    .line 188
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 189
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 190
    nop

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v4, v5

    .line 190
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 192
    const/16 v4, 0xff

    invoke-virtual {v3, v4, v0, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 193
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 194
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    const/16 v5, 0x80

    invoke-virtual {v3, v5, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 196
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 197
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 198
    const/16 v5, 0xc0

    invoke-virtual {v3, v5, v4, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 199
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 200
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 201
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 202
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 203
    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 204
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    .line 205
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 206
    invoke-virtual {v7, v4, v4, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 207
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 208
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 209
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    .line 210
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 211
    invoke-virtual {v2, v4, v0, v0, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 212
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    .line 213
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 214
    const/16 v5, 0x60

    invoke-virtual {v2, v4, v0, v5, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 215
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 218
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPaint:Landroid/graphics/Paint;

    .line 219
    const/16 v3, 0x19

    invoke-virtual {v2, v3, v4, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 220
    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 222
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejectedPaint:Landroid/graphics/Paint;

    .line 223
    invoke-virtual {v2, v3, v0, v0, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 224
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 226
    new-instance v2, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v2}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .line 227
    .local v2, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 230
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    .line 232
    const-string v0, "debug.velocitytracker.alt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "altStrategy":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comparing default velocity tracker strategy with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Pointer"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {v0}, Landroid/view/VelocityTracker;->obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 237
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    .line 239
    :goto_0
    return-void
.end method

.method private blacklist drawLabels(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 452
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ltz v1, :cond_6

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto/16 :goto_3

    .line 456
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v1

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mWaterfallInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mWaterfallInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->right:I

    sub-int v8, v1, v2

    .line 457
    .local v8, "w":I
    div-int/lit8 v9, v8, 0x7

    .line 458
    .local v9, "itemW":I
    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    iget-object v2, v0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    const/4 v10, 0x1

    add-int/lit8 v11, v1, 0x1

    .line 459
    .local v11, "base":I
    iget v12, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    .line 461
    .local v12, "bottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 462
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mWaterfallInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->left:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 463
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    iget v2, v0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 465
    .local v13, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v2, 0x0

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v1

    add-int/lit8 v1, v9, -0x1

    int-to-float v4, v1

    int-to-float v5, v12

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 466
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    .line 467
    const-string v2, "P: "

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    .line 468
    const-string v2, " / "

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    .line 469
    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v11

    iget-object v3, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 466
    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v7, v1, v14, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 471
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmTraceCount(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v15

    .line 472
    .local v15, "count":I
    iget-boolean v1, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v1, :cond_1

    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-nez v15, :cond_3

    .line 473
    :cond_2
    int-to-float v2, v9

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v1

    mul-int/lit8 v1, v9, 0x2

    sub-int/2addr v1, v10

    int-to-float v4, v1

    int-to-float v5, v12

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 475
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    .line 476
    const-string v2, "X: "

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v1, v2, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    .line 477
    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v9, 0x1

    int-to-float v2, v2

    int-to-float v3, v11

    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 475
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 478
    mul-int/lit8 v1, v9, 0x2

    int-to-float v2, v1

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v1

    mul-int/lit8 v1, v9, 0x3

    sub-int/2addr v1, v10

    int-to-float v4, v1

    int-to-float v5, v12

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 480
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    .line 481
    const-string v2, "Y: "

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v1, v2, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    .line 482
    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v2, v9, 0x2

    add-int/2addr v2, v10

    int-to-float v2, v2

    int-to-float v3, v11

    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 480
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move/from16 v16, v15

    goto/16 :goto_2

    .line 484
    :cond_3
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmTraceX(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v1

    add-int/lit8 v2, v15, -0x1

    aget v1, v1, v2

    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmTraceX(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-float v6, v1, v2

    .line 485
    .local v6, "dx":F
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmTraceY(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v1

    add-int/lit8 v2, v15, -0x1

    aget v1, v1, v2

    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmTraceY(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v2

    aget v2, v2, v3

    sub-float v5, v1, v2

    .line 486
    .local v5, "dy":F
    int-to-float v2, v9

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v1

    mul-int/lit8 v1, v9, 0x2

    sub-int/2addr v1, v10

    int-to-float v4, v1

    int-to-float v1, v12

    .line 487
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v16

    iget-object v14, v0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    invoke-virtual {v14}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v14

    int-to-float v14, v14

    cmpg-float v14, v16, v14

    if-gez v14, :cond_4

    .line 488
    iget-object v14, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_4
    iget-object v14, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 486
    :goto_0
    move/from16 v16, v1

    move-object/from16 v1, p1

    move/from16 v17, v5

    .end local v5    # "dy":F
    .local v17, "dy":F
    move/from16 v5, v16

    move/from16 v16, v15

    move v15, v6

    .end local v6    # "dx":F
    .local v15, "dx":F
    .local v16, "count":I
    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 489
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    .line 490
    const-string v2, "dX: "

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    .line 491
    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v9, 0x1

    int-to-float v2, v2

    int-to-float v3, v11

    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 489
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 492
    mul-int/lit8 v1, v9, 0x2

    int-to-float v2, v1

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v1

    mul-int/lit8 v1, v9, 0x3

    sub-int/2addr v1, v10

    int-to-float v4, v1

    int-to-float v5, v12

    .line 493
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v1, v1, v6

    if-gez v1, :cond_5

    .line 494
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_5
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    :goto_1
    move-object v6, v1

    .line 492
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 495
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    .line 496
    const-string v2, "dY: "

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    move/from16 v2, v17

    .end local v17    # "dy":F
    .local v2, "dy":F
    invoke-virtual {v1, v2, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    .line 497
    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v3, v9, 0x2

    add-int/2addr v3, v10

    int-to-float v3, v3

    int-to-float v4, v11

    iget-object v5, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 495
    invoke-virtual {v7, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 500
    .end local v2    # "dy":F
    .end local v15    # "dx":F
    :goto_2
    mul-int/lit8 v1, v9, 0x3

    int-to-float v2, v1

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v1

    mul-int/lit8 v1, v9, 0x4

    sub-int/2addr v1, v10

    int-to-float v4, v1

    int-to-float v5, v12

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 502
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    .line 503
    const-string v2, "Xv: "

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    const/4 v14, 0x3

    invoke-virtual {v1, v2, v14}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    .line 504
    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v2, v9, 0x3

    add-int/2addr v2, v10

    int-to-float v2, v2

    int-to-float v3, v11

    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 502
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 506
    mul-int/lit8 v1, v9, 0x4

    int-to-float v2, v1

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v1

    mul-int/lit8 v1, v9, 0x5

    sub-int/2addr v1, v10

    int-to-float v4, v1

    int-to-float v5, v12

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 508
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    .line 509
    const-string v2, "Yv: "

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    invoke-virtual {v1, v2, v14}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    .line 510
    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v2, v9, 0x4

    add-int/2addr v2, v10

    int-to-float v2, v2

    int-to-float v3, v11

    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 508
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 512
    mul-int/lit8 v1, v9, 0x5

    int-to-float v2, v1

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v1

    mul-int/lit8 v1, v9, 0x6

    sub-int/2addr v1, v10

    int-to-float v4, v1

    int-to-float v5, v12

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 514
    mul-int/lit8 v1, v9, 0x5

    int-to-float v2, v1

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v1

    mul-int/lit8 v1, v9, 0x5

    int-to-float v1, v1

    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v4

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    int-to-float v5, v9

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v1, v4

    int-to-float v6, v12

    iget-object v14, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v5

    move v5, v6

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 516
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    .line 517
    const-string v2, "Prs: "

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v14, 0x2

    invoke-virtual {v1, v2, v14}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    .line 518
    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v2, v9, 0x5

    add-int/2addr v2, v10

    int-to-float v2, v2

    int-to-float v3, v11

    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 516
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 520
    mul-int/lit8 v1, v9, 0x6

    int-to-float v2, v1

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v1

    int-to-float v4, v8

    int-to-float v5, v12

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 521
    mul-int/lit8 v1, v9, 0x6

    int-to-float v2, v1

    iget v1, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    int-to-float v3, v1

    mul-int/lit8 v1, v9, 0x6

    int-to-float v1, v1

    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v4

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->size:F

    int-to-float v5, v9

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v1, v4

    int-to-float v5, v12

    iget-object v6, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 523
    iget-object v1, v0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    .line 524
    const-string v2, "Size: "

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    invoke-virtual {v1, v2, v14}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v1

    .line 525
    invoke-virtual {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v2, v9, 0x6

    add-int/2addr v2, v10

    int-to-float v2, v2

    int-to-float v3, v11

    iget-object v4, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 523
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 526
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 527
    return-void

    .line 453
    .end local v8    # "w":I
    .end local v9    # "itemW":I
    .end local v11    # "base":I
    .end local v12    # "bottom":I
    .end local v13    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v16    # "count":I
    :cond_6
    :goto_3
    return-void
.end method

.method private blacklist drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "major"    # F
    .param p5, "minor"    # F
    .param p6, "angle"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 299
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 300
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p6

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p1, v0, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 301
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p5, v1

    sub-float v2, p2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 302
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v2, p5, v1

    add-float/2addr v2, p2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 303
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v2, p4, v1

    sub-float v2, p3, v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 304
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p4, v1

    add-float/2addr v1, p3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 305
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 307
    return-void
.end method

.method private blacklist logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V
    .locals 19
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "index"    # I
    .param p4, "coords"    # Landroid/view/MotionEvent$PointerCoords;
    .param p5, "id"    # I
    .param p6, "event"    # Landroid/view/MotionEvent;

    .line 549
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    invoke-virtual {v3, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    .line 550
    .local v4, "toolType":I
    invoke-virtual/range {p6 .. p6}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    .line 552
    .local v5, "buttonState":I
    and-int/lit16 v6, v0, 0xff

    const v7, 0xff00

    packed-switch v6, :pswitch_data_0

    .line 597
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "prefix":Ljava/lang/String;
    goto :goto_0

    .line 591
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_0
    const-string v6, "HOVER EXIT"

    .line 592
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 588
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_1
    const-string v6, "HOVER ENTER"

    .line 589
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 594
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_2
    const-string v6, "SCROLL"

    .line 595
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 585
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_3
    const-string v6, "HOVER MOVE"

    .line 586
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 577
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_4
    and-int v6, v0, v7

    shr-int/lit8 v6, v6, 0x8

    if-ne v1, v6, :cond_0

    .line 579
    const-string v6, "UP"

    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 581
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_0
    const-string v6, "MOVE"

    .line 583
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 569
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_5
    and-int v6, v0, v7

    shr-int/lit8 v6, v6, 0x8

    if-ne v1, v6, :cond_1

    .line 571
    const-string v6, "DOWN"

    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 573
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_1
    const-string v6, "MOVE"

    .line 575
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 566
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_6
    const-string v6, "OUTSIDE"

    .line 567
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 563
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_7
    const-string v6, "CANCEL"

    .line 564
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 560
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_8
    const-string v6, "MOVE"

    .line 561
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 557
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_9
    const-string v6, "UP"

    .line 558
    .restart local v6    # "prefix":Ljava/lang/String;
    goto :goto_0

    .line 554
    .end local v6    # "prefix":Ljava/lang/String;
    :pswitch_a
    const-string v6, "DOWN"

    .line 555
    .restart local v6    # "prefix":Ljava/lang/String;
    nop

    .line 601
    :goto_0
    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 602
    move-object/from16 v9, p1

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    const-string v10, " id "

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    add-int/lit8 v10, p5, 0x1

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 603
    const-string v10, ": "

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 604
    invoke-virtual {v8, v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 605
    const-string v10, " ("

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    iget v10, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v11, 0x3

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    const-string v10, ", "

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v8, v12, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 606
    const-string v12, ") Pressure="

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    invoke-virtual {v8, v12, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 607
    const-string v12, " Size="

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    invoke-virtual {v8, v12, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 608
    const-string v12, " TouchMajor="

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    invoke-virtual {v8, v12, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 609
    const-string v12, " TouchMinor="

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    invoke-virtual {v8, v12, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 610
    const-string v12, " ToolMajor="

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    invoke-virtual {v8, v12, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 611
    const-string v12, " ToolMinor="

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    invoke-virtual {v8, v12, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 612
    const-string v12, " Orientation="

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    const/high16 v13, 0x43340000    # 180.0f

    mul-float/2addr v12, v13

    float-to-double v14, v12

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    div-double v14, v14, v16

    double-to-float v12, v14

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v14}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 613
    const-string v12, "deg"

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 614
    const-string v15, " Tilt="

    invoke-virtual {v8, v15}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    const/16 v15, 0x19

    .line 615
    invoke-virtual {v2, v15}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v15

    mul-float/2addr v15, v13

    move-object/from16 v18, v12

    float-to-double v11, v15

    div-double v11, v11, v16

    double-to-float v11, v11

    .line 614
    invoke-virtual {v8, v11, v14}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 616
    move-object/from16 v11, v18

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 617
    const-string v11, " Distance="

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    const/16 v11, 0x18

    invoke-virtual {v2, v11}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v11

    invoke-virtual {v8, v11, v14}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 618
    const-string v11, " VScroll="

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    const/16 v11, 0x9

    invoke-virtual {v2, v11}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v11

    invoke-virtual {v8, v11, v14}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 619
    const-string v11, " HScroll="

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    const/16 v11, 0xa

    invoke-virtual {v2, v11}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v11

    invoke-virtual {v8, v11, v14}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 620
    const-string v11, " BoundingBox=[("

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    const/16 v11, 0x20

    .line 621
    invoke-virtual {v3, v11}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v11

    const/4 v12, 0x3

    invoke-virtual {v8, v11, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 622
    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    const/16 v11, 0x21

    invoke-virtual {v3, v11}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v11

    invoke-virtual {v8, v11, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    const-string v11, ")"

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 623
    const-string v11, ", ("

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    const/16 v11, 0x22

    invoke-virtual {v3, v11}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v11

    invoke-virtual {v8, v11, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 624
    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    const/16 v10, 0x23

    invoke-virtual {v3, v10}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v10

    invoke-virtual {v8, v10, v12}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 625
    const-string v10, ")]"

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 626
    const-string v10, " ToolType="

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 627
    const-string v10, " ButtonState="

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    invoke-static {v5}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v8

    .line 628
    invoke-virtual {v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 601
    const-string v10, "Pointer"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
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

.method private blacklist logInputDeviceState(ILjava/lang/String;)V
    .locals 4
    .param p1, "deviceId"    # I
    .param p2, "state"    # Ljava/lang/String;

    .line 917
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 918
    .local v0, "device":Landroid/view/InputDevice;
    const-string v1, ": "

    const-string v2, "Pointer"

    if-eqz v0, :cond_0

    .line 919
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 921
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :goto_0
    return-void
.end method

.method private blacklist logInputDevices()V
    .locals 4

    .line 910
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 911
    .local v0, "deviceIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 912
    aget v2, v0, v1

    const-string v3, "Device Enumerated"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 911
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 914
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 530
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 531
    .local v7, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    .line 532
    .local v8, "N":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 533
    .local v9, "NI":I
    const/4 v0, 0x0

    move v10, v0

    .local v10, "historyPos":I
    :goto_0
    if-ge v10, v8, :cond_1

    .line 534
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_1
    if-ge v11, v9, :cond_0

    .line 535
    invoke-virtual {p2, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    .line 536
    .local v12, "id":I
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v11, v10, v0}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 537
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, v11

    move v5, v12

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 534
    .end local v12    # "id":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 533
    .end local v11    # "i":I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 540
    .end local v10    # "historyPos":I
    :cond_1
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_2
    if-ge v10, v9, :cond_2

    .line 541
    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    .line 542
    .local v11, "id":I
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v10, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 543
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, v10

    move v5, v11

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 540
    .end local v11    # "id":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 545
    .end local v10    # "i":I
    :cond_2
    return-void
.end method

.method private static blacklist shouldLogKey(I)Z
    .locals 2
    .param p0, "keyCode"    # I

    .line 840
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 848
    invoke-static {p0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 849
    invoke-static {p0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 846
    :pswitch_0
    return v0

    .line 849
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 848
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist shouldShowSystemGestureExclusion()Z
    .locals 1

    .line 926
    invoke-static {}, Lcom/android/internal/widget/PointerLocationView;->systemGestureExclusionOpacity()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist systemGestureExclusionOpacity()I
    .locals 3

    .line 930
    const-string v0, "debug.pointerlocation.showexclusion"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 931
    .local v0, "x":I
    if-ltz v0, :cond_0

    const/16 v2, 0xff

    if-gt v0, v2, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method


# virtual methods
.method public whitelist onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "headerPaddingTop":I
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 257
    .local v1, "waterfallInsets":Landroid/graphics/Insets;
    nop

    .line 258
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v2

    .line 259
    .local v2, "topLeftRounded":Landroid/view/RoundedCorner;
    if-eqz v2, :cond_0

    .line 260
    invoke-virtual {v2}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v0

    .line 263
    :cond_0
    const/4 v3, 0x1

    .line 264
    invoke-virtual {p1, v3}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v3

    .line 265
    .local v3, "topRightRounded":Landroid/view/RoundedCorner;
    if-eqz v3, :cond_1

    .line 266
    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 269
    :cond_1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 270
    nop

    .line 271
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 272
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 275
    :cond_2
    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    .line 276
    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mWaterfallInsets:Landroid/graphics/Insets;

    .line 277
    invoke-super {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v4

    return-object v4
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 3

    .line 861
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 863
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 864
    invoke-static {}, Lcom/android/internal/widget/PointerLocationView;->shouldShowSystemGestureExclusion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mContext:Landroid/content/Context;

    .line 868
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 867
    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    nop

    .line 872
    invoke-static {}, Lcom/android/internal/widget/PointerLocationView;->systemGestureExclusionOpacity()I

    move-result v0

    .line 873
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 874
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 875
    .end local v0    # "alpha":I
    goto :goto_0

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 876
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 878
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->logInputDevices()V

    .line 879
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 3

    .line 883
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 885
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 887
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mContext:Landroid/content/Context;

    .line 888
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 887
    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    nop

    .line 892
    return-void

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 311
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 313
    .local v10, "NP":I
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 315
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusion:Landroid/graphics/Region;

    iget-object v1, v8, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBoundaryPath(Landroid/graphics/Path;)Z

    .line 316
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    iget-object v1, v8, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 319
    :cond_0
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejected:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 321
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejected:Landroid/graphics/Region;

    iget-object v1, v8, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBoundaryPath(Landroid/graphics/Path;)Z

    .line 322
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionPath:Landroid/graphics/Path;

    iget-object v1, v8, Lcom/android/internal/widget/PointerLocationView;->mSystemGestureExclusionRejectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 326
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/PointerLocationView;->drawLabels(Landroid/graphics/Canvas;)V

    .line 329
    const/4 v0, 0x0

    move v11, v0

    .local v11, "p":I
    :goto_0
    if-ge v11, v10, :cond_f

    .line 330
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 333
    .local v12, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmTraceCount(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v13

    .line 334
    .local v13, "N":I
    const/4 v0, 0x0

    .local v0, "lastX":F
    const/4 v1, 0x0

    .line 335
    .local v1, "lastY":F
    const/4 v2, 0x0

    .line 336
    .local v2, "haveLast":Z
    const/4 v3, 0x0

    .line 337
    .local v3, "drawn":Z
    iget-object v4, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v14, 0xff

    const/16 v15, 0x80

    invoke-virtual {v4, v14, v15, v14, v14}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 338
    const/4 v4, 0x0

    move v7, v0

    move v6, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move v5, v4

    .end local v0    # "lastX":F
    .end local v1    # "lastY":F
    .end local v2    # "haveLast":Z
    .end local v3    # "drawn":Z
    .local v5, "i":I
    .local v6, "lastY":F
    .local v7, "lastX":F
    .local v16, "haveLast":Z
    .local v17, "drawn":Z
    :goto_1
    if-ge v5, v13, :cond_5

    .line 339
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmTraceX(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v0

    aget v18, v0, v5

    .line 340
    .local v18, "x":F
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmTraceY(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v0

    aget v19, v0, v5

    .line 341
    .local v19, "y":F
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    const/4 v0, 0x0

    .line 343
    .end local v16    # "haveLast":Z
    .local v0, "haveLast":Z
    move/from16 v16, v0

    move/from16 v21, v5

    goto :goto_4

    .line 345
    .end local v0    # "haveLast":Z
    .restart local v16    # "haveLast":Z
    :cond_2
    if-eqz v16, :cond_4

    .line 346
    iget-object v4, v8, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v7

    move v2, v6

    move/from16 v3, v18

    move-object/from16 v20, v4

    move/from16 v4, v19

    move/from16 v21, v5

    .end local v5    # "i":I
    .local v21, "i":I
    move-object/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 347
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmTraceCurrent(Lcom/android/internal/widget/PointerLocationView$PointerState;)[Z

    move-result-object v0

    add-int/lit8 v5, v21, -0x1

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_3

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    goto :goto_2

    :cond_3
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 348
    .local v0, "paint":Landroid/graphics/Paint;
    :goto_2
    invoke-virtual {v9, v7, v6, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 349
    const/16 v17, 0x1

    goto :goto_3

    .line 345
    .end local v0    # "paint":Landroid/graphics/Paint;
    .end local v21    # "i":I
    .restart local v5    # "i":I
    :cond_4
    move/from16 v21, v5

    .line 351
    .end local v5    # "i":I
    .restart local v21    # "i":I
    :goto_3
    move/from16 v0, v18

    .line 352
    .end local v7    # "lastX":F
    .local v0, "lastX":F
    move/from16 v1, v19

    .line 353
    .end local v6    # "lastY":F
    .restart local v1    # "lastY":F
    const/4 v2, 0x1

    move v7, v0

    move v6, v1

    move/from16 v16, v2

    .line 338
    .end local v0    # "lastX":F
    .end local v1    # "lastY":F
    .end local v18    # "x":F
    .end local v19    # "y":F
    .restart local v6    # "lastY":F
    .restart local v7    # "lastX":F
    :goto_4
    add-int/lit8 v5, v21, 0x1

    .end local v21    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    :cond_5
    move/from16 v21, v5

    .line 356
    .end local v5    # "i":I
    if-eqz v17, :cond_6

    .line 358
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/16 v5, 0x40

    invoke-virtual {v0, v14, v14, v5, v15}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 359
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v0

    const/high16 v18, 0x41800000    # 16.0f

    mul-float v19, v0, v18

    .line 360
    .local v19, "xVel":F
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v0

    mul-float v20, v0, v18

    .line 361
    .local v20, "yVel":F
    add-float v3, v7, v19

    add-float v4, v6, v20

    iget-object v2, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v7

    move-object/from16 v21, v2

    move v2, v6

    move/from16 v22, v10

    move v10, v5

    .end local v10    # "NP":I
    .local v22, "NP":I
    move-object/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 364
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 365
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v14, v10, v14, v15}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 366
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmAltXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v0

    mul-float v10, v0, v18

    .line 367
    .end local v19    # "xVel":F
    .local v10, "xVel":F
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmAltYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v0

    mul-float v18, v18, v0

    .line 368
    .end local v20    # "yVel":F
    .local v18, "yVel":F
    add-float v3, v7, v10

    add-float v4, v6, v18

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move v1, v7

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 356
    .end local v18    # "yVel":F
    .end local v22    # "NP":I
    .local v10, "NP":I
    :cond_6
    move/from16 v22, v10

    .line 372
    .end local v10    # "NP":I
    .restart local v22    # "NP":I
    :cond_7
    :goto_5
    iget-boolean v0, v8, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v0, :cond_d

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 375
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPLVExt:Lcom/android/internal/widget/IPointerLocationViewExt;

    invoke-interface {v0}, Lcom/android/internal/widget/IPointerLocationViewExt;->enableInputLogV()Z

    move-result v0

    const-wide/16 v4, 0x8

    if-eqz v0, :cond_8

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Draw x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 380
    :cond_8
    const/4 v1, 0x0

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v10, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v19, v4

    move v4, v10

    move-object/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 383
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v2, v0

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v3, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    .line 383
    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 387
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v10, v0

    .line 388
    .local v10, "pressureLevel":I
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    rsub-int v1, v10, 0xff

    invoke-virtual {v0, v14, v10, v14, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 389
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object v2, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 392
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    rsub-int v1, v10, 0xff

    invoke-virtual {v0, v14, v10, v1, v15}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 393
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v3, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v4, v0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v5, v0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v21, v1

    move-object/from16 v1, p1

    move/from16 v23, v6

    .end local v6    # "lastY":F
    .local v23, "lastY":F
    move/from16 v6, v21

    move/from16 v21, v7

    .end local v7    # "lastX":F
    .local v21, "lastX":F
    move-object/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 397
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    rsub-int v1, v10, 0xff

    invoke-virtual {v0, v14, v10, v15, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 398
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v3, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v4, v0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v5, v0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v6, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iget-object v7, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 402
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    .line 403
    .local v0, "arrowSize":F
    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_9

    .line 404
    const/high16 v0, 0x41a00000    # 20.0f

    move v6, v0

    goto :goto_6

    .line 403
    :cond_9
    move v6, v0

    .line 406
    .end local v0    # "arrowSize":F
    .local v6, "arrowSize":F
    :goto_6
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v14, v10, v14, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 407
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    float-to-double v2, v6

    mul-double/2addr v0, v2

    double-to-float v7, v0

    .line 409
    .local v7, "orientationVectorX":F
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    neg-double v0, v0

    float-to-double v2, v6

    mul-double/2addr v0, v2

    double-to-float v14, v0

    .line 411
    .local v14, "orientationVectorY":F
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmToolType(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmToolType(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    goto :goto_7

    .line 420
    :cond_a
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float v1, v0, v7

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float v2, v0, v14

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v3, v0, v7

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v4, v0, v14

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    .line 414
    :cond_b
    :goto_7
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v3, v0, v7

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v4, v0, v14

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 429
    :goto_8
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    const/16 v1, 0x19

    .line 430
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v0

    float-to-double v0, v0

    .line 429
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v15, v0

    .line 431
    .local v15, "tiltScale":F
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v1, v7, v15

    add-float/2addr v0, v1

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v2, v14, v15

    add-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 437
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmHasBoundingBox(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 438
    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmBoundingLeft(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v1

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmBoundingTop(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmBoundingRight(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v3

    invoke-static {v12}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmBoundingBottom(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v4

    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 443
    :cond_c
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPLVExt:Lcom/android/internal/widget/IPointerLocationViewExt;

    invoke-interface {v0}, Lcom/android/internal/widget/IPointerLocationViewExt;->enableInputLogV()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 444
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_9

    .line 372
    .end local v10    # "pressureLevel":I
    .end local v14    # "orientationVectorY":F
    .end local v15    # "tiltScale":F
    .end local v21    # "lastX":F
    .end local v23    # "lastY":F
    .local v6, "lastY":F
    .local v7, "lastX":F
    :cond_d
    move/from16 v23, v6

    move/from16 v21, v7

    .line 329
    .end local v6    # "lastY":F
    .end local v7    # "lastX":F
    .end local v12    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v13    # "N":I
    .end local v16    # "haveLast":Z
    .end local v17    # "drawn":Z
    :cond_e
    :goto_9
    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v22

    goto/16 :goto_0

    .line 449
    .end local v11    # "p":I
    .end local v22    # "NP":I
    .local v10, "NP":I
    :cond_f
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 803
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 804
    .local v0, "source":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 805
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->onPointerEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 806
    :cond_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    .line 807
    const-string v1, "Joystick"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 808
    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 809
    const-string v1, "Position"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 811
    :cond_2
    const-string v1, "Generic"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 813
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist onInputDeviceAdded(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 896
    const-string v0, "Device Added"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 897
    return-void
.end method

.method public whitelist onInputDeviceChanged(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 901
    const-string v0, "Device Changed"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 902
    return-void
.end method

.method public whitelist onInputDeviceRemoved(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .line 906
    const-string v0, "Device Removed"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 907
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 818
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->shouldLogKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 820
    .local v0, "repeatCount":I
    const-string v1, "Pointer"

    if-nez v0, :cond_0

    .line 821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key Down: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 823
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key Repeat #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 827
    .end local v0    # "repeatCount":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 832
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->shouldLogKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key Up: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pointer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/4 v0, 0x1

    return v0

    .line 836
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 282
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 284
    iget v0, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderPaddingTop:I

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    .line 292
    return-void
.end method

.method public blacklist onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 21
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 635
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPLVExt:Lcom/android/internal/widget/IPointerLocationViewExt;

    invoke-interface {v0}, Lcom/android/internal/widget/IPointerLocationViewExt;->enableInputLogV()Z

    move-result v0

    const-wide/16 v9, 0x8

    if-eqz v0, :cond_0

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PointerLocationView#onPointerEvent,x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 639
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 640
    .local v11, "action":I
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 642
    .local v0, "NP":I
    const/16 v12, 0x20

    const v13, 0xff00

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v11, :cond_2

    and-int/lit16 v1, v11, 0xff

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v6, v0

    goto/16 :goto_4

    .line 644
    :cond_2
    :goto_0
    and-int v1, v11, v13

    shr-int/lit8 v1, v1, 0x8

    .line 646
    .local v1, "index":I
    if-nez v11, :cond_4

    .line 647
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 648
    iget-object v3, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 649
    .local v3, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-virtual {v3}, Lcom/android/internal/widget/PointerLocationView$PointerState;->clearTrace()V

    .line 650
    invoke-static {v3, v14}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)V

    .line 647
    .end local v3    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 652
    .end local v2    # "p":I
    :cond_3
    iput-boolean v15, v7, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 653
    iput v14, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 654
    iput v14, v7, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 655
    iget-object v2, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 656
    iget-object v2, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_4

    .line 657
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 661
    :cond_4
    iget v2, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    add-int/2addr v2, v15

    iput v2, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 662
    iget v3, v7, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    if-ge v3, v2, :cond_5

    .line 663
    iput v2, v7, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 666
    :cond_5
    invoke-virtual {v8, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 667
    .local v2, "id":I
    :goto_2
    if-gt v0, v2, :cond_6

    .line 668
    new-instance v3, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v3}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .line 669
    .restart local v3    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    iget-object v4, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    nop

    .end local v3    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    add-int/lit8 v0, v0, 0x1

    .line 671
    goto :goto_2

    .line 673
    :cond_6
    iget v3, v7, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ltz v3, :cond_7

    if-ge v3, v0, :cond_7

    if-ge v3, v0, :cond_8

    iget-object v4, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    .line 678
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-static {v3}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 680
    :cond_7
    iput v2, v7, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 683
    :cond_8
    iget-object v3, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 684
    .restart local v3    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-static {v3, v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)V

    .line 685
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 686
    .local v4, "device":Landroid/view/InputDevice;
    if-eqz v4, :cond_9

    .line 687
    invoke-virtual {v4, v12}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v5

    if-eqz v5, :cond_9

    move v5, v15

    goto :goto_3

    :cond_9
    move v5, v14

    :goto_3
    invoke-static {v3, v5}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmHasBoundingBox(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)V

    move v6, v0

    .line 690
    .end local v0    # "NP":I
    .end local v1    # "index":I
    .end local v2    # "id":I
    .end local v3    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v4    # "device":Landroid/view/InputDevice;
    .local v6, "NP":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 692
    .local v5, "NI":I
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 693
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 694
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    .line 695
    invoke-virtual {v0, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 696
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 699
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    .line 700
    .local v4, "N":I
    const/4 v0, 0x0

    move v3, v0

    .local v3, "historyPos":I
    :goto_5
    const/16 v16, 0x0

    if-ge v3, v4, :cond_10

    .line 701
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_6
    if-ge v2, v5, :cond_f

    .line 702
    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 707
    .local v1, "id":I
    iget-boolean v0, v7, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v0, :cond_b

    if-ge v1, v6, :cond_b

    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/PointerLocationView$PointerState;

    goto :goto_7

    :cond_b
    move-object/from16 v0, v16

    .line 709
    .local v0, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :goto_7
    if-eqz v0, :cond_c

    invoke-static {v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v17

    move-object/from16 v13, v17

    goto :goto_8

    :cond_c
    iget-object v13, v7, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 710
    .local v13, "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_8
    invoke-virtual {v8, v2, v3, v13}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 711
    iget-boolean v9, v7, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v9, :cond_d

    .line 712
    const-string v9, "Pointer"

    move-object v10, v0

    .end local v0    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .local v10, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    move-object/from16 v0, p0

    move/from16 v18, v1

    .end local v1    # "id":I
    .local v18, "id":I
    move-object v1, v9

    move v9, v2

    .end local v2    # "i":I
    .local v9, "i":I
    move v2, v11

    move/from16 v19, v3

    .end local v3    # "historyPos":I
    .local v19, "historyPos":I
    move v3, v9

    move/from16 v20, v4

    .end local v4    # "N":I
    .local v20, "N":I
    move-object v4, v13

    move v12, v5

    .end local v5    # "NI":I
    .local v12, "NI":I
    move/from16 v5, v18

    move v15, v6

    .end local v6    # "NP":I
    .local v15, "NP":I
    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    goto :goto_9

    .line 711
    .end local v9    # "i":I
    .end local v10    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v12    # "NI":I
    .end local v15    # "NP":I
    .end local v18    # "id":I
    .end local v19    # "historyPos":I
    .end local v20    # "N":I
    .restart local v0    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .restart local v1    # "id":I
    .restart local v2    # "i":I
    .restart local v3    # "historyPos":I
    .restart local v4    # "N":I
    .restart local v5    # "NI":I
    .restart local v6    # "NP":I
    :cond_d
    move-object v10, v0

    move/from16 v18, v1

    move v9, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move v12, v5

    move v15, v6

    .line 714
    .end local v0    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v1    # "id":I
    .end local v2    # "i":I
    .end local v3    # "historyPos":I
    .end local v4    # "N":I
    .end local v5    # "NI":I
    .end local v6    # "NP":I
    .restart local v9    # "i":I
    .restart local v10    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .restart local v12    # "NI":I
    .restart local v15    # "NP":I
    .restart local v18    # "id":I
    .restart local v19    # "historyPos":I
    .restart local v20    # "N":I
    :goto_9
    if-eqz v10, :cond_e

    .line 715
    iget v0, v13, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v1, v13, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v10, v0, v1, v14}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    .line 701
    .end local v10    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v13    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v18    # "id":I
    :cond_e
    add-int/lit8 v2, v9, 0x1

    move v5, v12

    move v6, v15

    move/from16 v3, v19

    move/from16 v4, v20

    const-wide/16 v9, 0x8

    const/16 v12, 0x20

    const v13, 0xff00

    const/4 v15, 0x1

    .end local v9    # "i":I
    .restart local v2    # "i":I
    goto :goto_6

    .end local v12    # "NI":I
    .end local v15    # "NP":I
    .end local v19    # "historyPos":I
    .end local v20    # "N":I
    .restart local v3    # "historyPos":I
    .restart local v4    # "N":I
    .restart local v5    # "NI":I
    .restart local v6    # "NP":I
    :cond_f
    move v9, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move v12, v5

    move v15, v6

    .line 700
    .end local v2    # "i":I
    .end local v3    # "historyPos":I
    .end local v4    # "N":I
    .end local v5    # "NI":I
    .end local v6    # "NP":I
    .restart local v12    # "NI":I
    .restart local v15    # "NP":I
    .restart local v19    # "historyPos":I
    .restart local v20    # "N":I
    add-int/lit8 v3, v19, 0x1

    const-wide/16 v9, 0x8

    const/16 v12, 0x20

    const v13, 0xff00

    const/4 v15, 0x1

    .end local v19    # "historyPos":I
    .restart local v3    # "historyPos":I
    goto :goto_5

    .end local v12    # "NI":I
    .end local v15    # "NP":I
    .end local v20    # "N":I
    .restart local v4    # "N":I
    .restart local v5    # "NI":I
    .restart local v6    # "NP":I
    :cond_10
    move/from16 v19, v3

    move/from16 v20, v4

    move v12, v5

    move v15, v6

    .line 719
    .end local v3    # "historyPos":I
    .end local v4    # "N":I
    .end local v5    # "NI":I
    .end local v6    # "NP":I
    .restart local v12    # "NI":I
    .restart local v15    # "NP":I
    .restart local v20    # "N":I
    const/4 v0, 0x0

    move v9, v0

    .restart local v9    # "i":I
    :goto_a
    if-ge v9, v12, :cond_17

    .line 720
    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    .line 725
    .local v10, "id":I
    iget-boolean v0, v7, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v0, :cond_11

    if-ge v10, v15, :cond_11

    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/PointerLocationView$PointerState;

    goto :goto_b

    :cond_11
    move-object/from16 v0, v16

    :goto_b
    move-object v13, v0

    .line 727
    .local v13, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    if-eqz v13, :cond_12

    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    goto :goto_c

    :cond_12
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    :goto_c
    move-object v6, v0

    .line 728
    .local v6, "coords":Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual {v8, v9, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 729
    iget-boolean v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v0, :cond_13

    .line 730
    const-string v1, "Pointer"

    move-object/from16 v0, p0

    move v2, v11

    move v3, v9

    move-object v4, v6

    move v5, v10

    move-object v14, v6

    .end local v6    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .local v14, "coords":Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    goto :goto_d

    .line 729
    .end local v14    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .restart local v6    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :cond_13
    move-object v14, v6

    .line 732
    .end local v6    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .restart local v14    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_d
    if-eqz v13, :cond_16

    .line 733
    iget v0, v14, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v1, v14, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v2, 0x1

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    .line 734
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v10}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    invoke-static {v13, v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 735
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v10}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    invoke-static {v13, v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 736
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmEstimator(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/view/VelocityTracker;->getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z

    .line 737
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_14

    .line 738
    invoke-virtual {v0, v10}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    invoke-static {v13, v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmAltXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 739
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v10}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    invoke-static {v13, v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmAltYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 740
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmAltEstimator(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/view/VelocityTracker;->getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z

    .line 742
    :cond_14
    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    invoke-static {v13, v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmToolType(Lcom/android/internal/widget/PointerLocationView$PointerState;I)V

    .line 744
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fgetmHasBoundingBox(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 745
    const/16 v0, 0x20

    invoke-virtual {v8, v0, v9}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    invoke-static {v13, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmBoundingLeft(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 746
    const/16 v1, 0x21

    invoke-virtual {v8, v1, v9}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    invoke-static {v13, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmBoundingTop(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 747
    const/16 v1, 0x22

    invoke-virtual {v8, v1, v9}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    invoke-static {v13, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmBoundingRight(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    .line 748
    const/16 v1, 0x23

    invoke-virtual {v8, v1, v9}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    invoke-static {v13, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmBoundingBottom(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V

    goto :goto_e

    .line 744
    :cond_15
    const/16 v0, 0x20

    goto :goto_e

    .line 732
    :cond_16
    const/16 v0, 0x20

    .line 719
    .end local v10    # "id":I
    .end local v13    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v14    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_e
    add-int/lit8 v9, v9, 0x1

    const/4 v14, 0x0

    goto/16 :goto_a

    .line 755
    .end local v9    # "i":I
    :cond_17
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPLVExt:Lcom/android/internal/widget/IPointerLocationViewExt;

    invoke-interface {v0}, Lcom/android/internal/widget/IPointerLocationViewExt;->enableInputLogV()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 756
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 759
    :cond_18
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq v11, v1, :cond_19

    if-eq v11, v0, :cond_19

    and-int/lit16 v1, v11, 0xff

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1f

    .line 762
    :cond_19
    const v1, 0xff00

    and-int/2addr v1, v11

    shr-int/lit8 v1, v1, 0x8

    .line 765
    .local v1, "index":I
    invoke-virtual {v8, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 766
    .local v2, "id":I
    if-lt v2, v15, :cond_1a

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got pointer ID out of bounds: id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " arraysize="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " pointerindex="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " action=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 769
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 767
    const-string v3, "Pointer"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    return-void

    .line 772
    :cond_1a
    iget-object v3, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 773
    .local v3, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/widget/PointerLocationView$PointerState;->-$$Nest$fputmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)V

    .line 775
    const/4 v4, 0x1

    if-eq v11, v4, :cond_1e

    if-ne v11, v0, :cond_1b

    const/4 v4, 0x0

    goto :goto_10

    .line 780
    :cond_1b
    iget v0, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    sub-int/2addr v0, v4

    iput v0, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 781
    iget v0, v7, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ne v0, v2, :cond_1d

    .line 782
    if-nez v1, :cond_1c

    goto :goto_f

    :cond_1c
    const/4 v4, 0x0

    :goto_f
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v7, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 784
    :cond_1d
    const/high16 v0, 0x7fc00000    # Float.NaN

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v0, v4}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    goto :goto_11

    .line 775
    :cond_1e
    const/4 v4, 0x0

    .line 777
    :goto_10
    iput-boolean v4, v7, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 778
    iput v4, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 788
    .end local v1    # "index":I
    .end local v2    # "id":I
    .end local v3    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_1f
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->invalidate()V

    .line 789
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 793
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->onPointerEvent(Landroid/view/MotionEvent;)V

    .line 795
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->requestFocus()Z

    .line 798
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 855
    const-string v0, "Trackball"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 856
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setPrintCoords(Z)V
    .locals 3
    .param p1, "state"    # Z

    .line 244
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPLVExt:Lcom/android/internal/widget/IPointerLocationViewExt;

    const-string v1, "Pointer"

    const-string v2, "force print coords!"

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/IPointerLocationViewExt;->inputLogd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    .line 246
    return-void

    .line 249
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    .line 250
    return-void
.end method
