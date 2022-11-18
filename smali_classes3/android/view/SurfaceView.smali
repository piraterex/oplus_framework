.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$SurfaceChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;,
        Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    }
.end annotation


# static fields
.field private static final blacklist MAX_VALUE:I = 0x4000

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SurfaceView"


# instance fields
.field private final greylist-max-o DEBUG:Z

.field private final blacklist DEBUG_POSITION:Z

.field private greylist-max-o mAttachedToWindow:Z

.field blacklist mBackgroundColor:I

.field blacklist mBackgroundControl:Landroid/view/SurfaceControl;

.field private blacklist mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field private blacklist mBlastSurfaceControl:Landroid/view/SurfaceControl;

.field final greylist mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mClipSurfaceToBounds:Z

.field blacklist mCornerRadius:F

.field private blacklist mDisableBackgroundLayer:Z

.field greylist-max-o mDrawFinished:Z

.field private final greylist mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field greylist-max-p mDrawingStopped:Z

.field greylist mFormat:I

.field private final blacklist mFrameCallbackTransaction:Landroid/view/SurfaceControl$Transaction;

.field private greylist-max-o mGlobalListenersAdded:Z

.field greylist mHaveFrame:Z

.field greylist-max-p mIsCreating:Z

.field greylist-max-p mLastLockTime:J

.field greylist-max-o mLastSurfaceHeight:I

.field greylist-max-o mLastSurfaceWidth:I

.field greylist-max-o mLastWindowVisibility:Z

