.class Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;
.super Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub;
.source "TunerResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/tunerresourcemanager/TunerResourceManager;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 127
    iput-object p1, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;->this$0:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iput-object p2, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;->val$listener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    invoke-direct {p0}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onReclaimResources$0(Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;)V
    .locals 0
    .param p0, "listener"    # Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    .line 132
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;->onReclaimResources()V

    return-void
.end method


# virtual methods
.method public blacklist onReclaimResources()V
    .locals 5

    .line 130
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 132
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;->val$listener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    new-instance v4, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    nop

    .line 136
    return-void

    .line 134
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    throw v2
.end method
