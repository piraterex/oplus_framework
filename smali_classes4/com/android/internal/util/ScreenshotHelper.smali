.class public Lcom/android/internal/util/ScreenshotHelper;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/ScreenshotHelper$ScreenshotHelperWrapper;,
        Lcom/android/internal/util/ScreenshotHelper$HardwareBitmapBundler;,
        Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;
    }
.end annotation


# static fields
.field public static final blacklist SCREENSHOT_MSG_PROCESS_COMPLETE:I = 0x2

.field public static final blacklist SCREENSHOT_MSG_URI:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ScreenshotHelper"


# instance fields
.field private final blacklist SCREENSHOT_TIMEOUT_MS:I

.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mScreenshotConnection:Landroid/content/ServiceConnection;

.field private final blacklist mScreenshotHelperWrapper:Lcom/android/internal/util/IScreenshotHelperWrapper;

.field private final blacklist mScreenshotLock:Ljava/lang/Object;

.field private blacklist mScreenshotService:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmScreenshotConnection(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScreenshotLock(Lcom/android/internal/util/ScreenshotHelper;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScreenshotService(Lcom/android/internal/util/ScreenshotHelper;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScreenshotService(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyScreenshotError(Lcom/android/internal/util/ScreenshotHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/ScreenshotHelper;->notifyScreenshotError()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetConnection(Lcom/android/internal/util/ScreenshotHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/ScreenshotHelper;->resetConnection()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/internal/util/ScreenshotHelper;->SCREENSHOT_TIMEOUT_MS:I

    .line 235
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    .line 237
    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 240
    new-instance v1, Lcom/android/internal/util/ScreenshotHelper$1;

    invoke-direct {v1, p0}, Lcom/android/internal/util/ScreenshotHelper$1;-><init>(Lcom/android/internal/util/ScreenshotHelper;)V

    iput-object v1, p0, Lcom/android/internal/util/ScreenshotHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 504
    new-instance v2, Lcom/android/internal/util/ScreenshotHelper$ScreenshotHelperWrapper;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotHelperWrapper;-><init>(Lcom/android/internal/util/ScreenshotHelper;Lcom/android/internal/util/ScreenshotHelper$ScreenshotHelperWrapper-IA;)V

    iput-object v2, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotHelperWrapper:Lcom/android/internal/util/IScreenshotHelperWrapper;

    .line 252
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    .line 253
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, "filter":Landroid/content/IntentFilter;
    const/4 v2, 0x2

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 255
    return-void
.end method

.method private blacklist notifyScreenshotError()V
    .locals 4

    .line 489
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    .line 490
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 494
    .local v0, "errorComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .local v1, "errorIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 496
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 498
    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 499
    return-void
.end method

.method private blacklist resetConnection()V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 478
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 480
    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    .line 482
    :cond_0
    return-void
.end method

.method private blacklist takeScreenshot(IJLandroid/os/Handler;Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;Ljava/util/function/Consumer;)V
    .locals 18
    .param p1, "screenshotType"    # I
    .param p2, "timeoutMs"    # J
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "screenshotRequest"    # Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/os/Handler;",
            "Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 366
    .local p6, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-wide/from16 v9, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    iget-object v14, v7, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v14

    .line 369
    :try_start_0
    iget-object v0, v7, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotHelperWrapper:Lcom/android/internal/util/IScreenshotHelperWrapper;

    invoke-interface {v0}, Lcom/android/internal/util/IScreenshotHelperWrapper;->getExtImpl()Lcom/android/internal/util/IScreenshotHelperExt;

    move-result-object v0

    iget-object v1, v7, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, v8, v12, v11}, Lcom/android/internal/util/IScreenshotHelperExt;->takeScreenshotNeedReturn(Landroid/content/Context;ILcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    monitor-exit v14

    return-void

    .line 373
    :cond_0
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7, v13}, Lcom/android/internal/util/ScreenshotHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/ScreenshotHelper;Ljava/util/function/Consumer;)V

    move-object v15, v0

    .line 386
    .local v15, "mScreenshotTimeout":Ljava/lang/Runnable;
    const/4 v6, 0x0

    invoke-static {v6, v8, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    move-object v5, v0

    .line 388
    .local v5, "msg":Landroid/os/Message;
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper$2;

    invoke-virtual/range {p4 .. p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p6

    move-object v8, v5

    .end local v5    # "msg":Landroid/os/Message;
    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v5, p4

    move-object v12, v6

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/util/ScreenshotHelper$2;-><init>(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Looper;Ljava/util/function/Consumer;Landroid/os/Handler;Ljava/lang/Runnable;)V

    move-object v6, v0

    .line 406
    .local v6, "h":Landroid/os/Handler;
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, v6}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, v8, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 408
    iget-object v0, v7, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_3

    iget-object v0, v7, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    if-nez v0, :cond_1

    goto :goto_1

    .line 458
    :cond_1
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, v7, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 461
    .local v1, "messenger":Landroid/os/Messenger;
    :try_start_1
    invoke-virtual {v1, v8}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    goto :goto_0

    .line 462
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 463
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "ScreenshotHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t take screenshot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    if-eqz v13, :cond_2

    .line 465
    invoke-interface {v13, v12}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 468
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    invoke-virtual {v11, v15, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 409
    .end local v1    # "messenger":Landroid/os/Messenger;
    :cond_3
    :goto_1
    iget-object v0, v7, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    .line 410
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 412
    .local v0, "serviceComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v12, v1

    .line 414
    .local v12, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 415
    new-instance v16, Lcom/android/internal/util/ScreenshotHelper$3;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v3, v8

    move-object/from16 v4, p6

    move-object/from16 v5, p4

    move-object/from16 v17, v6

    .end local v6    # "h":Landroid/os/Handler;
    .local v17, "h":Landroid/os/Handler;
    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/util/ScreenshotHelper$3;-><init>(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Message;Ljava/util/function/Consumer;Landroid/os/Handler;Ljava/lang/Runnable;)V

    move-object/from16 v1, v16

    .line 451
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v2, v7, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    const v3, 0x4000001

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v12, v1, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 454
    iput-object v1, v7, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 455
    invoke-virtual {v11, v15, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 457
    .end local v0    # "serviceComponent":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v12    # "serviceIntent":Landroid/content/Intent;
    :cond_4
    nop

    .line 470
    .end local v8    # "msg":Landroid/os/Message;
    .end local v15    # "mScreenshotTimeout":Ljava/lang/Runnable;
    .end local v17    # "h":Landroid/os/Handler;
    :goto_2
    monitor-exit v14

    .line 471
    return-void

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public blacklist getWrapper()Lcom/android/internal/util/IScreenshotHelperWrapper;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotHelperWrapper:Lcom/android/internal/util/IScreenshotHelperWrapper;

    return-object v0
.end method

.method synthetic blacklist lambda$takeScreenshot$0$com-android-internal-util-ScreenshotHelper(Ljava/util/function/Consumer;)V
    .locals 3
    .param p1, "completionConsumer"    # Ljava/util/function/Consumer;

    .line 374
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 376
    const-string v1, "ScreenshotHelper"

    const-string v2, "Timed out before getting screenshot capture response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-direct {p0}, Lcom/android/internal/util/ScreenshotHelper;->resetConnection()V

    .line 378
    invoke-direct {p0}, Lcom/android/internal/util/ScreenshotHelper;->notifyScreenshotError()V

    .line 380
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    if-eqz p1, :cond_1

    .line 382
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 384
    :cond_1
    return-void

    .line 380
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist provideScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;IILandroid/content/ComponentName;ILandroid/os/Handler;Ljava/util/function/Consumer;)V
    .locals 9
    .param p1, "screenshotBundle"    # Landroid/os/Bundle;
    .param p2, "boundsInScreen"    # Landroid/graphics/Rect;
    .param p3, "insets"    # Landroid/graphics/Insets;
    .param p4, "taskId"    # I
    .param p5, "userId"    # I
    .param p6, "topComponent"    # Landroid/content/ComponentName;
    .param p7, "source"    # I
    .param p8, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Insets;",
            "II",
            "Landroid/content/ComponentName;",
            "I",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 357
    .local p9, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    new-instance v8, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;

    move-object v0, v8

    move/from16 v1, p7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;-><init>(ILandroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;IILandroid/content/ComponentName;)V

    move-object v5, v8

    .line 360
    .local v5, "screenshotRequest":Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;
    const/4 v1, 0x3

    const-wide/16 v2, 0x2710

    move-object v0, p0

    move-object/from16 v4, p8

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IJLandroid/os/Handler;Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;Ljava/util/function/Consumer;)V

    .line 362
    return-void
.end method

.method public blacklist takeScreenshot(IZZILandroid/os/Handler;Ljava/util/function/Consumer;)V
    .locals 7
    .param p1, "screenshotType"    # I
    .param p2, "hasStatus"    # Z
    .param p3, "hasNav"    # Z
    .param p4, "source"    # I
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZI",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 281
    .local p6, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    new-instance v5, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;

    invoke-direct {v5, p4, p2, p3}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;-><init>(IZZ)V

    .line 282
    .local v5, "screenshotRequest":Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;
    const-wide/16 v2, 0x2710

    move-object v0, p0

    move v1, p1

    move-object v4, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IJLandroid/os/Handler;Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;Ljava/util/function/Consumer;)V

    .line 284
    return-void
.end method

.method public blacklist takeScreenshot(IZZJLandroid/os/Handler;Ljava/util/function/Consumer;)V
    .locals 7
    .param p1, "screenshotType"    # I
    .param p2, "hasStatus"    # Z
    .param p3, "hasNav"    # Z
    .param p4, "timeoutMs"    # J
    .param p6, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZJ",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 336
    .local p7, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    new-instance v5, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;

    const/4 v0, 0x5

    invoke-direct {v5, v0, p2, p3}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;-><init>(IZZ)V

    .line 338
    .local v5, "screenshotRequest":Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;
    move-object v0, p0

    move v1, p1

    move-wide v2, p4

    move-object v4, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IJLandroid/os/Handler;Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;Ljava/util/function/Consumer;)V

    .line 339
    return-void
.end method

.method public blacklist takeScreenshot(IZZLandroid/os/Handler;Ljava/util/function/Consumer;)V
    .locals 7
    .param p1, "screenshotType"    # I
    .param p2, "hasStatus"    # Z
    .param p3, "hasNav"    # Z
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 306
    .local p5, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    const/16 v4, 0x2710

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IZZILandroid/os/Handler;Ljava/util/function/Consumer;)V

    .line 308
    return-void
.end method
