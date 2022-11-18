.class public Landroid/media/tv/interactive/TvInteractiveAppView;
.super Landroid/view/ViewGroup;
.source "TvInteractiveAppView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;,
        Landroid/media/tv/interactive/TvInteractiveAppView$OnUnhandledInputEventListener;,
        Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;
    }
.end annotation


# static fields
.field public static final whitelist BI_INTERACTIVE_APP_KEY_ALIAS:Ljava/lang/String; = "alias"

.field public static final whitelist BI_INTERACTIVE_APP_KEY_CERTIFICATE:Ljava/lang/String; = "certificate"

.field public static final whitelist BI_INTERACTIVE_APP_KEY_HTTP_ADDITIONAL_HEADERS:Ljava/lang/String; = "http_additional_headers"

.field public static final whitelist BI_INTERACTIVE_APP_KEY_HTTP_USER_AGENT:Ljava/lang/String; = "http_user_agent"

.field public static final whitelist BI_INTERACTIVE_APP_KEY_PRIVATE_KEY:Ljava/lang/String; = "private_key"

.field private static final blacklist DEBUG:Z = false

.field public static final whitelist ERROR_KEY_METHOD_NAME:Ljava/lang/String; = "method_name"

.field private static final blacklist SET_TVVIEW_FAIL:I = 0x2

.field private static final blacklist SET_TVVIEW_SUCCESS:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "TvInteractiveAppView"

.field private static final blacklist UNSET_TVVIEW_FAIL:I = 0x4

.field private static final blacklist UNSET_TVVIEW_SUCCESS:I = 0x3


# instance fields
.field private final blacklist mAttrs:Landroid/util/AttributeSet;

.field private blacklist mCallback:Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

.field private blacklist mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mCallbackLock:Ljava/lang/Object;

.field private final blacklist mDefStyleAttr:I

.field private final blacklist mFinishedInputEventCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mMediaViewCreated:Z

.field private blacklist mMediaViewFrame:Landroid/graphics/Rect;

.field private blacklist mOnUnhandledInputEventListener:Landroid/media/tv/interactive/TvInteractiveAppView$OnUnhandledInputEventListener;

.field private final blacklist mParser:Landroid/content/res/XmlResourceParser;

.field private blacklist mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

.field private blacklist mSessionCallback:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

.field private blacklist mSurface:Landroid/view/Surface;

.field private blacklist mSurfaceChanged:Z

.field private blacklist mSurfaceFormat:I

.field private blacklist mSurfaceHeight:I

.field private final blacklist mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private blacklist mSurfaceView:Landroid/view/SurfaceView;

.field private blacklist mSurfaceViewBottom:I

.field private blacklist mSurfaceViewLeft:I

.field private blacklist mSurfaceViewRight:I

.field private blacklist mSurfaceViewTop:I

.field private blacklist mSurfaceWidth:I

.field private final blacklist mTvInteractiveAppManager:Landroid/media/tv/interactive/TvInteractiveAppManager;

