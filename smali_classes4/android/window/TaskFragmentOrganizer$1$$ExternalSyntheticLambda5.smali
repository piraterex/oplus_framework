.class public final synthetic Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/TaskFragmentOrganizer$1;

.field public final synthetic blacklist f$1:Landroid/window/TaskFragmentInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/TaskFragmentOrganizer$1;Landroid/window/TaskFragmentInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda5;->f$0:Landroid/window/TaskFragmentOrganizer$1;

    iput-object p2, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda5;->f$1:Landroid/window/TaskFragmentInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda5;->f$0:Landroid/window/TaskFragmentOrganizer$1;

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer$1$$ExternalSyntheticLambda5;->f$1:Landroid/window/TaskFragmentInfo;

    invoke-virtual {v0, v1}, Landroid/window/TaskFragmentOrganizer$1;->lambda$onTaskFragmentInfoChanged$1$android-window-TaskFragmentOrganizer$1(Landroid/window/TaskFragmentInfo;)V

    return-void
.end method
