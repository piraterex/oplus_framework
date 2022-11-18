.class public Landroid/service/wallpaper/WallpaperService$Engine;
.super Ljava/lang/Object;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Engine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
    }
.end annotation


# instance fields
.field blacklist mBbqSurfaceControl:Landroid/view/SurfaceControl;

.field blacklist mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field greylist-max-o mCaller:Lcom/android/internal/os/HandlerCaller;

.field private final greylist-max-o mClockFunction:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field greylist-max-o mCreated:Z

.field greylist-max-o mCurHeight:I

.field greylist-max-o mCurWidth:I

.field greylist-max-o mCurWindowFlags:I

.field greylist-max-o mCurWindowPrivateFlags:I

.field private blacklist mDefaultDimAmount:F

.field greylist-max-o mDestroyed:Z

.field final greylist-max-o mDispatchedContentInsets:Landroid/graphics/Rect;

.field greylist-max-o mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

.field final greylist-max-o mDispatchedStableInsets:Landroid/graphics/Rect;

.field private greylist-max-o mDisplay:Landroid/view/Display;

.field private blacklist mDisplayContext:Landroid/content/Context;

.field private blacklist mDisplayInstallOrientation:I

.field private final greylist-max-o mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private greylist-max-o mDisplayState:I

.field greylist-max-o mDrawingAllowed:Z

.field private blacklist mEngineExt:Landroid/service/wallpaper/IEngineExt;

.field greylist-max-o mFixedSizeAllowed:Z

.field greylist-max-o mFormat:I

.field private blacklist mFrozenRequested:Z

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field greylist-max-o mHeight:I

.field greylist-max-o mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

.field greylist-max-o mInitializing:Z

.field greylist-max-o mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

.field final blacklist mInsetsState:Landroid/view/InsetsState;

.field greylist-max-o mIsCreating:Z

.field greylist-max-o mIsInAmbientMode:Z

.field private greylist-max-o mLastColorInvalidation:J

.field blacklist mLastScreenshot:Landroid/graphics/Bitmap;

.field private final blacklist mLastSurfaceSize:Landroid/graphics/Point;

.field blacklist mLastWindowPage:I

.field final greylist-max-o mLayout:Landroid/view/WindowManager$LayoutParams;

.field final blacklist mLocalColorAreas:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mLocalColorsToAdd:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mLock:Ljava/lang/Object;

.field final greylist-max-o mMergedConfiguration:Landroid/util/MergedConfiguration;

.field private final greylist-max-o mNotifyColorsChanged:Ljava/lang/Runnable;

.field greylist-max-o mOffsetMessageEnqueued:Z

.field greylist-max-o mOffsetsChanged:Z

.field greylist-max-o mPendingMove:Landroid/view/MotionEvent;

.field greylist-max-o mPendingSync:Z

.field greylist-max-p mPendingXOffset:F

.field greylist-max-o mPendingXOffsetStep:F

.field greylist-max-o mPendingYOffset:F

.field greylist-max-o mPendingYOffsetStep:F

.field blacklist mPreviewSurfacePosition:Landroid/graphics/Rect;

.field private blacklist mPreviousWallpaperDimAmount:F

.field greylist-max-o mReportedVisible:Z

.field final blacklist mRequestedVisibilities:Landroid/view/InsetsVisibilities;

.field private blacklist mResetWindowPages:Z

.field private blacklist mScreenshotSize:Landroid/graphics/Point;

.field private blacklist mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

.field greylist-max-o mSession:Landroid/view/IWindowSession;

.field blacklist mShouldDim:Z

.field blacklist mShouldDimByDefault:Z

.field blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field greylist-max-o mSurfaceCreated:Z

.field final greylist-max-o mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field private final blacklist mSurfaceSize:Landroid/graphics/Point;

.field final blacklist mSyncSeqIdBundle:Landroid/os/Bundle;

