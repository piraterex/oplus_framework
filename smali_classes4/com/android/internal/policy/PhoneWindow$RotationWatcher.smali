.class Lcom/android/internal/policy/PhoneWindow$RotationWatcher;
.super Landroid/view/IRotationWatcher$Stub;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotationWatcher"
.end annotation


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsWatching:Z

.field private final blacklist mRotationChanged:Ljava/lang/Runnable;

.field private final blacklist mWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/policy/PhoneWindow;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 3670
    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    .line 3672
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher$1;-><init>(Lcom/android/internal/policy/PhoneWindow$RotationWatcher;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mRotationChanged:Ljava/lang/Runnable;

    .line 3677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public blacklist addWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 4
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;

    .line 3687
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3688
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mIsWatching:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3690
    :try_start_1
    sget-object v1, Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    .line 3691
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 3690
    invoke-interface {v1, p0, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I

    .line 3692
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mHandler:Landroid/os/Handler;

    .line 3693
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mIsWatching:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3696
    goto :goto_0

    .line 3694
    :catch_0
    move-exception v1

    .line 3695
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "PhoneWindow"

    const-string v3, "Couldn\'t start watching for device rotation"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3698
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3699
    monitor-exit v0

    .line 3700
    return-void

    .line 3699
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method blacklist dispatchRotationChanged()V
    .locals 5

    .line 3718
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3719
    const/4 v1, 0x0

    .line 3720
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3721
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 3722
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/PhoneWindow;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/PhoneWindow;

    .line 3723
    .local v3, "win":Lcom/android/internal/policy/PhoneWindow;
    if-eqz v3, :cond_0

    .line 3724
    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->onOptionsPanelRotationChanged()V

    .line 3725
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3727
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3729
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/PhoneWindow;>;"
    .end local v3    # "win":Lcom/android/internal/policy/PhoneWindow;
    :goto_1
    goto :goto_0

    .line 3730
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 3731
    return-void

    .line 3730
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRotationChanged(I)V
    .locals 2
    .param p1, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3683
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mRotationChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3684
    return-void
.end method

.method public blacklist removeWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 5
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;

    .line 3703
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3704
    const/4 v1, 0x0

    .line 3705
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3706
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 3707
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/PhoneWindow;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/PhoneWindow;

    .line 3708
    .local v3, "win":Lcom/android/internal/policy/PhoneWindow;
    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_0

    goto :goto_1

    .line 3711
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3709
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3713
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/policy/PhoneWindow;>;"
    .end local v3    # "win":Lcom/android/internal/policy/PhoneWindow;
    :goto_2
    goto :goto_0

    .line 3714
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 3715
    return-void

    .line 3714
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
