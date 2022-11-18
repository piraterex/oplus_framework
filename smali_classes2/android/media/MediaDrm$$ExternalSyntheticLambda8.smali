.class public final synthetic Landroid/media/MediaDrm$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaDrm;

.field public final synthetic blacklist f$1:Landroid/media/MediaDrm$OnExpirationUpdateListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaDrm;Landroid/media/MediaDrm$OnExpirationUpdateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$0:Landroid/media/MediaDrm;

    iput-object p2, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$1:Landroid/media/MediaDrm$OnExpirationUpdateListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$0:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$$ExternalSyntheticLambda8;->f$1:Landroid/media/MediaDrm$OnExpirationUpdateListener;

    check-cast p1, Landroid/media/MediaDrm$ListenerArgs;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaDrm;->lambda$createOnExpirationUpdateListener$2$android-media-MediaDrm(Landroid/media/MediaDrm$OnExpirationUpdateListener;Landroid/media/MediaDrm$ListenerArgs;)V

    return-void
.end method
