.class Landroid/window/TaskOrganizer$1;
.super Landroid/window/ITaskOrganizer$Stub;
.source "TaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/window/TaskOrganizer;


# direct methods
.method constructor blacklist <init>(Landroid/window/TaskOrganizer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/window/TaskOrganizer;

    .line 292
    iput-object p1, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-direct {p0}, Landroid/window/ITaskOrganizer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "windowInfo"    # Landroid/window/StartingWindowInfo;
    .param p2, "appToken"    # Landroid/os/IBinder;

    .line 300
    const-wide/16 v0, 0x20

    const-string/jumbo v2, "prev-addStartingWindow"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 301
    iget-object v2, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v2, p1, p2}, Landroid/window/TaskOrganizer;->addStartingWindow(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;)V

    .line 302
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 304
    return-void
.end method

.method public blacklist copySplashScreenView(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 313
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda2;-><init>(Landroid/window/TaskOrganizer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 314
    return-void
.end method

.method synthetic blacklist lambda$copySplashScreenView$1$android-window-TaskOrganizer$1(I)V
    .locals 1
    .param p1, "taskId"    # I

    .line 313
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->copySplashScreenView(I)V

    return-void
.end method

.method synthetic blacklist lambda$onAppSplashScreenViewRemoved$2$android-window-TaskOrganizer$1(I)V
    .locals 1
    .param p1, "taskId"    # I

    .line 318
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onAppSplashScreenViewRemoved(I)V

    return-void
.end method

.method synthetic blacklist lambda$onBackPressedOnTaskRoot$6$android-window-TaskOrganizer$1(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 344
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$onImeDrawnOnTask$7$android-window-TaskOrganizer$1(I)V
    .locals 1
    .param p1, "taskId"    # I

    .line 349
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onImeDrawnOnTask(I)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskAppeared$3$android-window-TaskOrganizer$1(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 329
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskOrganizer;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskInfoChanged$5$android-window-TaskOrganizer$1(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 339
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$onTaskVanished$4$android-window-TaskOrganizer$1(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 334
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method synthetic blacklist lambda$removeStartingWindow$0$android-window-TaskOrganizer$1(Landroid/window/StartingWindowRemovalInfo;)V
    .locals 1
    .param p1, "removalInfo"    # Landroid/window/StartingWindowRemovalInfo;

    .line 308
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-virtual {v0, p1}, Landroid/window/TaskOrganizer;->removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V

    return-void
.end method

.method public blacklist onAppSplashScreenViewRemoved(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 318
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda0;-><init>(Landroid/window/TaskOrganizer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 319
    return-void
.end method

.method public blacklist onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 344
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda1;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 345
    return-void
.end method

.method public blacklist onImeDrawnOnTask(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 349
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda4;-><init>(Landroid/window/TaskOrganizer$1;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 350
    return-void
.end method

.method public blacklist onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .locals 2
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 325
    invoke-static {}, Landroid/window/TaskOrganizer;->-$$Nest$sfgetDEBUG_PANIC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTaskAppeared: taskInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", leash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskOrganizer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda5;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 330
    return-void
.end method

.method public blacklist onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 339
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda3;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 340
    return-void
.end method

.method public blacklist onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 334
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda7;-><init>(Landroid/window/TaskOrganizer$1;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 335
    return-void
.end method

.method public blacklist removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    .locals 2
    .param p1, "removalInfo"    # Landroid/window/StartingWindowRemovalInfo;

    .line 308
    iget-object v0, p0, Landroid/window/TaskOrganizer$1;->this$0:Landroid/window/TaskOrganizer;

    invoke-static {v0}, Landroid/window/TaskOrganizer;->-$$Nest$fgetmExecutor(Landroid/window/TaskOrganizer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;-><init>(Landroid/window/TaskOrganizer$1;Landroid/window/StartingWindowRemovalInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method
