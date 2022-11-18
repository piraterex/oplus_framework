.class Lcom/oplus/vrr/OPlusRefreshRateManager$1;
.super Landroid/util/Singleton;
.source "OPlusRefreshRateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/vrr/OPlusRefreshRateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/oplus/vrr/IOPlusRefreshRate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Lcom/oplus/vrr/IOPlusRefreshRate;
    .locals 5

    .line 42
    const-string v0, "can\'t get service interface: IOPlusRefreshRate"

    const-string v1, "VRR [OPlusRefreshRateManager]"

    const/4 v2, 0x0

    .line 43
    .local v2, "ret":Lcom/oplus/vrr/IOPlusRefreshRate;
    :try_start_0
    const-string v3, "oplus_vrr_service"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 45
    .local v3, "b":Landroid/os/IBinder;
    if-nez v3, :cond_0

    .line 46
    const-string v4, "can\'t get service binder: IOPlusRefreshRate"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    invoke-static {v3}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v4

    move-object v2, v4

    .line 51
    if-nez v2, :cond_1

    .line 52
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_1
    return-object v2

    .line 56
    .end local v2    # "ret":Lcom/oplus/vrr/IOPlusRefreshRate;
    .end local v3    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 57
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/oplus/vrr/OPlusRefreshRateManager$1;->create()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v0

    return-object v0
.end method
