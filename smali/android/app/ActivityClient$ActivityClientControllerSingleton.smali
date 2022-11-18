.class Landroid/app/ActivityClient$ActivityClientControllerSingleton;
.super Landroid/util/Singleton;
.source "ActivityClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityClientControllerSingleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/app/IActivityClientController;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist mKnownInstance:Landroid/app/IActivityClientController;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 577
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ActivityClient$ActivityClientControllerSingleton-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityClient$ActivityClientControllerSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/app/IActivityClientController;
    .locals 2

    .line 588
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    .line 577
    invoke-virtual {p0}, Landroid/app/ActivityClient$ActivityClientControllerSingleton;->create()Landroid/app/IActivityClientController;

    move-result-object v0

    return-object v0
.end method
