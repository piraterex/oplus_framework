.class Landroid/hardware/face/FaceManager$2;
.super Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Stub;
.source "FaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/face/FaceManager;->addLockoutResetCallback(Landroid/hardware/face/FaceManager$LockoutResetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/face/FaceManager;

.field final synthetic blacklist val$callback:Landroid/hardware/face/FaceManager$LockoutResetCallback;

.field final synthetic blacklist val$powerManager:Landroid/os/PowerManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/face/FaceManager;Landroid/os/PowerManager;Landroid/hardware/face/FaceManager$LockoutResetCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/face/FaceManager;

    .line 756
    iput-object p1, p0, Landroid/hardware/face/FaceManager$2;->this$0:Landroid/hardware/face/FaceManager;

    iput-object p2, p0, Landroid/hardware/face/FaceManager$2;->val$powerManager:Landroid/os/PowerManager;

    iput-object p3, p0, Landroid/hardware/face/FaceManager$2;->val$callback:Landroid/hardware/face/FaceManager$LockoutResetCallback;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onLockoutReset$0(Landroid/hardware/face/FaceManager$LockoutResetCallback;ILandroid/os/PowerManager$WakeLock;)V
    .locals 1
    .param p0, "callback"    # Landroid/hardware/face/FaceManager$LockoutResetCallback;
    .param p1, "sensorId"    # I
    .param p2, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    .line 768
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/face/FaceManager$LockoutResetCallback;->onLockoutReset(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 771
    nop

    .line 772
    return-void

    .line 770
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 771
    throw v0
.end method


# virtual methods
.method public blacklist onLockoutReset(ILandroid/os/IRemoteCallback;)V
    .locals 5
    .param p1, "sensorId"    # I
    .param p2, "serverCallback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 762
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager$2;->val$powerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "faceLockoutResetCallback"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 765
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 766
    iget-object v2, p0, Landroid/hardware/face/FaceManager$2;->this$0:Landroid/hardware/face/FaceManager;

    invoke-static {v2}, Landroid/hardware/face/FaceManager;->-$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/face/FaceManager$2;->val$callback:Landroid/hardware/face/FaceManager$LockoutResetCallback;

    new-instance v4, Landroid/hardware/face/FaceManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1, v1}, Landroid/hardware/face/FaceManager$2$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/face/FaceManager$LockoutResetCallback;ILandroid/os/PowerManager$WakeLock;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    nop

    .end local v1    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 775
    nop

    .line 776
    return-void

    .line 774
    :catchall_0
    move-exception v1

    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 775
    throw v1
.end method
