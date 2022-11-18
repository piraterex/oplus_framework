.class Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate;
.super Landroid/bluetooth/IBluetoothCsipSetCoordinatorLockCallback$Stub;
.source "BluetoothCsipSetCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothCsipSetCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothCsipSetCoordinatorLockCallbackDelegate"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/bluetooth/BluetoothCsipSetCoordinator$ClientLockCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothCsipSetCoordinator$ClientLockCallback;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothCsipSetCoordinator$ClientLockCallback;

    .line 104
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothCsipSetCoordinatorLockCallback$Stub;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 106
    iput-object p2, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate;->mCallback:Landroid/bluetooth/BluetoothCsipSetCoordinator$ClientLockCallback;

    .line 107
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onGroupLockSet$0$android-bluetooth-BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate(IIZ)V
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "opStatus"    # I
    .param p3, "isLocked"    # Z

    .line 111
    iget-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate;->mCallback:Landroid/bluetooth/BluetoothCsipSetCoordinator$ClientLockCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothCsipSetCoordinator$ClientLockCallback;->onGroupLockSet(IIZ)V

    return-void
.end method

.method public blacklist onGroupLockSet(IIZ)V
    .locals 2
    .param p1, "groupId"    # I
    .param p2, "opStatus"    # I
    .param p3, "isLocked"    # Z

    .line 111
    iget-object v0, p0, Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothCsipSetCoordinator$BluetoothCsipSetCoordinatorLockCallbackDelegate;IIZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method
