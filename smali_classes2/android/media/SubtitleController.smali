.class public Landroid/media/SubtitleController;
.super Ljava/lang/Object;
.source "SubtitleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SubtitleController$Listener;,
        Landroid/media/SubtitleController$Anchor;,
        Landroid/media/SubtitleController$Renderer;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o WHAT_HIDE:I = 0x2

.field private static final greylist-max-o WHAT_SELECT_DEFAULT_TRACK:I = 0x4

.field private static final greylist-max-o WHAT_SELECT_TRACK:I = 0x3

.field private static final greylist-max-o WHAT_SHOW:I = 0x1


# instance fields
.field private greylist-max-o mAnchor:Landroid/media/SubtitleController$Anchor;

.field private final greylist-max-o mCallback:Landroid/os/Handler$Callback;

.field private greylist-max-o mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private greylist-max-o mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private greylist mHandler:Landroid/os/Handler;

.field private greylist-max-o mListener:Landroid/media/SubtitleController$Listener;

.field private greylist-max-o mRenderers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleController$Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSelectedTrack:Landroid/media/SubtitleTrack;

.field private greylist-max-o mShowing:Z

.field private greylist-max-o mTimeProvider:Landroid/media/MediaTimeProvider;

.field private greylist-max-o mTrackIsExplicit:Z

