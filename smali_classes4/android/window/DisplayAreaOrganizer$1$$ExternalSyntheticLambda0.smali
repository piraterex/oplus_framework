.class public final synthetic Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/DisplayAreaOrganizer$1;

.field public final synthetic blacklist f$1:Landroid/window/DisplayAreaInfo;

.field public final synthetic blacklist f$2:Landroid/view/SurfaceControl;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/DisplayAreaOrganizer$1;Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda0;->f$0:Landroid/window/DisplayAreaOrganizer$1;

    iput-object p2, p0, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda0;->f$1:Landroid/window/DisplayAreaInfo;

    iput-object p3, p0, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda0;->f$2:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda0;->f$0:Landroid/window/DisplayAreaOrganizer$1;

    iget-object v1, p0, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda0;->f$1:Landroid/window/DisplayAreaInfo;

    iget-object v2, p0, Landroid/window/DisplayAreaOrganizer$1$$ExternalSyntheticLambda0;->f$2:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/window/DisplayAreaOrganizer$1;->lambda$onDisplayAreaAppeared$0$android-window-DisplayAreaOrganizer$1(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method
