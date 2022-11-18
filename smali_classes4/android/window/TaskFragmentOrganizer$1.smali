.class Landroid/window/TaskFragmentOrganizer$1;
.super Landroid/window/ITaskFragmentOrganizer$Stub;
.source "TaskFragmentOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskFragmentOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/window/TaskFragmentOrganizer;


# direct methods
.method constructor blacklist <init>(Landroid/window/TaskFragmentOrganizer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/window/TaskFragmentOrganizer;

    .line 191
    iput-object p1, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-direct {p0}, Landroid/window/ITaskFragmentOrganizer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onActivityReparentToTask$5$android-window-TaskFragmentOrganizer$1(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "activityIntent"    # Landroid/content/Intent;
    .param p3, "activityToken"    # Landroid/os/IBinder;

    .line 230
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/window/TaskFragmentOrganizer;->onActivityReparentToTask(ILandroid/content/Intent;Landroid/os/IBinder;)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskFragmentAppeared$0$android-window-TaskFragmentOrganizer$1(Landroid/window/TaskFragmentInfo;)V
    .locals 1
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 195
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskFragmentOrganizer;->onTaskFragmentAppeared(Landroid/window/TaskFragmentInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskFragmentError$4$android-window-TaskFragmentOrganizer$1(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "errorCallbackToken"    # Landroid/os/IBinder;
    .param p2, "exceptionBundle"    # Landroid/os/Bundle;

    .line 221
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    .line 223
    const-string v1, "fragment_exception"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 221
    invoke-virtual {v0, p1, v1}, Landroid/window/TaskFragmentOrganizer;->onTaskFragmentError(Landroid/os/IBinder;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskFragmentInfoChanged$1$android-window-TaskFragmentOrganizer$1(Landroid/window/TaskFragmentInfo;)V
    .locals 1
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 201
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskFragmentOrganizer;->onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskFragmentParentInfoChanged$3$android-window-TaskFragmentOrganizer$1(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;

    .line 214
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskFragmentOrganizer;->onTaskFragmentParentInfoChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskFragmentVanished$2$android-window-TaskFragmentOrganizer$1(Landroid/window/TaskFragmentInfo;)V
    .locals 1
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 207
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskFragmentOrganizer;->onTaskFragmentVanished(Landroid/window/TaskFragmentInfo;)V

    return-void
.end method

.method public blacklist onActivityReparentToTask(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "activityIntent"    # Landroid/content/Intent;
    .param p3, "activityToken"    # Landroid/os/IBinder;

    .line 229
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-static {v0}, Landroid/window/TaskFragmentOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda2;-><init>(Landroid/window/TaskFragmentOrganizer$1;ILandroid/content/Intent;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method public blacklist onTaskFragmentAppeared(Landroid/window/TaskFragmentInfo;)V
    .locals 2
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 194
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-static {v0}, Landroid/window/TaskFragmentOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda4;-><init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/window/TaskFragmentInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method public blacklist onTaskFragmentError(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "errorCallbackToken"    # Landroid/os/IBinder;
    .param p2, "exceptionBundle"    # Landroid/os/Bundle;

    .line 221
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-static {v0}, Landroid/window/TaskFragmentOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda0;-><init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method

.method public blacklist onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V
    .locals 2
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 200
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-static {v0}, Landroid/window/TaskFragmentOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda5;-><init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/window/TaskFragmentInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method public blacklist onTaskFragmentParentInfoChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;

    .line 213
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-static {v0}, Landroid/window/TaskFragmentOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda1;-><init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method

.method public blacklist onTaskFragmentVanished(Landroid/window/TaskFragmentInfo;)V
    .locals 2
    .param p1, "taskFragmentInfo"    # Landroid/window/TaskFragmentInfo;

    .line 206
    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1;->this$0:Landroid/window/TaskFragmentOrganizer;

    invoke-static {v0}, Landroid/window/TaskFragmentOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda3;-><init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/window/TaskFragmentInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method
