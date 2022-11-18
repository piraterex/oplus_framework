.class public Landroid/bluetooth/BluetoothFrameworkInitializer;
.super Ljava/lang/Object;
.source "BluetoothFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static volatile blacklist sBinderCallsStatsInitializer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sBluetoothServiceManager:Landroid/os/BluetoothServiceManager;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getBluetoothServiceManager()Landroid/os/BluetoothServiceManager;
    .locals 1

    .line 62
    sget-object v0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBluetoothServiceManager:Landroid/os/BluetoothServiceManager;

    return-object v0
.end method

.method public static blacklist initializeBinderCallsStats(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 87
    sget-object v0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBinderCallsStatsInitializer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBinderCallsStatsInitializer:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 91
    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "sBinderCallsStatsInitializer has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;)Landroid/bluetooth/BluetoothManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 102
    new-instance v0, Landroid/bluetooth/BluetoothManager;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .locals 3

    .line 101
    const-class v0, Landroid/bluetooth/BluetoothManager;

    new-instance v1, Landroid/bluetooth/BluetoothFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "bluetooth"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 103
    return-void
.end method

.method public static blacklist setBinderCallsStatsInitializer(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p0, "binderCallsStatsConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/Context;>;"
    sget-object v0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBinderCallsStatsInitializer:Ljava/util/function/Consumer;

    if-nez v0, :cond_1

    .line 78
    if-eqz p0, :cond_0

    .line 82
    sput-object p0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBinderCallsStatsInitializer:Ljava/util/function/Consumer;

    .line 83
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "binderCallsStatsConsumer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setBinderCallsStatsInitializer called twice!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist setBluetoothServiceManager(Landroid/os/BluetoothServiceManager;)V
    .locals 2
    .param p0, "bluetoothServiceManager"    # Landroid/os/BluetoothServiceManager;

    .line 49
    sget-object v0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBluetoothServiceManager:Landroid/os/BluetoothServiceManager;

    if-nez v0, :cond_1

    .line 53
    if-eqz p0, :cond_0

    .line 57
    sput-object p0, Landroid/bluetooth/BluetoothFrameworkInitializer;->sBluetoothServiceManager:Landroid/os/BluetoothServiceManager;

    .line 58
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bluetoothServiceManager must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setBluetoothServiceManager called twice!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