.field private blacklist mUseRequestedSurfaceLayout:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mCallback:Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSessionCallback:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurface(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceChanged(Landroid/media/tv/interactive/TvInteractiveAppView;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceChanged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceFormat(Landroid/media/tv/interactive/TvInteractiveAppView;)I
    .locals 0

    iget p0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceFormat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceHeight(Landroid/media/tv/interactive/TvInteractiveAppView;)I
    .locals 0

    iget p0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceWidth(Landroid/media/tv/interactive/TvInteractiveAppView;)I
    .locals 0

    iget p0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMediaViewCreated(Landroid/media/tv/interactive/TvInteractiveAppView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewCreated:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMediaViewFrame(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewFrame:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSession(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSessionCallback:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurface(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceChanged(Landroid/media/tv/interactive/TvInteractiveAppView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceChanged:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceFormat(Landroid/media/tv/interactive/TvInteractiveAppView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceFormat:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceHeight(Landroid/media/tv/interactive/TvInteractiveAppView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceHeight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewBottom(Landroid/media/tv/interactive/TvInteractiveAppView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceViewBottom:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewLeft(Landroid/media/tv/interactive/TvInteractiveAppView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceViewLeft:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewRight(Landroid/media/tv/interactive/TvInteractiveAppView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceViewRight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceViewTop(Landroid/media/tv/interactive/TvInteractiveAppView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceViewTop:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceWidth(Landroid/media/tv/interactive/TvInteractiveAppView;I)V
    .locals 0

    iput p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceWidth:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUseRequestedSurfaceLayout(Landroid/media/tv/interactive/TvInteractiveAppView;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mUseRequestedSurfaceLayout:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateSessionMediaView(Landroid/media/tv/interactive/TvInteractiveAppView;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->createSessionMediaView()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchSurfaceChanged(Landroid/media/tv/interactive/TvInteractiveAppView;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppView;->dispatchSurfaceChanged(III)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrelayoutSessionMediaView(Landroid/media/tv/interactive/TvInteractiveAppView;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->relayoutSessionMediaView()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSessionSurface(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->setSessionSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 165
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/tv/interactive/TvInteractiveAppView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 174
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mCallbackLock:Ljava/lang/Object;

    .line 136
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppView$1;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppView$1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 351
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppView$3;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppView$3;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mFinishedInputEventCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;

    .line 175
    invoke-static {p2}, Landroid/content/res/Resources;->getAttributeSetSourceResId(Landroid/util/AttributeSet;)I

    move-result v0

    .line 176
    .local v0, "sourceResId":I
    const-string v1, "TvInteractiveAppView"

    if-eqz v0, :cond_0

    .line 177
    const-string v2, "Build local AttributeSet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mParser:Landroid/content/res/XmlResourceParser;

    .line 179
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mAttrs:Landroid/util/AttributeSet;

    goto :goto_0

    .line 181
    :cond_0
    const-string v2, "Use passed in AttributeSet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mParser:Landroid/content/res/XmlResourceParser;

    .line 183
    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mAttrs:Landroid/util/AttributeSet;

    .line 185
    :goto_0
    iput p3, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mDefStyleAttr:I

    .line 186
    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->resetSurfaceView()V

    .line 187
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "tv_interactive_app"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager;

    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mTvInteractiveAppManager:Landroid/media/tv/interactive/TvInteractiveAppManager;

    .line 189
    return-void
.end method

.method private blacklist createSessionMediaView()V
    .locals 2

    .line 299
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewCreated:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->getViewFrameOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewFrame:Landroid/graphics/Rect;

    .line 303
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    invoke-virtual {v1, p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->createMediaView(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewCreated:Z

    .line 305
    return-void

    .line 300
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist dispatchSurfaceChanged(III)V
    .locals 1
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 345
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-nez v0, :cond_0

    .line 346
    return-void

    .line 348
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->dispatchSurfaceChanged(III)V

    .line 349
    return-void
.end method

.method private blacklist getViewFrameOnScreen()Landroid/graphics/Rect;
    .locals 3

    .line 329
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 330
    .local v0, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 331
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 332
    .local v1, "frameF":Landroid/graphics/RectF;
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 333
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 334
    return-object v0
.end method

.method private blacklist relayoutSessionMediaView()V
    .locals 2

    .line 317
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewCreated:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->getViewFrameOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    .line 321
    .local v0, "viewFrame":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    return-void

    .line 324
    :cond_1
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    invoke-virtual {v1, v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->relayoutMediaView(Landroid/graphics/Rect;)V

    .line 325
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewFrame:Landroid/graphics/Rect;

    .line 326
    return-void

    .line 318
    .end local v0    # "viewFrame":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist removeSessionMediaView()V
    .locals 2

    .line 308
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewCreated:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->removeMediaView()V

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewCreated:Z

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mMediaViewFrame:Landroid/graphics/Rect;

    .line 314
    return-void

    .line 309
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist resetInternal()V
    .locals 2

    .line 621
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSessionCallback:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    .line 622
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v1, :cond_0

    .line 623
    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->setSessionSurface(Landroid/view/Surface;)V

    .line 624
    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->removeSessionMediaView()V

    .line 625
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mUseRequestedSurfaceLayout:Z

    .line 626
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->release()V

    .line 627
    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    .line 628
    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->resetSurfaceView()V

    .line 630
    :cond_0
    return-void
.end method

.method private blacklist resetSurfaceView()V
    .locals 4

    .line 269
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 271
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->removeView(Landroid/view/View;)V

    .line 273
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurface:Landroid/view/Surface;

    .line 274
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppView$2;

    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mAttrs:Landroid/util/AttributeSet;

    iget v3, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mDefStyleAttr:I

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/media/tv/interactive/TvInteractiveAppView$2;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    .line 281
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setSecure(Z)V

    .line 282
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 283
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 284
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->addView(Landroid/view/View;)V

    .line 285
    return-void
.end method

.method private blacklist setSessionSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 338
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-nez v0, :cond_0

    .line 339
    return-void

    .line 341
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->setSurface(Landroid/view/Surface;)V

    .line 342
    return-void
.end method

.method private blacklist unsetTvView()I
    .locals 2

    .line 698
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->getInputSession()Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 701
    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->getInputSession()Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$Session;->setInteractiveAppSession(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V

    .line 702
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->setInputSession(Landroid/media/tv/TvInputManager$Session;)V

    .line 703
    const/4 v0, 0x3

    return v0

    .line 699
    :cond_1
    :goto_0
    const/4 v0, 0x4

    return v0
.end method


# virtual methods
.method public whitelist clearCallback()V
    .locals 2

    .line 214
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mCallback:Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    .line 216
    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 217
    monitor-exit v0

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist clearOnUnhandledInputEventListener()V
    .locals 1

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mOnUnhandledInputEventListener:Landroid/media/tv/interactive/TvInteractiveAppView$OnUnhandledInputEventListener;

    .line 434
    return-void
.end method

.method public whitelist createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "biIAppUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 651
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 654
    :cond_0
    return-void
.end method

.method public whitelist destroyBiInteractiveApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "biIAppId"    # Ljava/lang/String;

    .line 667
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->destroyBiInteractiveApp(Ljava/lang/String;)V

    .line 670
    :cond_0
    return-void
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 438
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 439
    return v1

    .line 441
    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 442
    return v2

    .line 444
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v0

    .line 445
    .local v0, "copiedEvent":Landroid/view/InputEvent;
    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    iget-object v4, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mFinishedInputEventCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;

    iget-object v5, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v3

    .line 447
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

    .line 383
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mOnUnhandledInputEventListener:Landroid/media/tv/interactive/TvInteractiveAppView$OnUnhandledInputEventListener;

    if-eqz v0, :cond_0

    .line 384
    invoke-interface {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppView$OnUnhandledInputEventListener;->onUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x1

    return v0

    .line 388
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->onUnhandledInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist getInteractiveAppSession()Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
    .locals 1

    .line 674
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    return-object v0
.end method

.method public whitelist getOnUnhandledInputEventListener()Landroid/media/tv/interactive/TvInteractiveAppView$OnUnhandledInputEventListener;
    .locals 1

    .line 426
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mOnUnhandledInputEventListener:Landroid/media/tv/interactive/TvInteractiveAppView$OnUnhandledInputEventListener;

    return-object v0
.end method

.method public whitelist notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "errMsg"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 615
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 618
    :cond_0
    return-void
.end method

.method public whitelist onAttachedToWindow()V
    .locals 0

    .line 222
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 223
    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->createSessionMediaView()V

    .line 224
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .locals 0

    .line 228
    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->removeSessionMediaView()V

    .line 229
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 230
    return-void
.end method

.method public whitelist onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 238
    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mUseRequestedSurfaceLayout:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceViewLeft:I

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceViewTop:I

    iget v3, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceViewRight:I

    iget v4, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceViewBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceView;->layout(IIII)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/SurfaceView;->layout(IIII)V

    .line 244
    :goto_0
    return-void
.end method

.method public whitelist onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 248
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceView;->measure(II)V

    .line 249
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getMeasuredWidth()I

    move-result v0

    .line 250
    .local v0, "width":I
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getMeasuredHeight()I

    move-result v1

    .line 251
    .local v1, "height":I
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getMeasuredState()I

    move-result v2

    .line 252
    .local v2, "childState":I
    invoke-static {v0, p1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v4, v2, 0x10

    .line 253
    invoke-static {v1, p2, v4}, Landroid/media/tv/interactive/TvInteractiveAppView;->resolveSizeAndState(III)I

    move-result v4

    .line 252
    invoke-virtual {p0, v3, v4}, Landroid/media/tv/interactive/TvInteractiveAppView;->setMeasuredDimension(II)V

    .line 255
    return-void
.end method

.method public whitelist onUnhandledInputEvent(Landroid/view/InputEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 259
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 260
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 261
    if-nez p2, :cond_0

    .line 262
    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->createSessionMediaView()V

    goto :goto_0

    .line 264
    :cond_0
    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->removeSessionMediaView()V

    .line 266
    :goto_0
    return-void
.end method

.method public whitelist prepareInteractiveApp(Ljava/lang/String;I)V
    .locals 3
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 466
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSessionCallback:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    .line 467
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mTvInteractiveAppManager:Landroid/media/tv/interactive/TvInteractiveAppManager;

    if-eqz v1, :cond_0

    .line 468
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, v0, v2}, Landroid/media/tv/interactive/TvInteractiveAppManager;->createSession(Ljava/lang/String;ILandroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;Landroid/os/Handler;)V

    .line 470
    :cond_0
    return-void
.end method

.method public whitelist reset()V
    .locals 0

    .line 294
    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->resetInternal()V

    .line 295
    return-void
.end method

.method public whitelist resetInteractiveApp()V
    .locals 1

    .line 505
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->resetInteractiveApp()V

    .line 508
    :cond_0
    return-void
.end method

.method public whitelist sendCurrentChannelLcn(I)V
    .locals 1
    .param p1, "lcn"    # I

    .line 532
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->sendCurrentChannelLcn(I)V

    .line 535
    :cond_0
    return-void
.end method

.method public whitelist sendCurrentChannelUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 520
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->sendCurrentChannelUri(Landroid/net/Uri;)V

    .line 523
    :cond_0
    return-void
.end method

.method public whitelist sendCurrentTvInputId(Ljava/lang/String;)V
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;

    .line 574
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->sendCurrentTvInputId(Ljava/lang/String;)V

    .line 577
    :cond_0
    return-void
.end method

.method public whitelist sendSigningResult(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "signingId"    # Ljava/lang/String;
    .param p2, "result"    # [B

    .line 595
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->sendSigningResult(Ljava/lang/String;[B)V

    .line 598
    :cond_0
    return-void
.end method

.method public whitelist sendStreamVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .line 546
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->sendStreamVolume(F)V

    .line 549
    :cond_0
    return-void
.end method

.method public whitelist sendTrackInfoList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 558
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->sendTrackInfoList(Ljava/util/List;)V

    .line 561
    :cond_0
    return-void
.end method

.method public whitelist setCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    .line 201
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_0
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 204
    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mCallback:Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    .line 205
    monitor-exit v0

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setOnUnhandledInputEventListener(Ljava/util/concurrent/Executor;Landroid/media/tv/interactive/TvInteractiveAppView$OnUnhandledInputEventListener;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/tv/interactive/TvInteractiveAppView$OnUnhandledInputEventListener;

    .line 413
    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mOnUnhandledInputEventListener:Landroid/media/tv/interactive/TvInteractiveAppView$OnUnhandledInputEventListener;

    .line 415
    return-void
.end method

.method public whitelist setTeletextAppEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 718
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_0

    .line 719
    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->setTeletextAppEnabled(Z)V

    .line 721
    :cond_0
    return-void
.end method

.method public whitelist setTvView(Landroid/media/tv/TvView;)I
    .locals 2
    .param p1, "tvView"    # Landroid/media/tv/TvView;

    .line 685
    if-nez p1, :cond_0

    .line 686
    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView;->unsetTvView()I

    move-result v0

    return v0

    .line 688
    :cond_0
    invoke-virtual {p1}, Landroid/media/tv/TvView;->getInputSession()Landroid/media/tv/TvInputManager$Session;

    move-result-object v0

    .line 689
    .local v0, "inputSession":Landroid/media/tv/TvInputManager$Session;
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-nez v1, :cond_1

    goto :goto_0

    .line 692
    :cond_1
    invoke-virtual {v1, v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->setInputSession(Landroid/media/tv/TvInputManager$Session;)V

    .line 693
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputManager$Session;->setInteractiveAppSession(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V

    .line 694
    const/4 v1, 0x1

    return v1

    .line 690
    :cond_2
    :goto_0
    const/4 v1, 0x2

    return v1
.end method

.method public whitelist startInteractiveApp()V
    .locals 1

    .line 479
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->startInteractiveApp()V

    .line 482
    :cond_0
    return-void
.end method

.method public whitelist stopInteractiveApp()V
    .locals 1

    .line 491
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->stopInteractiveApp()V

    .line 494
    :cond_0
    return-void
.end method
