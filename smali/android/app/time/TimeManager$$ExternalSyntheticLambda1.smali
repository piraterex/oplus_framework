.class public final synthetic Landroid/app/time/TimeManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/time/TimeManager$TimeZoneDetectorListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/time/TimeManager$TimeZoneDetectorListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/time/TimeManager$$ExternalSyntheticLambda1;->f$0:Landroid/app/time/TimeManager$TimeZoneDetectorListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/app/time/TimeManager$$ExternalSyntheticLambda1;->f$0:Landroid/app/time/TimeManager$TimeZoneDetectorListener;

    invoke-interface {v0}, Landroid/app/time/TimeManager$TimeZoneDetectorListener;->onChange()V

    return-void
.end method
