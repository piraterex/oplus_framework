.class public final synthetic Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/tv/tuner/Lnb;

.field public final synthetic blacklist f$1:Landroid/media/tv/tuner/LnbCallback;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/tv/tuner/Lnb;Landroid/media/tv/tuner/LnbCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;->f$0:Landroid/media/tv/tuner/Lnb;

    iput-object p2, p0, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;->f$1:Landroid/media/tv/tuner/LnbCallback;

    iput p3, p0, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;->f$0:Landroid/media/tv/tuner/Lnb;

    iget-object v1, p0, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;->f$1:Landroid/media/tv/tuner/LnbCallback;

    iget v2, p0, Landroid/media/tv/tuner/Lnb$$ExternalSyntheticLambda1;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/tuner/Lnb;->lambda$onEvent$0$android-media-tv-tuner-Lnb(Landroid/media/tv/tuner/LnbCallback;I)V

    return-void
.end method
