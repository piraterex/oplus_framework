.class public final synthetic Landroid/hardware/camera2/utils/TaskDrainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/utils/TaskDrainer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/utils/TaskDrainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/utils/TaskDrainer$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/utils/TaskDrainer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-virtual {v0}, Landroid/hardware/camera2/utils/TaskDrainer;->lambda$postDrained$0$android-hardware-camera2-utils-TaskDrainer()V

    return-void
.end method
