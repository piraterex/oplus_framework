.class Landroid/app/SystemServiceRegistry$42;
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
        "Landroid/hardware/SensorPrivacyManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 652
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/hardware/SensorPrivacyManager;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 655
    invoke-static {p1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 652
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$42;->createService(Landroid/app/ContextImpl;)Landroid/hardware/SensorPrivacyManager;

    move-result-object p1

    return-object p1
.end method