.field private greylist-max-o mTracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVisibilityIsExplicit:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdoHide(Landroid/media/SubtitleController;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/SubtitleController;->doHide()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoSelectDefaultTrack(Landroid/media/SubtitleController;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/SubtitleController;->doSelectDefaultTrack()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoSelectTrack(Landroid/media/SubtitleController;Landroid/media/SubtitleTrack;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/SubtitleController;->doSelectTrack(Landroid/media/SubtitleTrack;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoShow(Landroid/media/SubtitleController;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/SubtitleController;->doShow()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    .line 38
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeProvider"    # Landroid/media/MediaTimeProvider;
    .param p3, "listener"    # Landroid/media/SubtitleController$Listener;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/media/SubtitleController$1;

    invoke-direct {v0, p0}, Landroid/media/SubtitleController$1;-><init>(Landroid/media/SubtitleController;)V

    iput-object v0, p0, Landroid/media/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    .line 75
    new-instance v0, Landroid/media/SubtitleController$2;

    invoke-direct {v0, p0}, Landroid/media/SubtitleController$2;-><init>(Landroid/media/SubtitleController;)V

    iput-object v0, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 265
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 101
    iput-object p2, p0, Landroid/media/SubtitleController;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 102
    iput-object p3, p0, Landroid/media/SubtitleController;->mListener:Landroid/media/SubtitleController$Listener;

    .line 104
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    .line 105
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mShowing:Z

    .line 106
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    .line 107
    nop

    .line 108
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 109
    return-void
.end method

.method private greylist-max-o checkAnchorLooper()V
    .locals 0

    .line 490
    nop

    .line 491
    nop

    .line 492
    return-void
.end method

.method private greylist-max-o doHide()V
    .locals 1

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 376
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->hide()V

    .line 379
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mShowing:Z

    .line 380
    return-void
.end method

.method private greylist-max-o doSelectDefaultTrack()V
    .locals 3

    .line 273
    iget-boolean v0, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 276
    iget-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    if-nez v0, :cond_3

    .line 277
    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "is-forced-subtitle"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_2

    .line 283
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 284
    invoke-virtual {p0}, Landroid/media/SubtitleController;->hide()V

    goto :goto_1

    .line 281
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/media/SubtitleController;->show()V

    .line 286
    :cond_2
    :goto_1
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 288
    :cond_3
    return-void

    .line 294
    :cond_4
    invoke-virtual {p0}, Landroid/media/SubtitleController;->getDefaultTrack()Landroid/media/SubtitleTrack;

    move-result-object v0

    .line 295
    .local v0, "track":Landroid/media/SubtitleTrack;
    if-eqz v0, :cond_5

    .line 296
    invoke-virtual {p0, v0}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    .line 297
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 298
    iget-boolean v2, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    if-nez v2, :cond_5

    .line 299
    invoke-virtual {p0}, Landroid/media/SubtitleController;->show()V

    .line 300
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 303
    :cond_5
    return-void
.end method

.method private greylist-max-o doSelectTrack(Landroid/media/SubtitleTrack;)V
    .locals 2
    .param p1, "track"    # Landroid/media/SubtitleTrack;

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 167
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-ne v0, p1, :cond_0

    .line 168
    return-void

    .line 171
    :cond_0
    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->hide()V

    .line 173
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack;->setTimeProvider(Landroid/media/MediaTimeProvider;)V

    .line 176
    :cond_1
    iput-object p1, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    .line 177
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    if-eqz v0, :cond_2

    .line 178
    invoke-direct {p0}, Landroid/media/SubtitleController;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 181
    :cond_2
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_3

    .line 182
    iget-object v1, p0, Landroid/media/SubtitleController;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack;->setTimeProvider(Landroid/media/MediaTimeProvider;)V

    .line 183
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->show()V

    .line 186
    :cond_3
    iget-object v0, p0, Landroid/media/SubtitleController;->mListener:Landroid/media/SubtitleController$Listener;

    if-eqz v0, :cond_4

    .line 187
    invoke-interface {v0, p1}, Landroid/media/SubtitleController$Listener;->onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V

    .line 189
    :cond_4
    return-void
.end method

.method private greylist-max-o doShow()V
    .locals 1

    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mShowing:Z

    .line 358
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 359
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->show()V

    .line 362
    :cond_0
    return-void
.end method

.method private greylist-max-o getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .locals 1

    .line 139
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 142
    :cond_0
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o processOnAnchor(Landroid/os/Message;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;

    .line 495
    nop

    .line 496
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 497
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 499
    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 501
    :goto_0
    return-void
.end method


# virtual methods
.method public greylist-max-o addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .locals 6
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 326
    iget-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/SubtitleController$Renderer;

    .line 328
    .local v2, "renderer":Landroid/media/SubtitleController$Renderer;
    invoke-virtual {v2, p1}, Landroid/media/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 329
    invoke-virtual {v2, p1}, Landroid/media/SubtitleController$Renderer;->createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v3

    .line 330
    .local v3, "track":Landroid/media/SubtitleTrack;
    if-eqz v3, :cond_1

    .line 331
    iget-object v1, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 332
    :try_start_1
    iget-object v4, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 333
    iget-object v4, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v5, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v4, v5}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 336
    :cond_0
    iget-object v4, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 337
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v3

    .line 337
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Landroid/media/SubtitleController;
    .end local p1    # "format":Landroid/media/MediaFormat;
    :try_start_4
    throw v4

    .line 341
    .end local v2    # "renderer":Landroid/media/SubtitleController$Renderer;
    .end local v3    # "track":Landroid/media/SubtitleTrack;
    .restart local p0    # "this":Landroid/media/SubtitleController;
    .restart local p1    # "format":Landroid/media/MediaFormat;
    :cond_1
    goto :goto_0

    .line 342
    :cond_2
    monitor-exit v0

    .line 343
    const/4 v0, 0x0

    return-object v0

    .line 342
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 115
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 116
    return-void
.end method

.method public greylist-max-o getDefaultTrack()Landroid/media/SubtitleTrack;
    .locals 18

    .line 215
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 216
    .local v2, "bestTrack":Landroid/media/SubtitleTrack;
    const/4 v3, -0x1

    .line 218
    .local v3, "bestScore":I
    iget-object v0, v1, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v4

    .line 219
    .local v4, "selectedLocale":Ljava/util/Locale;
    move-object v0, v4

    .line 220
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 221
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 220
    :cond_0
    move-object v5, v0

    .line 223
    .end local v0    # "locale":Ljava/util/Locale;
    .local v5, "locale":Ljava/util/Locale;
    :goto_0
    iget-object v0, v1, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    move v7, v0

    .line 225
    .local v7, "selectForced":Z
    iget-object v8, v1, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    monitor-enter v8

    .line 226
    :try_start_0
    iget-object v0, v1, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/SubtitleTrack;

    .line 227
    .local v9, "track":Landroid/media/SubtitleTrack;
    invoke-virtual {v9}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v10

    .line 228
    .local v10, "format":Landroid/media/MediaFormat;
    const-string v11, "language"

    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 229
    .local v11, "language":Ljava/lang/String;
    const-string v12, "is-forced-subtitle"

    .line 230
    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_1

    move v12, v6

    goto :goto_2

    :cond_1
    move v12, v13

    .line 231
    .local v12, "forced":Z
    :goto_2
    const-string v14, "is-autoselect"

    .line 232
    invoke-virtual {v10, v14, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_2

    move v14, v6

    goto :goto_3

    :cond_2
    move v14, v13

    .line 233
    .local v14, "autoselect":Z
    :goto_3
    const-string v15, "is-default"

    .line 234
    invoke-virtual {v10, v15, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_3

    move v15, v6

    goto :goto_4

    :cond_3
    move v15, v13

    .line 236
    .local v15, "is_default":Z
    :goto_4
    if-eqz v5, :cond_5

    .line 238
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v13, ""

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 239
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 240
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_5

    :cond_4
    const/4 v6, 0x0

    goto :goto_6

    :cond_5
    :goto_5
    const/4 v6, 0x1

    .line 242
    .local v6, "languageMatches":Z
    :goto_6
    if-eqz v12, :cond_6

    const/4 v13, 0x0

    goto :goto_7

    :cond_6
    const/16 v13, 0x8

    .line 243
    :goto_7
    if-nez v4, :cond_7

    if-eqz v15, :cond_7

    const/16 v17, 0x4

    goto :goto_8

    :cond_7
    const/16 v17, 0x0

    :goto_8
    add-int v13, v13, v17

    .line 244
    if-eqz v14, :cond_8

    const/16 v17, 0x0

    goto :goto_9

    :cond_8
    const/16 v17, 0x2

    :goto_9
    add-int v13, v13, v17

    if-eqz v6, :cond_9

    const/16 v16, 0x1

    goto :goto_a

    :cond_9
    const/16 v16, 0x0

    :goto_a
    add-int v13, v13, v16

    .line 246
    .local v13, "score":I
    if-eqz v7, :cond_a

    if-nez v12, :cond_a

    .line 247
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 251
    :cond_a
    if-nez v4, :cond_b

    if-nez v15, :cond_c

    :cond_b
    if-eqz v6, :cond_d

    if-nez v14, :cond_c

    if-nez v12, :cond_c

    if-eqz v4, :cond_d

    .line 254
    :cond_c
    if-le v13, v3, :cond_d

    .line 255
    move v3, v13

    .line 256
    move-object v2, v9

    .line 259
    .end local v6    # "languageMatches":Z
    .end local v9    # "track":Landroid/media/SubtitleTrack;
    .end local v10    # "format":Landroid/media/MediaFormat;
    .end local v11    # "language":Ljava/lang/String;
    .end local v12    # "forced":Z
    .end local v13    # "score":I
    .end local v14    # "autoselect":Z
    .end local v15    # "is_default":Z
    :cond_d
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 260
    :cond_e
    monitor-exit v8

    .line 261
    return-object v2

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o getSelectedTrack()Landroid/media/SubtitleTrack;
    .locals 1

    .line 135
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    return-object v0
.end method

.method public greylist-max-o getTracks()[Landroid/media/SubtitleTrack;
    .locals 3

    .line 124
    iget-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object v1, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/SubtitleTrack;

    .line 126
    .local v1, "tracks":[Landroid/media/SubtitleTrack;
    iget-object v2, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 127
    monitor-exit v0

    return-object v1

    .line 128
    .end local v1    # "tracks":[Landroid/media/SubtitleTrack;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o hasRendererFor(Landroid/media/MediaFormat;)Z
    .locals 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 434
    iget-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    monitor-enter v0

    .line 436
    :try_start_0
    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/SubtitleController$Renderer;

    .line 437
    .local v2, "renderer":Landroid/media/SubtitleController$Renderer;
    invoke-virtual {v2, p1}, Landroid/media/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 438
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 440
    .end local v2    # "renderer":Landroid/media/SubtitleController$Renderer;
    :cond_0
    goto :goto_0

    .line 441
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 442
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist hide()V
    .locals 2

    .line 371
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 372
    return-void
.end method

.method public greylist registerRenderer(Landroid/media/SubtitleController$Renderer;)V
    .locals 2
    .param p1, "renderer"    # Landroid/media/SubtitleController$Renderer;

    .line 423
    iget-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    monitor-enter v0

    .line 425
    :try_start_0
    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_0
    monitor-exit v0

    .line 430
    return-void

    .line 429
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist reset()V
    .locals 2

    .line 308
    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    .line 309
    invoke-virtual {p0}, Landroid/media/SubtitleController;->hide()V

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    .line 311
    iget-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    .line 313
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    .line 314
    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 316
    return-void
.end method

.method public greylist-max-o selectDefaultTrack()V
    .locals 2

    .line 269
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 270
    return-void
.end method

.method public greylist-max-o selectTrack(Landroid/media/SubtitleTrack;)Z
    .locals 2
    .param p1, "track"    # Landroid/media/SubtitleTrack;

    .line 157
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x0

    return v0

    .line 161
    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o setAnchor(Landroid/media/SubtitleController$Anchor;)V
    .locals 3
    .param p1, "anchor"    # Landroid/media/SubtitleController$Anchor;

    .line 472
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    if-ne v0, p1, :cond_0

    .line 473
    return-void

    .line 476
    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 477
    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    .line 478
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    invoke-interface {v0, v1}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 480
    :cond_1
    iput-object p1, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    .line 481
    iput-object v1, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 482
    if-eqz p1, :cond_2

    .line 483
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    invoke-interface {v1}, Landroid/media/SubtitleController$Anchor;->getSubtitleLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 484
    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    .line 485
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    invoke-direct {p0}, Landroid/media/SubtitleController;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 487
    :cond_2
    return-void
.end method

.method public greylist show()V
    .locals 2

    .line 353
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 354
    return-void
.end method
