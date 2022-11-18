.class Landroid/os/PerformanceManager$1;
.super Ljava/lang/Object;
.source "PerformanceManager.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerformanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist serviceDied(J)V
    .locals 2
    .param p1, "cookie"    # J

    .line 55
    const-string v0, "PerformanceManager"

    const-string v1, "Emmm, I died :("

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/PerformanceManager;->-$$Nest$sfputmPerformanceService(Lvendor/oplus/hardware/performance/V1_0/IPerformance;)V

    .line 57
    return-void
.end method
