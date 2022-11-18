.class public final synthetic Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/tv/tuner/Tuner;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/tv/tuner/Tuner;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda0;->f$0:Landroid/media/tv/tuner/Tuner;

    iput-boolean p2, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda0;->f$0:Landroid/media/tv/tuner/Tuner;

    iget-boolean v1, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda0;->f$1:Z

    invoke-virtual {v0, v1}, Landroid/media/tv/tuner/Tuner;->lambda$onPriorityReported$18$android-media-tv-tuner-Tuner(Z)V

    return-void
.end method
