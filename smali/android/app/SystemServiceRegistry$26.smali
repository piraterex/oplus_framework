.class Landroid/app/SystemServiceRegistry$26;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "Landroid/hardware/input/InputManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 513
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService()Landroid/hardware/input/InputManager;
    .locals 1

    .line 516
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist createService()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 513
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$26;->createService()Landroid/hardware/input/InputManager;

    move-result-object v0

    return-object v0
.end method
