.class public final synthetic Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/ImsService$2;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Lcom/android/ims/internal/IImsFeatureStatusCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/ImsService$2;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/ims/ImsService$2;

    iput p2, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda3;->f$1:I

    iput p3, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda3;->f$2:I

    iput-object p4, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda3;->f$3:Lcom/android/ims/internal/IImsFeatureStatusCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/ims/ImsService$2;

    iget v1, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda3;->f$1:I

    iget v2, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda3;->f$2:I

    iget-object v3, p0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda3;->f$3:Lcom/android/ims/internal/IImsFeatureStatusCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ims/ImsService$2;->lambda$removeFeatureStatusCallback$4$android-telephony-ims-ImsService$2(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method
