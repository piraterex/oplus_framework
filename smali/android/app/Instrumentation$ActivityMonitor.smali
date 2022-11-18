.class public Landroid/app/Instrumentation$ActivityMonitor;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityMonitor"
.end annotation


# instance fields
.field private final greylist-max-o mBlock:Z

.field private final greylist-max-o mClass:Ljava/lang/String;

.field greylist-max-o mHits:I

.field private final greylist-max-o mIgnoreMatchingSpecificIntents:Z

.field greylist-max-o mLastActivity:Landroid/app/Activity;

.field private final greylist-max-o mResult:Landroid/app/Instrumentation$ActivityResult;

.field private final greylist-max-o mWhich:Landroid/content/IntentFilter;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 617
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 673
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    .line 674
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    .line 675
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    .line 676
    iput-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    .line 677
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mIgnoreMatchingSpecificIntents:Z

    .line 678
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V
    .locals 2
    .param p1, "which"    # Landroid/content/IntentFilter;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 617
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 634
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    .line 635
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    .line 636
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    .line 637
    iput-boolean p3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    .line 638
    iput-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mIgnoreMatchingSpecificIntents:Z

    .line 639
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)V
    .locals 2
    .param p1, "cls"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 617
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 656
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    .line 657
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    .line 658
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    .line 659
    iput-boolean p3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    .line 660
    iput-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mIgnoreMatchingSpecificIntents:Z

    .line 661
    return-void
.end method


# virtual methods
.method public final whitelist getFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 694
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public final whitelist getHits()I
    .locals 1

    .line 717
    iget v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    return v0
.end method

.method public final whitelist getLastActivity()Landroid/app/Activity;
    .locals 1

    .line 725
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final whitelist getResult()Landroid/app/Instrumentation$ActivityResult;
    .locals 1

    .line 702
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    return-object v0
.end method

.method final greylist-max-o ignoreMatchingSpecificIntents()Z
    .locals 1

    .line 687
    iget-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mIgnoreMatchingSpecificIntents:Z

    return v0
.end method

.method public final whitelist isBlocking()Z
    .locals 1

    .line 710
    iget-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    return v0
.end method

.method final greylist-max-o match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 5
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 808
    iget-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mIgnoreMatchingSpecificIntents:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 809
    return v1

    .line 811
    :cond_0
    monitor-enter p0

    .line 812
    :try_start_0
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 813
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "Instrumentation"

    invoke-virtual {v0, v3, p3, v2, v4}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 815
    monitor-exit p0

    return v1

    .line 817
    :cond_1
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 818
    const/4 v0, 0x0

    .line 819
    .local v0, "cls":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 820
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 821
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 822
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 824
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    iget-object v3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 825
    :cond_4
    monitor-exit p0

    return v1

    .line 828
    .end local v0    # "cls":Ljava/lang/String;
    :cond_5
    if-eqz p2, :cond_6

    .line 829
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 830
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 832
    :cond_6
    monitor-exit p0

    return v2

    .line 833
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 1
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 784
    invoke-virtual {p0, p2}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 802
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist waitForActivity()Landroid/app/Activity;
    .locals 2

    .line 735
    monitor-enter p0

    .line 736
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 738
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 740
    :goto_1
    goto :goto_0

    .line 739
    :catch_0
    move-exception v0

    goto :goto_1

    .line 742
    :cond_0
    nop

    .line 743
    .local v0, "res":Landroid/app/Activity;
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 744
    monitor-exit p0

    return-object v0

    .line 745
    .end local v0    # "res":Landroid/app/Activity;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final whitelist waitForActivityWithTimeout(J)Landroid/app/Activity;
    .locals 2
    .param p1, "timeOut"    # J

    .line 758
    monitor-enter p0

    .line 759
    :try_start_0
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 761
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 763
    goto :goto_0

    .line 762
    :catch_0
    move-exception v0

    .line 765
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 766
    monitor-exit p0

    return-object v1

    .line 768
    :cond_1
    nop

    .line 769
    .local v0, "res":Landroid/app/Activity;
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 770
    monitor-exit p0

    return-object v0

    .line 772
    .end local v0    # "res":Landroid/app/Activity;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
