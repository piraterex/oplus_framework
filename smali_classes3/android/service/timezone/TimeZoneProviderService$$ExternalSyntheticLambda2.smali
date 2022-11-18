.class public final synthetic Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/timezone/TimeZoneProviderService;

.field public final synthetic blacklist f$1:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/timezone/TimeZoneProviderService;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda2;->f$0:Landroid/service/timezone/TimeZoneProviderService;

    iput-object p2, p0, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda2;->f$0:Landroid/service/timezone/TimeZoneProviderService;

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Landroid/service/timezone/TimeZoneProviderService;->lambda$reportPermanentFailure$2$android-service-timezone-TimeZoneProviderService(Ljava/lang/Throwable;)V

    return-void
.end method
