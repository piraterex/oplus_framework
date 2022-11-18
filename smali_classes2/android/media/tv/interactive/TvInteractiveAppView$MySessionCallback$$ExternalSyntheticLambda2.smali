.class public final synthetic Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda2;->f$0:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    iput p2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda2;->f$0:Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda2;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onSessionStateChanged$1$android-media-tv-interactive-TvInteractiveAppView$MySessionCallback(II)V

    return-void
.end method
