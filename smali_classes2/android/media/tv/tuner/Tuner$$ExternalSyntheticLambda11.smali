.class public final synthetic Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/tv/tuner/Tuner;

.field public final synthetic blacklist f$1:[I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/tv/tuner/Tuner;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda11;->f$0:Landroid/media/tv/tuner/Tuner;

    iput-object p2, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda11;->f$1:[I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda11;->f$0:Landroid/media/tv/tuner/Tuner;

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda11;->f$1:[I

    invoke-virtual {v0, v1}, Landroid/media/tv/tuner/Tuner;->lambda$onSymbolRates$7$android-media-tv-tuner-Tuner([I)V

    return-void
.end method
