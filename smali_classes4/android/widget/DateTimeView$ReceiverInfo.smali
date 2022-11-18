.class Landroid/widget/DateTimeView$ReceiverInfo;
.super Ljava/lang/Object;
.source "DateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiverInfo"
.end annotation


# instance fields
.field private final greylist-max-o mAttachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/DateTimeView;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mObserver:Landroid/database/ContentObserver;

.field private final greylist-max-o mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 2

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    .line 437
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo$1;

    invoke-direct {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo$1;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;)V

    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 454
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/widget/DateTimeView$ReceiverInfo$2;-><init>(Landroid/widget/DateTimeView$ReceiverInfo;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mObserver:Landroid/database/ContentObserver;

    .line 461
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/DateTimeView$ReceiverInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>()V

    return-void
.end method

.method static final greylist-max-o getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 509
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 510
    .local v0, "ac":Landroid/content/Context;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method static synthetic blacklist lambda$updateAll$0(Landroid/widget/DateTimeView;)V
    .locals 0
    .param p0, "view"    # Landroid/widget/DateTimeView;

    .line 489
    invoke-virtual {p0}, Landroid/widget/DateTimeView;->clearFormatAndUpdate()V

    return-void
.end method


# virtual methods
.method public greylist-max-o addView(Landroid/widget/DateTimeView;)V
    .locals 3
    .param p1, "v"    # Landroid/widget/DateTimeView;

    .line 464
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    monitor-enter v0

    .line 465
    :try_start_0
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    .line 466
    .local v1, "register":Z
    iget-object v2, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    if-eqz v1, :cond_0

    .line 468
    invoke-virtual {p1}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/DateTimeView$ReceiverInfo;->getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/DateTimeView$ReceiverInfo;->register(Landroid/content/Context;)V

    .line 470
    .end local v1    # "register":Z
    :cond_0
    monitor-exit v0

    .line 471
    return-void

    .line 470
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o getSoonestUpdateTime()J
    .locals 8

    .line 495
    const-wide v0, 0x7fffffffffffffffL

    .line 496
    .local v0, "result":J
    iget-object v2, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    monitor-enter v2

    .line 497
    :try_start_0
    iget-object v3, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 498
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 499
    iget-object v5, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/DateTimeView;

    invoke-static {v5}, Landroid/widget/DateTimeView;->-$$Nest$fgetmUpdateTimeMillis(Landroid/widget/DateTimeView;)J

    move-result-wide v5

    .line 500
    .local v5, "time":J
    cmp-long v7, v5, v0

    if-gez v7, :cond_0

    .line 501
    move-wide v0, v5

    .line 498
    .end local v5    # "time":J
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 504
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_1
    monitor-exit v2

    .line 505
    return-wide v0

    .line 504
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method greylist-max-o register(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 514
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 515
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 517
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 520
    return-void
.end method

.method public greylist-max-o removeView(Landroid/widget/DateTimeView;)V
    .locals 3
    .param p1, "v"    # Landroid/widget/DateTimeView;

    .line 474
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    monitor-enter v0

    .line 475
    :try_start_0
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 478
    .local v1, "removed":Z
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    invoke-virtual {p1}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/widget/DateTimeView$ReceiverInfo;->getApplicationContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/DateTimeView$ReceiverInfo;->unregister(Landroid/content/Context;)V

    .line 481
    .end local v1    # "removed":Z
    :cond_0
    monitor-exit v0

    .line 482
    return-void

    .line 481
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 527
    iput-object p1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mHandler:Landroid/os/Handler;

    .line 528
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    monitor-enter v0

    .line 529
    :try_start_0
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 530
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/DateTimeView;

    invoke-virtual {v1}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/DateTimeView$ReceiverInfo;->unregister(Landroid/content/Context;)V

    .line 531
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/DateTimeView;

    invoke-virtual {v1}, Landroid/widget/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/DateTimeView$ReceiverInfo;->register(Landroid/content/Context;)V

    .line 533
    :cond_0
    monitor-exit v0

    .line 534
    return-void

    .line 533
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method greylist-max-o unregister(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 523
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 524
    return-void
.end method

.method greylist-max-o updateAll()V
    .locals 5

    .line 485
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    monitor-enter v0

    .line 486
    :try_start_0
    iget-object v1, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 487
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 488
    iget-object v3, p0, Landroid/widget/DateTimeView$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/DateTimeView;

    .line 489
    .local v3, "view":Landroid/widget/DateTimeView;
    new-instance v4, Landroid/widget/DateTimeView$ReceiverInfo$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Landroid/widget/DateTimeView$ReceiverInfo$$ExternalSyntheticLambda0;-><init>(Landroid/widget/DateTimeView;)V

    invoke-virtual {v3, v4}, Landroid/widget/DateTimeView;->post(Ljava/lang/Runnable;)Z

    .line 487
    nop

    .end local v3    # "view":Landroid/widget/DateTimeView;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 491
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 492
    return-void

    .line 491
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
