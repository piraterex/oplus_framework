.class Landroid/os/PowerManager$1;
.super Landroid/app/PropertyInvalidatedCache;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/PowerManager;


# direct methods
.method constructor blacklist <init>(Landroid/os/PowerManager;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/PowerManager;
    .param p2, "maxEntries"    # I
    .param p3, "propertyName"    # Ljava/lang/String;

    .line 1103
    iput-object p1, p0, Landroid/os/PowerManager$1;->this$0:Landroid/os/PowerManager;

    invoke-direct {p0, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist recompute(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "query"    # Ljava/lang/Void;

    .line 1107
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager$1;->this$0:Landroid/os/PowerManager;

    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isPowerSaveMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1103
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/os/PowerManager$1;->recompute(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
