.class public final synthetic Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/TaskFragmentOrganizer$1;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/content/Intent;

.field public final synthetic blacklist f$3:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/TaskFragmentOrganizer$1;ILandroid/content/Intent;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda2;->f$0:Landroid/window/TaskFragmentOrganizer$1;

    iput p2, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda2;->f$2:Landroid/content/Intent;

    iput-object p4, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda2;->f$3:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda2;->f$0:Landroid/window/TaskFragmentOrganizer$1;

    iget v1, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda2;->f$2:Landroid/content/Intent;

    iget-object v3, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda2;->f$3:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2, v3}, Landroid/window/TaskFragmentOrganizer$1;->lambda$onActivityReparentToTask$5$android-window-TaskFragmentOrganizer$1(ILandroid/content/Intent;Landroid/os/IBinder;)V

    return-void
.end method
