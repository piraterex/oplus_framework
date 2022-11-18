.class Landroid/app/SystemServiceRegistry$72;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/hardware/face/FaceManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 928
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/hardware/face/FaceManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 933
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const-string v1, "face"

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 934
    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 936
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_0
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 938
    .restart local v0    # "binder":Landroid/os/IBinder;
    :goto_0
    invoke-static {v0}, Landroid/hardware/face/IFaceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceService;

    move-result-object v1

    .line 939
    .local v1, "service":Landroid/hardware/face/IFaceService;
    new-instance v2, Landroid/hardware/face/FaceManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/hardware/face/FaceManager;-><init>(Landroid/content/Context;Landroid/hardware/face/IFaceService;)V

    return-object v2
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 928
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$72;->createService(Landroid/app/ContextImpl;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    return-object p1
.end method
