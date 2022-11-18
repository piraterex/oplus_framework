.class public final synthetic Landroid/media/AudioManager$ModeDispatcherStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/CallbackUtil$CallbackMethod;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioManager$ModeDispatcherStub$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final blacklist callbackMethod(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroid/media/AudioManager$ModeDispatcherStub$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Landroid/media/AudioManager$OnModeChangedListener;

    invoke-static {v0, p1}, Landroid/media/AudioManager$ModeDispatcherStub;->lambda$dispatchAudioModeChanged$0(ILandroid/media/AudioManager$OnModeChangedListener;)V

    return-void
.end method
