.class public final synthetic Landroid/os/IncidentManager$AuthListener$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/IncidentManager$AuthListener$1;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/IncidentManager$AuthListener$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/IncidentManager$AuthListener$1$$ExternalSyntheticLambda1;->f$0:Landroid/os/IncidentManager$AuthListener$1;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/os/IncidentManager$AuthListener$1$$ExternalSyntheticLambda1;->f$0:Landroid/os/IncidentManager$AuthListener$1;

    invoke-virtual {v0}, Landroid/os/IncidentManager$AuthListener$1;->lambda$onReportDenied$1$android-os-IncidentManager$AuthListener$1()V

    return-void
.end method
