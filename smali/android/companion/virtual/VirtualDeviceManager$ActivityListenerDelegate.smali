.class Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;
.super Ljava/lang/Object;
.source "VirtualDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "listener"    # Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    .line 525
    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 526
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onDisplayEmpty$1$android-companion-virtual-VirtualDeviceManager$ActivityListenerDelegate(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 533
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    invoke-interface {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;->onDisplayEmpty(I)V

    return-void
.end method

.method synthetic blacklist lambda$onTopActivityChanged$0$android-companion-virtual-VirtualDeviceManager$ActivityListenerDelegate(ILandroid/content/ComponentName;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "topActivity"    # Landroid/content/ComponentName;

    .line 529
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;->onTopActivityChanged(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public blacklist onDisplayEmpty(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 533
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 534
    return-void
.end method

.method public blacklist onTopActivityChanged(ILandroid/content/ComponentName;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "topActivity"    # Landroid/content/ComponentName;

    .line 529
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 530
    return-void
.end method