.field final blacklist mTempControls:[Landroid/view/InsetsSourceControl;

.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field private final blacklist mTmpValues:[F

.field greylist-max-o mType:I

.field greylist-max-o mVisible:Z

.field private blacklist mWallpaperDimAmount:F

.field greylist-max-o mWidth:I

.field final blacklist mWinFrames:Landroid/window/ClientWindowFrames;

.field final greylist-max-o mWindow:Lcom/android/internal/view/BaseIWindow;

.field greylist-max-o mWindowFlags:I

.field private final blacklist mWindowLayout:Landroid/view/WindowLayout;

.field blacklist mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

.field greylist-max-o mWindowPrivateFlags:I

.field greylist-max-o mWindowToken:Landroid/os/IBinder;

.field blacklist mZoom:F

.field final synthetic blacklist this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplay(Landroid/service/wallpaper/WallpaperService$Engine;)Landroid/view/Display;
    .locals 0

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayState(Landroid/service/wallpaper/WallpaperService$Engine;)I
    .locals 0

    iget p0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchPointer(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->dispatchPointer(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mscalePreview(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->scalePreview(Landroid/graphics/Rect;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetPrimaryWallpaperColors(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/app/WallpaperColors;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateConfiguration(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/util/MergedConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateConfiguration(Landroid/util/MergedConfiguration;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateWallpaperDimming(Landroid/service/wallpaper/WallpaperService$Engine;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateWallpaperDimming(F)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/service/wallpaper/WallpaperService;)V
    .locals 2
    .param p1, "this$0"    # Landroid/service/wallpaper/WallpaperService;

    .line 495
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    .line 498
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mEngineExt:Landroid/service/wallpaper/IEngineExt;

    invoke-interface {v0, p1}, Landroid/service/wallpaper/IEngineExt;->setWallpaperService(Landroid/service/wallpaper/WallpaperService;)V

    .line 500
    return-void
.end method

.method public constructor blacklist <init>(Landroid/service/wallpaper/WallpaperService;Ljava/util/function/Supplier;Landroid/os/Handler;)V
    .locals 3
    .param p1, "this$0"    # Landroid/service/wallpaper/WallpaperService;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 510
    .local p2, "clockFunction":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Long;>;"
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    .line 220
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    .line 223
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/service/wallpaper/EngineWindowPage;

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    .line 225
    const/4 v1, -0x1

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastWindowPage:I

    .line 233
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 242
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    .line 261
    const/4 v1, 0x0

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    .line 262
    const/16 v1, 0x10

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 263
    const v2, 0x2000004

    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 265
    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 266
    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    .line 268
    new-instance v1, Landroid/window/ClientWindowFrames;

    invoke-direct {v1}, Landroid/window/ClientWindowFrames;-><init>()V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    .line 269
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    .line 270
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    .line 271
    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    .line 272
    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1}, Landroid/view/InsetsState;-><init>()V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    .line 273
    new-instance v1, Landroid/view/InsetsVisibilities;

    invoke-direct {v1}, Landroid/view/InsetsVisibilities;-><init>()V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 274
    new-array v0, v0, [Landroid/view/InsetsSourceControl;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:[Landroid/view/InsetsSourceControl;

    .line 275
    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 276
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSyncSeqIdBundle:Landroid/os/Bundle;

    .line 277
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    .line 278
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 279
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 280
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    .line 281
    new-instance v0, Landroid/view/WindowLayout;

    invoke-direct {v0}, Landroid/view/WindowLayout;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowLayout:Landroid/view/WindowLayout;

    .line 282
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTempRect:Landroid/graphics/Rect;

    .line 284
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 288
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    .line 301
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    .line 309
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    .line 310
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    .line 311
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    .line 313
    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 317
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    .line 319
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$1;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 414
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$2;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    .line 489
    const-class v0, Landroid/service/wallpaper/IEngineExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/wallpaper/IEngineExt;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mEngineExt:Landroid/service/wallpaper/IEngineExt;

    .line 2222
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$4;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$4;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 511
    iput-object p2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mClockFunction:Ljava/util/function/Supplier;

    .line 512
    iput-object p3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    .line 513
    return-void
.end method

.method private blacklist cleanUpScreenshotSurfaceControl()V
    .locals 2

    .line 2046
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 2047
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    .line 2048
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 2049
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 2050
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2051
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    .line 2053
    :cond_0
    return-void
.end method

.method private greylist-max-o dispatchPointer(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1075
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1076
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1077
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1078
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    goto :goto_0

    .line 1080
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    .line 1082
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x2738

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1084
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 1085
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 1082
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1086
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 1088
    :goto_1
    return-void
.end method

.method private blacklist fixRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "r"    # Landroid/graphics/Rect;

    .line 1968
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 1970
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 1969
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1970
    :goto_1
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 1971
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_3

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_2

    goto :goto_2

    .line 1973
    :cond_2
    iget v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 1972
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1973
    :goto_3
    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 1974
    return-object p2
.end method

.method private blacklist freeze()V
    .locals 1

    .line 2022
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2026
    :cond_0
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->showScreenshotOfWallpaper()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2027
    return-void

    .line 2030
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    .line 2034
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 2035
    return-void

    .line 2024
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist generateSubRect(Landroid/graphics/RectF;II)Landroid/graphics/RectF;
    .locals 7
    .param p1, "in"    # Landroid/graphics/RectF;
    .param p2, "pageInx"    # I
    .param p3, "numPages"    # I

    .line 1887
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 1888
    .local v0, "minLeft":F
    add-int/lit8 v1, p2, 0x1

    int-to-float v1, v1

    int-to-float v2, p3

    div-float/2addr v1, v2

    .line 1889
    .local v1, "maxRight":F
    iget v2, p1, Landroid/graphics/RectF;->left:F

    .line 1890
    .local v2, "left":F
    iget v3, p1, Landroid/graphics/RectF;->right:F

    .line 1893
    .local v3, "right":F
    cmpg-float v4, v2, v0

    if-gez v4, :cond_0

    move v2, v0

    .line 1894
    :cond_0
    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    move v3, v1

    .line 1897
    :cond_1
    int-to-float v4, p3

    mul-float/2addr v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    rem-float/2addr v4, v5

    .line 1898
    .end local v2    # "left":F
    .local v4, "left":F
    int-to-float v2, p3

    mul-float/2addr v2, v3

    rem-float/2addr v2, v5

    .line 1899
    .end local v3    # "right":F
    .local v2, "right":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_2

    .line 1900
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1903
    :cond_2
    new-instance v3, Landroid/graphics/RectF;

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, v5, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method private blacklist getOrCreateBLASTSurface(III)Landroid/view/Surface;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 2240
    const/4 v0, 0x0

    .line 2241
    .local v0, "ret":Landroid/view/Surface;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-nez v1, :cond_0

    .line 2242
    new-instance v1, Landroid/graphics/BLASTBufferQueue;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    const-string v3, "Wallpaper"

    move-object v2, v1

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Landroid/view/SurfaceControl;III)V

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 2246
    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    .line 2248
    :cond_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 2251
    :goto_0
    return-object v0
.end method

.method private blacklist getRectFPage(Landroid/graphics/RectF;F)I
    .locals 4
    .param p1, "area"    # Landroid/graphics/RectF;
    .param p2, "step"    # F

    .line 1917
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0, p1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1918
    :cond_0
    invoke-direct {p0, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1919
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1920
    .local v0, "pages":I
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1921
    .local v1, "page":I
    if-ne v1, v0, :cond_2

    add-int/lit8 v2, v0, -0x1

    return v2

    .line 1922
    :cond_2
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v3, v2

    if-ne v1, v3, :cond_3

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 1923
    :cond_3
    return v1
.end method

.method private blacklist initWindowPages([Landroid/service/wallpaper/EngineWindowPage;F)V
    .locals 4
    .param p1, "windowPages"    # [Landroid/service/wallpaper/EngineWindowPage;
    .param p2, "step"    # F

    .line 1770
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1771
    new-instance v1, Landroid/service/wallpaper/EngineWindowPage;

    invoke-direct {v1}, Landroid/service/wallpaper/EngineWindowPage;-><init>()V

    aput-object v1, p1, v0

    .line 1770
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1773
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1774
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1775
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 1776
    .local v1, "area":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v2, v1}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1777
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1778
    goto :goto_1

    .line 1780
    :cond_1
    invoke-direct {p0, v1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->getRectFPage(Landroid/graphics/RectF;F)I

    move-result v2

    .line 1781
    .local v2, "pageNum":I
    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Landroid/service/wallpaper/EngineWindowPage;->addArea(Landroid/graphics/RectF;)V

    .line 1782
    .end local v1    # "area":Landroid/graphics/RectF;
    .end local v2    # "pageNum":I
    goto :goto_1

    .line 1783
    :cond_2
    return-void
.end method

.method private blacklist processLocalColors(FF)V
    .locals 10
    .param p1, "xOffset"    # F
    .param p2, "xOffsetStep"    # F

    .line 1701
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1702
    :cond_0
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    const-string v1, "WallpaperService"

    if-eqz v0, :cond_1

    .line 1703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processLocalColors "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " of step "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_1
    rem-float v0, p1, p2

    const v2, 0x3d4ccccd    # 0.05f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_6

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1708
    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 1711
    :cond_2
    invoke-direct {p0, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1712
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid offset step "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    :cond_3
    const/4 p1, 0x0

    .line 1716
    const/high16 p2, 0x3f800000    # 1.0f

    .line 1717
    const/4 v0, 0x0

    .line 1718
    .local v0, "xCurrentPage":I
    const/4 v2, 0x1

    .local v2, "xPages":I
    goto :goto_0

    .line 1720
    .end local v0    # "xCurrentPage":I
    .end local v2    # "xPages":I
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    div-float v2, v0, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 1721
    .restart local v2    # "xPages":I
    int-to-float v3, v2

    div-float p2, v0, v3

    .line 1722
    add-int/lit8 v0, v2, -0x1

    int-to-float v0, v0

    int-to-float v3, v2

    div-float/2addr v0, v3

    .line 1723
    .local v0, "shrink":F
    mul-float/2addr p1, v0

    .line 1724
    div-float v3, p1, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move v0, v3

    .line 1726
    .local v0, "xCurrentPage":I
    :goto_0
    sget-boolean v3, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 1727
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "xPages "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " xPage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "xOffsetStep "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " xOffset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    :cond_5
    move v8, p2

    .line 1732
    .local v8, "finalXOffsetStep":F
    move v9, p1

    .line 1733
    .local v9, "finalXOffset":F
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;

    move-object v4, v3

    move-object v5, p0

    move v6, v0

    move v7, v2

    invoke-direct/range {v4 .. v9}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda5;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;IIFF)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1767
    return-void

    .line 1708
    .end local v0    # "xCurrentPage":I
    .end local v2    # "xPages":I
    .end local v8    # "finalXOffsetStep":F
    .end local v9    # "finalXOffset":F
    :cond_6
    :goto_1
    return-void
.end method

.method private blacklist reposition()V
    .locals 7

    .line 1480
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1481
    return-void

    .line 1483
    :cond_0
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reposition: rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1488
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    .line 1489
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1488
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1490
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1491
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1492
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1494
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mTmpValues:[F

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x3

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    const/4 v6, 0x4

    aget v6, v1, v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1496
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1497
    return-void
.end method

.method private blacklist resetWindowPages()V
    .locals 4

    .line 1907
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1908
    :cond_0
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    if-nez v0, :cond_1

    return-void

    .line 1909
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    .line 1910
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastWindowPage:I

    .line 1911
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1912
    aget-object v1, v1, v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    .line 1911
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1914
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private blacklist scalePreview(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "position"    # Landroid/graphics/Rect;

    .line 1467
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 1469
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1470
    :cond_1
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    .line 1471
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1472
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reposition()V

    goto :goto_0

    .line 1474
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1477
    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V
    .locals 4
    .param p1, "colors"    # Landroid/app/WallpaperColors;

    .line 920
    if-nez p1, :cond_0

    .line 921
    return-void

    .line 923
    :cond_0
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v0

    .line 924
    .local v0, "colorHints":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDimByDefault:Z

    .line 928
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDim:Z

    if-eq v1, v2, :cond_2

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 929
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDim:Z

    .line 930
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurfaceDimming()V

    .line 932
    :cond_2
    return-void
.end method

.method private blacklist showScreenshotOfWallpaper()Z
    .locals 7

    .line 2092
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    const-string v1, "WallpaperService"

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2097
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2098
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2099
    const-string v3, "Failed to screenshot wallpaper: surface bounds are empty"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    return v2

    .line 2103
    :cond_1
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_2

    .line 2104
    const-string v3, "Screenshot is unexpectedly not null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->cleanUpScreenshotSurfaceControl()V

    .line 2109
    :cond_2
    new-instance v3, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v3, v4}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 2115
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setUid(J)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 2116
    invoke-virtual {v3, v2}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    move-result-object v3

    .line 2117
    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;

    .line 2118
    invoke-virtual {v3}, Landroid/view/SurfaceControl$LayerCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$LayerCaptureArgs;

    move-result-object v3

    .line 2110
    invoke-static {v3}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl$LayerCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v3

    .line 2120
    .local v3, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-nez v3, :cond_3

    .line 2121
    const-string v4, "Failed to screenshot wallpaper: screenshotBuffer is null"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    return v2

    .line 2125
    :cond_3
    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    .line 2127
    .local v1, "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 2130
    .local v2, "t":Landroid/view/SurfaceControl$Transaction;
    new-instance v4, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper snapshot for engine "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2131
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2132
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2133
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2134
    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2135
    const-string v5, "WallpaperService.Engine.showScreenshotOfWallpaper"

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2136
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 2137
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    .line 2139
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 2141
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 2142
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 2144
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    const v5, 0x7fffffff

    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2145
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2146
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2147
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2149
    const/4 v4, 0x1

    return v4

    .line 2093
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "hardwareBuffer":Landroid/hardware/HardwareBuffer;
    .end local v2    # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v3    # "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    :cond_4
    :goto_0
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "Failed to screenshot wallpaper: surface isn\'t valid"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    :cond_5
    return v2
.end method

.method private blacklist unfreeze()V
    .locals 1

    .line 2038
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->cleanUpScreenshotSurfaceControl()V

    .line 2039
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_0

    .line 2040
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    .line 2042
    :cond_0
    return-void
.end method

.method private blacklist updateConfiguration(Landroid/util/MergedConfiguration;)V
    .locals 1
    .param p1, "mergedConfiguration"    # Landroid/util/MergedConfiguration;

    .line 1091
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    .line 1092
    return-void
.end method

.method private blacklist updateFrozenState(Z)V
    .locals 2
    .param p1, "frozenRequested"    # Z

    .line 2002
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 2006
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperService"

    const-string v1, "Ignoring the freeze command for static wallpapers"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :cond_0
    return-void

    .line 2009
    :cond_1
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    .line 2010
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2011
    .local v0, "isFrozen":Z
    :goto_0
    if-ne p1, v0, :cond_3

    .line 2012
    return-void

    .line 2014
    :cond_3
    if-eqz p1, :cond_4

    .line 2015
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->freeze()V

    goto :goto_1

    .line 2017
    :cond_4
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->unfreeze()V

    .line 2019
    :goto_1
    return-void
.end method

.method private blacklist updatePageColors(Landroid/service/wallpaper/EngineWindowPage;IIF)V
    .locals 19
    .param p1, "page"    # Landroid/service/wallpaper/EngineWindowPage;
    .param p2, "pageIndx"    # I
    .param p3, "numPages"    # I
    .param p4, "xOffsetStep"    # F

    .line 1836
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1837
    :cond_0
    const-string v0, "WallpaperService#updatePageColors"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1838
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    const-string v5, "WallpaperService"

    if-eqz v0, :cond_1

    .line 1839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updatePageColorsLocked for page "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " with areas "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1840
    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getAreas()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " and bitmap size of "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1841
    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " x "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1839
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getAreas()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/graphics/RectF;

    .line 1844
    .local v7, "area":Landroid/graphics/RectF;
    if-nez v7, :cond_2

    goto :goto_0

    .line 1845
    :cond_2
    invoke-direct {v1, v7, v3, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->generateSubRect(Landroid/graphics/RectF;II)Landroid/graphics/RectF;

    move-result-object v8

    .line 1846
    .local v8, "subArea":Landroid/graphics/RectF;
    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1847
    .local v9, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v10, v8, Landroid/graphics/RectF;->left:F

    mul-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 1848
    .local v10, "x":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v11, v8, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 1849
    .local v11, "y":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v12

    mul-float/2addr v0, v12

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 1850
    .local v12, "width":I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v13

    mul-float/2addr v0, v13

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 1853
    .local v13, "height":I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v10, v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v14, v0

    .line 1857
    .local v14, "target":Landroid/graphics/Bitmap;
    nop

    .line 1858
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    invoke-static {v14, v0}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;

    move-result-object v15

    .line 1859
    .local v15, "color":Landroid/app/WallpaperColors;
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 1860
    move-object/from16 v16, v6

    invoke-virtual {v2, v7}, Landroid/service/wallpaper/EngineWindowPage;->getColors(Landroid/graphics/RectF;)Landroid/app/WallpaperColors;

    move-result-object v6

    .line 1862
    .local v6, "currentColor":Landroid/app/WallpaperColors;
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    move-object/from16 v17, v9

    .end local v9    # "b":Landroid/graphics/Bitmap;
    .local v17, "b":Landroid/graphics/Bitmap;
    const-string v9, " of "

    if-eqz v0, :cond_3

    .line 1863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v14

    .end local v14    # "target":Landroid/graphics/Bitmap;
    .local v18, "target":Landroid/graphics/Bitmap;
    const-string/jumbo v14, "getting local bitmap area x "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " y "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " width "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " height "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " for sub area "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " and with page "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1862
    .end local v18    # "target":Landroid/graphics/Bitmap;
    .restart local v14    # "target":Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v18, v14

    .line 1868
    .end local v14    # "target":Landroid/graphics/Bitmap;
    .restart local v18    # "target":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v6, :cond_4

    invoke-virtual {v15, v6}, Landroid/app/WallpaperColors;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1869
    :cond_4
    invoke-virtual {v2, v7, v15}, Landroid/service/wallpaper/EngineWindowPage;->addWallpaperColors(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V

    .line 1870
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 1871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onLocalWallpaperColorsChanged local color callback for area"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " for page "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :cond_5
    :try_start_1
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 1877
    invoke-virtual {v9}, Landroid/content/Context;->getDisplayId()I

    move-result v9

    .line 1876
    invoke-interface {v0, v7, v15, v9}, Landroid/service/wallpaper/IWallpaperConnection;->onLocalWallpaperColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1880
    goto :goto_2

    .line 1878
    :catch_0
    move-exception v0

    .line 1879
    .local v0, "e":Landroid/os/RemoteException;
    const-string v9, "Error calling Connection.onLocalWallpaperColorsChanged"

    invoke-static {v5, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1882
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v6    # "currentColor":Landroid/app/WallpaperColors;
    .end local v7    # "area":Landroid/graphics/RectF;
    .end local v8    # "subArea":Landroid/graphics/RectF;
    .end local v10    # "x":I
    .end local v11    # "y":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    .end local v15    # "color":Landroid/app/WallpaperColors;
    .end local v17    # "b":Landroid/graphics/Bitmap;
    .end local v18    # "target":Landroid/graphics/Bitmap;
    :cond_6
    :goto_2
    move-object/from16 v6, v16

    goto/16 :goto_0

    .line 1854
    .restart local v7    # "area":Landroid/graphics/RectF;
    .restart local v8    # "subArea":Landroid/graphics/RectF;
    .restart local v9    # "b":Landroid/graphics/Bitmap;
    .restart local v10    # "x":I
    .restart local v11    # "y":I
    .restart local v12    # "width":I
    .restart local v13    # "height":I
    :catch_1
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v17, v9

    .line 1855
    .end local v9    # "b":Landroid/graphics/Bitmap;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "b":Landroid/graphics/Bitmap;
    const-string v6, "Error creating page local color bitmap"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1856
    move-object/from16 v6, v16

    goto/16 :goto_0

    .line 1883
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "area":Landroid/graphics/RectF;
    .end local v8    # "subArea":Landroid/graphics/RectF;
    .end local v10    # "x":I
    .end local v11    # "y":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    .end local v17    # "b":Landroid/graphics/Bitmap;
    :cond_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1884
    return-void
.end method

.method private blacklist updateSurfaceDimming()V
    .locals 6

    .line 953
    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfgetENABLE_WALLPAPER_DIMMING()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    goto :goto_1

    .line 957
    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 960
    .local v0, "surfaceControlTransaction":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "WallpaperService"

    const/4 v4, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDim:Z

    if-nez v1, :cond_2

    :cond_1
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    iget v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_3

    .line 962
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting wallpaper dimming: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    aput v3, v1, v4

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 968
    .local v1, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 969
    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 976
    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$3;

    invoke-direct {v2, p0}, Landroid/service/wallpaper/WallpaperService$Engine$3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 982
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 983
    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    goto :goto_0

    .line 984
    :cond_3
    const-string v1, "Setting wallpaper dimming: 0"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 986
    invoke-virtual {p0, v4, v4, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 989
    :goto_0
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    iput v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    .line 990
    return-void

    .line 954
    .end local v0    # "surfaceControlTransaction":Landroid/view/SurfaceControl$Transaction;
    :cond_4
    :goto_1
    return-void
.end method

.method private blacklist updateWallpaperDimming(F)V
    .locals 1
    .param p1, "dimAmount"    # F

    .line 940
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 941
    return-void

    .line 945
    :cond_0
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    .line 948
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDimByDefault:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mShouldDim:Z

    .line 949
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurfaceDimming()V

    .line 950
    return-void
.end method

.method private blacklist validStep(F)Z
    .locals 4
    .param p1, "step"    # F

    .line 1978
    invoke-static {}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$sfgetPROHIBITED_STEPS()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist addLocalColorsAreas(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 1932
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1933
    :cond_0
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addLocalColorsAreas adding local color areas "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    :cond_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda6;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1942
    return-void
.end method

.method greylist-max-o attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V
    .locals 4
    .param p1, "wrapper"    # Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 1500
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    const-string v1, "WallpaperService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " wrapper="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_0
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 1502
    return-void

    .line 1505
    :cond_1
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 1506
    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->-$$Nest$fgetmCaller(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1507
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    .line 1508
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    .line 1509
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->setSizeFromLayout()V

    .line 1510
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 1511
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    .line 1513
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v2, v0}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    .line 1515
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1516
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1517
    invoke-virtual {v3}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 1516
    invoke-virtual {v0, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1518
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplay:Landroid/view/Display;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    .line 1520
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v2, v0}, Landroid/service/wallpaper/WallpaperService;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x7dd

    const/4 v3, 0x0

    .line 1521
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 1522
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10500df

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDefaultDimAmount:F

    .line 1524
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWallpaperDimAmount:F

    .line 1525
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviousWallpaperDimAmount:F

    .line 1526
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    .line 1527
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getInstallOrientation()I

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayInstallOrientation:I

    .line 1529
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_2
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 1533
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWallpaperServiceHelper:Landroid/service/wallpaper/IWallpaperServiceExt;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Landroid/service/wallpaper/IWallpaperServiceExt;->registerSetingsContentObserver(Landroid/content/Context;)V

    .line 1536
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 1538
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 1541
    const-wide/16 v1, 0x8

    const-string v3, "WallpaperService.Engine.updateSurface"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1543
    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1546
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1548
    return-void
.end method

.method greylist-max-o detach()V
    .locals 5

    .line 2169
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 2170
    return-void

    .line 2173
    :cond_0
    invoke-static {p0}, Landroid/animation/AnimationHandler;->removeRequestor(Ljava/lang/Object;)V

    .line 2175
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    .line 2177
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_1

    .line 2178
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 2181
    :cond_1
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    const-string v1, "WallpaperService"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2182
    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 2183
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVisibilityChanged(false): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    :cond_2
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 2187
    :cond_3
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    .line 2189
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDestroy(): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    :cond_4
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 2193
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWallpaperServiceHelper:Landroid/service/wallpaper/IWallpaperServiceExt;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    invoke-interface {v0, v3}, Landroid/service/wallpaper/IWallpaperServiceExt;->unregisterSettingsContentObserver(Landroid/content/Context;)V

    .line 2196
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_9

    .line 2198
    const/4 v0, 0x0

    :try_start_0
    sget-boolean v3, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing window and destroying surface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 2199
    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2198
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    :cond_5
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    if-eqz v1, :cond_6

    .line 2202
    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->dispose()V

    .line 2203
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 2206
    :cond_6
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v1, v3}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2208
    goto :goto_0

    .line 2207
    :catch_0
    move-exception v1

    .line 2209
    :goto_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v1, v1, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 2210
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v1, :cond_7

    .line 2211
    invoke-virtual {v1}, Landroid/graphics/BLASTBufferQueue;->destroy()V

    .line 2212
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 2214
    :cond_7
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_8

    .line 2215
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2216
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 2218
    :cond_8
    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 2220
    :cond_9
    return-void
.end method

.method public blacklist doAmbientModeChanged(ZJ)V
    .locals 2
    .param p1, "inAmbientMode"    # Z
    .param p2, "animationDuration"    # J

    .line 1576
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 1577
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAmbientModeChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_0
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    .line 1582
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_1

    .line 1583
    invoke-virtual {p0, p1, p2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->onAmbientModeChanged(ZJ)V

    .line 1586
    :cond_1
    return-void
.end method

.method greylist-max-o doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V
    .locals 8
    .param p1, "cmd"    # Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    .line 1983
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_2

    .line 1984
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    const-string v1, "android.wallpaper.freeze"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.wallpaper.unfreeze"

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1985
    :cond_0
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateFrozenState(Z)V

    .line 1987
    :cond_1
    iget-object v2, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    iget v3, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    iget v4, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    iget v5, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    iget-object v6, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    iget-boolean v7, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .local v0, "result":Landroid/os/Bundle;
    goto :goto_0

    .line 1990
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_2
    const/4 v0, 0x0

    .line 1992
    .restart local v0    # "result":Landroid/os/Bundle;
    :goto_0
    iget-boolean v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    if-eqz v1, :cond_4

    .line 1994
    :try_start_0
    sget-boolean v1, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "WallpaperService"

    const-string v2, "Reporting command complete"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    :cond_3
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1997
    goto :goto_1

    .line 1996
    :catch_0
    move-exception v1

    .line 1999
    :cond_4
    :goto_1
    return-void
.end method

.method greylist-max-o doDesiredSizeChanged(II)V
    .locals 2
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .line 1589
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 1590
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDesiredSizeChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    .line 1593
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    .line 1594
    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onDesiredSizeChanged(II)V

    .line 1595
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 1597
    :cond_1
    return-void
.end method

.method greylist-max-o doDisplayPaddingChanged(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 1600
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 1601
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDisplayPaddingChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1603
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1604
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1607
    :cond_1
    return-void
.end method

.method greylist-max-o doOffsetsChanged(Z)V
    .locals 13
    .param p1, "always"    # Z

    .line 1650
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1651
    return-void

    .line 1654
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    if-nez v0, :cond_1

    .line 1655
    return-void

    .line 1663
    :cond_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1664
    :try_start_0
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    .line 1665
    .local v1, "xOffset":F
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    move v9, v2

    .line 1666
    .local v9, "yOffset":F
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    move v10, v2

    .line 1667
    .local v10, "xOffsetStep":F
    iget v6, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    .line 1668
    .local v6, "yOffsetStep":F
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    move v11, v2

    .line 1669
    .local v11, "sync":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 1670
    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    .line 1671
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1673
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v0, :cond_6

    .line 1674
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_5

    .line 1675
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Offsets change in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    :cond_2
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    sub-int/2addr v0, v3

    .line 1678
    .local v0, "availw":I
    const/high16 v3, 0x3f000000    # 0.5f

    if-lez v0, :cond_3

    int-to-float v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    float-to-int v4, v4

    neg-int v4, v4

    move v7, v4

    goto :goto_0

    :cond_3
    move v7, v2

    .line 1679
    .local v7, "xPixels":I
    :goto_0
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v4, v4, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    iget v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    sub-int v12, v4, v5

    .line 1680
    .local v12, "availh":I
    if-lez v12, :cond_4

    int-to-float v2, v12

    mul-float/2addr v2, v9

    add-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    :cond_4
    move v8, v2

    .line 1681
    .local v8, "yPixels":I
    move-object v2, p0

    move v3, v1

    move v4, v9

    move v5, v10

    invoke-virtual/range {v2 .. v8}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    .line 1682
    .end local v0    # "availw":I
    .end local v7    # "xPixels":I
    .end local v8    # "yPixels":I
    .end local v12    # "availh":I
    goto :goto_1

    .line 1683
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    .line 1687
    :cond_6
    :goto_1
    if-eqz v11, :cond_8

    .line 1689
    :try_start_1
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "WallpaperService"

    const-string v2, "Reporting offsets change complete"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    :cond_7
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1692
    goto :goto_2

    .line 1691
    :catch_0
    move-exception v0

    .line 1696
    :cond_8
    :goto_2
    invoke-direct {p0, v1, v10}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors(FF)V

    .line 1697
    return-void

    .line 1671
    .end local v1    # "xOffset":F
    .end local v6    # "yOffsetStep":F
    .end local v9    # "yOffset":F
    .end local v10    # "xOffsetStep":F
    .end local v11    # "sync":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method greylist-max-o doVisibilityChanged(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 1610
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 1611
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 1612
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    .line 1613
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-direct {p0, v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors(FF)V

    goto :goto_0

    .line 1615
    :cond_0
    invoke-static {p1, p0}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabled(ZLjava/lang/Object;)V

    .line 1617
    :cond_1
    :goto_0
    return-void
.end method

.method protected whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 1003
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInitializing="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1004
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1005
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1006
    const-string v0, " mReportedVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1007
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDisplay="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1008
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1009
    const-string v0, " mSurfaceCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1010
    const-string v0, " mIsCreating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1011
    const-string v0, " mDrawingAllowed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1012
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1013
    const-string v0, " mCurWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1014
    const-string v0, " mHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1015
    const-string v0, " mCurHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1016
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mType="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1017
    const-string v0, " mWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1018
    const-string v0, " mCurWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1019
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1020
    const-string v0, " mCurWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1021
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWinFrames="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1022
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mConfiguration="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1024
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1025
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mZoom="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1026
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPreviewSurfacePosition="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1027
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPreviewSurfacePosition:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1028
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1029
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingXOffset="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1030
    const-string v1, " mPendingXOffset="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 1031
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingXOffsetStep="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1032
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 1033
    const-string v1, " mPendingXOffsetStep="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 1034
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mOffsetMessageEnqueued="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1035
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1036
    const-string v1, " mPendingSync="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1037
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 1038
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingMove="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1040
    :cond_0
    monitor-exit v0

    .line 1041
    return-void

    .line 1040
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getDesiredMinimumHeight()I
    .locals 1

    .line 537
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    return v0
.end method

.method public whitelist getDesiredMinimumWidth()I
    .locals 1

    .line 528
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    return v0
.end method

.method public whitelist getDisplayContext()Landroid/content/Context;
    .locals 1

    .line 1563
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 519
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    return-object v0
.end method

.method public blacklist getZoom()F
    .locals 1

    .line 691
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    return v0
.end method

.method public whitelist isInAmbientMode()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 578
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    return v0
.end method

.method public whitelist isPreview()Z
    .locals 1

    .line 568
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    return v0
.end method

.method public whitelist isVisible()Z
    .locals 1

    .line 546
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    return v0
.end method

.method synthetic blacklist lambda$addLocalColorsAreas$3$android-service-wallpaper-WallpaperService$Engine(Ljava/util/List;)V
    .locals 2
    .param p1, "regions"    # Ljava/util/List;

    .line 1937
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1938
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    invoke-direct {p0, v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors(FF)V

    .line 1939
    return-void
.end method

.method synthetic blacklist lambda$processLocalColors$1$android-service-wallpaper-WallpaperService$Engine(IIFF)V
    .locals 7
    .param p1, "xCurrentPage"    # I
    .param p2, "xPages"    # I
    .param p3, "finalXOffsetStep"    # F
    .param p4, "finalXOffset"    # F

    .line 1734
    const-string v0, "WallpaperService#processLocalColors"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1735
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->resetWindowPages()V

    .line 1736
    move v0, p1

    .line 1738
    .local v0, "xPage":I
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v2, v1

    if-eqz v2, :cond_0

    array-length v1, v1

    if-eq v1, p2, :cond_1

    .line 1739
    :cond_0
    new-array v1, p2, [Landroid/service/wallpaper/EngineWindowPage;

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    .line 1740
    invoke-direct {p0, v1, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->initWindowPages([Landroid/service/wallpaper/EngineWindowPage;F)V

    .line 1742
    :cond_1
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1743
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 1744
    .local v2, "colorArea":Landroid/graphics/RectF;
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v3, v2}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1745
    :cond_2
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1746
    invoke-direct {p0, v2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->getRectFPage(Landroid/graphics/RectF;F)I

    move-result v3

    .line 1747
    .local v3, "colorPage":I
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v4, v4, v3

    .line 1748
    .local v4, "currentPage":Landroid/service/wallpaper/EngineWindowPage;
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    .line 1749
    invoke-virtual {v4, v2}, Landroid/service/wallpaper/EngineWindowPage;->removeColor(Landroid/graphics/RectF;)V

    .line 1750
    .end local v2    # "colorArea":Landroid/graphics/RectF;
    .end local v3    # "colorPage":I
    .end local v4    # "currentPage":Landroid/service/wallpaper/EngineWindowPage;
    goto :goto_0

    .line 1751
    :cond_3
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1753
    :cond_4
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v1, v1

    if-lt v0, v1, :cond_6

    .line 1754
    sget-boolean v1, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 1755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error xPage >= mWindowPages.length page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error on page "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " out of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error on xOffsetStep "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " xOffset "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    :cond_5
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 1763
    :cond_6
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v1, v1, v0

    .line 1764
    .local v1, "current":Landroid/service/wallpaper/EngineWindowPage;
    invoke-virtual {p0, v1, v0, p2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePage(Landroid/service/wallpaper/EngineWindowPage;IIF)V

    .line 1765
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1766
    return-void
.end method

.method synthetic blacklist lambda$removeLocalColorsAreas$4$android-service-wallpaper-WallpaperService$Engine(Ljava/util/List;)V
    .locals 5
    .param p1, "regions"    # Ljava/util/List;

    .line 1952
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 1953
    .local v0, "step":F
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorsToAdd:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 1954
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLocalColorAreas:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 1955
    invoke-direct {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->validStep(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1956
    return-void

    .line 1958
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1959
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1960
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPages:[Landroid/service/wallpaper/EngineWindowPage;

    aget-object v3, v3, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/service/wallpaper/EngineWindowPage;->removeArea(Landroid/graphics/RectF;)V

    .line 1959
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1958
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1963
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method synthetic blacklist lambda$updatePage$2$android-service-wallpaper-WallpaperService$Engine(Landroid/service/wallpaper/EngineWindowPage;IIFLandroid/graphics/Bitmap;JI)V
    .locals 3
    .param p1, "currentPage"    # Landroid/service/wallpaper/EngineWindowPage;
    .param p2, "pageIndx"    # I
    .param p3, "numPages"    # I
    .param p4, "xOffsetStep"    # F
    .param p5, "finalScreenShot"    # Landroid/graphics/Bitmap;
    .param p6, "current"    # J
    .param p8, "res"    # I

    .line 1812
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1813
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "result of pixel copy is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    :cond_0
    if-eqz p8, :cond_2

    .line 1815
    invoke-virtual {p1}, Landroid/service/wallpaper/EngineWindowPage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1817
    .local v0, "lastBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/service/wallpaper/EngineWindowPage;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1818
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    .line 1819
    .local v1, "lastScreenshot":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1820
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1821
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePageColors(Landroid/service/wallpaper/EngineWindowPage;IIF)V

    .line 1823
    .end local v0    # "lastBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "lastScreenshot":Landroid/graphics/Bitmap;
    :cond_1
    goto :goto_0

    .line 1824
    :cond_2
    iput-object p5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastScreenshot:Landroid/graphics/Bitmap;

    .line 1826
    invoke-virtual {p1, p5}, Landroid/service/wallpaper/EngineWindowPage;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1827
    invoke-virtual {p1, p6, p7}, Landroid/service/wallpaper/EngineWindowPage;->setLastUpdateTime(J)V

    .line 1828
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->updatePageColors(Landroid/service/wallpaper/EngineWindowPage;IIF)V

    .line 1830
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$updateSurfaceDimming$0$android-service-wallpaper-WallpaperService$Engine(Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "surfaceControlTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "va"    # Landroid/animation/ValueAnimator;

    .line 970
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 971
    .local v0, "dimValue":F
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    .line 972
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    .line 973
    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 975
    :cond_0
    return-void
.end method

.method public whitelist notifyColorsChanged()V
    .locals 6

    .line 840
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mClockFunction:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 841
    .local v0, "now":J
    iget-wide v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastColorInvalidation:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    const-string v3, "WallpaperService"

    if-gez v2, :cond_1

    .line 842
    const-string v2, "This call has been deferred. You should only call notifyColorsChanged() once every 1.0 seconds."

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 846
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 848
    :cond_0
    return-void

    .line 850
    :cond_1
    iput-wide v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLastColorInvalidation:J

    .line 851
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mNotifyColorsChanged:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 854
    :try_start_0
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onComputeColors()Landroid/app/WallpaperColors;

    move-result-object v2

    .line 855
    .local v2, "newColors":Landroid/app/WallpaperColors;
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    if-eqz v4, :cond_2

    .line 856
    iget-object v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-interface {v4, v2, v5}, Landroid/service/wallpaper/IWallpaperConnection;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;I)V

    goto :goto_0

    .line 858
    :cond_2
    const-string v4, "Can\'t notify system because wallpaper connection was not established."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mResetWindowPages:Z

    .line 862
    iget v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    iget v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-direct {p0, v4, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    .end local v2    # "newColors":Landroid/app/WallpaperColors;
    goto :goto_1

    .line 863
    :catch_0
    move-exception v2

    .line 864
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "Can\'t notify system because wallpaper connection was lost."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 866
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public blacklist notifyLocalColorsChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/WallpaperColors;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 894
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .local p2, "colors":Ljava/util/List;, "Ljava/util/List<Landroid/app/WallpaperColors;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 895
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperColors;

    .line 896
    .local v1, "color":Landroid/app/WallpaperColors;
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 897
    .local v2, "area":Landroid/graphics/RectF;
    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_1

    .line 905
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;

    .line 908
    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    .line 905
    invoke-interface {v3, v2, v1, v4}, Landroid/service/wallpaper/IWallpaperConnection;->onLocalWallpaperColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    goto :goto_2

    .line 910
    :catch_0
    move-exception v3

    .line 911
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 898
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    sget-boolean v3, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 899
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyLocalColorsChanged null values. color: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " area "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WallpaperService"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    .end local v1    # "color":Landroid/app/WallpaperColors;
    .end local v2    # "area":Landroid/graphics/RectF;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 914
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 915
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object v0

    .line 916
    .local v0, "primaryColors":Landroid/app/WallpaperColors;
    invoke-direct {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setPrimaryWallpaperColors(Landroid/app/WallpaperColors;)V

    .line 917
    return-void
.end method

.method public whitelist onAmbientModeChanged(ZJ)V
    .locals 0
    .param p1, "inAmbientMode"    # Z
    .param p2, "animationDuration"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 788
    return-void
.end method

.method public whitelist onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .locals 0
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .line 725
    return-void
.end method

.method public whitelist onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "resultRequested"    # Z

    .line 769
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mEngineExt:Landroid/service/wallpaper/IEngineExt;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/service/wallpaper/IEngineExt;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 771
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onComputeColors()Landroid/app/WallpaperColors;
    .locals 1

    .line 882
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .line 699
    return-void
.end method

.method public whitelist onDesiredSizeChanged(II)V
    .locals 0
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .line 795
    return-void
.end method

.method public whitelist onDestroy()V
    .locals 0

    .line 707
    return-void
.end method

.method public whitelist onOffsetsChanged(FFFFII)V
    .locals 0
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "xOffsetStep"    # F
    .param p4, "yOffsetStep"    # F
    .param p5, "xPixelOffset"    # I
    .param p6, "yPixelOffset"    # I

    .line 746
    return-void
.end method

.method public whitelist onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 802
    return-void
.end method

.method public whitelist onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 816
    return-void
.end method

.method public whitelist onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 823
    return-void
.end method

.method public whitelist onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 809
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 735
    return-void
.end method

.method public whitelist onVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 715
    return-void
.end method

.method public whitelist onZoomChanged(F)V
    .locals 0
    .param p1, "zoom"    # F

    .line 833
    return-void
.end method

.method public blacklist removeLocalColorsAreas(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 1950
    .local p1, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->supportsLocalColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1951
    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda4;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1964
    return-void
.end method

.method public blacklist reportEngineShown(Z)V
    .locals 5
    .param p1, "waitForEngineShown"    # Z

    .line 612
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-eqz v0, :cond_0

    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mEngineExt:Landroid/service/wallpaper/IEngineExt;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-interface {v0, v1, p1}, Landroid/service/wallpaper/IEngineExt;->reportEngineShown(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    return-void

    .line 619
    :cond_1
    const/16 v0, 0x27a6

    if-nez p1, :cond_2

    .line 620
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 621
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/HandlerCaller;->removeMessages(I)V

    .line 622
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 623
    .end local v1    # "message":Landroid/os/Message;
    goto :goto_0

    .line 625
    :cond_2
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 626
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 627
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/os/HandlerCaller;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 630
    .end local v0    # "message":Landroid/os/Message;
    :cond_3
    :goto_0
    return-void
.end method

.method greylist-max-o reportSurfaceDestroyed()V
    .locals 5

    .line 2153
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v0, :cond_2

    .line 2154
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 2155
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 2156
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v1

    .line 2157
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v1, :cond_0

    .line 2158
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 2159
    .local v3, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2158
    .end local v3    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2162
    :cond_0
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceDestroyed("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WallpaperService"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :cond_1
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2166
    .end local v1    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_2
    return-void
.end method

.method greylist-max-o reportVisibility()V
    .locals 6

    .line 1620
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    const-string v1, "WallpaperService"

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v0, :cond_1

    .line 1621
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Frozen so don\'t report visibility change"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :cond_0
    return-void

    .line 1624
    :cond_1
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_8

    .line 1625
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    .line 1626
    iget-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-eq v0, v4, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v2

    .line 1627
    .local v0, "visible":Z
    :goto_1
    iget-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eq v3, v0, :cond_8

    .line 1628
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 1629
    sget-boolean v3, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onVisibilityChanged("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    :cond_4
    if-eqz v0, :cond_5

    .line 1635
    invoke-virtual {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 1637
    invoke-virtual {p0, v4, v2, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1639
    :cond_5
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1640
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFrozenRequested:Z

    if-eqz v2, :cond_7

    .line 1641
    sget-boolean v2, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "Freezing wallpaper after visibility update"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    :cond_6
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->freeze()V

    .line 1644
    :cond_7
    invoke-static {v0, p0}, Landroid/animation/AnimationHandler;->requestAnimatorsEnabled(ZLjava/lang/Object;)V

    .line 1647
    .end local v0    # "visible":Z
    :cond_8
    return-void
.end method

.method blacklist scaleAndCropScreenshot()V
    .locals 11

    .line 2056
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 2057
    return-void

    .line 2059
    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const-string v1, "WallpaperService"

    if-lez v0, :cond_3

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_1

    goto/16 :goto_0

    .line 2065
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2068
    .local v0, "scaleFactor":F
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    .line 2069
    .local v2, "diffX":I
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int v9, v3, v4

    .line 2070
    .local v9, "diffY":I
    sget-boolean v3, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 2071
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adjusting screenshot: scaleFactor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " diffX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " diffY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSurfaceSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mScreenshotSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    :cond_2
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2076
    move v5, v0

    move v8, v0

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v4, Landroid/graphics/Rect;

    div-int/lit8 v5, v2, 0x2

    div-int/lit8 v6, v9, 0x2

    div-int/lit8 v7, v2, 0x2

    iget-object v8, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    add-int/2addr v7, v8

    div-int/lit8 v8, v9, 0x2

    iget-object v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v10

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2080
    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSurfaceControl:Landroid/view/SurfaceControl;

    neg-int v4, v2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    neg-int v5, v9

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    .line 2087
    invoke-virtual {v1, v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 2088
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2089
    return-void

    .line 2060
    .end local v0    # "scaleFactor":F
    .end local v2    # "diffX":I
    .end local v9    # "diffY":I
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected screenshot size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mScreenshotSize:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    return-void
.end method

.method public greylist-max-o setCreated(Z)V
    .locals 0
    .param p1, "created"    # Z

    .line 999
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 1000
    return-void
.end method

.method public greylist setFixedSizeAllowed(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .line 682
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    .line 683
    return-void
.end method

.method public whitelist setOffsetNotificationsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 657
    if-eqz p1, :cond_0

    .line 658
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 660
    :cond_0
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 662
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_1

    .line 663
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 665
    :cond_1
    return-void
.end method

.method public blacklist setShowForAllUsers(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 669
    if-eqz p1, :cond_0

    .line 670
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 672
    :cond_0
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    and-int/lit8 v0, v0, -0x11

    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 674
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_1

    .line 675
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 677
    :cond_1
    return-void
.end method

.method public whitelist setTouchEventsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 640
    if-eqz p1, :cond_0

    .line 641
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_0

    .line 642
    :cond_0
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    or-int/lit8 v0, v0, 0x10

    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 643
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_1

    .line 644
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 646
    :cond_1
    return-void
.end method

.method public blacklist setZoom(F)V
    .locals 5
    .param p1, "zoom"    # F

    .line 1052
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1053
    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set zoom received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_0
    const/4 v0, 0x0

    .line 1056
    .local v0, "updated":Z
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1057
    :try_start_0
    sget-boolean v2, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1058
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mZoom: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " updated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_1
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsInAmbientMode:Z

    if-eqz v2, :cond_2

    .line 1061
    const/4 v2, 0x0

    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    .line 1063
    :cond_2
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    .line 1064
    iput p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    .line 1065
    const/4 v0, 0x1

    .line 1067
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    sget-boolean v1, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setZoom updated? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v1, :cond_5

    .line 1070
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mZoom:F

    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onZoomChanged(F)V

    .line 1072
    :cond_5
    return-void

    .line 1067
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist shouldWaitForEngineShown()Z
    .locals 1

    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldZoomOutWallpaper()Z
    .locals 1

    .line 590
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportsLocalColorExtraction()Z
    .locals 1

    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method blacklist updatePage(Landroid/service/wallpaper/EngineWindowPage;IIF)V
    .locals 22
    .param p1, "currentPage"    # Landroid/service/wallpaper/EngineWindowPage;
    .param p2, "pageIndx"    # I
    .param p3, "numPages"    # I
    .param p4, "xOffsetStep"    # F

    .line 1788
    move-object/from16 v9, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    sub-long v10, v0, v2

    .line 1789
    .local v10, "current":J
    invoke-virtual/range {p1 .. p1}, Landroid/service/wallpaper/EngineWindowPage;->getLastUpdateTime()J

    move-result-wide v0

    sub-long v12, v10, v0

    .line 1792
    .local v12, "lapsed":J
    cmp-long v0, v12, v2

    if-gez v0, :cond_0

    .line 1793
    return-void

    .line 1795
    :cond_0
    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v14

    .line 1796
    .local v14, "surface":Landroid/view/Surface;
    invoke-virtual {v14}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1797
    :cond_1
    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v15, v0

    .line 1798
    .local v15, "widthIsLarger":Z
    if-eqz v15, :cond_3

    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_1

    .line 1799
    :cond_3
    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    :goto_1
    move v7, v0

    .line 1800
    .local v7, "smaller":I
    const/high16 v0, 0x42800000    # 64.0f

    int-to-float v1, v7

    div-float v16, v0, v1

    .line 1801
    .local v16, "ratio":F
    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-int v8, v0

    .line 1802
    .local v8, "width":I
    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float v0, v0, v16

    float-to-int v5, v0

    .line 1803
    .local v5, "height":I
    if-lez v8, :cond_5

    if-gtz v5, :cond_4

    move/from16 v21, v5

    move/from16 v20, v7

    move-wide/from16 v17, v12

    move/from16 v19, v15

    move v15, v8

    goto :goto_2

    .line 1807
    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1809
    .local v4, "screenShot":Landroid/graphics/Bitmap;
    move-object v6, v4

    .line 1810
    .local v6, "finalScreenShot":Landroid/graphics/Bitmap;
    const-string v0, "WallpaperService#pixelCopy"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1811
    new-instance v3, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v17, v12

    move-object v12, v3

    .end local v12    # "lapsed":J
    .local v17, "lapsed":J
    move/from16 v3, p2

    move-object v13, v4

    .end local v4    # "screenShot":Landroid/graphics/Bitmap;
    .local v13, "screenShot":Landroid/graphics/Bitmap;
    move/from16 v4, p3

    move/from16 v19, v15

    move v15, v5

    .end local v5    # "height":I
    .local v15, "height":I
    .local v19, "widthIsLarger":Z
    move/from16 v5, p4

    move/from16 v20, v7

    move/from16 v21, v15

    move v15, v8

    .end local v7    # "smaller":I
    .end local v8    # "width":I
    .local v15, "width":I
    .local v20, "smaller":I
    .local v21, "height":I
    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Landroid/service/wallpaper/WallpaperService$Engine$$ExternalSyntheticLambda0;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/service/wallpaper/EngineWindowPage;IIFLandroid/graphics/Bitmap;J)V

    iget-object v0, v9, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    invoke-static {v14, v13, v12, v0}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 1832
    return-void

    .line 1803
    .end local v6    # "finalScreenShot":Landroid/graphics/Bitmap;
    .end local v13    # "screenShot":Landroid/graphics/Bitmap;
    .end local v17    # "lapsed":J
    .end local v19    # "widthIsLarger":Z
    .end local v20    # "smaller":I
    .end local v21    # "height":I
    .restart local v5    # "height":I
    .restart local v7    # "smaller":I
    .restart local v8    # "width":I
    .restart local v12    # "lapsed":J
    .local v15, "widthIsLarger":Z
    :cond_5
    move/from16 v21, v5

    move/from16 v20, v7

    move-wide/from16 v17, v12

    move/from16 v19, v15

    move v15, v8

    .line 1804
    .end local v5    # "height":I
    .end local v7    # "smaller":I
    .end local v8    # "width":I
    .end local v12    # "lapsed":J
    .local v15, "width":I
    .restart local v17    # "lapsed":J
    .restart local v19    # "widthIsLarger":Z
    .restart local v20    # "smaller":I
    .restart local v21    # "height":I
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wrong width and height values of bitmap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v21

    .end local v21    # "height":I
    .local v1, "height":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WallpaperService"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    return-void
.end method

.method greylist-max-o updateSurface(ZZZ)V
    .locals 50
    .param p1, "forceRelayout"    # Z
    .param p2, "forceReport"    # Z
    .param p3, "redrawNeeded"    # Z

    .line 1095
    move-object/from16 v1, p0

    move/from16 v2, p2

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    const-string v3, "WallpaperService"

    if-eqz v0, :cond_0

    .line 1096
    const-string v0, "Ignoring updateSurface due to destroyed"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    return-void

    .line 1100
    :cond_0
    const/4 v0, 0x0

    .line 1101
    .local v0, "fixedSize":Z
    iget-object v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedWidth()I

    move-result v4

    .line 1102
    .local v4, "myWidth":I
    if-gtz v4, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    .line 1103
    :cond_1
    const/4 v0, 0x1

    .line 1104
    :goto_0
    iget-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedHeight()I

    move-result v5

    .line 1105
    .local v5, "myHeight":I
    if-gtz v5, :cond_2

    const/4 v5, -0x1

    move v6, v5

    move v5, v0

    goto :goto_1

    .line 1106
    :cond_2
    const/4 v0, 0x1

    move v6, v5

    move v5, v0

    .line 1110
    .end local v0    # "fixedSize":Z
    .local v5, "fixedSize":Z
    .local v6, "myHeight":I
    :goto_1
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateSurface: myWidth = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " , myHeight = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " , fixedSize = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_3
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    const/4 v7, 0x1

    xor-int/2addr v0, v7

    move v8, v0

    .line 1116
    .local v8, "creating":Z
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    xor-int/2addr v0, v7

    move v9, v0

    .line 1117
    .local v9, "surfaceCreating":Z
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v10}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v10

    const/4 v11, 0x0

    if-eq v0, v10, :cond_4

    move v0, v7

    goto :goto_2

    :cond_4
    move v0, v11

    :goto_2
    move v10, v0

    .line 1118
    .local v10, "formatChanged":Z
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    if-ne v0, v4, :cond_6

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    if-eq v0, v6, :cond_5

    goto :goto_3

    :cond_5
    move v0, v11

    goto :goto_4

    :cond_6
    :goto_3
    move v0, v7

    :goto_4
    move v12, v0

    .line 1119
    .local v12, "sizeChanged":Z
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    xor-int/2addr v0, v7

    move v13, v0

    .line 1120
    .local v13, "insetsChanged":Z
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v14}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v14

    if-eq v0, v14, :cond_7

    move v0, v7

    goto :goto_5

    :cond_7
    move v0, v11

    :goto_5
    move v14, v0

    .line 1121
    .local v14, "typeChanged":Z
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    iget v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    if-ne v0, v15, :cond_9

    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    iget v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    if-eq v0, v15, :cond_8

    goto :goto_6

    :cond_8
    move v0, v11

    goto :goto_7

    :cond_9
    :goto_6
    move v0, v7

    :goto_7
    move v15, v0

    .line 1123
    .local v15, "flagsChanged":Z
    if-nez p1, :cond_b

    if-nez v8, :cond_b

    if-nez v9, :cond_b

    if-nez v10, :cond_b

    if-nez v12, :cond_b

    if-nez v14, :cond_b

    if-nez v15, :cond_b

    if-nez p3, :cond_b

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-nez v0, :cond_a

    goto :goto_8

    :cond_a
    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v29, v6

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v36, v10

    move/from16 v25, v14

    move/from16 v35, v15

    move/from16 v6, p3

    goto/16 :goto_23

    .line 1127
    :cond_b
    :goto_8
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Changes: creating="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " format="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " size="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_c
    :try_start_0
    iput v4, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    .line 1132
    iput v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    .line 1133
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    .line 1134
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    .line 1136
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1137
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1139
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1141
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 1142
    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    or-int/lit16 v0, v0, 0x200

    const/high16 v16, 0x10000

    or-int v0, v0, v16

    or-int/lit16 v0, v0, 0x100

    or-int/lit8 v0, v0, 0x8

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1148
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    move-object v7, v0

    .line 1149
    .local v7, "config":Landroid/content/res/Configuration;
    iget-object v0, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    move-object/from16 v16, v0

    .line 1150
    .local v16, "winConfig":Landroid/app/WindowConfiguration;
    invoke-virtual/range {v16 .. v16}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v18
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_15

    .line 1151
    .local v18, "maxBounds":Landroid/graphics/Rect;
    const/4 v0, -0x1

    if-ne v4, v0, :cond_d

    if-ne v6, v0, :cond_d

    .line 1153
    :try_start_1
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1154
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1155
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v11, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v11, v11, -0x4001

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v24, v12

    goto :goto_9

    .line 1458
    .end local v7    # "config":Landroid/content/res/Configuration;
    .end local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v18    # "maxBounds":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v29, v6

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v36, v10

    move/from16 v25, v14

    move/from16 v35, v15

    move/from16 v6, p3

    goto/16 :goto_22

    .line 1157
    .restart local v7    # "config":Landroid/content/res/Configuration;
    .restart local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v18    # "maxBounds":Landroid/graphics/Rect;
    :cond_d
    nop

    .line 1158
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    int-to-float v11, v4

    div-float/2addr v0, v11

    .line 1159
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v11
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_15

    int-to-float v11, v11

    move/from16 v24, v12

    .end local v12    # "sizeChanged":Z
    .local v24, "sizeChanged":Z
    int-to-float v12, v6

    div-float/2addr v11, v12

    .line 1157
    :try_start_3
    invoke-static {v0, v11}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1160
    .local v0, "layoutScale":F
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    int-to-float v12, v4

    mul-float/2addr v12, v0

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v12, v12, v17

    float-to-int v12, v12

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1161
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    int-to-float v12, v6

    mul-float/2addr v12, v0

    add-float v12, v12, v17

    float-to-int v12, v12

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1162
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v12, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v12, v12, 0x4000

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1165
    .end local v0    # "layoutScale":F
    :goto_9
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    .line 1166
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1168
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 1169
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    iput-object v11, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1173
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v11}, Landroid/service/wallpaper/WallpaperService;->-$$Nest$fgetmWallpaperManagerExt(Landroid/service/wallpaper/WallpaperService;)Landroid/app/IWallpaperManagerExt;

    move-result-object v11

    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayContext:Landroid/content/Context;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_14

    move/from16 v25, v14

    .end local v14    # "typeChanged":Z
    .local v25, "typeChanged":Z
    :try_start_4
    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-interface {v11, v12, v14, v1}, Landroid/app/IWallpaperManagerExt;->getDarkModeWallpaperWindowAlpha(Landroid/content/Context;FLandroid/service/wallpaper/WallpaperService$Engine;)F

    move-result v11

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1176
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_13

    if-nez v0, :cond_f

    .line 1178
    :try_start_5
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    sget-object v11, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v11}, Landroid/service/wallpaper/WallpaperService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1180
    .local v0, "windowStyle":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1183
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v12, v12, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1184
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v12, 0x800033

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1185
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 1186
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1187
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v12, 0x1030310

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1189
    new-instance v11, Landroid/view/InputChannel;

    invoke-direct {v11}, Landroid/view/InputChannel;-><init>()V

    .line 1191
    .local v11, "inputChannel":Landroid/view/InputChannel;
    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object/from16 v17, v0

    .end local v0    # "windowStyle":Landroid/content/res/TypedArray;
    .local v17, "windowStyle":Landroid/content/res/TypedArray;
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    const/16 v29, 0x0

    move/from16 v35, v15

    .end local v15    # "flagsChanged":Z
    .local v35, "flagsChanged":Z
    :try_start_6
    iget-object v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    .line 1192
    invoke-virtual {v15}, Landroid/view/Display;->getDisplayId()I

    move-result v30

    iget-object v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    move/from16 v36, v10

    .end local v10    # "formatChanged":Z
    .local v36, "formatChanged":Z
    :try_start_7
    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:[Landroid/view/InsetsSourceControl;

    .line 1191
    move-object/from16 v26, v12

    move-object/from16 v27, v14

    move-object/from16 v28, v0

    move-object/from16 v31, v15

    move-object/from16 v32, v11

    move-object/from16 v33, v10

    move-object/from16 v34, v2

    invoke-interface/range {v26 .. v34}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    if-gez v0, :cond_e

    .line 1194
    const-string v0, "Failed to add window while updating wallpaper surface."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    return-void

    .line 1197
    :cond_e
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldZoomOutWallpaper()Z

    move-result v10

    invoke-interface {v0, v2, v10}, Landroid/view/IWindowSession;->setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V

    .line 1198
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 1200
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 1201
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v11, v2}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_a

    .line 1458
    .end local v7    # "config":Landroid/content/res/Configuration;
    .end local v11    # "inputChannel":Landroid/view/InputChannel;
    .end local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v17    # "windowStyle":Landroid/content/res/TypedArray;
    .end local v18    # "maxBounds":Landroid/graphics/Rect;
    .end local v36    # "formatChanged":Z
    .restart local v10    # "formatChanged":Z
    :catch_1
    move-exception v0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v29, v6

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v36, v10

    move/from16 v12, v24

    move/from16 v6, p3

    .end local v10    # "formatChanged":Z
    .restart local v36    # "formatChanged":Z
    goto/16 :goto_22

    .end local v35    # "flagsChanged":Z
    .end local v36    # "formatChanged":Z
    .restart local v10    # "formatChanged":Z
    .restart local v15    # "flagsChanged":Z
    :catch_2
    move-exception v0

    move/from16 v35, v15

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v29, v6

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v36, v10

    move/from16 v12, v24

    move/from16 v6, p3

    .end local v10    # "formatChanged":Z
    .end local v15    # "flagsChanged":Z
    .restart local v35    # "flagsChanged":Z
    .restart local v36    # "formatChanged":Z
    goto/16 :goto_22

    .line 1176
    .end local v35    # "flagsChanged":Z
    .end local v36    # "formatChanged":Z
    .restart local v7    # "config":Landroid/content/res/Configuration;
    .restart local v10    # "formatChanged":Z
    .restart local v15    # "flagsChanged":Z
    .restart local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v18    # "maxBounds":Landroid/graphics/Rect;
    :cond_f
    move/from16 v36, v10

    move/from16 v35, v15

    .line 1204
    .end local v10    # "formatChanged":Z
    .end local v15    # "flagsChanged":Z
    .restart local v35    # "flagsChanged":Z
    .restart local v36    # "formatChanged":Z
    :goto_a
    :try_start_8
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1205
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_12

    .line 1207
    if-nez v5, :cond_10

    .line 1208
    :try_start_9
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v2, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_b

    .line 1458
    .end local v7    # "config":Landroid/content/res/Configuration;
    .end local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v18    # "maxBounds":Landroid/graphics/Rect;
    :catch_3
    move-exception v0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v29, v6

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v12, v24

    move/from16 v6, p3

    goto/16 :goto_22

    .line 1210
    .restart local v7    # "config":Landroid/content/res/Configuration;
    .restart local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v18    # "maxBounds":Landroid/graphics/Rect;
    :cond_10
    :try_start_a
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1215
    :goto_b
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_12

    if-eqz v0, :cond_11

    .line 1216
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSurface: mWidth = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , mHeight = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , mSurfaceSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_3

    .line 1220
    :cond_11
    const/4 v0, 0x0

    .line 1221
    .local v0, "relayoutResult":I
    :try_start_c
    sget-boolean v2, Landroid/view/ViewRootImpl;->LOCAL_LAYOUT:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_12

    if-eqz v2, :cond_13

    .line 1222
    :try_start_d
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_5

    if-nez v2, :cond_12

    .line 1223
    :try_start_e
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/16 v29, 0x0

    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    move/from16 v17, v0

    .end local v0    # "relayoutResult":I
    .local v17, "relayoutResult":I
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:[Landroid/view/InsetsSourceControl;

    move-object/from16 v26, v2

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v30, v12

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    move-object/from16 v33, v0

    invoke-interface/range {v26 .. v33}, Landroid/view/IWindowSession;->updateVisibility(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_3

    .end local v17    # "relayoutResult":I
    .restart local v0    # "relayoutResult":I
    goto :goto_c

    .line 1222
    :cond_12
    move/from16 v17, v0

    .line 1228
    :goto_c
    :try_start_f
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mTempRect:Landroid/graphics/Rect;

    .line 1229
    .local v2, "displayCutoutSafe":Landroid/graphics/Rect;
    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v10, v2}, Landroid/view/InsetsState;->getDisplayCutoutSafe(Landroid/graphics/Rect;)V

    .line 1230
    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowLayout:Landroid/view/WindowLayout;

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    .line 1231
    invoke-virtual/range {v16 .. v16}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v41

    invoke-virtual/range {v16 .. v16}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v42

    iget v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iget v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    move/from16 v17, v0

    .end local v0    # "relayoutResult":I
    .restart local v17    # "relayoutResult":I
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mRequestedVisibilities:Landroid/view/InsetsVisibilities;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_5

    const/16 v46, 0x0

    const/high16 v47, 0x3f800000    # 1.0f

    move/from16 v26, v8

    .end local v8    # "creating":Z
    .local v26, "creating":Z
    :try_start_10
    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    .line 1230
    move-object/from16 v37, v10

    move-object/from16 v38, v11

    move-object/from16 v39, v12

    move-object/from16 v40, v2

    move/from16 v43, v14

    move/from16 v44, v15

    move-object/from16 v45, v0

    move-object/from16 v48, v8

    invoke-virtual/range {v37 .. v48}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/view/InsetsVisibilities;Landroid/graphics/Rect;FLandroid/window/ClientWindowFrames;)V

    .line 1235
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/16 v30, 0x0

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iget v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    move-object/from16 v27, v0

    move-object/from16 v28, v8

    move-object/from16 v29, v10

    move-object/from16 v31, v11

    move/from16 v32, v12

    move/from16 v33, v14

    invoke-interface/range {v27 .. v33}, Landroid/view/IWindowSession;->updateLayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/window/ClientWindowFrames;II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4

    .line 1237
    .end local v2    # "displayCutoutSafe":Landroid/graphics/Rect;
    move/from16 v29, v6

    move/from16 v27, v9

    move/from16 v28, v13

    move/from16 v2, v17

    goto/16 :goto_d

    .line 1458
    .end local v7    # "config":Landroid/content/res/Configuration;
    .end local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v17    # "relayoutResult":I
    .end local v18    # "maxBounds":Landroid/graphics/Rect;
    :catch_4
    move-exception v0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v29, v6

    move/from16 v27, v9

    move/from16 v12, v24

    move/from16 v6, p3

    goto/16 :goto_22

    .end local v26    # "creating":Z
    .restart local v8    # "creating":Z
    :catch_5
    move-exception v0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v29, v6

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v12, v24

    move/from16 v6, p3

    .end local v8    # "creating":Z
    .restart local v26    # "creating":Z
    goto/16 :goto_22

    .line 1238
    .end local v26    # "creating":Z
    .restart local v0    # "relayoutResult":I
    .restart local v7    # "config":Landroid/content/res/Configuration;
    .restart local v8    # "creating":Z
    .restart local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v18    # "maxBounds":Landroid/graphics/Rect;
    :cond_13
    move/from16 v17, v0

    move/from16 v26, v8

    .end local v0    # "relayoutResult":I
    .end local v8    # "creating":Z
    .restart local v17    # "relayoutResult":I
    .restart local v26    # "creating":Z
    :try_start_11
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iget v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    const/16 v42, 0x0

    const/16 v43, 0x0

    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_11

    move/from16 v27, v9

    .end local v9    # "surfaceCreating":Z
    .local v27, "surfaceCreating":Z
    :try_start_12
    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_10

    move/from16 v28, v13

    .end local v13    # "insetsChanged":Z
    .local v28, "insetsChanged":Z
    :try_start_13
    iget-object v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mTempControls:[Landroid/view/InsetsSourceControl;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_f

    move/from16 v29, v6

    .end local v6    # "myHeight":I
    .local v29, "myHeight":I
    :try_start_14
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSyncSeqIdBundle:Landroid/os/Bundle;

    move-object/from16 v37, v0

    move-object/from16 v38, v2

    move-object/from16 v39, v8

    move/from16 v40, v10

    move/from16 v41, v11

    move-object/from16 v44, v12

    move-object/from16 v45, v14

    move-object/from16 v46, v15

    move-object/from16 v47, v9

    move-object/from16 v48, v13

    move-object/from16 v49, v6

    invoke-interface/range {v37 .. v49}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/os/Bundle;)I

    move-result v0

    .end local v17    # "relayoutResult":I
    .restart local v0    # "relayoutResult":I
    move v2, v0

    .line 1243
    .end local v0    # "relayoutResult":I
    .local v2, "relayoutResult":I
    :goto_d
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayInstallOrientation:I

    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    .line 1244
    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    add-int/2addr v0, v6

    rem-int/lit8 v0, v0, 0x4

    .line 1243
    invoke-static {v0}, Landroid/view/SurfaceControl;->rotationToBufferTransform(I)I

    move-result v0

    move v6, v0

    .line 1245
    .local v6, "transformHint":I
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1246
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    iget v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    iget-object v10, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v10, v10, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    const/16 v22, 0x0

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    move-object/from16 v17, v0

    move/from16 v19, v8

    move/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v23, v11

    invoke-static/range {v17 .. v23}, Landroid/view/WindowLayout;->computeSurfaceSize(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZLandroid/graphics/Point;)V

    .line 1249
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_e

    if-eqz v0, :cond_16

    .line 1252
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_14

    and-int/lit8 v0, v2, 0x2

    if-eqz v0, :cond_14

    .line 1254
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v8}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1255
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 1256
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_14

    .line 1257
    const-string/jumbo v0, "relayout surface changed"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_14
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_15

    .line 1262
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v8, "Wallpaper BBQ wrapper"

    .line 1263
    invoke-virtual {v0, v8}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1264
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/16 v8, 0x7dd

    .line 1266
    const/4 v9, 0x2

    invoke-virtual {v0, v9, v8}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1267
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1268
    invoke-virtual {v0, v8}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v8, "Wallpaper#relayout"

    .line 1269
    invoke-virtual {v0, v8}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1270
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    .line 1274
    :cond_15
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mBbqSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl;->setTransformHint(I)V

    .line 1275
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    invoke-direct {v1, v0, v8, v9}, Landroid/service/wallpaper/WallpaperService$Engine;->getOrCreateBLASTSurface(III)Landroid/view/Surface;

    move-result-object v0

    .line 1280
    .local v0, "blastSurface":Landroid/view/Surface;
    if-eqz v0, :cond_16

    .line 1281
    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v8, v8, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v8, v0}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_6

    goto :goto_e

    .line 1458
    .end local v0    # "blastSurface":Landroid/view/Surface;
    .end local v2    # "relayoutResult":I
    .end local v6    # "transformHint":I
    .end local v7    # "config":Landroid/content/res/Configuration;
    .end local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v18    # "maxBounds":Landroid/graphics/Rect;
    :catch_6
    move-exception v0

    move/from16 v6, p3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v12, v24

    move/from16 v13, v28

    goto/16 :goto_22

    .line 1284
    .restart local v2    # "relayoutResult":I
    .restart local v6    # "transformHint":I
    .restart local v7    # "config":Landroid/content/res/Configuration;
    .restart local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v18    # "maxBounds":Landroid/graphics/Rect;
    :cond_16
    :goto_e
    :try_start_16
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v0, v8}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_e

    if-nez v0, :cond_17

    .line 1285
    :try_start_17
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLastSurfaceSize:Landroid/graphics/Point;

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Point;->set(II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_6

    .line 1288
    :cond_17
    :try_start_18
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_e

    if-eqz v0, :cond_18

    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New surface: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v8, v8, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", frame="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_6

    .line 1291
    :cond_18
    :try_start_1a
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v0, v0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 1292
    .local v0, "w":I
    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v8, v8, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 1295
    .local v8, "h":I
    sget-boolean v9, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_e

    if-eqz v9, :cond_19

    .line 1296
    :try_start_1b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateSurface: w = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , h = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_6

    .line 1300
    :cond_19
    :try_start_1c
    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v9}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v9

    .line 1301
    .local v9, "rawCutout":Landroid/view/DisplayCutout;
    new-instance v10, Landroid/graphics/Rect;

    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrames:Landroid/window/ClientWindowFrames;

    iget-object v11, v11, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-direct {v10, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1302
    .local v10, "visibleFrame":Landroid/graphics/Rect;
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v11}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1303
    iget-object v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mInsetsState:Landroid/view/InsetsState;

    const/16 v39, 0x0

    .line 1304
    invoke-virtual {v7}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v40

    const/16 v41, 0x0

    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-object v13, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v44, 0x0

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1307
    invoke-virtual/range {v16 .. v16}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v46

    const/16 v47, 0x0

    .line 1303
    move-object/from16 v37, v11

    move-object/from16 v38, v10

    move/from16 v42, v12

    move/from16 v43, v13

    move/from16 v45, v14

    invoke-virtual/range {v37 .. v47}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v11
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_e

    .line 1309
    .local v11, "windowInsets":Landroid/view/WindowInsets;
    if-nez v5, :cond_1a

    .line 1310
    :try_start_1d
    iget-object v12, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v12, v12, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    .line 1311
    .local v12, "padding":Landroid/graphics/Rect;
    iget v13, v12, Landroid/graphics/Rect;->left:I

    iget v14, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    add-int/2addr v0, v13

    .line 1312
    iget v13, v12, Landroid/graphics/Rect;->top:I

    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v14

    add-int/2addr v8, v13

    .line 1313
    iget v13, v12, Landroid/graphics/Rect;->left:I

    neg-int v13, v13

    iget v14, v12, Landroid/graphics/Rect;->top:I

    neg-int v14, v14

    iget v15, v12, Landroid/graphics/Rect;->right:I

    neg-int v15, v15

    move/from16 v17, v0

    .end local v0    # "w":I
    .local v17, "w":I
    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    neg-int v0, v0

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/view/WindowInsets;->insetUnchecked(IIII)Landroid/view/WindowInsets;

    move-result-object v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_6

    move-object v11, v0

    .line 1315
    .end local v12    # "padding":Landroid/graphics/Rect;
    move-object v12, v11

    move v11, v8

    move/from16 v8, v17

    goto :goto_f

    .line 1316
    .end local v17    # "w":I
    .restart local v0    # "w":I
    :cond_1a
    move v0, v4

    .line 1317
    move/from16 v8, v29

    move-object v12, v11

    move v11, v8

    move v8, v0

    .line 1320
    .end local v0    # "w":I
    .local v8, "w":I
    .local v11, "h":I
    .local v12, "windowInsets":Landroid/view/WindowInsets;
    :goto_f
    :try_start_1e
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_e

    if-eq v0, v8, :cond_1b

    .line 1321
    const/4 v13, 0x1

    .line 1322
    .end local v24    # "sizeChanged":Z
    .local v13, "sizeChanged":Z
    :try_start_1f
    iput v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_7

    goto :goto_10

    .line 1458
    .end local v2    # "relayoutResult":I
    .end local v6    # "transformHint":I
    .end local v7    # "config":Landroid/content/res/Configuration;
    .end local v8    # "w":I
    .end local v9    # "rawCutout":Landroid/view/DisplayCutout;
    .end local v10    # "visibleFrame":Landroid/graphics/Rect;
    .end local v11    # "h":I
    .end local v12    # "windowInsets":Landroid/view/WindowInsets;
    .end local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v18    # "maxBounds":Landroid/graphics/Rect;
    :catch_7
    move-exception v0

    move/from16 v6, p3

    move/from16 v21, v4

    move/from16 v22, v5

    move v12, v13

    move/from16 v13, v28

    goto/16 :goto_22

    .line 1320
    .end local v13    # "sizeChanged":Z
    .restart local v2    # "relayoutResult":I
    .restart local v6    # "transformHint":I
    .restart local v7    # "config":Landroid/content/res/Configuration;
    .restart local v8    # "w":I
    .restart local v9    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v10    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v11    # "h":I
    .restart local v12    # "windowInsets":Landroid/view/WindowInsets;
    .restart local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v18    # "maxBounds":Landroid/graphics/Rect;
    .restart local v24    # "sizeChanged":Z
    :cond_1b
    move/from16 v13, v24

    .line 1324
    .end local v24    # "sizeChanged":Z
    .restart local v13    # "sizeChanged":Z
    :goto_10
    :try_start_20
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_d

    if-eq v0, v11, :cond_1c

    .line 1325
    const/4 v13, 0x1

    .line 1326
    :try_start_21
    iput v11, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_7

    .line 1329
    :cond_1c
    :try_start_22
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_d

    const-string v14, ", "

    if-eqz v0, :cond_1d

    .line 1330
    :try_start_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Wallpaper size has changed: ("

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v15, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_7

    .line 1333
    :cond_1d
    :try_start_24
    invoke-virtual {v12}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    move-object v15, v0

    .line 1334
    .local v15, "contentInsets":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    move-object/from16 v17, v0

    .line 1335
    .local v17, "stableInsets":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_d

    if-eqz v0, :cond_1e

    .line 1336
    :try_start_25
    invoke-virtual {v12}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_7

    goto :goto_11

    :cond_1e
    move-object v0, v9

    :goto_11
    move-object/from16 v19, v0

    .line 1337
    .local v19, "displayCutout":Landroid/view/DisplayCutout;
    :try_start_26
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v15}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_d

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_12

    :cond_1f
    const/4 v0, 0x0

    :goto_12
    or-int v20, v28, v0

    .line 1338
    .end local v28    # "insetsChanged":Z
    .local v20, "insetsChanged":Z
    :try_start_27
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_c

    move/from16 v21, v4

    move-object/from16 v4, v17

    .end local v17    # "stableInsets":Landroid/graphics/Rect;
    .local v4, "stableInsets":Landroid/graphics/Rect;
    .local v21, "myWidth":I
    :try_start_28
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_b

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_13

    :cond_20
    const/4 v0, 0x0

    :goto_13
    or-int v17, v20, v0

    .line 1339
    .end local v20    # "insetsChanged":Z
    .local v17, "insetsChanged":Z
    :try_start_29
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_a

    move/from16 v22, v5

    move-object/from16 v5, v19

    .end local v19    # "displayCutout":Landroid/view/DisplayCutout;
    .local v5, "displayCutout":Landroid/view/DisplayCutout;
    .local v22, "fixedSize":Z
    :try_start_2a
    invoke-virtual {v0, v5}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x1

    goto :goto_14

    :cond_21
    const/4 v0, 0x0

    :goto_14
    or-int v17, v17, v0

    .line 1341
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0, v8, v11}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 1342
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1344
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1345
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    .line 1346
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "Layout: Surface destroyed"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_9

    .line 1347
    :cond_22
    return-void

    .line 1350
    :cond_23
    const/16 v19, 0x0

    .line 1353
    .local v19, "didSurface":Z
    :try_start_2b
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_d

    .line 1355
    const-string v0, "): "

    if-eqz v27, :cond_27

    .line 1356
    move/from16 v23, v6

    const/4 v6, 0x1

    .end local v6    # "transformHint":I
    .local v23, "transformHint":I
    :try_start_2c
    iput-boolean v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 1357
    const/16 v19, 0x1

    .line 1358
    sget-boolean v6, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_4

    if-eqz v6, :cond_24

    :try_start_2d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1

    move-object/from16 v30, v7

    .end local v7    # "config":Landroid/content/res/Configuration;
    .local v30, "config":Landroid/content/res/Configuration;
    :try_start_2e
    const-string/jumbo v7, "onSurfaceCreated("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    goto :goto_15

    .line 1440
    :catchall_0
    move-exception v0

    move/from16 v6, p3

    move/from16 v32, v2

    move/from16 v31, v8

    move-object/from16 v33, v9

    goto/16 :goto_21

    .end local v30    # "config":Landroid/content/res/Configuration;
    .restart local v7    # "config":Landroid/content/res/Configuration;
    :catchall_1
    move-exception v0

    move-object/from16 v30, v7

    move/from16 v6, p3

    move/from16 v32, v2

    move/from16 v31, v8

    move-object/from16 v33, v9

    .end local v7    # "config":Landroid/content/res/Configuration;
    .restart local v30    # "config":Landroid/content/res/Configuration;
    goto/16 :goto_21

    .line 1358
    .end local v30    # "config":Landroid/content/res/Configuration;
    .restart local v7    # "config":Landroid/content/res/Configuration;
    :cond_24
    move-object/from16 v30, v7

    .line 1360
    .end local v7    # "config":Landroid/content/res/Configuration;
    .restart local v30    # "config":Landroid/content/res/Configuration;
    :goto_15
    :try_start_2f
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1361
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v6

    .line 1362
    .local v6, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v6, :cond_26

    .line 1363
    array-length v7, v6
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_3

    move/from16 v31, v8

    const/4 v8, 0x0

    .end local v8    # "w":I
    .local v31, "w":I
    :goto_16
    if-ge v8, v7, :cond_25

    :try_start_30
    aget-object v20, v6, v8

    move-object/from16 v24, v20

    .line 1364
    .local v24, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v20, v6

    .end local v6    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v20, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v6, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move/from16 v28, v7

    move-object/from16 v7, v24

    .end local v24    # "c":Landroid/view/SurfaceHolder$Callback;
    .local v7, "c":Landroid/view/SurfaceHolder$Callback;
    invoke-interface {v7, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_2

    .line 1363
    .end local v7    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, v20

    move/from16 v7, v28

    goto :goto_16

    .line 1440
    .end local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_2
    move-exception v0

    move/from16 v6, p3

    move/from16 v32, v2

    move-object/from16 v33, v9

    goto/16 :goto_21

    .line 1363
    .restart local v6    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_25
    move-object/from16 v20, v6

    .end local v6    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    goto :goto_17

    .line 1362
    .end local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v31    # "w":I
    .restart local v6    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v8    # "w":I
    :cond_26
    move-object/from16 v20, v6

    move/from16 v31, v8

    .end local v6    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v8    # "w":I
    .restart local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v31    # "w":I
    goto :goto_17

    .line 1440
    .end local v20    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v31    # "w":I
    .restart local v8    # "w":I
    :catchall_3
    move-exception v0

    move/from16 v31, v8

    move/from16 v6, p3

    move/from16 v32, v2

    move-object/from16 v33, v9

    .end local v8    # "w":I
    .restart local v31    # "w":I
    goto/16 :goto_21

    .end local v30    # "config":Landroid/content/res/Configuration;
    .end local v31    # "w":I
    .local v7, "config":Landroid/content/res/Configuration;
    .restart local v8    # "w":I
    :catchall_4
    move-exception v0

    move-object/from16 v30, v7

    move/from16 v31, v8

    move/from16 v6, p3

    move/from16 v32, v2

    move-object/from16 v33, v9

    .end local v7    # "config":Landroid/content/res/Configuration;
    .end local v8    # "w":I
    .restart local v30    # "config":Landroid/content/res/Configuration;
    .restart local v31    # "w":I
    goto/16 :goto_21

    .line 1355
    .end local v23    # "transformHint":I
    .end local v30    # "config":Landroid/content/res/Configuration;
    .end local v31    # "w":I
    .local v6, "transformHint":I
    .restart local v7    # "config":Landroid/content/res/Configuration;
    .restart local v8    # "w":I
    :cond_27
    move/from16 v23, v6

    move-object/from16 v30, v7

    move/from16 v31, v8

    .line 1369
    .end local v6    # "transformHint":I
    .end local v7    # "config":Landroid/content/res/Configuration;
    .end local v8    # "w":I
    .restart local v23    # "transformHint":I
    .restart local v30    # "config":Landroid/content/res/Configuration;
    .restart local v31    # "w":I
    :goto_17
    if-nez v26, :cond_29

    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_28

    goto :goto_18

    :cond_28
    const/4 v6, 0x0

    goto :goto_19

    :cond_29
    :goto_18
    const/4 v6, 0x1

    :goto_19
    or-int v6, p3, v6

    .line 1372
    .end local p3    # "redrawNeeded":Z
    .local v6, "redrawNeeded":Z
    move/from16 v7, p2

    if-nez v7, :cond_2b

    if-nez v26, :cond_2b

    if-nez v27, :cond_2b

    if-nez v36, :cond_2b

    if-eqz v13, :cond_2a

    goto :goto_1a

    :cond_2a
    move/from16 v32, v2

    move-object/from16 v33, v9

    goto/16 :goto_1e

    .line 1374
    :cond_2b
    :goto_1a
    :try_start_31
    sget-boolean v8, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_c

    if-eqz v8, :cond_2c

    .line 1375
    :try_start_32
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8}, Ljava/lang/RuntimeException;-><init>()V

    .line 1376
    .local v8, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v8}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_8

    .line 1377
    move/from16 v32, v2

    .end local v2    # "relayoutResult":I
    .local v32, "relayoutResult":I
    :try_start_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_7

    move-object/from16 v33, v9

    .end local v9    # "rawCutout":Landroid/view/DisplayCutout;
    .local v33, "rawCutout":Landroid/view/DisplayCutout;
    :try_start_34
    const-string v9, "forceReport="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " creating="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_6

    move/from16 v9, v26

    .end local v26    # "creating":Z
    .local v9, "creating":Z
    :try_start_35
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " formatChanged="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_9

    move/from16 v7, v36

    .end local v36    # "formatChanged":Z
    .local v7, "formatChanged":Z
    :try_start_36
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_5

    move/from16 v36, v7

    .end local v7    # "formatChanged":Z
    .restart local v36    # "formatChanged":Z
    :try_start_37
    const-string v7, " sizeChanged="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_9

    goto :goto_1b

    .line 1440
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v36    # "formatChanged":Z
    .restart local v7    # "formatChanged":Z
    :catchall_5
    move-exception v0

    move/from16 v36, v7

    move/from16 v26, v9

    .end local v7    # "formatChanged":Z
    .restart local v36    # "formatChanged":Z
    goto/16 :goto_21

    .end local v9    # "creating":Z
    .restart local v26    # "creating":Z
    :catchall_6
    move-exception v0

    .end local v26    # "creating":Z
    .restart local v9    # "creating":Z
    goto/16 :goto_21

    .end local v33    # "rawCutout":Landroid/view/DisplayCutout;
    .local v9, "rawCutout":Landroid/view/DisplayCutout;
    .restart local v26    # "creating":Z
    :catchall_7
    move-exception v0

    move-object/from16 v33, v9

    .end local v26    # "creating":Z
    .local v9, "creating":Z
    .restart local v33    # "rawCutout":Landroid/view/DisplayCutout;
    goto/16 :goto_21

    .end local v32    # "relayoutResult":I
    .end local v33    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v2    # "relayoutResult":I
    .local v9, "rawCutout":Landroid/view/DisplayCutout;
    .restart local v26    # "creating":Z
    :catchall_8
    move-exception v0

    move/from16 v32, v2

    move-object/from16 v33, v9

    .end local v2    # "relayoutResult":I
    .end local v26    # "creating":Z
    .local v9, "creating":Z
    .restart local v32    # "relayoutResult":I
    .restart local v33    # "rawCutout":Landroid/view/DisplayCutout;
    goto/16 :goto_21

    .line 1374
    .end local v32    # "relayoutResult":I
    .end local v33    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v2    # "relayoutResult":I
    .local v9, "rawCutout":Landroid/view/DisplayCutout;
    .restart local v26    # "creating":Z
    :cond_2c
    move/from16 v32, v2

    move-object/from16 v33, v9

    move/from16 v9, v26

    .line 1381
    .end local v2    # "relayoutResult":I
    .end local v26    # "creating":Z
    .local v9, "creating":Z
    .restart local v32    # "relayoutResult":I
    .restart local v33    # "rawCutout":Landroid/view/DisplayCutout;
    :goto_1b
    :try_start_38
    sget-boolean v2, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_b

    if-eqz v2, :cond_2d

    :try_start_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSurfaceChanged("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_9

    goto :goto_1c

    .line 1440
    :catchall_9
    move-exception v0

    move/from16 v26, v9

    goto/16 :goto_21

    .line 1385
    :cond_2d
    :goto_1c
    const/16 v19, 0x1

    .line 1386
    :try_start_3a
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iget v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    iget v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {v1, v0, v2, v7, v8}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1388
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 1389
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v0, :cond_2f

    .line 1390
    array-length v2, v0

    const/4 v7, 0x0

    :goto_1d
    if-ge v7, v2, :cond_2e

    aget-object v8, v0, v7

    .line 1391
    .local v8, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 p3, v0

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local p3, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move/from16 v20, v2

    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_b

    move/from16 v26, v9

    .end local v9    # "creating":Z
    .restart local v26    # "creating":Z
    :try_start_3b
    iget v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-interface {v8, v14, v0, v2, v9}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1390
    .end local v8    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p3

    move/from16 v2, v20

    move/from16 v9, v26

    goto :goto_1d

    .end local v26    # "creating":Z
    .end local p3    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v9    # "creating":Z
    :cond_2e
    move-object/from16 p3, v0

    move/from16 v26, v9

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v9    # "creating":Z
    .restart local v26    # "creating":Z
    .restart local p3    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    goto :goto_1e

    .line 1389
    .end local v26    # "creating":Z
    .end local p3    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v9    # "creating":Z
    :cond_2f
    move-object/from16 p3, v0

    move/from16 v26, v9

    .line 1397
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v9    # "creating":Z
    .restart local v26    # "creating":Z
    :goto_1e
    if-eqz v17, :cond_31

    .line 1398
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1399
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1400
    iput-object v5, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedDisplayCutout:Landroid/view/DisplayCutout;

    .line 1401
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatching insets="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_30
    invoke-virtual {v1, v12}, Landroid/service/wallpaper/WallpaperService$Engine;->onApplyWindowInsets(Landroid/view/WindowInsets;)V

    goto :goto_1f

    .line 1440
    :catchall_a
    move-exception v0

    goto/16 :goto_21

    .line 1407
    :cond_31
    :goto_1f
    if-eqz v6, :cond_33

    .line 1408
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 1409
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 1410
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v0, :cond_33

    .line 1411
    array-length v2, v0

    const/4 v7, 0x0

    :goto_20
    if-ge v7, v2, :cond_33

    aget-object v8, v0, v7

    .line 1412
    .restart local v8    # "c":Landroid/view/SurfaceHolder$Callback;
    instance-of v9, v8, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v9, :cond_32

    .line 1413
    move-object v9, v8

    check-cast v9, Landroid/view/SurfaceHolder$Callback2;

    iget-object v14, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v9, v14}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 1411
    .end local v8    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_32
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 1420
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_33
    if-eqz v19, :cond_37

    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-nez v0, :cond_37

    .line 1426
    iget-boolean v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    if-eqz v0, :cond_35

    .line 1431
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVisibilityChanged(true) at surface: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_34
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1435
    :cond_35
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVisibilityChanged(false) at surface: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :cond_36
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_a

    .line 1440
    :cond_37
    const/4 v2, 0x0

    :try_start_3c
    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 1441
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 1442
    if-eqz v6, :cond_38

    .line 1443
    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->resetWindowPages()V

    .line 1450
    iget-object v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mEngineExt:Landroid/service/wallpaper/IEngineExt;

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v0, v2, v7, v8}, Landroid/service/wallpaper/IEngineExt;->reportFinishDrawing(Landroid/os/Handler;Landroid/view/IWindowSession;Lcom/android/internal/view/BaseIWindow;)V

    .line 1453
    iget v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-direct {v1, v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors(FF)V

    .line 1455
    :cond_38
    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reposition()V

    .line 1456
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldWaitForEngineShown()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportEngineShown(Z)V

    .line 1457
    nop

    .line 1459
    .end local v4    # "stableInsets":Landroid/graphics/Rect;
    .end local v5    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v10    # "visibleFrame":Landroid/graphics/Rect;
    .end local v11    # "h":I
    .end local v12    # "windowInsets":Landroid/view/WindowInsets;
    .end local v15    # "contentInsets":Landroid/graphics/Rect;
    .end local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v18    # "maxBounds":Landroid/graphics/Rect;
    .end local v19    # "didSurface":Z
    .end local v23    # "transformHint":I
    .end local v30    # "config":Landroid/content/res/Configuration;
    .end local v31    # "w":I
    .end local v32    # "relayoutResult":I
    .end local v33    # "rawCutout":Landroid/view/DisplayCutout;
    move v12, v13

    move/from16 v13, v17

    goto/16 :goto_22

    .line 1440
    .end local v26    # "creating":Z
    .restart local v4    # "stableInsets":Landroid/graphics/Rect;
    .restart local v5    # "displayCutout":Landroid/view/DisplayCutout;
    .restart local v9    # "creating":Z
    .restart local v10    # "visibleFrame":Landroid/graphics/Rect;
    .restart local v11    # "h":I
    .restart local v12    # "windowInsets":Landroid/view/WindowInsets;
    .restart local v15    # "contentInsets":Landroid/graphics/Rect;
    .restart local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .restart local v18    # "maxBounds":Landroid/graphics/Rect;
    .restart local v19    # "didSurface":Z
    .restart local v23    # "transformHint":I
    .restart local v30    # "config":Landroid/content/res/Configuration;
    .restart local v31    # "w":I
    .restart local v32    # "relayoutResult":I
    .restart local v33    # "rawCutout":Landroid/view/DisplayCutout;
    :catchall_b
    move-exception v0

    move/from16 v26, v9

    .end local v9    # "creating":Z
    .restart local v26    # "creating":Z
    goto :goto_21

    .end local v32    # "relayoutResult":I
    .end local v33    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v2    # "relayoutResult":I
    .local v9, "rawCutout":Landroid/view/DisplayCutout;
    :catchall_c
    move-exception v0

    move/from16 v32, v2

    move-object/from16 v33, v9

    .end local v2    # "relayoutResult":I
    .end local v9    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v32    # "relayoutResult":I
    .restart local v33    # "rawCutout":Landroid/view/DisplayCutout;
    goto :goto_21

    .end local v23    # "transformHint":I
    .end local v30    # "config":Landroid/content/res/Configuration;
    .end local v31    # "w":I
    .end local v32    # "relayoutResult":I
    .end local v33    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v2    # "relayoutResult":I
    .local v6, "transformHint":I
    .local v7, "config":Landroid/content/res/Configuration;
    .local v8, "w":I
    .restart local v9    # "rawCutout":Landroid/view/DisplayCutout;
    .local p3, "redrawNeeded":Z
    :catchall_d
    move-exception v0

    move/from16 v32, v2

    move/from16 v23, v6

    move-object/from16 v30, v7

    move/from16 v31, v8

    move-object/from16 v33, v9

    move/from16 v6, p3

    .end local v2    # "relayoutResult":I
    .end local v7    # "config":Landroid/content/res/Configuration;
    .end local v8    # "w":I
    .end local v9    # "rawCutout":Landroid/view/DisplayCutout;
    .end local p3    # "redrawNeeded":Z
    .local v6, "redrawNeeded":Z
    .restart local v23    # "transformHint":I
    .restart local v30    # "config":Landroid/content/res/Configuration;
    .restart local v31    # "w":I
    .restart local v32    # "relayoutResult":I
    .restart local v33    # "rawCutout":Landroid/view/DisplayCutout;
    :goto_21
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 1441
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 1442
    if-eqz v6, :cond_39

    .line 1443
    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->resetWindowPages()V

    .line 1450
    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mEngineExt:Landroid/service/wallpaper/IEngineExt;

    iget-object v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHandler:Landroid/os/Handler;

    iget-object v8, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v9, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v2, v7, v8, v9}, Landroid/service/wallpaper/IEngineExt;->reportFinishDrawing(Landroid/os/Handler;Landroid/view/IWindowSession;Lcom/android/internal/view/BaseIWindow;)V

    .line 1453
    iget v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    iget v7, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-direct {v1, v2, v7}, Landroid/service/wallpaper/WallpaperService$Engine;->processLocalColors(FF)V

    .line 1455
    :cond_39
    invoke-direct/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reposition()V

    .line 1456
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->shouldWaitForEngineShown()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->reportEngineShown(Z)V

    .line 1457
    nop

    .end local v6    # "redrawNeeded":Z
    .end local v13    # "sizeChanged":Z
    .end local v17    # "insetsChanged":Z
    .end local v21    # "myWidth":I
    .end local v22    # "fixedSize":Z
    .end local v25    # "typeChanged":Z
    .end local v26    # "creating":Z
    .end local v27    # "surfaceCreating":Z
    .end local v29    # "myHeight":I
    .end local v35    # "flagsChanged":Z
    .end local v36    # "formatChanged":Z
    .end local p0    # "this":Landroid/service/wallpaper/WallpaperService$Engine;
    .end local p1    # "forceRelayout":Z
    .end local p2    # "forceReport":Z
    throw v0
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3c} :catch_8

    .line 1458
    .end local v4    # "stableInsets":Landroid/graphics/Rect;
    .end local v5    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v10    # "visibleFrame":Landroid/graphics/Rect;
    .end local v11    # "h":I
    .end local v12    # "windowInsets":Landroid/view/WindowInsets;
    .end local v15    # "contentInsets":Landroid/graphics/Rect;
    .end local v16    # "winConfig":Landroid/app/WindowConfiguration;
    .end local v18    # "maxBounds":Landroid/graphics/Rect;
    .end local v19    # "didSurface":Z
    .end local v23    # "transformHint":I
    .end local v30    # "config":Landroid/content/res/Configuration;
    .end local v31    # "w":I
    .end local v32    # "relayoutResult":I
    .end local v33    # "rawCutout":Landroid/view/DisplayCutout;
    .restart local v6    # "redrawNeeded":Z
    .restart local v13    # "sizeChanged":Z
    .restart local v17    # "insetsChanged":Z
    .restart local v21    # "myWidth":I
    .restart local v22    # "fixedSize":Z
    .restart local v25    # "typeChanged":Z
    .restart local v26    # "creating":Z
    .restart local v27    # "surfaceCreating":Z
    .restart local v29    # "myHeight":I
    .restart local v35    # "flagsChanged":Z
    .restart local v36    # "formatChanged":Z
    .restart local p0    # "this":Landroid/service/wallpaper/WallpaperService$Engine;
    .restart local p1    # "forceRelayout":Z
    .restart local p2    # "forceReport":Z
    :catch_8
    move-exception v0

    move v12, v13

    move/from16 v13, v17

    goto/16 :goto_22

    .end local v6    # "redrawNeeded":Z
    .restart local p3    # "redrawNeeded":Z
    :catch_9
    move-exception v0

    move/from16 v6, p3

    move v12, v13

    move/from16 v13, v17

    goto/16 :goto_22

    .end local v22    # "fixedSize":Z
    .local v5, "fixedSize":Z
    :catch_a
    move-exception v0

    move/from16 v22, v5

    move/from16 v6, p3

    move v12, v13

    move/from16 v13, v17

    .end local v5    # "fixedSize":Z
    .restart local v22    # "fixedSize":Z
    goto/16 :goto_22

    .end local v17    # "insetsChanged":Z
    .end local v22    # "fixedSize":Z
    .restart local v5    # "fixedSize":Z
    .local v20, "insetsChanged":Z
    :catch_b
    move-exception v0

    move/from16 v22, v5

    move/from16 v6, p3

    move v12, v13

    move/from16 v13, v20

    .end local v5    # "fixedSize":Z
    .restart local v22    # "fixedSize":Z
    goto/16 :goto_22

    .end local v21    # "myWidth":I
    .end local v22    # "fixedSize":Z
    .local v4, "myWidth":I
    .restart local v5    # "fixedSize":Z
    :catch_c
    move-exception v0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v6, p3

    move v12, v13

    move/from16 v13, v20

    .end local v4    # "myWidth":I
    .end local v5    # "fixedSize":Z
    .restart local v21    # "myWidth":I
    .restart local v22    # "fixedSize":Z
    goto/16 :goto_22

    .end local v20    # "insetsChanged":Z
    .end local v21    # "myWidth":I
    .end local v22    # "fixedSize":Z
    .restart local v4    # "myWidth":I
    .restart local v5    # "fixedSize":Z
    .restart local v28    # "insetsChanged":Z
    :catch_d
    move-exception v0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v6, p3

    move v12, v13

    move/from16 v13, v28

    .end local v4    # "myWidth":I
    .end local v5    # "fixedSize":Z
    .restart local v21    # "myWidth":I
    .restart local v22    # "fixedSize":Z
    goto/16 :goto_22

    .end local v13    # "sizeChanged":Z
    .end local v21    # "myWidth":I
    .end local v22    # "fixedSize":Z
    .restart local v4    # "myWidth":I
    .restart local v5    # "fixedSize":Z
    .local v24, "sizeChanged":Z
    :catch_e
    move-exception v0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v6, p3

    move/from16 v12, v24

    move/from16 v13, v28

    .end local v4    # "myWidth":I
    .end local v5    # "fixedSize":Z
    .restart local v21    # "myWidth":I
    .restart local v22    # "fixedSize":Z
    goto/16 :goto_22

    .end local v21    # "myWidth":I
    .end local v22    # "fixedSize":Z
    .end local v29    # "myHeight":I
    .restart local v4    # "myWidth":I
    .restart local v5    # "fixedSize":Z
    .local v6, "myHeight":I
    :catch_f
    move-exception v0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v29, v6

    move/from16 v6, p3

    move/from16 v12, v24

    move/from16 v13, v28

    .end local v4    # "myWidth":I
    .end local v5    # "fixedSize":Z
    .end local v6    # "myHeight":I
    .restart local v21    # "myWidth":I
    .restart local v22    # "fixedSize":Z
    .restart local v29    # "myHeight":I
    goto/16 :goto_22

    .end local v21    # "myWidth":I
    .end local v22    # "fixedSize":Z
    .end local v28    # "insetsChanged":Z
    .end local v29    # "myHeight":I
    .restart local v4    # "myWidth":I
    .restart local v5    # "fixedSize":Z
    .restart local v6    # "myHeight":I
    .local v13, "insetsChanged":Z
    :catch_10
    move-exception v0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v29, v6

    move/from16 v28, v13

    move/from16 v6, p3

    move/from16 v12, v24

    .end local v4    # "myWidth":I
    .end local v5    # "fixedSize":Z
    .end local v6    # "myHeight":I
    .end local v13    # "insetsChanged":Z
    .restart local v21    # "myWidth":I
    .restart local v22    # "fixedSize":Z
    .restart local v28    # "insetsChanged":Z
    .restart local v29    # "myHeight":I
    goto/16 :goto_22

    .end local v21    # "myWidth":I
    .end local v22    # "fixedSize":Z
    .end local v27    # "surfaceCreating":Z
    .end local v28    # "insetsChanged":Z
    .end local v29    # "myHeight":I
    .restart local v4    # "myWidth":I
    .restart local v5    # "fixedSize":Z
    .restart local v6    # "myHeight":I
    .local v9, "surfaceCreating":Z
    .restart local v13    # "insetsChanged":Z
    :catch_11
    move-exception v0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v29, v6

    move/from16 v27, v9

    move/from16 v28, v13

    move/from16 v6, p3

    move/from16 v12, v24

    .end local v4    # "myWidth":I
    .end local v5    # "fixedSize":Z
    .end local v6    # "myHeight":I
    .end local v9    # "surfaceCreating":Z
    .end local v13    # "insetsChanged":Z
    .restart local v21    # "myWidth":I
    .restart local v22    # "fixedSize":Z
    .restart local v27    # "surfaceCreating":Z
    .restart local v28    # "insetsChanged":Z
    .restart local v29    # "myHeight":I
    goto/16 :goto_22

    .end local v21    # "myWidth":I
    .end local v22    # "fixedSize":Z
    .end local v26    # "creating":Z
    .end local v27    # "surfaceCreating":Z
    .end local v28    # "insetsChanged":Z
    .end local v29    # "myHeight":I
    .restart local v4    # "myWidth":I
    .restart local v5    # "fixedSize":Z
    .restart local v6    # "myHeight":I
    .local v8, "creating":Z
    .restart local v9    # "surfaceCreating":Z
    .restart local v13    # "insetsChanged":Z
    :catch_12
    move-exception v0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v29, v6

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v28, v13

    move/from16 v6, p3

    move/from16 v12, v24

    .end local v4    # "myWidth":I
    .end local v5    # "fixedSize":Z
    .end local v6    # "myHeight":I
    .end local v8    # "creating":Z
    .end local v9    # "surfaceCreating":Z
    .end local v13    # "insetsChanged":Z
    .restart local v21    # "myWidth":I
    .restart local v22    # "fixedSize":Z
    .restart local v26    # "creating":Z
    .restart local v27    # "surfaceCreating":Z
    .restart local v28    # "insetsChanged":Z
    .restart local v29    # "myHeight":I
    goto :goto_22

    .end local v21    # "myWidth":I
    .end local v22    # "fixedSize":Z
    .end local v26    # "creating":Z
    .end local v27    # "surfaceCreating":Z
    .end local v28    # "insetsChanged":Z
    .end local v29    # "myHeight":I
    .end local v35    # "flagsChanged":Z
    .end local v36    # "formatChanged":Z
    .restart local v4    # "myWidth":I
    .restart local v5    # "fixedSize":Z
    .restart local v6    # "myHeight":I
    .restart local v8    # "creating":Z
    .restart local v9    # "surfaceCreating":Z
    .local v10, "formatChanged":Z
    .restart local v13    # "insetsChanged":Z
    .local v15, "flagsChanged":Z
    :catch_13
    move-exception v0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v29, v6

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v36, v10

    move/from16 v28, v13

    move/from16 v35, v15

    move/from16 v6, p3

    move/from16 v12, v24

    .end local v4    # "myWidth":I
    .end local v5    # "fixedSize":Z
    .end local v6    # "myHeight":I
    .end local v8    # "creating":Z
    .end local v9    # "surfaceCreating":Z
    .end local v10    # "formatChanged":Z
    .end local v13    # "insetsChanged":Z
    .end local v15    # "flagsChanged":Z
    .restart local v21    # "myWidth":I
    .restart local v22    # "fixedSize":Z
    .restart local v26    # "creating":Z
    .restart local v27    # "surfaceCreating":Z
    .restart local v28    # "insetsChanged":Z
    .restart local v29    # "myHeight":I
    .restart local v35    # "flagsChanged":Z
    .restart local v36    # "formatChanged":Z
    goto :goto_22

    .end local v21    # "myWidth":I
    .end local v22    # "fixedSize":Z
    .end local v25    # "typeChanged":Z
    .end local v26    # "creating":Z
    .end local v27    # "surfaceCreating":Z
    .end local v28    # "insetsChanged":Z
    .end local v29    # "myHeight":I
    .end local v35    # "flagsChanged":Z
    .end local v36    # "formatChanged":Z
    .restart local v4    # "myWidth":I
    .restart local v5    # "fixedSize":Z
    .restart local v6    # "myHeight":I
    .restart local v8    # "creating":Z
    .restart local v9    # "surfaceCreating":Z
    .restart local v10    # "formatChanged":Z
    .restart local v13    # "insetsChanged":Z
    .restart local v14    # "typeChanged":Z
    .restart local v15    # "flagsChanged":Z
    :catch_14
    move-exception v0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v29, v6

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v36, v10

    move/from16 v28, v13

    move/from16 v25, v14

    move/from16 v35, v15

    move/from16 v6, p3

    move/from16 v12, v24

    .end local v4    # "myWidth":I
    .end local v5    # "fixedSize":Z
    .end local v6    # "myHeight":I
    .end local v8    # "creating":Z
    .end local v9    # "surfaceCreating":Z
    .end local v10    # "formatChanged":Z
    .end local v13    # "insetsChanged":Z
    .end local v14    # "typeChanged":Z
    .end local v15    # "flagsChanged":Z
    .restart local v21    # "myWidth":I
    .restart local v22    # "fixedSize":Z
    .restart local v25    # "typeChanged":Z
    .restart local v26    # "creating":Z
    .restart local v27    # "surfaceCreating":Z
    .restart local v28    # "insetsChanged":Z
    .restart local v29    # "myHeight":I
    .restart local v35    # "flagsChanged":Z
    .restart local v36    # "formatChanged":Z
    goto :goto_22

    .end local v21    # "myWidth":I
    .end local v22    # "fixedSize":Z
    .end local v24    # "sizeChanged":Z
    .end local v25    # "typeChanged":Z
    .end local v26    # "creating":Z
    .end local v27    # "surfaceCreating":Z
    .end local v28    # "insetsChanged":Z
    .end local v29    # "myHeight":I
    .end local v35    # "flagsChanged":Z
    .end local v36    # "formatChanged":Z
    .restart local v4    # "myWidth":I
    .restart local v5    # "fixedSize":Z
    .restart local v6    # "myHeight":I
    .restart local v8    # "creating":Z
    .restart local v9    # "surfaceCreating":Z
    .restart local v10    # "formatChanged":Z
    .local v12, "sizeChanged":Z
    .restart local v13    # "insetsChanged":Z
    .restart local v14    # "typeChanged":Z
    .restart local v15    # "flagsChanged":Z
    :catch_15
    move-exception v0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v29, v6

    move/from16 v26, v8

    move/from16 v27, v9

    move/from16 v36, v10

    move/from16 v24, v12

    move/from16 v28, v13

    move/from16 v25, v14

    move/from16 v35, v15

    move/from16 v6, p3

    .line 1460
    .end local v4    # "myWidth":I
    .end local v5    # "fixedSize":Z
    .end local v8    # "creating":Z
    .end local v9    # "surfaceCreating":Z
    .end local v10    # "formatChanged":Z
    .end local v14    # "typeChanged":Z
    .end local v15    # "flagsChanged":Z
    .end local p3    # "redrawNeeded":Z
    .local v6, "redrawNeeded":Z
    .restart local v21    # "myWidth":I
    .restart local v22    # "fixedSize":Z
    .restart local v25    # "typeChanged":Z
    .restart local v26    # "creating":Z
    .restart local v27    # "surfaceCreating":Z
    .restart local v29    # "myHeight":I
    .restart local v35    # "flagsChanged":Z
    .restart local v36    # "formatChanged":Z
    :goto_22
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: x="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " y="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " w="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " h="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_3a
    :goto_23
    return-void
.end method
