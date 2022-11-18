.class public final synthetic Landroid/app/job/JobSchedulerFrameworkInitializer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist createService(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Landroid/app/job/JobSchedulerFrameworkInitializer;->lambda$registerServiceWrappers$0(Landroid/os/IBinder;)Landroid/app/job/JobScheduler;

    move-result-object p1

    return-object p1
.end method
