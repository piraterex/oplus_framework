.class Landroid/os/UserManager$2;
.super Landroid/app/PropertyInvalidatedCache;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/UserManager;


# direct methods
.method constructor blacklist <init>(Landroid/os/UserManager;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/UserManager;
    .param p2, "maxEntries"    # I
    .param p3, "propertyName"    # Ljava/lang/String;

    .line 2872
    iput-object p1, p0, Landroid/os/UserManager$2;->this$0:Landroid/os/UserManager;

    invoke-direct {p0, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist bypass(Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/Integer;

    .line 2883
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic blacklist bypass(Ljava/lang/Object;)Z
    .locals 0

    .line 2872
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/os/UserManager$2;->bypass(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public blacklist recompute(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "query"    # Ljava/lang/Integer;

    .line 2876
    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager$2;->this$0:Landroid/os/UserManager;

    invoke-static {v0}, Landroid/os/UserManager;->-$$Nest$fgetmService(Landroid/os/UserManager;)Landroid/os/IUserManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2877
    :catch_0
    move-exception v0

    .line 2878
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2872
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/os/UserManager$2;->recompute(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
