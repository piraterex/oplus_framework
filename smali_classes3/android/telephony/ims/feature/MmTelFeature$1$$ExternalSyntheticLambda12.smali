.class public final synthetic Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Landroid/telephony/ims/aidl/IImsCapabilityCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/feature/MmTelFeature$1;IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda12;->f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

    iput p2, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda12;->f$1:I

    iput p3, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda12;->f$2:I

    iput-object p4, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda12;->f$3:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda12;->f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

    iget v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda12;->f$1:I

    iget v2, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda12;->f$2:I

    iget-object v3, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda12;->f$3:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$queryCapabilityConfiguration$14$android-telephony-ims-feature-MmTelFeature$1(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method
