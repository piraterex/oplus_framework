.class public final synthetic Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:J


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    iput p2, p0, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda2;->f$1:I

    iput-wide p3, p0, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda2;->f$2:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    iget v1, p0, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v2, p0, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda2;->f$2:J

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/ims/RcsUceAdapter$1;->lambda$onError$2(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;IJ)V

    return-void
.end method
