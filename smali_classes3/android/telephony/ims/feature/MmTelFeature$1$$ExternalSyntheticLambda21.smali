.class public final synthetic Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/feature/MmTelFeature$1;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda21;->f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

    iput p2, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda21;->f$1:I

    iput p3, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda21;->f$2:I

    iput p4, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda21;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda21;->f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

    iget v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda21;->f$1:I

    iget v2, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda21;->f$2:I

    iget v3, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda21;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$acknowledgeSms$17$android-telephony-ims-feature-MmTelFeature$1(III)V

    return-void
.end method
