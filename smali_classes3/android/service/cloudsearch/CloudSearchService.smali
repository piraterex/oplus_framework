.class public abstract Landroid/service/cloudsearch/CloudSearchService;
.super Landroid/app/Service;
.source "CloudSearchService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.cloudsearch.CloudSearchService"

.field private static final blacklist TAG:Ljava/lang/String; = "CloudSearchService"


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mInterface:Landroid/service/cloudsearch/ICloudSearchService;

.field private blacklist mService:Landroid/app/cloudsearch/ICloudSearchManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/cloudsearch/CloudSearchService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/cloudsearch/CloudSearchService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 80
    new-instance v0, Landroid/service/cloudsearch/CloudSearchService$1;

    invoke-direct {v0, p0}, Landroid/service/cloudsearch/CloudSearchService$1;-><init>(Landroid/service/cloudsearch/CloudSearchService;)V

    iput-object v0, p0, Landroid/service/cloudsearch/CloudSearchService;->mInterface:Landroid/service/cloudsearch/ICloudSearchService;

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 134
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.cloudsearch.CloudSearchService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroid/service/cloudsearch/CloudSearchService;->mInterface:Landroid/service/cloudsearch/ICloudSearchService;

    invoke-interface {v0}, Landroid/service/cloudsearch/ICloudSearchService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.cloudsearch.CloudSearchService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudSearchService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate()V
    .locals 4

    .line 92
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/cloudsearch/CloudSearchService;->mHandler:Landroid/os/Handler;

    .line 98
    const-string v0, "cloudsearch"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 99
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/cloudsearch/ICloudSearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/cloudsearch/ICloudSearchManager;

    move-result-object v1

    iput-object v1, p0, Landroid/service/cloudsearch/CloudSearchService;->mService:Landroid/app/cloudsearch/ICloudSearchManager;

    .line 100
    return-void
.end method

.method public abstract whitelist onSearch(Landroid/app/cloudsearch/SearchRequest;)V
.end method

.method public final whitelist returnResults(Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;)V
    .locals 2
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/app/cloudsearch/SearchResponse;

    .line 122
    :try_start_0
    iget-object v0, p0, Landroid/service/cloudsearch/CloudSearchService;->mService:Landroid/app/cloudsearch/ICloudSearchManager;

    iget-object v1, p0, Landroid/service/cloudsearch/CloudSearchService;->mInterface:Landroid/service/cloudsearch/ICloudSearchService;

    invoke-interface {v1}, Landroid/service/cloudsearch/ICloudSearchService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/cloudsearch/ICloudSearchManager;->returnResults(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    nop

    .line 126
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
