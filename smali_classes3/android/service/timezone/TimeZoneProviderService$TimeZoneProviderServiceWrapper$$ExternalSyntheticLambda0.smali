.class public final synthetic Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/timezone/TimeZoneProviderService;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/timezone/TimeZoneProviderService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/service/timezone/TimeZoneProviderService;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/service/timezone/TimeZoneProviderService;

    invoke-static {v0}, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;->lambda$stopUpdates$1(Landroid/service/timezone/TimeZoneProviderService;)V

    return-void
.end method
