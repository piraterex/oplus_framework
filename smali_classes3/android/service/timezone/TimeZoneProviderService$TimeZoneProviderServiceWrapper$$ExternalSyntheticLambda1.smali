.class public final synthetic Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;

.field public final synthetic blacklist f$1:Landroid/service/timezone/ITimeZoneProviderManager;

.field public final synthetic blacklist f$2:J

.field public final synthetic blacklist f$3:J


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;Landroid/service/timezone/ITimeZoneProviderManager;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;

    iput-object p2, p0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda1;->f$1:Landroid/service/timezone/ITimeZoneProviderManager;

    iput-wide p3, p0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda1;->f$2:J

    iput-wide p5, p0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda1;->f$3:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 6

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda1;->f$1:Landroid/service/timezone/ITimeZoneProviderManager;

    iget-wide v2, p0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda1;->f$2:J

    iget-wide v4, p0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda1;->f$3:J

    invoke-virtual/range {v0 .. v5}, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;->lambda$startUpdates$0$android-service-timezone-TimeZoneProviderService$TimeZoneProviderServiceWrapper(Landroid/service/timezone/ITimeZoneProviderManager;JJ)V

    return-void
.end method
