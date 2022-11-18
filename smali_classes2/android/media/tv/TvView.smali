.class public Landroid/media/tv/TvView;
.super Landroid/view/ViewGroup;
.source "TvView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvView$MySessionCallback;,
        Landroid/media/tv/TvView$OnUnhandledInputEventListener;,
        Landroid/media/tv/TvView$TvInputCallback;,
        Landroid/media/tv/TvView$TimeShiftPositionCallback;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o NULL_TV_VIEW:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/tv/TvView;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TvView"

.field private static final greylist-max-o ZORDER_MEDIA:I = 0x0

.field private static final greylist-max-o ZORDER_MEDIA_OVERLAY:I = 0x1

.field private static final greylist-max-o ZORDER_ON_TOP:I = 0x2

.field private static greylist-max-o sMainTvView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/tv/TvView;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sMainTvViewLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mAttrs:Landroid/util/AttributeSet;

.field private greylist-max-o mCallback:Landroid/media/tv/TvView$TvInputCallback;

.field private greylist-max-o mCaptionEnabled:Ljava/lang/Boolean;

.field private final greylist-max-o mDefStyleAttr:I

.field private final greylist-max-o mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mOnUnhandledInputEventListener:Landroid/media/tv/TvView$OnUnhandledInputEventListener;

.field private greylist-max-o mOverlayViewCreated:Z

.field private greylist-max-o mOverlayViewFrame:Landroid/graphics/Rect;

.field private final blacklist mParser:Landroid/content/res/XmlResourceParser;

.field private final greylist-max-o mPendingAppPrivateCommands:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mSession:Landroid/media/tv/TvInputManager$Session;

.field private greylist-max-o mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

.field private greylist-max-o mStreamVolume:Ljava/lang/Float;

.field private greylist-max-o mSurface:Landroid/view/Surface;

.field private greylist-max-o mSurfaceChanged:Z

.field private greylist-max-o mSurfaceFormat:I

.field private greylist-max-o mSurfaceHeight:I

.field private final greylist-max-o mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private greylist-max-o mSurfaceView:Landroid/view/SurfaceView;

.field private greylist-max-o mSurfaceViewBottom:I

.field private greylist-max-o mSurfaceViewLeft:I

.field private greylist-max-o mSurfaceViewRight:I

.field private greylist-max-o mSurfaceViewTop:I

.field private greylist-max-o mSurfaceWidth:I

.field private greylist-max-o mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;

.field private final greylist-max-o mTvInputManager:Landroid/media/tv/TvInputManager;

.field private greylist-max-o mUseRequestedSurfaceLayout:Z

