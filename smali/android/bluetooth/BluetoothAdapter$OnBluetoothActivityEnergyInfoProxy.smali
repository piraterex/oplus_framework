.class Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;
.super Landroid/bluetooth/IBluetoothActivityEnergyInfoListener$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnBluetoothActivityEnergyInfoProxy"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    .line 922
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothActivityEnergyInfoListener$Stub;-><init>()V

    .line 917
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mLock:Ljava/lang/Object;

    .line 923
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 924
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    .line 925
    return-void
.end method

.method static synthetic blacklist lambda$onBluetoothActivityEnergyInfoAvailable$0(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    .line 943
    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;->onBluetoothActivityEnergyInfoError(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onBluetoothActivityEnergyInfoAvailable$1(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 946
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;->onBluetoothActivityEnergyInfoAvailable(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$onError$2(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;I)V
    .locals 0
    .param p0, "callback"    # Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;
    .param p1, "errorCode"    # I

    .line 970
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;->onBluetoothActivityEnergyInfoError(I)V

    return-void
.end method


# virtual methods
.method public blacklist onBluetoothActivityEnergyInfoAvailable(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 931
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 932
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    if-nez v2, :cond_0

    goto :goto_1

    .line 935
    :cond_0
    nop

    .line 936
    .local v1, "executor":Ljava/util/concurrent/Executor;
    nop

    .line 937
    .local v2, "callback":Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 938
    iput-object v3, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    .line 939
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 940
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 942
    .local v3, "identity":J
    if-nez p1, :cond_1

    .line 943
    :try_start_1
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, v2}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 946
    :cond_1
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda2;

    invoke-direct {v0, v2, p1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 949
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 950
    nop

    .line 951
    return-void

    .line 949
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 950
    throw v0

    .line 933
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "callback":Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;
    .end local v3    # "identity":J
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v0

    return-void

    .line 939
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist onError(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .line 959
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 960
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    if-nez v2, :cond_0

    goto :goto_0

    .line 963
    :cond_0
    nop

    .line 964
    .local v1, "executor":Ljava/util/concurrent/Executor;
    nop

    .line 965
    .local v2, "callback":Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 966
    iput-object v3, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    .line 967
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 968
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 970
    .local v3, "identity":J
    :try_start_1
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2, p1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;I)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 973
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 974
    nop

    .line 975
    return-void

    .line 973
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 974
    throw v0

    .line 961
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "callback":Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;
    .end local v3    # "identity":J
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v0

    return-void

    .line 967
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
