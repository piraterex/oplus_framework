.class public final synthetic Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/tv/TvInputManager$HardwareCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/tv/TvInputManager$HardwareCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda1;->f$0:Landroid/media/tv/TvInputManager$HardwareCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvInputManager$4$$ExternalSyntheticLambda1;->f$0:Landroid/media/tv/TvInputManager$HardwareCallback;

    invoke-static {v0}, Landroid/media/tv/TvInputManager$4;->lambda$onReleased$0(Landroid/media/tv/TvInputManager$HardwareCallback;)V

    return-void
.end method