.field private greylist-max-o mWindowZOrder:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptionEnabled(Landroid/media/tv/TvView;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvView;->mCaptionEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingAppPrivateCommands(Landroid/media/tv/TvView;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSession(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStreamVolume(Landroid/media/tv/TvView;)Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvView;->mStreamVolume:Ljava/lang/Float;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurface(Landroid/media/tv/TvView;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceChanged(Landroid/media/tv/TvView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/tv/TvView;->mSurfaceChanged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceFormat(Landroid/media/tv/TvView;)I
    .locals 0

    iget p0, p0, Landroid/media/tv/TvView;->mSurfaceFormat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceHeight(Landroid/media/tv/TvView;)I
    .locals 0

    iget p0, p0, Landroid/media/tv/TvView;->mSurfaceHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceWidth(Landroid/media/tv/TvView;)I
    .locals 0

    iget p0, p0, Landroid/media/tv/TvView;->mSurfaceWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeShiftPositionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOverlayViewCreated(Landroid/media/tv/TvView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOverlayViewFrame(Landroid/media/tv/TvView;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSession(Landroid/media/tv/TvView;Landroid/media/tv/TvInputManager$Session;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSessionCallback(Landroid/media/tv/TvView;Landroid/media/tv/TvView$MySessionCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurface(Landroid/media/tv/TvView;Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceChanged(Landroid/media/tv/TvView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/media/tv/TvView;->mSurfaceChanged:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceFormat(Landroid/media/tv/TvView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceFormat:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceHeight(Landroid/media/tv/TvView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceHeight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewBottom(Landroid/media/tv/TvView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceViewBottom:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewLeft(Landroid/media/tv/TvView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceViewLeft:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewRight(Landroid/media/tv/TvView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceViewRight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewTop(Landroid/media/tv/TvView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceViewTop:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceWidth(Landroid/media/tv/TvView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/TvView;->mSurfaceWidth:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUseRequestedSurfaceLayout(Landroid/media/tv/TvView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/media/tv/TvView;->mUseRequestedSurfaceLayout:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckChangeHdmiCecActiveSourcePermission(Landroid/media/tv/TvView;)Z
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/TvView;->checkChangeHdmiCecActiveSourcePermission()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateSessionOverlayView(Landroid/media/tv/TvView;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchSurfaceChanged(Landroid/media/tv/TvView;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/TvView;->dispatchSurfaceChanged(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mensurePositionTracking(Landroid/media/tv/TvView;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/TvView;->ensurePositionTracking()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrelayoutSessionOverlayView(Landroid/media/tv/TvView;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/TvView;->relayoutSessionOverlayView()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSessionSurface(Landroid/media/tv/TvView;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/TvView;->setSessionSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsMainTvView()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsMainTvViewLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroid/media/tv/TvView;->NULL_TV_VIEW:Ljava/lang/ref/WeakReference;

    .line 83
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    .line 84
    sput-object v0, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 166
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/tv/TvView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/tv/TvView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 174
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    .line 115
    new-instance v0, Landroid/media/tv/TvView$1;

    invoke-direct {v0, p0}, Landroid/media/tv/TvView$1;-><init>(Landroid/media/tv/TvView;)V

    iput-object v0, p0, Landroid/media/tv/TvView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 143
    new-instance v0, Landroid/media/tv/TvView$2;

    invoke-direct {v0, p0}, Landroid/media/tv/TvView$2;-><init>(Landroid/media/tv/TvView;)V

    iput-object v0, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    .line 175
    invoke-static {p2}, Landroid/content/res/Resources;->getAttributeSetSourceResId(Landroid/util/AttributeSet;)I

    move-result v0

    .line 176
    .local v0, "sourceResId":I
    const-string v1, "TvView"

    if-eqz v0, :cond_0

    .line 177
    const-string v2, "Build local AttributeSet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/TvView;->mParser:Landroid/content/res/XmlResourceParser;

    .line 179
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/TvView;->mAttrs:Landroid/util/AttributeSet;

    goto :goto_0

    .line 181
    :cond_0
    const-string v2, "Use passed in AttributeSet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/TvView;->mParser:Landroid/content/res/XmlResourceParser;

    .line 183
    iput-object p2, p0, Landroid/media/tv/TvView;->mAttrs:Landroid/util/AttributeSet;

    .line 185
    :goto_0
    iput p3, p0, Landroid/media/tv/TvView;->mDefStyleAttr:I

    .line 186
    invoke-direct {p0}, Landroid/media/tv/TvView;->resetSurfaceView()V

    .line 187
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "tv_input"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager;

    iput-object v1, p0, Landroid/media/tv/TvView;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 188
    return-void
.end method

.method private greylist-max-o checkChangeHdmiCecActiveSourcePermission()Z
    .locals 2

    .line 892
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_HDMI_CEC_ACTIVE_SOURCE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o createSessionOverlayView()V
    .locals 2

    .line 851
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/media/tv/TvView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 855
    :cond_0
    invoke-direct {p0}, Landroid/media/tv/TvView;->getViewFrameOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    .line 856
    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v1, p0, v0}, Landroid/media/tv/TvInputManager$Session;->createOverlayView(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 857
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    .line 858
    return-void

    .line 853
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o dispatchSurfaceChanged(III)V
    .locals 1
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 844
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_0

    .line 845
    return-void

    .line 847
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/tv/TvInputManager$Session;->dispatchSurfaceChanged(III)V

    .line 848
    return-void
.end method

.method private greylist-max-o ensurePositionTracking()V
    .locals 2

    .line 588
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_0

    .line 589
    return-void

    .line 591
    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$Session;->timeShiftEnablePositionTracking(Z)V

    .line 592
    return-void
.end method

.method private greylist-max-o getViewFrameOnScreen()Landroid/graphics/Rect;
    .locals 3

    .line 883
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 884
    .local v0, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/media/tv/TvView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 885
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 886
    .local v1, "frameF":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 887
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 888
    return-object v0
.end method

.method private greylist-max-o relayoutSessionOverlayView()V
    .locals 2

    .line 870
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/media/tv/TvView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 874
    :cond_0
    invoke-direct {p0}, Landroid/media/tv/TvView;->getViewFrameOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    .line 875
    .local v0, "viewFrame":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 876
    return-void

    .line 878
    :cond_1
    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v1, v0}, Landroid/media/tv/TvInputManager$Session;->relayoutOverlayView(Landroid/graphics/Rect;)V

    .line 879
    iput-object v0, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    .line 880
    return-void

    .line 872
    .end local v0    # "viewFrame":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    return-void
.end method

.method private greylist-max-o removeSessionOverlayView()V
    .locals 2

    .line 861
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 864
    :cond_0
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->removeOverlayView()V

    .line 865
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/TvView;->mOverlayViewCreated:Z

    .line 866
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvView;->mOverlayViewFrame:Landroid/graphics/Rect;

    .line 867
    return-void

    .line 862
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o resetInternal()V
    .locals 2

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    .line 380
    iget-object v1, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 381
    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v1, :cond_0

    .line 382
    invoke-direct {p0, v0}, Landroid/media/tv/TvView;->setSessionSurface(Landroid/view/Surface;)V

    .line 383
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    .line 384
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/tv/TvView;->mUseRequestedSurfaceLayout:Z

    .line 385
    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v1}, Landroid/media/tv/TvInputManager$Session;->release()V

    .line 386
    iput-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    .line 387
    invoke-direct {p0}, Landroid/media/tv/TvView;->resetSurfaceView()V

    .line 389
    :cond_0
    return-void
.end method

.method private greylist-max-o resetSurfaceView()V
    .locals 4

    .line 814
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 815
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 816
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/media/tv/TvView;->removeView(Landroid/view/View;)V

    .line 818
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvView;->mSurface:Landroid/view/Surface;

    .line 819
    new-instance v0, Landroid/media/tv/TvView$3;

    invoke-virtual {p0}, Landroid/media/tv/TvView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvView;->mAttrs:Landroid/util/AttributeSet;

    iget v3, p0, Landroid/media/tv/TvView;->mDefStyleAttr:I

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/media/tv/TvView$3;-><init>(Landroid/media/tv/TvView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 826
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setSecure(Z)V

    .line 827
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/tv/TvView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 828
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    if-ne v0, v1, :cond_1

    .line 829
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    goto :goto_0

    .line 830
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 831
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 833
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/media/tv/TvView;->addView(Landroid/view/View;)V

    .line 834
    return-void
.end method

.method private greylist-max-o setSessionSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 837
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_0

    .line 838
    return-void

    .line 840
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->setSurface(Landroid/view/Surface;)V

    .line 841
    return-void
.end method


# virtual methods
.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 795
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 797
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 799
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 800
    return-void
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 703
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 704
    return v1

    .line 707
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 708
    return v2

    .line 710
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    .line 711
    .local v0, "copiedEvent":Landroid/view/InputEvent;
    iget-object v3, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v4, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    iget-object v5, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/media/tv/TvInputManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v3

    .line 713
    .local v3, "ret":I
    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 658
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 659
    return v1

    .line 662
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 663
    return v2

    .line 665
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v0

    .line 666
    .local v0, "copiedEvent":Landroid/view/InputEvent;
    iget-object v3, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v4, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    iget-object v5, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/media/tv/TvInputManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v3

    .line 668
    .local v3, "ret":I
    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 673
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 674
    return v1

    .line 677
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 678
    return v2

    .line 680
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    .line 681
    .local v0, "copiedEvent":Landroid/view/InputEvent;
    iget-object v3, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v4, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    iget-object v5, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/media/tv/TvInputManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v3

    .line 683
    .local v3, "ret":I
    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 688
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 689
    return v1

    .line 692
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 693
    return v2

    .line 695
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    .line 696
    .local v0, "copiedEvent":Landroid/view/InputEvent;
    iget-object v3, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    iget-object v4, p0, Landroid/media/tv/TvView;->mFinishedInputEventCallback:Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;

    iget-object v5, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/media/tv/TvInputManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v3

    .line 698
    .local v3, "ret":I
    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public whitelist dispatchUnhandledInputEvent(Landroid/view/InputEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 627
    iget-object v0, p0, Landroid/media/tv/TvView;->mOnUnhandledInputEventListener:Landroid/media/tv/TvView$OnUnhandledInputEventListener;

    if-eqz v0, :cond_0

    .line 628
    invoke-interface {v0, p1}, Landroid/media/tv/TvView$OnUnhandledInputEventListener;->onUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    const/4 v0, 0x1

    return v0

    .line 632
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/tv/TvView;->onUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .line 718
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchWindowFocusChanged(Z)V

    .line 721
    sget-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 722
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v1, :cond_0

    .line 723
    invoke-direct {p0}, Landroid/media/tv/TvView;->checkChangeHdmiCecActiveSourcePermission()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v1}, Landroid/media/tv/TvInputManager$Session;->setMain()V

    .line 726
    :cond_0
    monitor-exit v0

    .line 727
    return-void

    .line 726
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 786
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 788
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 790
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 791
    return-void
.end method

.method public whitelist gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 11
    .param p1, "region"    # Landroid/graphics/Region;

    .line 768
    iget v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 769
    if-eqz p1, :cond_0

    .line 770
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getWidth()I

    move-result v0

    .line 771
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/media/tv/TvView;->getHeight()I

    move-result v2

    .line 772
    .local v2, "height":I
    if-lez v0, :cond_0

    if-lez v2, :cond_0

    .line 773
    new-array v1, v1, [I

    .line 774
    .local v1, "location":[I
    invoke-virtual {p0, v1}, Landroid/media/tv/TvView;->getLocationInWindow([I)V

    .line 775
    const/4 v3, 0x0

    aget v3, v1, v3

    .line 776
    .local v3, "left":I
    const/4 v4, 0x1

    aget v10, v1, v4

    .line 777
    .local v10, "top":I
    add-int v7, v3, v0

    add-int v8, v10, v2

    sget-object v9, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v4, p1

    move v5, v3

    move v6, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 781
    .end local v0    # "width":I
    .end local v1    # "location":[I
    .end local v2    # "height":I
    .end local v3    # "left":I
    .end local v10    # "top":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method public blacklist getInputSession()Landroid/media/tv/TvInputManager$Session;
    .locals 1

    .line 202
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    return-object v0
.end method

.method public whitelist getSelectedTrack(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 477
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_0

    .line 478
    const/4 v0, 0x0

    return-object v0

    .line 480
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->getSelectedTrack(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTracks(I)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation

    .line 461
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_0

    .line 462
    const/4 v0, 0x0

    return-object v0

    .line 464
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->getTracks(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 0

    .line 731
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 732
    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    .line 733
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 0

    .line 737
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    .line 738
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 739
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 747
    iget-boolean v0, p0, Landroid/media/tv/TvView;->mUseRequestedSurfaceLayout:Z

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    iget v1, p0, Landroid/media/tv/TvView;->mSurfaceViewLeft:I

    iget v2, p0, Landroid/media/tv/TvView;->mSurfaceViewTop:I

    iget v3, p0, Landroid/media/tv/TvView;->mSurfaceViewRight:I

    iget v4, p0, Landroid/media/tv/TvView;->mSurfaceViewBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceView;->layout(IIII)V

    goto :goto_0

    .line 751
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/SurfaceView;->layout(IIII)V

    .line 753
    :goto_0
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 757
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceView;->measure(II)V

    .line 758
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getMeasuredWidth()I

    move-result v0

    .line 759
    .local v0, "width":I
    iget-object v1, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getMeasuredHeight()I

    move-result v1

    .line 760
    .local v1, "height":I
    iget-object v2, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getMeasuredState()I

    move-result v2

    .line 761
    .local v2, "childState":I
    invoke-static {v0, p1, v2}, Landroid/media/tv/TvView;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v4, v2, 0x10

    .line 762
    invoke-static {v1, p2, v4}, Landroid/media/tv/TvView;->resolveSizeAndState(III)I

    move-result v4

    .line 761
    invoke-virtual {p0, v3, v4}, Landroid/media/tv/TvView;->setMeasuredDimension(II)V

    .line 764
    return-void
.end method

.method public whitelist onUnhandledInputEvent(Landroid/view/InputEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 644
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 804
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 805
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 806
    if-nez p2, :cond_0

    .line 807
    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    goto :goto_0

    .line 809
    :cond_0
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    .line 811
    :goto_0
    return-void
.end method

.method public greylist requestUnblockContent(Landroid/media/tv/TvContentRating;)V
    .locals 0
    .param p1, "unblockedRating"    # Landroid/media/tv/TvContentRating;

    .line 401
    invoke-virtual {p0, p1}, Landroid/media/tv/TvView;->unblockContent(Landroid/media/tv/TvContentRating;)V

    .line 402
    return-void
.end method

.method public whitelist reset()V
    .locals 2

    .line 370
    sget-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    sget-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 372
    sget-object v1, Landroid/media/tv/TvView;->NULL_TV_VIEW:Ljava/lang/ref/WeakReference;

    sput-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    .line 374
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-direct {p0}, Landroid/media/tv/TvView;->resetInternal()V

    .line 376
    return-void

    .line 374
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist selectTrack(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 447
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->selectTrack(ILjava/lang/String;)V

    .line 450
    :cond_0
    return-void
.end method

.method public whitelist sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 604
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 607
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 610
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendAppPrivateCommand - session not yet created (action \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" pending)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v0, p0, Landroid/media/tv/TvView;->mPendingAppPrivateCommands:Ljava/util/Queue;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 614
    :goto_0
    return-void

    .line 605
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action cannot be null or an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCallback(Landroid/media/tv/TvView$TvInputCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/tv/TvView$TvInputCallback;

    .line 197
    iput-object p1, p0, Landroid/media/tv/TvView;->mCallback:Landroid/media/tv/TvView$TvInputCallback;

    .line 198
    return-void
.end method

.method public whitelist setCaptionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 430
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvView;->mCaptionEnabled:Ljava/lang/Boolean;

    .line 431
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->setCaptionEnabled(Z)V

    .line 434
    :cond_0
    return-void
.end method

.method public whitelist setInteractiveAppNotificationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 498
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->setInteractiveAppNotificationEnabled(Z)V

    .line 501
    :cond_0
    return-void
.end method

.method public whitelist setMain()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 223
    sget-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    .line 225
    invoke-virtual {p0}, Landroid/media/tv/TvView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {v1}, Landroid/media/tv/TvInputManager$Session;->setMain()V

    .line 228
    :cond_0
    monitor-exit v0

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setOnUnhandledInputEventListener(Landroid/media/tv/TvView$OnUnhandledInputEventListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/tv/TvView$OnUnhandledInputEventListener;

    .line 653
    iput-object p1, p0, Landroid/media/tv/TvView;->mOnUnhandledInputEventListener:Landroid/media/tv/TvView$OnUnhandledInputEventListener;

    .line 654
    return-void
.end method

.method public whitelist setStreamVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .line 298
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvView;->mStreamVolume:Ljava/lang/Float;

    .line 299
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-nez v0, :cond_0

    .line 301
    return-void

    .line 303
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->setStreamVolume(F)V

    .line 304
    return-void
.end method

.method public whitelist setTimeShiftPositionCallback(Landroid/media/tv/TvView$TimeShiftPositionCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/tv/TvView$TimeShiftPositionCallback;

    .line 583
    iput-object p1, p0, Landroid/media/tv/TvView;->mTimeShiftPositionCallback:Landroid/media/tv/TvView$TimeShiftPositionCallback;

    .line 584
    invoke-direct {p0}, Landroid/media/tv/TvView;->ensurePositionTracking()V

    .line 585
    return-void
.end method

.method public whitelist setZOrderMediaOverlay(Z)V
    .locals 2
    .param p1, "isMediaOverlay"    # Z

    .line 245
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 246
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    .line 247
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    goto :goto_0

    .line 249
    :cond_0
    iput v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    .line 250
    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    .line 252
    :goto_0
    iget-object v1, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_1

    .line 255
    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 256
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 258
    :cond_1
    return-void
.end method

.method public whitelist setZOrderOnTop(Z)V
    .locals 2
    .param p1, "onTop"    # Z

    .line 274
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 275
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    .line 276
    invoke-direct {p0}, Landroid/media/tv/TvView;->removeSessionOverlayView()V

    goto :goto_0

    .line 278
    :cond_0
    iput v0, p0, Landroid/media/tv/TvView;->mWindowZOrder:I

    .line 279
    invoke-direct {p0}, Landroid/media/tv/TvView;->createSessionOverlayView()V

    .line 281
    :goto_0
    iget-object v1, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_1

    .line 282
    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 283
    iget-object v0, p0, Landroid/media/tv/TvView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 285
    :cond_1
    return-void
.end method

.method public whitelist timeShiftPause()V
    .locals 1

    .line 538
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->timeShiftPause()V

    .line 541
    :cond_0
    return-void
.end method

.method public whitelist timeShiftPlay(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "recordedProgramUri"    # Landroid/net/Uri;

    .line 511
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 514
    sget-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_0
    sget-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 516
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    .line 518
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_1

    .line 521
    invoke-virtual {v0, p2}, Landroid/media/tv/TvInputManager$Session;->timeShiftPlay(Landroid/net/Uri;)V

    goto :goto_0

    .line 523
    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iput-object p2, v0, Landroid/media/tv/TvView$MySessionCallback;->mRecordedProgramUri:Landroid/net/Uri;

    goto :goto_0

    .line 526
    :cond_2
    invoke-direct {p0}, Landroid/media/tv/TvView;->resetInternal()V

    .line 527
    new-instance v0, Landroid/media/tv/TvView$MySessionCallback;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvView$MySessionCallback;-><init>(Landroid/media/tv/TvView;Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    .line 528
    iget-object v1, p0, Landroid/media/tv/TvView;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-eqz v1, :cond_3

    .line 529
    iget-object v2, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0, v2}, Landroid/media/tv/TvInputManager;->createSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    .line 532
    :cond_3
    :goto_0
    return-void

    .line 518
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 512
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputId cannot be null or an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist timeShiftResume()V
    .locals 1

    .line 547
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->timeShiftResume()V

    .line 550
    :cond_0
    return-void
.end method

.method public whitelist timeShiftSeekTo(J)V
    .locals 1
    .param p1, "timeMs"    # J

    .line 560
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/TvInputManager$Session;->timeShiftSeekTo(J)V

    .line 563
    :cond_0
    return-void
.end method

.method public whitelist timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 1
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .line 571
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 574
    :cond_0
    return-void
.end method

.method public whitelist tune(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/tv/TvView;->tune(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 314
    return-void
.end method

.method public whitelist tune(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;
    .param p3, "params"    # Landroid/os/Bundle;

    .line 328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 331
    sget-object v0, Landroid/media/tv/TvView;->sMainTvViewLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_0
    sget-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 333
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Landroid/media/tv/TvView;->sMainTvView:Ljava/lang/ref/WeakReference;

    .line 335
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {v0, p2, p3}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    .line 344
    :cond_1
    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iput-object p2, v0, Landroid/media/tv/TvView$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    .line 345
    iget-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    iput-object p3, v0, Landroid/media/tv/TvView$MySessionCallback;->mTuneParams:Landroid/os/Bundle;

    goto :goto_0

    .line 348
    :cond_2
    invoke-direct {p0}, Landroid/media/tv/TvView;->resetInternal()V

    .line 356
    new-instance v0, Landroid/media/tv/TvView$MySessionCallback;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/tv/TvView$MySessionCallback;-><init>(Landroid/media/tv/TvView;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/tv/TvView;->mSessionCallback:Landroid/media/tv/TvView$MySessionCallback;

    .line 357
    iget-object v1, p0, Landroid/media/tv/TvView;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-eqz v1, :cond_3

    .line 358
    iget-object v2, p0, Landroid/media/tv/TvView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0, v2}, Landroid/media/tv/TvInputManager;->createSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    .line 361
    :cond_3
    :goto_0
    return-void

    .line 335
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 329
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputId cannot be null or an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unblockContent(Landroid/media/tv/TvContentRating;)V
    .locals 1
    .param p1, "unblockedRating"    # Landroid/media/tv/TvContentRating;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 416
    iget-object v0, p0, Landroid/media/tv/TvView;->mSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager$Session;->unblockContent(Landroid/media/tv/TvContentRating;)V

    .line 419
    :cond_0
    return-void
.end method
