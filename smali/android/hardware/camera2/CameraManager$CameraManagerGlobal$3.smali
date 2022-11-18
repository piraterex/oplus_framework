.class Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->postSingleAccessPriorityChangeUpdate(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

.field final synthetic blacklist val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    .line 2118
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->this$0:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    iput-object p2, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 2121
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$3;->val$callback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAccessPrioritiesChanged()V

    .line 2122
    return-void
.end method
