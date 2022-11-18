.class public Landroid/app/job/JobSchedulerFrameworkInitializer;
.super Ljava/lang/Object;
.source "JobSchedulerFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/os/IBinder;)Landroid/app/job/JobScheduler;
    .locals 2
    .param p0, "b"    # Landroid/os/IBinder;

    .line 49
    new-instance v0, Landroid/app/JobSchedulerImpl;

    invoke-static {p0}, Landroid/app/job/IJobScheduler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobScheduler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/JobSchedulerImpl;-><init>(Landroid/app/job/IJobScheduler;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$1(Landroid/content/Context;Landroid/os/IBinder;)Landroid/os/DeviceIdleManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "b"    # Landroid/os/IBinder;

    .line 52
    new-instance v0, Landroid/os/DeviceIdleManager;

    .line 53
    invoke-static {p1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/os/DeviceIdleManager;-><init>(Landroid/content/Context;Landroid/os/IDeviceIdleController;)V

    .line 52
    return-object v0
.end method

.method public static whitelist registerServiceWrappers()V
    .locals 3

    .line 47
    const-class v0, Landroid/app/job/JobScheduler;

    new-instance v1, Landroid/app/job/JobSchedulerFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/job/JobSchedulerFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "jobscheduler"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;)V

    .line 50
    const-class v0, Landroid/os/DeviceIdleManager;

    new-instance v1, Landroid/app/job/JobSchedulerFrameworkInitializer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/app/job/JobSchedulerFrameworkInitializer$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "deviceidle"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V

    .line 54
    const-class v0, Landroid/os/PowerWhitelistManager;

    new-instance v1, Landroid/app/job/JobSchedulerFrameworkInitializer$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/app/job/JobSchedulerFrameworkInitializer$$ExternalSyntheticLambda2;-><init>()V

    const-string/jumbo v2, "power_whitelist"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 57
    const-class v0, Landroid/os/PowerExemptionManager;

    new-instance v1, Landroid/app/job/JobSchedulerFrameworkInitializer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/app/job/JobSchedulerFrameworkInitializer$$ExternalSyntheticLambda3;-><init>()V

    const-string/jumbo v2, "power_exemption"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 60
    const-class v0, Landroid/app/tare/EconomyManager;

    new-instance v1, Landroid/app/job/JobSchedulerFrameworkInitializer$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/app/job/JobSchedulerFrameworkInitializer$$ExternalSyntheticLambda4;-><init>()V

    const-string/jumbo v2, "tare"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;)V

    .line 62
    return-void
.end method
