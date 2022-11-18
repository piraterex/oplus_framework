.class public Landroid/hardware/display/OplusDisplayManager;
.super Ljava/lang/Object;
.source "OplusDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/OplusDisplayManager$LazyHolder;
    }
.end annotation


# static fields
.field private static final blacklist IOplusDisplayManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/hardware/display/IOplusDisplayManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "OplusDisplayManager"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Landroid/hardware/display/OplusDisplayManager$1;

    invoke-direct {v0}, Landroid/hardware/display/OplusDisplayManager$1;-><init>()V

    sput-object v0, Landroid/hardware/display/OplusDisplayManager;->IOplusDisplayManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Landroid/hardware/display/OplusDisplayManager;
    .locals 1

    .line 61
    invoke-static {}, Landroid/hardware/display/OplusDisplayManager$LazyHolder;->-$$Nest$sfgetINSTANCE()Landroid/hardware/display/OplusDisplayManager;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getService()Landroid/hardware/display/IOplusDisplayManager;
    .locals 1

    .line 35
    sget-object v0, Landroid/hardware/display/OplusDisplayManager;->IOplusDisplayManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/IOplusDisplayManager;

    return-object v0
.end method


# virtual methods
.method public whitelist setSpecBrightness(ILjava/lang/String;I)V
    .locals 3
    .param p1, "gear"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "rate"    # I

    .line 66
    :try_start_0
    invoke-static {}, Landroid/hardware/display/OplusDisplayManager;->getService()Landroid/hardware/display/IOplusDisplayManager;

    move-result-object v0

    .line 67
    .local v0, "service":Landroid/hardware/display/IOplusDisplayManager;
    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/display/IOplusDisplayManager;->setSpecBrightness(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0    # "service":Landroid/hardware/display/IOplusDisplayManager;
    :cond_0
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSpecBrightness error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusDisplayManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
