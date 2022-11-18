.class public final Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.super Landroid/print/IPrintDocumentAdapter$Stub;
.source "PrintManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrintDocumentAdapterDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;
    }
.end annotation


# instance fields
.field private greylist-max-o mActivity:Landroid/app/Activity;

.field private greylist-max-o mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mObserver:Landroid/print/IPrintDocumentAdapterObserver;

.field private greylist-max-o mPendingCallback:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingCallback(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mPendingCallback:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdestroyLocked(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->destroyLocked()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/Activity;Landroid/print/PrintDocumentAdapter;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "documentAdapter"    # Landroid/print/PrintDocumentAdapter;

    .line 824
    invoke-direct {p0}, Landroid/print/IPrintDocumentAdapter$Stub;-><init>()V

    .line 811
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    .line 825
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 831
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    .line 832
    iput-object p2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    .line 833
    new-instance v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;

    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    .line 834
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 835
    return-void

    .line 828
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start printing for finishing activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o destroyLocked()V
    .locals 3

    .line 1012
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1014
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    .line 1016
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    .line 1021
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1022
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1023
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1024
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1025
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    .line 1027
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mObserver:Landroid/print/IPrintDocumentAdapterObserver;

    .line 1029
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mPendingCallback:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;

    if-eqz v1, :cond_0

    .line 1030
    invoke-interface {v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;->destroy()V

    .line 1031
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mPendingCallback:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;

    .line 1033
    :cond_0
    return-void
.end method

.method private greylist-max-o isDestroyedLocked()Z
    .locals 1

    .line 1008
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public greylist-max-o finish()V
    .locals 4

    .line 934
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 936
    :try_start_0
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 937
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    iget-object v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 938
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 940
    :cond_0
    monitor-exit v0

    .line 941
    return-void

    .line 940
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o kill(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 945
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 947
    :try_start_0
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 948
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 949
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 951
    :cond_0
    monitor-exit v0

    .line 952
    return-void

    .line 951
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o layout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/ILayoutResultCallback;Landroid/os/Bundle;I)V
    .locals 6
    .param p1, "oldAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "callback"    # Landroid/print/ILayoutResultCallback;
    .param p4, "metadata"    # Landroid/os/Bundle;
    .param p5, "sequence"    # I

    .line 869
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 871
    .local v0, "cancellationTransport":Landroid/os/ICancellationSignal;
    :try_start_0
    invoke-interface {p3, v0, p5}, Landroid/print/ILayoutResultCallback;->onLayoutStarted(Landroid/os/ICancellationSignal;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    nop

    .line 878
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 880
    :try_start_1
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 881
    monitor-exit v1

    return-void

    .line 884
    :cond_0
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    .line 887
    .local v2, "cancellationSignal":Landroid/os/CancellationSignal;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v3

    .line 888
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    iput-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 889
    iput-object p1, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 890
    iput-object p2, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 891
    iput-object v2, v3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 892
    new-instance v4, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;

    invoke-direct {v4, p0, p3, p5}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/ILayoutResultCallback;I)V

    iput-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 893
    iput-object p4, v3, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 895
    iget-object v4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 896
    .end local v2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local v3    # "args":Lcom/android/internal/os/SomeArgs;
    monitor-exit v1

    .line 897
    return-void

    .line 896
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 872
    :catch_0
    move-exception v1

    .line 874
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "PrintManager"

    const-string v3, "Error notifying for layout start"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 875
    return-void
.end method

.method public whitelist onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 962
    return-void
.end method

.method public whitelist onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 991
    const/4 v0, 0x0

    .line 992
    .local v0, "observer":Landroid/print/IPrintDocumentAdapterObserver;
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 993
    :try_start_0
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mActivity:Landroid/app/Activity;

    if-ne p1, v2, :cond_0

    .line 994
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mObserver:Landroid/print/IPrintDocumentAdapterObserver;

    move-object v0, v2

    .line 995
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->destroyLocked()V

    .line 997
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    if-eqz v0, :cond_1

    .line 1000
    :try_start_1
    invoke-interface {v0}, Landroid/print/IPrintDocumentAdapterObserver;->onDestroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1003
    goto :goto_0

    .line 1001
    :catch_0
    move-exception v1

    .line 1002
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "PrintManager"

    const-string v3, "Error announcing destroyed state"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1005
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void

    .line 997
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public whitelist onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 957
    return-void
.end method

.method public whitelist onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 972
    return-void
.end method

.method public whitelist onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 982
    return-void
.end method

.method public whitelist onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 967
    return-void
.end method

.method public whitelist onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 977
    return-void
.end method

.method public greylist-max-o setObserver(Landroid/print/IPrintDocumentAdapterObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/print/IPrintDocumentAdapterObserver;

    .line 840
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 841
    :try_start_0
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mObserver:Landroid/print/IPrintDocumentAdapterObserver;

    .line 842
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z

    move-result v1

    .line 843
    .local v1, "destroyed":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 847
    :try_start_1
    invoke-interface {p1}, Landroid/print/IPrintDocumentAdapterObserver;->onDestroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 850
    goto :goto_0

    .line 848
    :catch_0
    move-exception v0

    .line 849
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "PrintManager"

    const-string v3, "Error announcing destroyed state"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 852
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void

    .line 843
    .end local v1    # "destroyed":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o start()V
    .locals 4

    .line 856
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 858
    :try_start_0
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 859
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 860
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 862
    :cond_0
    monitor-exit v0

    .line 863
    return-void

    .line 862
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o write([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/print/IWriteResultCallback;I)V
    .locals 6
    .param p1, "pages"    # [Landroid/print/PageRange;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "callback"    # Landroid/print/IWriteResultCallback;
    .param p4, "sequence"    # I

    .line 903
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 905
    .local v0, "cancellationTransport":Landroid/os/ICancellationSignal;
    :try_start_0
    invoke-interface {p3, v0, p4}, Landroid/print/IWriteResultCallback;->onWriteStarted(Landroid/os/ICancellationSignal;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    nop

    .line 912
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 914
    :try_start_1
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isDestroyedLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 915
    monitor-exit v1

    return-void

    .line 918
    :cond_0
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    .line 921
    .local v2, "cancellationSignal":Landroid/os/CancellationSignal;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v3

    .line 922
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    iput-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 923
    iput-object p1, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 924
    iput-object p2, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 925
    iput-object v2, v3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 926
    new-instance v4, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;

    invoke-direct {v4, p0, p3, p2, p4}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/IWriteResultCallback;Landroid/os/ParcelFileDescriptor;I)V

    iput-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 928
    iget-object v4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 929
    .end local v2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local v3    # "args":Lcom/android/internal/os/SomeArgs;
    monitor-exit v1

    .line 930
    return-void

    .line 929
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 906
    :catch_0
    move-exception v1

    .line 908
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "PrintManager"

    const-string v3, "Error notifying for write start"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 909
    return-void
.end method
