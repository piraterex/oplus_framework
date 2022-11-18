.class Landroid/content/pm/OplusPackageManager$1;
.super Landroid/util/Singleton;
.source "OplusPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/OplusPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/content/pm/IOplusPackageManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/content/pm/IOplusPackageManager;
    .locals 2

    .line 72
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/content/pm/IOplusPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOplusPackageManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .local v0, "oplusPackageManager":Landroid/content/pm/IOplusPackageManager;
    return-object v0

    .line 74
    .end local v0    # "oplusPackageManager":Landroid/content/pm/IOplusPackageManager;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    .line 67
    invoke-virtual {p0}, Landroid/content/pm/OplusPackageManager$1;->create()Landroid/content/pm/IOplusPackageManager;

    move-result-object v0

    return-object v0
.end method
