.class Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;
.super Landroid/service/timezone/ITimeZoneProvider$Stub;
.source "TimeZoneProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/timezone/TimeZoneProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeZoneProviderServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/timezone/TimeZoneProviderService;


# direct methods
.method private constructor blacklist <init>(Landroid/service/timezone/TimeZoneProviderService;)V
    .locals 0

    .line 363
    iput-object p1, p0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;->this$0:Landroid/service/timezone/TimeZoneProviderService;

    invoke-direct {p0}, Landroid/service/timezone/ITimeZoneProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/timezone/TimeZoneProviderService;Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;-><init>(Landroid/service/timezone/TimeZoneProviderService;)V

    return-void
.end method

.method static synthetic blacklist lambda$stopUpdates$1(Landroid/service/timezone/TimeZoneProviderService;)V
    .locals 0
    .param p0, "rec$"    # Landroid/service/timezone/TimeZoneProviderService;

    .line 374
    invoke-static {p0}, Landroid/service/timezone/TimeZoneProviderService;->-$$Nest$monStopUpdatesInternal(Landroid/service/timezone/TimeZoneProviderService;)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$startUpdates$0$android-service-timezone-TimeZoneProviderService$TimeZoneProviderServiceWrapper(Landroid/service/timezone/ITimeZoneProviderManager;JJ)V
    .locals 6
    .param p1, "manager"    # Landroid/service/timezone/ITimeZoneProviderManager;
    .param p2, "initializationTimeoutMillis"    # J
    .param p4, "eventFilteringAgeThresholdMillis"    # J

    .line 369
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;->this$0:Landroid/service/timezone/TimeZoneProviderService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Landroid/service/timezone/TimeZoneProviderService;->-$$Nest$monStartUpdatesInternal(Landroid/service/timezone/TimeZoneProviderService;Landroid/service/timezone/ITimeZoneProviderManager;JJ)V

    return-void
.end method

.method public blacklist startUpdates(Landroid/service/timezone/ITimeZoneProviderManager;JJ)V
    .locals 9
    .param p1, "manager"    # Landroid/service/timezone/ITimeZoneProviderManager;
    .param p2, "initializationTimeoutMillis"    # J
    .param p4, "eventFilteringAgeThresholdMillis"    # J

    .line 368
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;->this$0:Landroid/service/timezone/TimeZoneProviderService;

    invoke-static {v0}, Landroid/service/timezone/TimeZoneProviderService;->-$$Nest$fgetmHandler(Landroid/service/timezone/TimeZoneProviderService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;Landroid/service/timezone/ITimeZoneProviderManager;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 371
    return-void
.end method

.method public blacklist stopUpdates()V
    .locals 3

    .line 374
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;->this$0:Landroid/service/timezone/TimeZoneProviderService;

    invoke-static {v0}, Landroid/service/timezone/TimeZoneProviderService;->-$$Nest$fgetmHandler(Landroid/service/timezone/TimeZoneProviderService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;->this$0:Landroid/service/timezone/TimeZoneProviderService;

    new-instance v2, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/service/timezone/TimeZoneProviderService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 375
    return-void
.end method
