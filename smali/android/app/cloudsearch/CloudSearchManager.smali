.class public Landroid/app/cloudsearch/CloudSearchManager;
.super Ljava/lang/Object;
.source "CloudSearchManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;,
        Landroid/app/cloudsearch/CloudSearchManager$CallBack;
    }
.end annotation


# instance fields
.field private final blacklist mService:Landroid/app/cloudsearch/ICloudSearchManager;


# direct methods
.method public constructor blacklist <init>(Landroid/app/cloudsearch/ICloudSearchManager;)V
    .locals 0
    .param p1, "service"    # Landroid/app/cloudsearch/ICloudSearchManager;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/app/cloudsearch/CloudSearchManager;->mService:Landroid/app/cloudsearch/ICloudSearchManager;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist search(Landroid/app/cloudsearch/SearchRequest;Ljava/util/concurrent/Executor;Landroid/app/cloudsearch/CloudSearchManager$CallBack;)V
    .locals 6
    .param p1, "request"    # Landroid/app/cloudsearch/SearchRequest;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/app/cloudsearch/CloudSearchManager$CallBack;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 84
    :try_start_0
    iget-object v0, p0, Landroid/app/cloudsearch/CloudSearchManager;->mService:Landroid/app/cloudsearch/ICloudSearchManager;

    .line 85
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/cloudsearch/SearchRequest;

    new-instance v2, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;

    .line 87
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/cloudsearch/SearchRequest;

    .line 88
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/cloudsearch/CloudSearchManager$CallBack;

    .line 89
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    invoke-direct {v2, p0, v3, v4, v5}, Landroid/app/cloudsearch/CloudSearchManager$CallBackWrapper;-><init>(Landroid/app/cloudsearch/CloudSearchManager;Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/CloudSearchManager$CallBack;Ljava/util/concurrent/Executor;)V

    .line 84
    invoke-interface {v0, v1, v2}, Landroid/app/cloudsearch/ICloudSearchManager;->search(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    nop

    .line 93
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
