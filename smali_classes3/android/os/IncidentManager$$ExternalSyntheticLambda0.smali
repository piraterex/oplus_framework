.class public final synthetic Landroid/os/IncidentManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/IncidentManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/IncidentManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/IncidentManager$$ExternalSyntheticLambda0;->f$0:Landroid/os/IncidentManager;

    return-void
.end method


# virtual methods
.method public final whitelist binderDied()V
    .locals 1

    iget-object v0, p0, Landroid/os/IncidentManager$$ExternalSyntheticLambda0;->f$0:Landroid/os/IncidentManager;

    invoke-virtual {v0}, Landroid/os/IncidentManager;->lambda$getIIncidentManagerLocked$0$android-os-IncidentManager()V

    return-void
.end method