.field final greylist-max-o mLocation:[I

.field private blacklist mParentSurfaceSequenceId:I

.field private blacklist mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

.field private final greylist-max-o mRTLastReportedPosition:Landroid/graphics/Rect;

.field private final blacklist mRTLastReportedSurfaceSize:Landroid/graphics/Point;

.field private blacklist mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

.field greylist mRequestedFormat:I

.field greylist-max-p mRequestedHeight:I

.field greylist-max-o mRequestedVisible:Z

.field greylist-max-p mRequestedWidth:I

.field blacklist mRoundedViewportPaint:Landroid/graphics/Paint;

.field private final greylist-max-o mRtTransaction:Landroid/view/SurfaceControl$Transaction;

.field final greylist-max-o mScreenRect:Landroid/graphics/Rect;

.field private final greylist-max-o mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field greylist-max-o mSubLayer:I

.field final greylist mSurface:Landroid/view/Surface;

.field blacklist mSurfaceAlpha:F

.field blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field final blacklist mSurfaceControlLock:Ljava/lang/Object;

.field greylist-max-o mSurfaceCreated:Z

.field private greylist-max-o mSurfaceFlags:I

.field final greylist-max-p mSurfaceFrame:Landroid/graphics/Rect;

.field greylist-max-o mSurfaceHeight:I

.field private final greylist mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final greylist mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field blacklist mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

.field private final greylist-max-o mSurfaceSession:Landroid/view/SurfaceSession;

.field private final blacklist mSurfaceSyncer:Landroid/window/SurfaceSyncer;

.field private blacklist mSurfaceViewSocExt:Landroid/view/ISurfaceViewSocExt;

.field greylist-max-o mSurfaceWidth:I

.field private final blacklist mSyncIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field final greylist-max-o mTmpRect:Landroid/graphics/Rect;

.field blacklist mTransformHint:I

.field blacklist mUseAlpha:Z

.field greylist-max-o mViewVisibility:Z

.field greylist-max-o mVisible:Z

.field greylist-max-o mWindowSpaceLeft:I

.field greylist-max-o mWindowSpaceTop:I

.field greylist-max-o mWindowStopped:Z

.field greylist-max-o mWindowVisibility:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$PgOqH-1CHTj5xz7zBHK88fj8o94(Landroid/view/SurfaceView;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$st27mCkd9jfJkTrN_P3qIGKX6NY(Landroid/view/SurfaceView;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceView;->performDrawFinished()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetDEBUG(Landroid/view/SurfaceView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/SurfaceView;->DEBUG:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetDEBUG_POSITION(Landroid/view/SurfaceView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/SurfaceView;->DEBUG_POSITION:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRTLastReportedSurfaceSize(Landroid/view/SurfaceView;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceView;->mRTLastReportedSurfaceSize:Landroid/graphics/Point;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;
    .locals 0

    iget-object p0, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;->applyOrMergeTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrunOnUiThread(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 276
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 280
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 284
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 287
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    .line 288
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "disableBackgroundLayer"    # Z

    .line 293
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 124
    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 125
    const-string v0, "debug.surfaceview.log"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/view/SurfaceView;->DEBUG:Z

    .line 126
    iput-boolean v0, p0, Landroid/view/SurfaceView;->DEBUG_POSITION:Z

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 141
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 143
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 153
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 155
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 160
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 162
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 163
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 167
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    .line 174
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    .line 178
    const/4 v0, -0x2

    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 180
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 183
    new-instance v0, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 186
    new-instance v0, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda5;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 194
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 195
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 196
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 197
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 198
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 202
    iput v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 207
    const/4 v3, 0x4

    iput v3, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 210
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    .line 211
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    .line 213
    const/high16 v4, -0x1000000

    iput v4, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 215
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 217
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 218
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 221
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 222
    iput v0, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 223
    iput v0, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 224
    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 225
    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 227
    iput v0, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 229
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 231
    iput v0, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v0, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 232
    iput v1, p0, Landroid/view/SurfaceView;->mTransformHint:I

    .line 237
    iput v3, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 239
    new-instance v0, Landroid/window/SurfaceSyncer;

    invoke-direct {v0}, Landroid/window/SurfaceSyncer;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    .line 240
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    .line 246
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRtTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 253
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mFrameCallbackTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 258
    new-instance v0, Landroid/view/RemoteAccessibilityController;

    invoke-direct {v0, p0}, Landroid/view/RemoteAccessibilityController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    .line 261
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 1479
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 1480
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedSurfaceSize:Landroid/graphics/Point;

    .line 1584
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    .line 1647
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 294
    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 295
    iput-boolean p5, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    .line 298
    const-class v0, Landroid/view/ISurfaceViewSocExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ISurfaceViewSocExt;

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceViewSocExt:Landroid/view/ISurfaceViewSocExt;

    .line 300
    return-void
.end method

.method private blacklist applyOrMergeTransaction(Landroid/view/SurfaceControl$Transaction;J)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "frameNumber"    # J

    .line 1470
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1471
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 1473
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    goto :goto_0

    .line 1475
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1477
    :goto_0
    return-void
.end method

.method private blacklist applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2058
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2059
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 2061
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    goto :goto_0

    .line 2063
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2065
    :goto_0
    return-void
.end method

.method private blacklist clearSurfaceViewPort(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 603
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 604
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 605
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 608
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget v7, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    move-object v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->punchHole(FFFFFF)V

    goto :goto_0

    .line 617
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->punchHole(FFFFFF)V

    .line 619
    :goto_0
    return-void
.end method

.method private blacklist copySurface(ZZ)V
    .locals 2
    .param p1, "surfaceControlCreated"    # Z
    .param p2, "bufferSizeChanged"    # Z

    .line 1295
    if-eqz p1, :cond_0

    .line 1296
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/graphics/BLASTBufferQueue;)V

    .line 1299
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    .line 1306
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_1

    .line 1307
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->createSurfaceWithHandle()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    .line 1310
    :cond_1
    return-void
.end method

.method private blacklist createBlastSurfaceControls(Landroid/view/ViewRootImpl;Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "surfaceUpdateTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 1355
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v1, "SurfaceView.updateSurface"

    if-nez v0, :cond_0

    .line 1356
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 1357
    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1358
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1359
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getBoundsLayer()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1360
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1361
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1362
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1365
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 1366
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(BLAST)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1367
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1368
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1369
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 1370
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1371
    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1372
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1373
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1374
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_2

    .line 1377
    :cond_1
    iget v4, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    .line 1378
    :goto_0
    invoke-virtual {p3, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v3

    .line 1379
    :goto_1
    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    .line 1380
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1383
    :goto_2
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_4

    .line 1384
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Background for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1385
    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1386
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1387
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1388
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1389
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1390
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1391
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 1396
    :cond_4
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_5

    .line 1397
    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 1399
    :cond_5
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceView;->mTransformHint:I

    .line 1400
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1402
    new-instance v0, Landroid/graphics/BLASTBufferQueue;

    invoke-direct {v0, p2, v3}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 1403
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v4, p0, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 1404
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    sget-object v1, Landroid/view/ViewRootImpl;->sTransactionHangCallback:Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/BLASTBufferQueue;->setTransactionHangCallback(Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;)V

    .line 1405
    return-void
.end method

.method private blacklist getFixedAlpha()F
    .locals 2

    .line 414
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v0

    .line 415
    .local v0, "alpha":F
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    return v1
.end method

.method private greylist-max-o getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 3

    .line 1588
    iget-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1589
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/SurfaceHolder$Callback;

    .line 1590
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1591
    monitor-exit v0

    .line 1592
    return-object v1

    .line 1591
    .end local v1    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleSyncBufferCallback([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V
    .locals 2
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;
    .param p2, "syncBufferTransactionCallback"    # Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    .line 1217
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/SurfaceView$$ExternalSyntheticLambda6;-><init>(Landroid/view/SurfaceView;[Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->addToSync(Landroid/window/SurfaceSyncer$SyncTarget;)V

    .line 1228
    return-void
.end method

.method private blacklist handleSyncNoBuffer([Landroid/view/SurfaceHolder$Callback;)V
    .locals 4
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;

    .line 1231
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    new-instance v1, Landroid/view/SurfaceView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/window/SurfaceSyncer;->setupSync(Ljava/lang/Runnable;)I

    move-result v0

    .line 1233
    .local v0, "syncId":I
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    new-instance v2, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda2;-><init>(Landroid/view/SurfaceView;[Landroid/view/SurfaceHolder$Callback;I)V

    invoke-virtual {v1, v0, v2}, Landroid/window/SurfaceSyncer;->addToSync(ILandroid/window/SurfaceSyncer$SyncTarget;)Z

    .line 1241
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    invoke-virtual {v1, v0}, Landroid/window/SurfaceSyncer;->markSyncReady(I)V

    .line 1242
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    monitor-enter v1

    .line 1243
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1244
    monitor-exit v1

    .line 1245
    return-void

    .line 1244
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private blacklist initEmbeddedHierarchyForAccessibility(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 4
    .param p1, "p"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 1979
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getAccessibilityEmbeddedConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    .line 1980
    .local v0, "connection":Landroid/view/accessibility/IAccessibilityEmbeddedConnection;
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v1, v0}, Landroid/view/RemoteAccessibilityController;->alreadyAssociated(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1981
    return-void

    .line 1983
    :cond_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    .line 1984
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAccessibilityViewId()I

    move-result v3

    .line 1983
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/RemoteAccessibilityController;->assosciateHierarchy(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;I)V

    .line 1986
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->updateEmbeddedAccessibilityMatrix(Z)V

    .line 1987
    return-void
.end method

.method private greylist-max-o isAboveParent()Z
    .locals 1

    .line 1617
    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist notifySurfaceDestroyed()V
    .locals 6

    .line 1990
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " surfaceDestroyed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    invoke-direct {p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 1997
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1998
    .local v4, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v5, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1997
    .end local v4    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2003
    :cond_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceViewSocExt:Landroid/view/ISurfaceViewSocExt;

    invoke-interface {v1, p0, v2}, Landroid/view/ISurfaceViewSocExt;->setSurfaceViewCreated(Landroid/view/SurfaceView;Z)V

    .line 2017
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2018
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->forceScopedDisconnect()V

    .line 2021
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1
    return-void
.end method

.method private greylist-max-o onDrawFinished()V
    .locals 2

    .line 1408
    iget-boolean v0, p0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " finishedDrawing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_0
    new-instance v0, Landroid/view/SurfaceView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda8;-><init>(Landroid/view/SurfaceView;)V

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1414
    return-void
.end method

.method private greylist-max-o performDrawFinished()V
    .locals 1

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 444
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 446
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 448
    :cond_0
    return-void
.end method

.method private blacklist performSurfaceTransaction(Landroid/view/ViewRootImpl;Landroid/content/res/CompatibilityInfo$Translator;ZZZLandroid/view/SurfaceControl$Transaction;)Z
    .locals 19
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;
    .param p2, "translator"    # Landroid/content/res/CompatibilityInfo$Translator;
    .param p3, "creating"    # Z
    .param p4, "sizeChanged"    # Z
    .param p5, "hintChanged"    # Z
    .param p6, "surfaceUpdateTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 878
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p6

    const/4 v11, 0x0

    .line 880
    .local v11, "realSizeChanged":Z
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 882
    :try_start_0
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mVisible:Z

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v0, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v13

    :goto_0
    iput-boolean v0, v8, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 884
    iget-boolean v0, v8, Landroid/view/SurfaceView;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, "SurfaceView"

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Cur surface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_1
    if-eqz p3, :cond_2

    .line 893
    invoke-direct {v8, v10}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    .line 894
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v0, :cond_2

    .line 895
    invoke-direct {v8, v10, v0}, Landroid/view/SurfaceView;->reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 898
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewRootImpl;->getSurfaceSequenceId()I

    move-result v0

    iput v0, v8, Landroid/view/SurfaceView;->mParentSurfaceSequenceId:I

    .line 900
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_3

    .line 901
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v10, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    .line 903
    :cond_3
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v10, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 908
    :goto_1
    invoke-direct {v8, v10}, Landroid/view/SurfaceView;->updateBackgroundVisibility(Landroid/view/SurfaceControl$Transaction;)V

    .line 909
    invoke-direct {v8, v10}, Landroid/view/SurfaceView;->updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 910
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-eqz v0, :cond_4

    .line 911
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getFixedAlpha()F

    move-result v0

    .line 912
    .local v0, "alpha":F
    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v10, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 913
    iput v0, v8, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    .line 916
    .end local v0    # "alpha":F
    :cond_4
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v8, Landroid/view/SurfaceView;->mCornerRadius:F

    invoke-virtual {v10, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 917
    if-nez p4, :cond_5

    if-eqz p5, :cond_6

    :cond_5
    if-nez p3, :cond_6

    .line 918
    invoke-direct {v8, v10}, Landroid/view/SurfaceView;->setBufferSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 920
    :cond_6
    if-nez p4, :cond_7

    if-nez p3, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_d

    .line 925
    :cond_7
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    const/4 v15, 0x4

    const/4 v7, 0x5

    const/16 v16, 0x2

    const/4 v6, 0x3

    if-eqz v0, :cond_9

    iget-object v0, v8, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_9

    .line 928
    iget-boolean v0, v8, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 929
    const-string v0, "%d setWindowCrop([%d %d %d %d]) in performSurfaceTransaction()"

    new-array v1, v7, [Ljava/lang/Object;

    .line 931
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    iget-object v2, v8, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    iget-object v2, v8, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v16

    iget-object v2, v8, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 932
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, v8, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v15

    .line 929
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_8
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, v8, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    .line 939
    :cond_9
    iget-boolean v0, v8, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 940
    const-string v0, "%d setWindowCrop(w=%d, h=%d) in performSurfaceTransaction()"

    new-array v1, v6, [Ljava/lang/Object;

    .line 942
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v16

    .line 940
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_a
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 949
    :goto_2
    iget-object v0, v8, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setDesintationFrame(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 952
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 955
    iget v0, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-direct {v8, v0, v1}, Landroid/view/SurfaceView;->replacePositionUpdateListener(II)V

    move/from16 v18, v6

    move v0, v7

    goto :goto_3

    .line 957
    :cond_b
    iget-object v3, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 960
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 961
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v2, v2

    div-float v17, v1, v2

    .line 957
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move/from16 v18, v6

    move v6, v0

    move v0, v7

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 963
    :goto_3
    iget-boolean v1, v8, Landroid/view/SurfaceView;->DEBUG_POSITION:Z

    if-eqz v1, :cond_d

    .line 964
    const-string v1, "%d performSurfaceTransaction %s position = [%d, %d, %d, %d] surfaceSize = %dx%d"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    .line 967
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    .line 968
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "RenderWorker"

    goto :goto_4

    :cond_c
    const-string v3, "UI Thread"

    :goto_4
    aput-object v3, v2, v12

    iget-object v3, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 969
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v16

    iget-object v3, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v18

    iget-object v3, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v15

    iget-object v3, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 970
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    iget v3, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x7

    iget v3, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 964
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_d
    invoke-direct {v8, v10}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 974
    invoke-virtual {v8, v13}, Landroid/view/SurfaceView;->updateEmbeddedAccessibilityMatrix(Z)V

    .line 975
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v13, v0, Landroid/graphics/Rect;->left:I

    .line 976
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v13, v0, Landroid/graphics/Rect;->top:I

    .line 977
    if-nez v9, :cond_e

    .line 978
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 979
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v1, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    .line 981
    :cond_e
    iget v0, v9, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 982
    .local v0, "appInvertedScale":F
    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 983
    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v2, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 985
    .end local v0    # "appInvertedScale":F
    :goto_5
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 986
    .local v0, "surfaceWidth":I
    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 987
    .local v1, "surfaceHeight":I
    iget v2, v8, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    if-ne v2, v0, :cond_10

    iget v2, v8, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    if-eq v2, v1, :cond_f

    goto :goto_6

    :cond_f
    move v12, v13

    :cond_10
    :goto_6
    move v11, v12

    .line 989
    iput v0, v8, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 990
    iput v1, v8, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 992
    .end local v0    # "surfaceWidth":I
    .end local v1    # "surfaceHeight":I
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 993
    nop

    .line 995
    return v11

    .line 992
    :catchall_0
    move-exception v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 993
    throw v0
.end method

.method private blacklist redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;
    .param p2, "callbacksCollected"    # Ljava/lang/Runnable;

    .line 1249
    new-instance v0, Lcom/android/internal/view/SurfaceCallbackHelper;

    invoke-direct {v0, p2}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    .line 1250
    .local v0, "sch":Lcom/android/internal/view/SurfaceCallbackHelper;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V

    .line 1251
    return-void
.end method

.method private blacklist releaseSurfaces(Z)V
    .locals 4
    .param p1, "releaseSurfacePackage"    # Z

    .line 821
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    .line 825
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    const-string v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseSurfaces, but mSurfaceLock is locked, holded by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 831
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->destroy()V

    .line 832
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 833
    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 834
    iput-object v2, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 837
    :cond_1
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 838
    .local v1, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_2

    .line 839
    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 840
    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 842
    :cond_2
    iget-object v3, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_3

    .line 843
    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 844
    iput-object v2, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 846
    :cond_3
    iget-object v3, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_4

    .line 847
    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 848
    iput-object v2, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    .line 851
    :cond_4
    if-eqz p1, :cond_5

    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v3, :cond_5

    .line 852
    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 853
    iput-object v2, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 856
    :cond_5
    invoke-direct {p0, v1}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 857
    .end local v1    # "transaction":Landroid/view/SurfaceControl$Transaction;
    monitor-exit v0

    .line 858
    return-void

    .line 857
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "p"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 1945
    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 1946
    .local v0, "sc":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1949
    :cond_0
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;->initEmbeddedHierarchyForAccessibility(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 1950
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1951
    return-void

    .line 1947
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist replacePositionUpdateListener(II)V
    .locals 2
    .param p1, "surfaceWidth"    # I
    .param p2, "surfaceHeight"    # I

    .line 868
    iget-object v0, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->removePositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 871
    :cond_0
    new-instance v0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;-><init>(Landroid/view/SurfaceView;II)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    .line 872
    iget-object v0, p0, Landroid/view/SurfaceView;->mRenderNode:Landroid/graphics/RenderNode;

    iget-object v1, p0, Landroid/view/SurfaceView;->mPositionListener:Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->addPositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V

    .line 873
    return-void
.end method

.method private greylist-max-o runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 1596
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1597
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1598
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1600
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1602
    :goto_0
    return-void
.end method

.method private blacklist setBufferSize(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 1315
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    const/16 v1, 0x4000

    if-gt v0, v1, :cond_1

    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    if-gt v0, v1, :cond_1

    .line 1322
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/view/SurfaceView;->mTransformHint:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1323
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_0

    .line 1324
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    iget v4, p0, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 1327
    :cond_0
    return-void

    .line 1316
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSurfaceWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSurfaceHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SurfaceView width and height must be smaller than 16384"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setWindowStopped(Z)V
    .locals 2
    .param p1, "stopped"    # Z

    .line 318
    iget-boolean v0, p0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWindowStopped,stopped:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",stopped:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 324
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 325
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 326
    return-void
.end method

.method private blacklist updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;
    .locals 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 814
    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    iget v1, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 815
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 816
    .local v0, "colorComponents":[F
    iget-object v1, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 817
    return-object p1
.end method

.method private blacklist updateBackgroundVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 793
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 794
    return-void

    .line 796
    :cond_0
    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-gez v1, :cond_1

    iget v1, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mDisableBackgroundLayer:Z

    if-nez v1, :cond_1

    .line 798
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 804
    :cond_1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplWrapper;->getExtImpl()Landroid/view/IViewRootImplExt;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    invoke-interface {v0, v1}, Landroid/view/IViewRootImplExt;->showSurfaceViewBackground(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 805
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 807
    :cond_2
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 811
    :goto_0
    return-void
.end method

.method private greylist-max-o updateOpaqueFlag()V
    .locals 1

    .line 785
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_0

    .line 788
    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 790
    :goto_0
    return-void
.end method

.method private blacklist updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1894
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1895
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_0

    .line 1897
    return-void

    .line 1899
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 1900
    .local v1, "viewRootControl":Landroid/view/SurfaceControl;
    iget-object v2, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1901
    iget-object v2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Landroid/view/SurfaceView;->mSubLayer:I

    invoke-virtual {p1, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 1902
    return-void
.end method

.method private greylist-max-o updateRequestedVisibility()V
    .locals 1

    .line 313
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 314
    return-void
.end method

.method private blacklist updateSurfaceAlpha()V
    .locals 5

    .line 419
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getAlpha()F

    move-result v0

    .line 423
    .local v0, "viewAlpha":F
    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-gez v1, :cond_1

    const/4 v1, 0x0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updateSurfaceAlpha: translucent color is not supported for a surface placed z-below."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SurfaceView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 429
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v1, :cond_2

    .line 430
    return-void

    .line 432
    :cond_2
    invoke-direct {p0}, Landroid/view/SurfaceView;->getFixedAlpha()F

    move-result v2

    .line 433
    .local v2, "alpha":F
    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_3

    .line 434
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 435
    .local v3, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 436
    invoke-virtual {v1, v3}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 437
    invoke-virtual {p0}, Landroid/view/SurfaceView;->damageInParent()V

    .line 438
    iput v2, p0, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    .line 440
    .end local v3    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :cond_3
    return-void

    .line 420
    .end local v0    # "viewAlpha":F
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v2    # "alpha":F
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 545
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 549
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->clearSurfaceViewPort(Landroid/graphics/Canvas;)V

    .line 552
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 553
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 533
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 537
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->clearSurfaceViewPort(Landroid/graphics/Canvas;)V

    .line 540
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 541
    return-void
.end method

.method public whitelist gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 11
    .param p1, "region"    # Landroid/graphics/Region;

    .line 506
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 510
    :cond_0
    const/4 v0, 0x1

    .line 511
    .local v0, "opaque":Z
    iget v1, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    .line 513
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    goto :goto_0

    .line 514
    :cond_1
    if-eqz p1, :cond_2

    .line 515
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    .line 516
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    .line 517
    .local v2, "h":I
    if-lez v1, :cond_2

    if-lez v2, :cond_2

    .line 518
    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v3}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 520
    iget-object v3, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x0

    aget v4, v3, v4

    .line 521
    .local v4, "l":I
    const/4 v5, 0x1

    aget v3, v3, v5

    .line 522
    .local v3, "t":I
    add-int v8, v4, v1

    add-int v9, v3, v2

    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v5, p1

    move v6, v4

    move v7, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 525
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v3    # "t":I
    .end local v4    # "l":I
    :cond_2
    :goto_0
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v1}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 526
    const/4 v0, 0x0

    .line 528
    :cond_3
    return v0

    .line 507
    .end local v0    # "opaque":Z
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method public blacklist getCornerRadius()F
    .locals 1

    .line 645
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    return v0
.end method

.method public whitelist getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 309
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public whitelist getHostToken()Landroid/os/IBinder;
    .locals 2

    .line 1853
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1854
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_0

    .line 1855
    const/4 v1, 0x0

    return-object v1

    .line 1857
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getInputToken()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getImportantForAccessibility()I
    .locals 2

    .line 1967
    invoke-super {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    .line 1971
    .local v0, "mode":I
    iget-object v1, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 1973
    :cond_1
    return v0

    .line 1975
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 1843
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getSurfaceRenderPosition()Landroid/graphics/Rect;
    .locals 1

    .line 1466
    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method public greylist isFixedSize()Z
    .locals 2

    .line 1613
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_0

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

.method public blacklist isZOrderedOnTop()Z
    .locals 1

    .line 694
    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$handleSyncBufferCallback$1$android-view-SurfaceView(Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .locals 2
    .param p1, "syncBufferTransactionCallback"    # Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .param p2, "syncBufferCallback"    # Landroid/window/SurfaceSyncer$SyncBufferCallback;

    .line 1219
    const/4 v0, 0x0

    .line 1220
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v1, :cond_0

    .line 1221
    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->stopContinuousSyncTransaction()V

    .line 1222
    invoke-virtual {p1}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;->waitForTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 1225
    :cond_0
    invoke-interface {p2, v0}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    .line 1226
    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    .line 1227
    return-void
.end method

.method synthetic blacklist lambda$handleSyncBufferCallback$2$android-view-SurfaceView([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .locals 1
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;
    .param p2, "syncBufferTransactionCallback"    # Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .param p3, "syncBufferCallback"    # Landroid/window/SurfaceSyncer$SyncBufferCallback;

    .line 1218
    new-instance v0, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3}, Landroid/view/SurfaceView$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceView;Landroid/view/SurfaceView$SyncBufferTransactionCallback;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;->redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$handleSyncNoBuffer$3$android-view-SurfaceView(Landroid/window/SurfaceSyncer$SyncBufferCallback;I)V
    .locals 3
    .param p1, "syncBufferCallback"    # Landroid/window/SurfaceSyncer$SyncBufferCallback;
    .param p2, "syncId"    # I

    .line 1235
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    .line 1236
    iget-object v0, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1237
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1238
    monitor-exit v0

    .line 1239
    return-void

    .line 1238
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$handleSyncNoBuffer$4$android-view-SurfaceView([Landroid/view/SurfaceHolder$Callback;ILandroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .locals 1
    .param p1, "callbacks"    # [Landroid/view/SurfaceHolder$Callback;
    .param p2, "syncId"    # I
    .param p3, "syncBufferCallback"    # Landroid/window/SurfaceSyncer$SyncBufferCallback;

    .line 1233
    new-instance v0, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p3, p2}, Landroid/view/SurfaceView$$ExternalSyntheticLambda3;-><init>(Landroid/view/SurfaceView;Landroid/window/SurfaceSyncer$SyncBufferCallback;I)V

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;->redrawNeededAsync([Landroid/view/SurfaceHolder$Callback;Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$new$0$android-view-SurfaceView()Z
    .locals 2

    .line 189
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 190
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 191
    return v1
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 3

    .line 330
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onAttachedToWindow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 339
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 340
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 342
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 343
    iget-object v0, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 344
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v0, :cond_1

    .line 345
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 346
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 347
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 348
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 350
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 4

    .line 452
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 458
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 462
    :cond_0
    iget-boolean v1, p0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 463
    const-string v1, "SurfaceView"

    const-string/jumbo v2, "onDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 468
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v2, :cond_2

    .line 469
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 470
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 471
    iget-object v3, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 472
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 475
    .end local v2    # "observer":Landroid/view/ViewTreeObserver;
    :cond_2
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 477
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 478
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 480
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 481
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 482
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2043
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2044
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 2045
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_1

    .line 2049
    :cond_0
    :try_start_0
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 2050
    invoke-virtual {v3}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getInputToken()Landroid/os/IBinder;

    move-result-object v3

    .line 2049
    invoke-interface {v1, v2, v3, p1}, Landroid/view/IWindowSession;->grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2054
    goto :goto_0

    .line 2051
    :catch_0
    move-exception v1

    .line 2052
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Exception requesting focus on embedded window"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SurfaceView"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2055
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 2046
    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1956
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1957
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1958
    return-void

    .line 1962
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->getLeashToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/os/IBinder;)V

    .line 1963
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 486
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 487
    invoke-static {v0, p1, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v0

    goto :goto_0

    .line 488
    :cond_0
    invoke-static {v1, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    :goto_0
    nop

    .line 489
    .local v0, "width":I
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v2, :cond_1

    .line 490
    invoke-static {v2, p2, v1}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v1

    goto :goto_1

    .line 491
    :cond_1
    invoke-static {v1, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    :goto_1
    nop

    .line 492
    .local v1, "height":I
    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 493
    return-void
.end method

.method protected blacklist onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V
    .locals 8
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "surface"    # Landroid/view/SurfaceControl;
    .param p3, "positionLeft"    # I
    .param p4, "positionTop"    # I
    .param p5, "postScaleX"    # F
    .param p6, "postScaleY"    # F

    .line 1434
    iget-boolean v0, p0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onSetSurfacePositionAndScale() , positionLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", positionTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", postScaleX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", postScaleY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    :cond_0
    int-to-float v0, p3

    int-to-float v1, p4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1441
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1443
    return-void
.end method

.method protected whitelist onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 354
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 355
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 356
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 357
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 358
    return-void
.end method

.method public blacklist requestUpdateSurfacePositionAndScale()V
    .locals 8

    .line 1447
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 1448
    return-void

    .line 1450
    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1451
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1454
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float v6, v1, v2

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1455
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v2, v2

    div-float v7, v1, v2

    .line 1451
    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 1456
    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1457
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 1458
    return-void
.end method

.method public whitelist setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .line 404
    iget-boolean v0, p0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " setAlpha: mUseAlpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 409
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateSurfaceAlpha()V

    .line 410
    return-void
.end method

.method public whitelist setChildSurfacePackage(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 4
    .param p1, "p"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 1928
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1929
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1930
    .local v0, "lastSc":Landroid/view/SurfaceControl;
    :goto_0
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1931
    .local v2, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v3, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_2

    .line 1932
    if-eqz v0, :cond_1

    .line 1933
    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1934
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 1936
    :cond_1
    invoke-direct {p0, v2, p1}, Landroid/view/SurfaceView;->reparentSurfacePackage(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 1937
    invoke-direct {p0, v2}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1939
    :cond_2
    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 1940
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 1941
    return-void
.end method

.method public whitelist setClipBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "clipBounds"    # Landroid/graphics/Rect;

    .line 569
    invoke-super {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 571
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 577
    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 578
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 581
    :cond_1
    iget-object v0, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/SurfaceView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 584
    :cond_2
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 588
    :goto_0
    iget-boolean v0, p0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 589
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 591
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 592
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 593
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 589
    const-string v1, "%d setWindowCrop([%d %d %d %d]) in setClipBounds([%d %d %d %d])"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_3
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 597
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 598
    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 599
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 600
    return-void

    .line 572
    .end local v0    # "transaction":Landroid/view/SurfaceControl$Transaction;
    :cond_4
    :goto_1
    return-void
.end method

.method public blacklist setCornerRadius(F)V
    .locals 2
    .param p1, "cornerRadius"    # F

    .line 629
    iput p1, p0, Landroid/view/SurfaceView;->mCornerRadius:F

    .line 630
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 631
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    .line 632
    sget-object v1, Landroid/graphics/BlendMode;->CLEAR:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 633
    iget-object v0, p0, Landroid/view/SurfaceView;->mRoundedViewportPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 635
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 636
    return-void
.end method

.method public blacklist setEnableSurfaceClipping(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 563
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mClipSurfaceToBounds:Z

    .line 564
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 565
    return-void
.end method

.method protected greylist setFrame(IIII)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 499
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 500
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 501
    return v0
.end method

.method public blacklist setProtected(Z)V
    .locals 1
    .param p1, "isProtected"    # Z

    .line 776
    if-eqz p1, :cond_0

    .line 777
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_0

    .line 779
    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 781
    :goto_0
    return-void
.end method

.method public greylist-max-o setResizeBackgroundColor(I)V
    .locals 1
    .param p1, "bgColor"    # I

    .line 1628
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1629
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0, v0, p1}, Landroid/view/SurfaceView;->setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V

    .line 1630
    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->applyTransactionOnVriDraw(Landroid/view/SurfaceControl$Transaction;)V

    .line 1631
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 1632
    return-void
.end method

.method public blacklist setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "bgColor"    # I

    .line 1640
    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 1641
    return-void

    .line 1643
    :cond_0
    iput p2, p0, Landroid/view/SurfaceView;->mBackgroundColor:I

    .line 1644
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateBackgroundColor(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 1645
    return-void
.end method

.method public whitelist setSecure(Z)V
    .locals 1
    .param p1, "isSecure"    # Z

    .line 755
    if-eqz p1, :cond_0

    .line 756
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    goto :goto_0

    .line 758
    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 760
    :goto_0
    return-void
.end method

.method public blacklist setUseAlpha()V
    .locals 1

    .line 388
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-nez v0, :cond_0

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mUseAlpha:Z

    .line 390
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateSurfaceAlpha()V

    .line 392
    :cond_0
    return-void
.end method

.method public whitelist setVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .line 362
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 363
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 364
    iget-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 365
    .local v0, "newRequestedVisible":Z
    :goto_1
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_2

    .line 372
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 374
    :cond_2
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 375
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 376
    return-void
.end method

.method public whitelist setZOrderMediaOverlay(Z)V
    .locals 1
    .param p1, "isMediaOverlay"    # Z

    .line 660
    if-eqz p1, :cond_0

    .line 661
    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 662
    return-void
.end method

.method public whitelist setZOrderOnTop(Z)V
    .locals 2
    .param p1, "onTop"    # Z

    .line 683
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 685
    .local v0, "allowDynamicChange":Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceView;->setZOrderedOnTop(ZZ)Z

    .line 686
    return-void
.end method

.method public blacklist setZOrderedOnTop(ZZ)Z
    .locals 4
    .param p1, "onTop"    # Z
    .param p2, "allowDynamicChange"    # Z

    .line 715
    if-eqz p1, :cond_0

    .line 716
    const/4 v0, 0x1

    .local v0, "subLayer":I
    goto :goto_0

    .line 718
    .end local v0    # "subLayer":I
    :cond_0
    const/4 v0, -0x2

    .line 720
    .restart local v0    # "subLayer":I
    :goto_0
    iget v1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    .line 721
    return v2

    .line 723
    :cond_1
    iput v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 725
    if-nez p2, :cond_2

    .line 726
    return v2

    .line 728
    :cond_2
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 729
    return v2

    .line 731
    :cond_3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 732
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v1, :cond_4

    .line 733
    return v2

    .line 735
    :cond_4
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 736
    .local v3, "transaction":Landroid/view/SurfaceControl$Transaction;
    invoke-direct {p0, v3}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    .line 737
    invoke-virtual {v1, v3}, Landroid/view/ViewRootImpl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 738
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 739
    return v2
.end method

.method public blacklist surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1867
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->setWindowStopped(Z)V

    .line 1868
    return-void
.end method

.method public blacklist surfaceDestroyed()V
    .locals 1

    .line 1877
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->setWindowStopped(Z)V

    .line 1878
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->disassosciateHierarchy()V

    .line 1879
    return-void
.end method

.method public blacklist surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 1888
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 1889
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->updateRelativeZ(Landroid/view/SurfaceControl$Transaction;)V

    .line 1891
    :cond_0
    return-void
.end method

.method public blacklist surfaceSyncStarted()V
    .locals 5

    .line 1258
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1259
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_1

    .line 1260
    iget-object v1, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    monitor-enter v1

    .line 1261
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mSyncIds:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1262
    .local v3, "syncId":I
    iget-object v4, p0, Landroid/view/SurfaceView;->mSurfaceSyncer:Landroid/window/SurfaceSyncer;

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewRootImpl;->mergeSync(ILandroid/window/SurfaceSyncer;)V

    .line 1263
    .end local v3    # "syncId":I
    goto :goto_0

    .line 1264
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1266
    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist syncNextFrame(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 2071
    .local p1, "t":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl$Transaction;>;"
    iget-object v0, p0, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0, p1}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(Ljava/util/function/Consumer;)V

    .line 2072
    return-void
.end method

.method blacklist updateEmbeddedAccessibilityMatrix(Z)V
    .locals 4
    .param p1, "force"    # Z

    .line 2024
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController;->connected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2025
    return-void

    .line 2027
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 2032
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v1, v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2033
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2034
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 2035
    iget-object v0, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 2036
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 2035
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2037
    iget-object v0, p0, Landroid/view/SurfaceView;->mRemoteAccessibilityController:Landroid/view/RemoteAccessibilityController;

    iget-object v1, p0, Landroid/view/SurfaceView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p1}, Landroid/view/RemoteAccessibilityController;->setWindowMatrix(Landroid/graphics/Matrix;Z)V

    .line 2038
    return-void
.end method

.method protected greylist-max-o updateSurface()V
    .locals 34

    .line 1000
    move-object/from16 v8, p0

    const-string v9, " h="

    const-string v10, " w="

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mHaveFrame:Z

    const-string v11, "SurfaceView"

    if-nez v0, :cond_1

    .line 1001
    iget-boolean v0, v8, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " updateSurface: has no frame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_0
    return-void

    .line 1006
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    .line 1008
    .local v12, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v12, :cond_2

    .line 1009
    return-void

    .line 1012
    :cond_2
    iget-object v0, v12, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    const/4 v13, 0x0

    if-eqz v0, :cond_33

    iget-object v0, v12, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_23

    .line 1018
    :cond_3
    iget-object v14, v12, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 1019
    .local v14, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    if-eqz v14, :cond_4

    .line 1020
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v14}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 1023
    :cond_4
    iget v0, v8, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 1024
    .local v0, "myWidth":I
    if-gtz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    :cond_5
    move v15, v0

    .line 1025
    .end local v0    # "myWidth":I
    .local v15, "myWidth":I
    iget v0, v8, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 1026
    .local v0, "myHeight":I
    if-gtz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    :cond_6
    move v7, v0

    .line 1028
    .end local v0    # "myHeight":I
    .local v7, "myHeight":I
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getFixedAlpha()F

    move-result v16

    .line 1029
    .local v16, "alpha":F
    iget v0, v8, Landroid/view/SurfaceView;->mFormat:I

    iget v1, v8, Landroid/view/SurfaceView;->mRequestedFormat:I

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    move v0, v13

    :goto_0
    move v5, v0

    .line 1030
    .local v5, "formatChanged":Z
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mVisible:Z

    iget-boolean v1, v8, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    move v0, v13

    :goto_1
    move v4, v0

    .line 1031
    .local v4, "visibleChanged":Z
    iget v0, v8, Landroid/view/SurfaceView;->mSurfaceAlpha:F

    cmpl-float v0, v0, v16

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    move v0, v13

    :goto_2
    move v3, v0

    .line 1032
    .local v3, "alphaChanged":Z
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_a

    if-nez v5, :cond_a

    if-eqz v4, :cond_b

    :cond_a
    if-eqz v1, :cond_b

    const/4 v0, 0x1

    goto :goto_3

    :cond_b
    move v0, v13

    :goto_3
    move v2, v0

    .line 1034
    .local v2, "creating":Z
    iget v0, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    if-ne v0, v15, :cond_d

    iget v0, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    if-eq v0, v7, :cond_c

    goto :goto_4

    :cond_c
    move v0, v13

    goto :goto_5

    :cond_d
    :goto_4
    const/4 v0, 0x1

    :goto_5
    move v1, v0

    .line 1035
    .local v1, "sizeChanged":Z
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iget-boolean v6, v8, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    if-eq v0, v6, :cond_e

    const/4 v0, 0x1

    goto :goto_6

    :cond_e
    move v0, v13

    :goto_6
    move/from16 v18, v0

    .line 1036
    .local v18, "windowVisibleChanged":Z
    iget-object v0, v8, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v8, v0}, Landroid/view/SurfaceView;->getLocationInSurface([I)V

    .line 1037
    iget v0, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iget-object v6, v8, Landroid/view/SurfaceView;->mLocation:[I

    move-object/from16 v19, v9

    aget v9, v6, v13

    if-ne v0, v9, :cond_10

    iget v0, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    const/4 v9, 0x1

    aget v6, v6, v9

    if-eq v0, v6, :cond_f

    goto :goto_7

    :cond_f
    move v0, v13

    goto :goto_8

    :cond_10
    :goto_7
    const/4 v0, 0x1

    :goto_8
    move v9, v0

    .line 1039
    .local v9, "positionChanged":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iget-object v6, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ne v0, v6, :cond_12

    .line 1040
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    iget-object v6, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-eq v0, v6, :cond_11

    goto :goto_9

    :cond_11
    move v0, v13

    goto :goto_a

    :cond_12
    :goto_9
    const/4 v0, 0x1

    :goto_a
    move/from16 v20, v0

    .line 1041
    .local v20, "layoutSizeChanged":Z
    invoke-virtual {v12}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iget v6, v8, Landroid/view/SurfaceView;->mTransformHint:I

    if-eq v0, v6, :cond_13

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_b

    :cond_13
    move v0, v13

    :goto_b
    move v6, v0

    .line 1044
    .local v6, "hintChanged":Z
    if-nez v2, :cond_16

    if-nez v5, :cond_16

    if-nez v1, :cond_16

    if-nez v4, :cond_16

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mUseAlpha:Z

    if-eqz v0, :cond_14

    if-nez v3, :cond_16

    :cond_14
    if-nez v18, :cond_16

    if-nez v9, :cond_16

    if-nez v20, :cond_16

    if-eqz v6, :cond_15

    goto :goto_c

    :cond_15
    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v30, v5

    move/from16 v17, v6

    move/from16 v29, v9

    move-object/from16 v31, v14

    move v4, v1

    move v3, v2

    goto/16 :goto_22

    .line 1047
    :cond_16
    :goto_c
    iget-object v0, v8, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {v8, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 1049
    iget-boolean v0, v8, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " Changes: creating="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " formatChanged="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " sizeChanged="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " visibleChanged="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " alphaChanged="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " hintChanged="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " positionChanged="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " mUseAlpha="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v13, v8, Landroid/view/SurfaceView;->mUseAlpha:Z

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " mRequestedVisible="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v13, v8, Landroid/view/SurfaceView;->mRequestedVisible:Z

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " leftChanged="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v13, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    move/from16 v22, v3

    .end local v3    # "alphaChanged":Z
    .local v22, "alphaChanged":Z
    iget-object v3, v8, Landroid/view/SurfaceView;->mLocation:[I

    const/16 v21, 0x0

    aget v3, v3, v21

    if-eq v13, v3, :cond_17

    const/4 v3, 0x1

    goto :goto_d

    :cond_17
    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " topChanged="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iget-object v13, v8, Landroid/view/SurfaceView;->mLocation:[I

    const/16 v17, 0x1

    aget v13, v13, v17

    if-eq v3, v13, :cond_18

    const/4 v3, 0x1

    goto :goto_e

    :cond_18
    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .end local v22    # "alphaChanged":Z
    .restart local v3    # "alphaChanged":Z
    :cond_19
    move/from16 v22, v3

    .line 1074
    .end local v3    # "alphaChanged":Z
    .restart local v22    # "alphaChanged":Z
    :goto_f
    :try_start_0
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mRequestedVisible:Z

    iput-boolean v0, v8, Landroid/view/SurfaceView;->mVisible:Z

    .line 1075
    iget-object v0, v8, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x0

    aget v13, v0, v3

    iput v13, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 1076
    const/4 v13, 0x1

    aget v0, v0, v13

    iput v0, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 1077
    iput v15, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 1078
    iput v7, v8, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 1079
    iget v0, v8, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput v0, v8, Landroid/view/SurfaceView;->mFormat:I

    .line 1080
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mWindowVisibility:Z

    iput-boolean v0, v8, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 1081
    invoke-virtual {v12}, Landroid/view/ViewRootImpl;->getBufferTransformHint()I

    move-result v0

    iput v0, v8, Landroid/view/SurfaceView;->mTransformHint:I

    .line 1083
    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1084
    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1085
    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v8, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v17

    add-int v3, v3, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 1086
    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v3, v8, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v17

    add-int v3, v3, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 1087
    if-eqz v14, :cond_1a

    .line 1088
    :try_start_1
    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_10

    .line 1192
    :catch_0
    move-exception v0

    move v3, v2

    move/from16 v23, v4

    move/from16 v30, v5

    move/from16 v17, v6

    move/from16 v29, v9

    move-object/from16 v31, v14

    move-object/from16 v6, v19

    move v4, v1

    goto/16 :goto_20

    .line 1091
    :cond_1a
    :goto_10
    :try_start_2
    iget-object v0, v12, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object v3, v0

    .line 1092
    .local v3, "surfaceInsets":Landroid/graphics/Rect;
    iget-object v0, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v13, v3, Landroid/graphics/Rect;->left:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move/from16 v23, v4

    .end local v4    # "visibleChanged":Z
    .local v23, "visibleChanged":Z
    :try_start_3
    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v13, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1095
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-object v13, v0

    .line 1096
    .local v13, "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    if-eqz v2, :cond_1c

    .line 1097
    :try_start_4
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->updateOpaqueFlag()V

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SurfaceView["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1100
    .local v0, "name":Ljava/lang/String;
    iget v4, v8, Landroid/view/SurfaceView;->mSurfaceWidth:I

    move-object/from16 v24, v3

    .end local v3    # "surfaceInsets":Landroid/graphics/Rect;
    .local v24, "surfaceInsets":Landroid/graphics/Rect;
    const/16 v3, 0x12c

    if-ge v4, v3, :cond_1b

    const-string v3, "com.oplus.camera"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1101
    const-string v3, "SurfaceView[OplusCameraZoomView]"

    move-object v0, v3

    .line 1102
    iget-boolean v3, v8, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rewritten name: SurfaceView["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1103
    invoke-virtual {v12}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1102
    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_1b
    invoke-direct {v8, v12, v0, v13}, Landroid/view/SurfaceView;->createBlastSurfaceControls(Landroid/view/ViewRootImpl;Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v0    # "name":Ljava/lang/String;
    goto :goto_11

    .line 1192
    .end local v13    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v24    # "surfaceInsets":Landroid/graphics/Rect;
    :catch_1
    move-exception v0

    move v4, v1

    move v3, v2

    move/from16 v30, v5

    move/from16 v17, v6

    move/from16 v29, v9

    move-object/from16 v31, v14

    move-object/from16 v6, v19

    goto/16 :goto_20

    .line 1107
    .restart local v3    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v13    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    :cond_1c
    move-object/from16 v24, v3

    .end local v3    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v24    # "surfaceInsets":Landroid/graphics/Rect;
    :try_start_5
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    if-nez v0, :cond_1d

    .line 1108
    return-void

    .line 1107
    :cond_1d
    :goto_11
    nop

    .line 1111
    if-nez v1, :cond_1f

    if-nez v2, :cond_1f

    if-nez v6, :cond_1f

    :try_start_6
    iget-boolean v0, v8, Landroid/view/SurfaceView;->mVisible:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mDrawFinished:Z

    if-nez v0, :cond_1e

    goto :goto_12

    :cond_1e
    const/4 v0, 0x0

    goto :goto_13

    :cond_1f
    :goto_12
    const/4 v0, 0x1

    :goto_13
    move/from16 v25, v0

    .line 1113
    .local v25, "redrawNeeded":Z
    if-eqz v25, :cond_20

    .line 1114
    invoke-virtual {v12}, Landroid/view/ViewRootImpl;->wasRelayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v12}, Landroid/view/ViewRootImpl;->isInLocalSync()Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_14

    :cond_20
    const/4 v0, 0x0

    :goto_14
    move/from16 v26, v0

    .line 1115
    .local v26, "shouldSyncBuffer":Z
    const/4 v0, 0x0

    .line 1116
    .local v0, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    if-eqz v26, :cond_21

    .line 1117
    :try_start_7
    new-instance v3, Landroid/view/SurfaceView$SyncBufferTransactionCallback;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/SurfaceView$SyncBufferTransactionCallback;-><init>(Landroid/view/SurfaceView$SyncBufferTransactionCallback-IA;)V

    move-object v0, v3

    .line 1118
    iget-object v3, v8, Landroid/view/SurfaceView;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 1120
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/SurfaceView$$ExternalSyntheticLambda7;

    invoke-direct {v4, v0}, Landroid/view/SurfaceView$$ExternalSyntheticLambda7;-><init>(Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1118
    move/from16 v27, v1

    const/4 v1, 0x0

    .end local v1    # "sizeChanged":Z
    .local v27, "sizeChanged":Z
    :try_start_8
    invoke-virtual {v3, v1, v4}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(ZLjava/util/function/Consumer;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-object v4, v0

    goto :goto_15

    .line 1192
    .end local v0    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v13    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v24    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v25    # "redrawNeeded":Z
    .end local v26    # "shouldSyncBuffer":Z
    :catch_2
    move-exception v0

    move v3, v2

    move/from16 v30, v5

    move/from16 v17, v6

    move/from16 v29, v9

    move-object/from16 v31, v14

    move-object/from16 v6, v19

    move/from16 v4, v27

    goto/16 :goto_20

    .end local v27    # "sizeChanged":Z
    .restart local v1    # "sizeChanged":Z
    :catch_3
    move-exception v0

    move v4, v1

    move v3, v2

    move/from16 v30, v5

    move/from16 v17, v6

    move/from16 v29, v9

    move-object/from16 v31, v14

    move-object/from16 v6, v19

    .end local v1    # "sizeChanged":Z
    .restart local v27    # "sizeChanged":Z
    goto/16 :goto_20

    .line 1116
    .end local v27    # "sizeChanged":Z
    .restart local v0    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v1    # "sizeChanged":Z
    .restart local v13    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .restart local v24    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v25    # "redrawNeeded":Z
    .restart local v26    # "shouldSyncBuffer":Z
    :cond_21
    move/from16 v27, v1

    .end local v1    # "sizeChanged":Z
    .restart local v27    # "sizeChanged":Z
    move-object v4, v0

    .line 1123
    .end local v0    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .local v4, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    :goto_15
    move/from16 v3, v27

    .end local v27    # "sizeChanged":Z
    .local v3, "sizeChanged":Z
    move-object/from16 v1, p0

    move/from16 v27, v2

    .end local v2    # "creating":Z
    .local v27, "creating":Z
    move-object v2, v12

    move-object/from16 v28, v24

    move/from16 v24, v3

    .end local v3    # "sizeChanged":Z
    .local v24, "sizeChanged":Z
    .local v28, "surfaceInsets":Landroid/graphics/Rect;
    move-object v3, v14

    move/from16 v29, v9

    move-object v9, v4

    .end local v4    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .local v9, "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .local v29, "positionChanged":Z
    move/from16 v4, v27

    move/from16 v30, v5

    .end local v5    # "formatChanged":Z
    .local v30, "formatChanged":Z
    move/from16 v5, v24

    move/from16 v17, v6

    move-object/from16 v31, v14

    const/4 v14, 0x1

    .end local v6    # "hintChanged":Z
    .end local v14    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v17, "hintChanged":Z
    .local v31, "translator":Landroid/content/res/CompatibilityInfo$Translator;
    move/from16 v32, v7

    .end local v7    # "myHeight":I
    .local v32, "myHeight":I
    move-object v7, v13

    :try_start_9
    invoke-direct/range {v1 .. v7}, Landroid/view/SurfaceView;->performSurfaceTransaction(Landroid/view/ViewRootImpl;Landroid/content/res/CompatibilityInfo$Translator;ZZZLandroid/view/SurfaceControl$Transaction;)Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    move v1, v0

    .line 1127
    .local v1, "realSizeChanged":Z
    const/4 v0, 0x0

    .line 1129
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move/from16 v2, v27

    .line 1130
    .local v2, "surfaceChanged":Z
    :try_start_a
    iget-boolean v3, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v3, :cond_23

    if-nez v2, :cond_22

    :try_start_b
    iget-boolean v3, v8, Landroid/view/SurfaceView;->mVisible:Z

    if-nez v3, :cond_23

    if-eqz v23, :cond_23

    .line 1131
    :cond_22
    const/4 v3, 0x0

    iput-boolean v3, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 1132
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->notifySurfaceDestroyed()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_16

    .line 1187
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v2    # "surfaceChanged":Z
    :catchall_0
    move-exception v0

    move-object/from16 v6, v19

    move/from16 v4, v24

    move/from16 v3, v27

    move/from16 v7, v32

    move/from16 v32, v1

    goto/16 :goto_1f

    .line 1135
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v2    # "surfaceChanged":Z
    :cond_23
    :goto_16
    move/from16 v4, v24

    move/from16 v3, v27

    .end local v24    # "sizeChanged":Z
    .end local v27    # "creating":Z
    .local v3, "creating":Z
    .local v4, "sizeChanged":Z
    :try_start_c
    invoke-direct {v8, v3, v4}, Landroid/view/SurfaceView;->copySurface(ZZ)V

    .line 1137
    iget-boolean v5, v8, Landroid/view/SurfaceView;->mVisible:Z

    if-eqz v5, :cond_2e

    iget-object v5, v8, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1138
    iget-boolean v5, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-nez v5, :cond_26

    if-nez v2, :cond_24

    if-eqz v23, :cond_26

    .line 1139
    :cond_24
    :try_start_d
    iput-boolean v14, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 1140
    iput-boolean v14, v8, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " visibleChanged -- surfaceCreated "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v5

    move-object v0, v5

    .line 1147
    array-length v5, v0

    const/4 v6, 0x0

    :goto_17
    if-ge v6, v5, :cond_25

    aget-object v7, v0, v6

    .line 1148
    .local v7, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v14, v8, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v7, v14}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1147
    .end local v7    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v6, v6, 0x1

    const/4 v14, 0x1

    goto :goto_17

    .line 1153
    :cond_25
    iget-object v5, v8, Landroid/view/SurfaceView;->mSurfaceViewSocExt:Landroid/view/ISurfaceViewSocExt;

    const/4 v6, 0x1

    invoke-interface {v5, v8, v6}, Landroid/view/ISurfaceViewSocExt;->setSurfaceViewCreated(Landroid/view/SurfaceView;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_18

    .line 1187
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v2    # "surfaceChanged":Z
    :catchall_1
    move-exception v0

    move-object/from16 v6, v19

    move/from16 v7, v32

    move/from16 v32, v1

    goto/16 :goto_1f

    .line 1156
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v2    # "surfaceChanged":Z
    :cond_26
    :goto_18
    if-nez v3, :cond_28

    if-nez v30, :cond_28

    if-nez v4, :cond_28

    if-nez v17, :cond_28

    if-nez v23, :cond_28

    if-eqz v1, :cond_27

    goto :goto_19

    :cond_27
    move/from16 v33, v2

    move-object/from16 v6, v19

    move/from16 v7, v32

    move/from16 v32, v1

    goto/16 :goto_1c

    .line 1160
    :cond_28
    :goto_19
    :try_start_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " surfaceChanged -- format="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v8, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move-object/from16 v6, v19

    :try_start_f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    move/from16 v7, v32

    .end local v32    # "myHeight":I
    .local v7, "myHeight":I
    :try_start_10
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1164
    if-nez v0, :cond_29

    .line 1165
    :try_start_11
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move-object v0, v5

    goto :goto_1a

    .line 1187
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v2    # "surfaceChanged":Z
    :catchall_2
    move-exception v0

    move/from16 v32, v1

    goto/16 :goto_1f

    .line 1167
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v2    # "surfaceChanged":Z
    :cond_29
    :goto_1a
    :try_start_12
    array-length v5, v0

    const/4 v14, 0x0

    :goto_1b
    if-ge v14, v5, :cond_2a

    aget-object v19, v0, v14

    move-object/from16 v27, v19

    .line 1168
    .local v27, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v19, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v19, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move/from16 v32, v1

    .end local v1    # "realSizeChanged":Z
    .local v32, "realSizeChanged":Z
    :try_start_13
    iget v1, v8, Landroid/view/SurfaceView;->mFormat:I

    move/from16 v33, v2

    move-object/from16 v2, v27

    .end local v27    # "c":Landroid/view/SurfaceHolder$Callback;
    .local v2, "c":Landroid/view/SurfaceHolder$Callback;
    .local v33, "surfaceChanged":Z
    invoke-interface {v2, v0, v1, v15, v7}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1167
    .end local v2    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v32

    move/from16 v2, v33

    goto :goto_1b

    .end local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v32    # "realSizeChanged":Z
    .end local v33    # "surfaceChanged":Z
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v1    # "realSizeChanged":Z
    .local v2, "surfaceChanged":Z
    :cond_2a
    move-object/from16 v19, v0

    move/from16 v32, v1

    move/from16 v33, v2

    .line 1171
    .end local v1    # "realSizeChanged":Z
    .end local v2    # "surfaceChanged":Z
    .restart local v32    # "realSizeChanged":Z
    .restart local v33    # "surfaceChanged":Z
    :goto_1c
    if-eqz v25, :cond_2f

    .line 1172
    iget-boolean v1, v8, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v1, :cond_2b

    .line 1173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " surfaceRedrawNeeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_2b
    if-nez v0, :cond_2c

    .line 1176
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v1

    move-object v0, v1

    .line 1179
    :cond_2c
    if-eqz v26, :cond_2d

    .line 1180
    invoke-direct {v8, v0, v9}, Landroid/view/SurfaceView;->handleSyncBufferCallback([Landroid/view/SurfaceHolder$Callback;Landroid/view/SurfaceView$SyncBufferTransactionCallback;)V

    goto :goto_1d

    .line 1182
    :cond_2d
    invoke-direct {v8, v0}, Landroid/view/SurfaceView;->handleSyncNoBuffer([Landroid/view/SurfaceHolder$Callback;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_1d

    .line 1187
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v33    # "surfaceChanged":Z
    :catchall_3
    move-exception v0

    goto :goto_1f

    .end local v32    # "realSizeChanged":Z
    .restart local v1    # "realSizeChanged":Z
    :catchall_4
    move-exception v0

    move/from16 v32, v1

    .end local v1    # "realSizeChanged":Z
    .restart local v32    # "realSizeChanged":Z
    goto :goto_1f

    .end local v7    # "myHeight":I
    .restart local v1    # "realSizeChanged":Z
    .local v32, "myHeight":I
    :catchall_5
    move-exception v0

    goto :goto_1e

    .line 1137
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v2    # "surfaceChanged":Z
    :cond_2e
    move/from16 v33, v2

    move-object/from16 v6, v19

    move/from16 v7, v32

    move/from16 v32, v1

    .line 1187
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v1    # "realSizeChanged":Z
    .end local v2    # "surfaceChanged":Z
    .restart local v7    # "myHeight":I
    .local v32, "realSizeChanged":Z
    :cond_2f
    :goto_1d
    const/4 v1, 0x0

    :try_start_14
    iput-boolean v1, v8, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1188
    iget-object v0, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_30

    iget-boolean v0, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v0, :cond_30

    .line 1189
    const/4 v1, 0x0

    invoke-direct {v8, v1}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 1194
    .end local v9    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v13    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v25    # "redrawNeeded":Z
    .end local v26    # "shouldSyncBuffer":Z
    .end local v28    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v32    # "realSizeChanged":Z
    :cond_30
    goto :goto_21

    .line 1187
    .end local v7    # "myHeight":I
    .restart local v1    # "realSizeChanged":Z
    .restart local v9    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .restart local v13    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .restart local v25    # "redrawNeeded":Z
    .restart local v26    # "shouldSyncBuffer":Z
    .restart local v28    # "surfaceInsets":Landroid/graphics/Rect;
    .local v32, "myHeight":I
    :catchall_6
    move-exception v0

    move-object/from16 v6, v19

    :goto_1e
    move/from16 v7, v32

    move/from16 v32, v1

    .end local v1    # "realSizeChanged":Z
    .restart local v7    # "myHeight":I
    .local v32, "realSizeChanged":Z
    goto :goto_1f

    .end local v3    # "creating":Z
    .end local v4    # "sizeChanged":Z
    .end local v7    # "myHeight":I
    .restart local v1    # "realSizeChanged":Z
    .restart local v24    # "sizeChanged":Z
    .local v27, "creating":Z
    .local v32, "myHeight":I
    :catchall_7
    move-exception v0

    move-object/from16 v6, v19

    move/from16 v4, v24

    move/from16 v3, v27

    move/from16 v7, v32

    move/from16 v32, v1

    .end local v1    # "realSizeChanged":Z
    .end local v24    # "sizeChanged":Z
    .end local v27    # "creating":Z
    .restart local v3    # "creating":Z
    .restart local v4    # "sizeChanged":Z
    .restart local v7    # "myHeight":I
    .local v32, "realSizeChanged":Z
    :goto_1f
    const/4 v1, 0x0

    iput-boolean v1, v8, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1188
    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_31

    iget-boolean v1, v8, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v1, :cond_31

    .line 1189
    const/4 v1, 0x0

    invoke-direct {v8, v1}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 1191
    :cond_31
    nop

    .end local v3    # "creating":Z
    .end local v4    # "sizeChanged":Z
    .end local v7    # "myHeight":I
    .end local v12    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v15    # "myWidth":I
    .end local v16    # "alpha":F
    .end local v17    # "hintChanged":Z
    .end local v18    # "windowVisibleChanged":Z
    .end local v20    # "layoutSizeChanged":Z
    .end local v22    # "alphaChanged":Z
    .end local v23    # "visibleChanged":Z
    .end local v29    # "positionChanged":Z
    .end local v30    # "formatChanged":Z
    .end local v31    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .end local p0    # "this":Landroid/view/SurfaceView;
    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4

    .line 1192
    .end local v9    # "syncBufferTransactionCallback":Landroid/view/SurfaceView$SyncBufferTransactionCallback;
    .end local v13    # "surfaceUpdateTransaction":Landroid/view/SurfaceControl$Transaction;
    .end local v25    # "redrawNeeded":Z
    .end local v26    # "shouldSyncBuffer":Z
    .end local v28    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v32    # "realSizeChanged":Z
    .restart local v3    # "creating":Z
    .restart local v4    # "sizeChanged":Z
    .restart local v7    # "myHeight":I
    .restart local v12    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v15    # "myWidth":I
    .restart local v16    # "alpha":F
    .restart local v17    # "hintChanged":Z
    .restart local v18    # "windowVisibleChanged":Z
    .restart local v20    # "layoutSizeChanged":Z
    .restart local v22    # "alphaChanged":Z
    .restart local v23    # "visibleChanged":Z
    .restart local v29    # "positionChanged":Z
    .restart local v30    # "formatChanged":Z
    .restart local v31    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local p0    # "this":Landroid/view/SurfaceView;
    :catch_4
    move-exception v0

    goto :goto_20

    .end local v3    # "creating":Z
    .end local v4    # "sizeChanged":Z
    .end local v7    # "myHeight":I
    .restart local v24    # "sizeChanged":Z
    .restart local v27    # "creating":Z
    .local v32, "myHeight":I
    :catch_5
    move-exception v0

    move-object/from16 v6, v19

    move/from16 v4, v24

    move/from16 v3, v27

    move/from16 v7, v32

    .end local v24    # "sizeChanged":Z
    .end local v27    # "creating":Z
    .end local v32    # "myHeight":I
    .restart local v3    # "creating":Z
    .restart local v4    # "sizeChanged":Z
    .restart local v7    # "myHeight":I
    goto :goto_20

    .end local v3    # "creating":Z
    .end local v4    # "sizeChanged":Z
    .end local v17    # "hintChanged":Z
    .end local v29    # "positionChanged":Z
    .end local v30    # "formatChanged":Z
    .end local v31    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v1, "sizeChanged":Z
    .local v2, "creating":Z
    .restart local v5    # "formatChanged":Z
    .restart local v6    # "hintChanged":Z
    .local v9, "positionChanged":Z
    .restart local v14    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :catch_6
    move-exception v0

    move v4, v1

    move v3, v2

    move/from16 v30, v5

    move/from16 v17, v6

    move/from16 v29, v9

    move-object/from16 v31, v14

    move-object/from16 v6, v19

    .end local v1    # "sizeChanged":Z
    .end local v2    # "creating":Z
    .end local v5    # "formatChanged":Z
    .end local v6    # "hintChanged":Z
    .end local v9    # "positionChanged":Z
    .end local v14    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v3    # "creating":Z
    .restart local v4    # "sizeChanged":Z
    .restart local v17    # "hintChanged":Z
    .restart local v29    # "positionChanged":Z
    .restart local v30    # "formatChanged":Z
    .restart local v31    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    goto :goto_20

    .end local v3    # "creating":Z
    .end local v17    # "hintChanged":Z
    .end local v23    # "visibleChanged":Z
    .end local v29    # "positionChanged":Z
    .end local v30    # "formatChanged":Z
    .end local v31    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .restart local v1    # "sizeChanged":Z
    .restart local v2    # "creating":Z
    .local v4, "visibleChanged":Z
    .restart local v5    # "formatChanged":Z
    .restart local v6    # "hintChanged":Z
    .restart local v9    # "positionChanged":Z
    .restart local v14    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :catch_7
    move-exception v0

    move v3, v2

    move/from16 v23, v4

    move/from16 v30, v5

    move/from16 v17, v6

    move/from16 v29, v9

    move-object/from16 v31, v14

    move-object/from16 v6, v19

    move v4, v1

    .line 1193
    .end local v1    # "sizeChanged":Z
    .end local v2    # "creating":Z
    .end local v5    # "formatChanged":Z
    .end local v6    # "hintChanged":Z
    .end local v9    # "positionChanged":Z
    .end local v14    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v3    # "creating":Z
    .local v4, "sizeChanged":Z
    .restart local v17    # "hintChanged":Z
    .restart local v23    # "visibleChanged":Z
    .restart local v29    # "positionChanged":Z
    .restart local v30    # "formatChanged":Z
    .restart local v31    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :goto_20
    const-string v1, "Exception configuring surface"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1195
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_21
    iget-boolean v0, v8, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Layout: x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1197
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Location[0]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Location[1]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surfaceInsets.left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v12, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surfaceInsets.top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v12, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1195
    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_32
    :goto_22
    return-void

    .line 1013
    .end local v3    # "creating":Z
    .end local v4    # "sizeChanged":Z
    .end local v7    # "myHeight":I
    .end local v15    # "myWidth":I
    .end local v16    # "alpha":F
    .end local v17    # "hintChanged":Z
    .end local v18    # "windowVisibleChanged":Z
    .end local v20    # "layoutSizeChanged":Z
    .end local v22    # "alphaChanged":Z
    .end local v23    # "visibleChanged":Z
    .end local v29    # "positionChanged":Z
    .end local v30    # "formatChanged":Z
    .end local v31    # "translator":Landroid/content/res/CompatibilityInfo$Translator;
    :cond_33
    :goto_23
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->notifySurfaceDestroyed()V

    .line 1014
    const/4 v1, 0x0

    invoke-direct {v8, v1}, Landroid/view/SurfaceView;->releaseSurfaces(Z)V

    .line 1015
    return-void
.end method
